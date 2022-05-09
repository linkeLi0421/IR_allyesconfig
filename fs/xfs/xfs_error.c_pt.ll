; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_error.c_pt.bc'
source_filename = "../fs/xfs/xfs_error.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xfs_param = type { %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val }
%struct.xfs_sysctl_val = type { i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.xfs_errortag_attr = type { %struct.attribute, i32 }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }

@xfs_errortag_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @xfs_sysfs_release, ptr @xfs_errortag_sysfs_ops, ptr null, ptr @xfs_errortag_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"errortag\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error_tag < XFS_ERRTAG_MAX\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_error.c\00", [45 x i8] zeroinitializer }, align 32
@xfs_errortag_test._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.xfs_errortag_test = private unnamed_addr constant [18 x i8] c"xfs_errortag_test\00", align 1
@.str.4 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Injecting error (%s) at file %s, line %d, on filesystem \22%s\22\00", [35 x i8] zeroinitializer }, align 32
@xfs_errortag_random_default = internal constant { [39 x i32], [36 x i8] } { [39 x i32] [i32 100, i32 100, i32 100, i32 100, i32 100, i32 100, i32 100, i32 100, i32 25, i32 100, i32 100, i32 100, i32 100, i32 100, i32 100, i32 100, i32 100, i32 10, i32 10, i32 10, i32 10, i32 100, i32 1, i32 1, i32 1, i32 1, i32 1, i32 4, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 10, i32 100, i32 1, i32 1, i32 1], [36 x i8] zeroinitializer }, align 32
@xfs_params = external dso_local local_unnamed_addr global %struct.xfs_param, align 4
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Internal error %s at line %d of file %s.  Caller %pS\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Corruption detected. Unmount and run xfs_repair\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Metadata corruption detected at %pS, %s block 0x%llx\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unmount and run xfs_repair\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Metadata %s detected at %pS, %s block 0x%llx %s\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CRC error\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"corruption\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"First %d bytes of corrupted metadata buffer:\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Metadata %s detected at %pS, inode 0x%llx %s\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@xfs_errortag_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @xfs_errortag_attr_show, ptr @xfs_errortag_attr_store }, [24 x i8] zeroinitializer }, align 32
@xfs_errortag_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @xfs_errortag_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@xfs_errortag_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @xfs_errortag_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@xfs_errortag_attrs = internal global { [40 x ptr], [32 x i8] } { [40 x ptr] [ptr @xfs_errortag_attr_noerror, ptr @xfs_errortag_attr_iflush1, ptr @xfs_errortag_attr_iflush2, ptr @xfs_errortag_attr_iflush3, ptr @xfs_errortag_attr_iflush4, ptr @xfs_errortag_attr_iflush5, ptr @xfs_errortag_attr_iflush6, ptr @xfs_errortag_attr_dareadbuf, ptr @xfs_errortag_attr_btree_chk_lblk, ptr @xfs_errortag_attr_btree_chk_sblk, ptr @xfs_errortag_attr_readagf, ptr @xfs_errortag_attr_readagi, ptr @xfs_errortag_attr_itobp, ptr @xfs_errortag_attr_iunlink, ptr @xfs_errortag_attr_iunlinkrm, ptr @xfs_errortag_attr_dirinovalid, ptr @xfs_errortag_attr_bulkstat, ptr @xfs_errortag_attr_logiodone, ptr @xfs_errortag_attr_stratread, ptr @xfs_errortag_attr_stratcmpl, ptr @xfs_errortag_attr_diowrite, ptr @xfs_errortag_attr_bmapifmt, ptr @xfs_errortag_attr_free_extent, ptr @xfs_errortag_attr_rmap_finish_one, ptr @xfs_errortag_attr_refcount_continue_update, ptr @xfs_errortag_attr_refcount_finish_one, ptr @xfs_errortag_attr_bmap_finish_one, ptr @xfs_errortag_attr_ag_resv_critical, ptr @xfs_errortag_attr_drop_writes, ptr @xfs_errortag_attr_log_bad_crc, ptr @xfs_errortag_attr_log_item_pin, ptr @xfs_errortag_attr_buf_lru_ref, ptr @xfs_errortag_attr_force_repair, ptr @xfs_errortag_attr_bad_summary, ptr @xfs_errortag_attr_iunlink_fallback, ptr @xfs_errortag_attr_buf_ioerror, ptr @xfs_errortag_attr_reduce_max_iextents, ptr @xfs_errortag_attr_bmap_alloc_minlen_extent, ptr @xfs_errortag_attr_ag_resv_fail, ptr null], [32 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_noerror = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_iflush1 = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 1 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_iflush2 = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 2 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_iflush3 = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 3 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_iflush4 = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 4 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_iflush5 = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 5 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_iflush6 = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 6 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_dareadbuf = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 7 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_btree_chk_lblk = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 8 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_btree_chk_sblk = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 9 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_readagf = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 10 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_readagi = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 11 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_itobp = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 12 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_iunlink = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 13 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_iunlinkrm = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 14 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_dirinovalid = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 15 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_bulkstat = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 16 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_logiodone = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 17 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_stratread = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 18 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_stratcmpl = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 19 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_diowrite = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 20 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_bmapifmt = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 21 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_free_extent = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 22 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_rmap_finish_one = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 23 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_refcount_continue_update = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 24 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_refcount_finish_one = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 25 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_bmap_finish_one = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 26 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_ag_resv_critical = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 27 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_drop_writes = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 28 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_log_bad_crc = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 29 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_log_item_pin = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 30 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_buf_lru_ref = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 31 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_force_repair = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 32 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_bad_summary = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 33 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_iunlink_fallback = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 34 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_buf_ioerror = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 35 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_reduce_max_iextents = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 36 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_bmap_alloc_minlen_extent = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 37 }, [40 x i8] zeroinitializer }, align 32
@xfs_errortag_attr_ag_resv_fail = internal global { %struct.xfs_errortag_attr, [40 x i8] } { %struct.xfs_errortag_attr { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 38 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noerror\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iflush1\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iflush2\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iflush3\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iflush4\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iflush5\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iflush6\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dareadbuf\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"btree_chk_lblk\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"btree_chk_sblk\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"readagf\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"readagi\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"itobp\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iunlink\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iunlinkrm\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dirinovalid\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bulkstat\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"logiodone\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stratread\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stratcmpl\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"diowrite\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bmapifmt\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"free_extent\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rmap_finish_one\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"refcount_continue_update\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"refcount_finish_one\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bmap_finish_one\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ag_resv_critical\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"drop_writes\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"log_bad_crc\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"log_item_pin\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"buf_lru_ref\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"force_repair\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bad_summary\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iunlink_fallback\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"buf_ioerror\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reduce_max_iextents\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bmap_alloc_minlen_extent\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ag_resv_fail\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c"xfs_errortag_ktype\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 218, i32 25 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 234, i32 24 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 266, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 271, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [28 x i8] c"xfs_errortag_random_default\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 20, i32 21 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 335, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 356, i32 16 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 374, i32 5 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 377, i32 16 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 404, i32 5 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 405, i32 33 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 405, i32 47 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 412, i32 17 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 431, i32 43 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 454, i32 16 }
@___asan_gen_.113 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_sysfs.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 39, i32 61 }
@___asan_gen_.115 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 87, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [23 x i8] c"xfs_errortag_sysfs_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 120, i32 31 }
@___asan_gen_.124 = private unnamed_addr constant [20 x i8] c"xfs_errortag_groups\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 116, i32 34 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 93, i32 18 }
@___asan_gen_.133 = private unnamed_addr constant [19 x i8] c"xfs_errortag_group\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 216, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant [19 x i8] c"xfs_errortag_attrs\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 174, i32 26 }
@___asan_gen_.139 = private unnamed_addr constant [26 x i8] c"xfs_errortag_attr_noerror\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [26 x i8] c"xfs_errortag_attr_iflush1\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [26 x i8] c"xfs_errortag_attr_iflush2\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [26 x i8] c"xfs_errortag_attr_iflush3\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [26 x i8] c"xfs_errortag_attr_iflush4\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [26 x i8] c"xfs_errortag_attr_iflush5\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [26 x i8] c"xfs_errortag_attr_iflush6\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [28 x i8] c"xfs_errortag_attr_dareadbuf\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [33 x i8] c"xfs_errortag_attr_btree_chk_lblk\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [33 x i8] c"xfs_errortag_attr_btree_chk_sblk\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [26 x i8] c"xfs_errortag_attr_readagf\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [26 x i8] c"xfs_errortag_attr_readagi\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [24 x i8] c"xfs_errortag_attr_itobp\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [26 x i8] c"xfs_errortag_attr_iunlink\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [28 x i8] c"xfs_errortag_attr_iunlinkrm\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [30 x i8] c"xfs_errortag_attr_dirinovalid\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [27 x i8] c"xfs_errortag_attr_bulkstat\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [28 x i8] c"xfs_errortag_attr_logiodone\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [28 x i8] c"xfs_errortag_attr_stratread\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [28 x i8] c"xfs_errortag_attr_stratcmpl\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [27 x i8] c"xfs_errortag_attr_diowrite\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [27 x i8] c"xfs_errortag_attr_bmapifmt\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [30 x i8] c"xfs_errortag_attr_free_extent\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [34 x i8] c"xfs_errortag_attr_rmap_finish_one\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [43 x i8] c"xfs_errortag_attr_refcount_continue_update\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [38 x i8] c"xfs_errortag_attr_refcount_finish_one\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [34 x i8] c"xfs_errortag_attr_bmap_finish_one\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [35 x i8] c"xfs_errortag_attr_ag_resv_critical\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [30 x i8] c"xfs_errortag_attr_drop_writes\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [30 x i8] c"xfs_errortag_attr_log_bad_crc\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [31 x i8] c"xfs_errortag_attr_log_item_pin\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [30 x i8] c"xfs_errortag_attr_buf_lru_ref\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [31 x i8] c"xfs_errortag_attr_force_repair\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [30 x i8] c"xfs_errortag_attr_bad_summary\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [35 x i8] c"xfs_errortag_attr_iunlink_fallback\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [30 x i8] c"xfs_errortag_attr_buf_ioerror\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [38 x i8] c"xfs_errortag_attr_reduce_max_iextents\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [43 x i8] c"xfs_errortag_attr_bmap_alloc_minlen_extent\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [31 x i8] c"xfs_errortag_attr_ag_resv_fail\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 134, i32 1 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 135, i32 1 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 136, i32 1 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 137, i32 1 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 138, i32 1 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 139, i32 1 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 140, i32 1 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 141, i32 1 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 142, i32 1 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 143, i32 1 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 144, i32 1 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 145, i32 1 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 146, i32 1 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 147, i32 1 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 148, i32 1 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 149, i32 1 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 150, i32 1 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 151, i32 1 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 152, i32 1 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 153, i32 1 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 154, i32 1 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 155, i32 1 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 156, i32 1 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 157, i32 1 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 158, i32 1 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 159, i32 1 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 160, i32 1 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 161, i32 1 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 162, i32 1 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 163, i32 1 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 164, i32 1 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 165, i32 1 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 166, i32 1 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 167, i32 1 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 168, i32 1 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 169, i32 1 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 170, i32 1 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 171, i32 1 }
@___asan_gen_.370 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.371 = private constant [22 x i8] c"../fs/xfs/xfs_error.c\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 172, i32 1 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @xfs_errortag_ktype, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @xfs_errortag_test._rs, ptr @.str.3, ptr @.str.4, ptr @xfs_errortag_random_default, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @init_completion.__key, ptr @.str.16, ptr @xfs_errortag_sysfs_ops, ptr @xfs_errortag_groups, ptr @.str.17, ptr @.str.18, ptr @xfs_errortag_group, ptr @xfs_errortag_attrs, ptr @xfs_errortag_attr_noerror, ptr @xfs_errortag_attr_iflush1, ptr @xfs_errortag_attr_iflush2, ptr @xfs_errortag_attr_iflush3, ptr @xfs_errortag_attr_iflush4, ptr @xfs_errortag_attr_iflush5, ptr @xfs_errortag_attr_iflush6, ptr @xfs_errortag_attr_dareadbuf, ptr @xfs_errortag_attr_btree_chk_lblk, ptr @xfs_errortag_attr_btree_chk_sblk, ptr @xfs_errortag_attr_readagf, ptr @xfs_errortag_attr_readagi, ptr @xfs_errortag_attr_itobp, ptr @xfs_errortag_attr_iunlink, ptr @xfs_errortag_attr_iunlinkrm, ptr @xfs_errortag_attr_dirinovalid, ptr @xfs_errortag_attr_bulkstat, ptr @xfs_errortag_attr_logiodone, ptr @xfs_errortag_attr_stratread, ptr @xfs_errortag_attr_stratcmpl, ptr @xfs_errortag_attr_diowrite, ptr @xfs_errortag_attr_bmapifmt, ptr @xfs_errortag_attr_free_extent, ptr @xfs_errortag_attr_rmap_finish_one, ptr @xfs_errortag_attr_refcount_continue_update, ptr @xfs_errortag_attr_refcount_finish_one, ptr @xfs_errortag_attr_bmap_finish_one, ptr @xfs_errortag_attr_ag_resv_critical, ptr @xfs_errortag_attr_drop_writes, ptr @xfs_errortag_attr_log_bad_crc, ptr @xfs_errortag_attr_log_item_pin, ptr @xfs_errortag_attr_buf_lru_ref, ptr @xfs_errortag_attr_force_repair, ptr @xfs_errortag_attr_bad_summary, ptr @xfs_errortag_attr_iunlink_fallback, ptr @xfs_errortag_attr_buf_ioerror, ptr @xfs_errortag_attr_reduce_max_iextents, ptr @xfs_errortag_attr_bmap_alloc_minlen_extent, ptr @xfs_errortag_attr_ag_resv_fail, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [105 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_test._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_random_default to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attrs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_noerror to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_iflush1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_iflush2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_iflush3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_iflush4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_iflush5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_iflush6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_dareadbuf to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_btree_chk_lblk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_btree_chk_sblk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_readagf to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_readagi to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_itobp to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_iunlink to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_iunlinkrm to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_dirinovalid to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_bulkstat to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_logiodone to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_stratread to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_stratcmpl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_diowrite to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_bmapifmt to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_free_extent to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_rmap_finish_one to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_refcount_continue_update to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_refcount_finish_one to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_bmap_finish_one to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_ag_resv_critical to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_drop_writes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_log_bad_crc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_log_item_pin to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_buf_lru_ref to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_force_repair to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_bad_summary to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_iunlink_fallback to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_buf_ioerror to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_reduce_max_iextents to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_bmap_alloc_minlen_extent to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_errortag_attr_ag_resv_fail to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_errortag_init(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_alloc(i32 noundef 156, i32 noundef 24) #14
  %m_errortag = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 100
  %0 = ptrtoint ptr %m_errortag to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %m_errortag, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %m_errortag_kobj = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 101
  %m_kobj = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 88
  %complete.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 101, i32 1
  %1 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %complete.i, align 4
  %wait.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 101, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #14
  %call.i6 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %m_errortag_kobj, ptr noundef nonnull @xfs_errortag_ktype, ptr noundef %m_kobj, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str) #14
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i6, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_errortag_del(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %m_errortag_kobj = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 101
  tail call void @kobject_del(ptr noundef %m_errortag_kobj) #14
  tail call void @kobject_put(ptr noundef %m_errortag_kobj) #14
  %complete.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 101, i32 1
  tail call void @wait_for_completion(ptr noundef %complete.i) #14
  %m_errortag = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 100
  %0 = ptrtoint ptr %m_errortag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_errortag, align 4
  tail call void @kvfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xfs_errortag_test(ptr noundef %mp, ptr noundef %expression, ptr noundef %file, i32 noundef %line, i32 noundef %error_tag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %m_errortag = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 100
  %0 = ptrtoint ptr %m_errortag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_errortag, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %error_tag)
  %cmp = icmp ult i32 %error_tag, 39
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %cond.false, !prof !176

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 266) #14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %2 = ptrtoint ptr %m_errortag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_errortag, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %error_tag
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %cond.end.cleanup_crit_edge, label %lor.lhs.false

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %cond.end
  %call = tail call i32 @prandom_u32() #14
  %rem = urem i32 %call, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool5.not = icmp eq i32 %rem, 0
  br i1 %tobool5.not, label %do.body, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @xfs_errortag_test._rs, ptr noundef nonnull @__func__.xfs_errortag_test) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body.cleanup_crit_edge, label %if.then10

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %6 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m_super, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 39
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.4, ptr noundef %expression, ptr noundef %file, i32 noundef %line, ptr noundef %s_id) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %do.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %cond.end.cleanup_crit_edge ], [ true, %if.then10 ], [ true, %do.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_errortag_get(ptr nocapture noundef readonly %mp, i32 noundef %error_tag) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %error_tag)
  %cmp = icmp ugt i32 %error_tag, 38
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %m_errortag = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 100
  %0 = ptrtoint ptr %m_errortag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_errortag, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 %error_tag
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %3, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_errortag_set(ptr nocapture noundef readonly %mp, i32 noundef %error_tag, i32 noundef %tag_value) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %error_tag)
  %cmp = icmp ugt i32 %error_tag, 38
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %m_errortag = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 100
  %0 = ptrtoint ptr %m_errortag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_errortag, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 %error_tag
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %tag_value, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_errortag_add(ptr nocapture noundef readonly %mp, i32 noundef %error_tag) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %error_tag)
  %cmp = icmp ugt i32 %error_tag, 38
  br i1 %cmp, label %entry.return_crit_edge, label %xfs_errortag_set.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

xfs_errortag_set.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr [39 x i32], ptr @xfs_errortag_random_default, i32 0, i32 %error_tag
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %m_errortag.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 100
  %2 = ptrtoint ptr %m_errortag.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_errortag.i, align 4
  %arrayidx.i = getelementptr i32, ptr %3, i32 %error_tag
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %arrayidx.i, align 4
  br label %return

return:                                           ; preds = %xfs_errortag_set.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %xfs_errortag_set.exit ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_errortag_clearall(ptr nocapture noundef readonly %mp) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %m_errortag = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 100
  %0 = ptrtoint ptr %m_errortag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_errortag, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 156)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_error_report(ptr noundef %tag, i32 noundef %level, ptr noundef %mp, ptr noundef %filename, i32 noundef %linenum, ptr noundef %failaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %level)
  %cmp.not = icmp slt i32 %0, %level
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, ptr, ...) @xfs_alert_tag(ptr noundef %mp, i32 noundef 8, ptr noundef nonnull @.str.5, ptr noundef %tag, i32 noundef %linenum, ptr noundef %filename, ptr noundef %failaddr) #14
  tail call void @dump_stack() #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert_tag(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_corruption_error(ptr noundef %tag, i32 noundef %level, ptr noundef %mp, ptr noundef %buf, i32 noundef %bufsize, ptr noundef %filename, i32 noundef %linenum, ptr noundef %failaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %level)
  %cmp.not = icmp slt i32 %0, %level
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @xfs_hex_dump(ptr noundef nonnull %buf, i32 noundef %bufsize) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1) to i32))
  %1 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %level)
  %cmp.not.i = icmp slt i32 %1, %level
  br i1 %cmp.not.i, label %if.end.xfs_error_report.exit_crit_edge, label %if.then.i

if.end.xfs_error_report.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %xfs_error_report.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, ptr, ...) @xfs_alert_tag(ptr noundef %mp, i32 noundef 8, ptr noundef nonnull @.str.5, ptr noundef %tag, i32 noundef %linenum, ptr noundef %filename, ptr noundef %failaddr) #14
  tail call void @dump_stack() #17
  br label %xfs_error_report.exit

xfs_error_report.exit:                            ; preds = %if.then.i, %if.end.xfs_error_report.exit_crit_edge
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %mp, ptr noundef nonnull @.str.6) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_hex_dump(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_buf_corruption_error(ptr nocapture noundef readonly %bp, ptr noundef %fa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %2 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %6 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_maps.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %7, align 8
  tail call void (ptr, i32, ptr, ...) @xfs_alert_tag(ptr noundef %1, i32 noundef 256, ptr noundef nonnull @.str.7, ptr noundef %fa, ptr noundef %5, i64 noundef %9) #14
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.8) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1) to i32))
  %10 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp = icmp sgt i32 %10, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_stack() #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_buf_verifier_error(ptr noundef %bp, i32 noundef %error, ptr noundef %name, ptr noundef %buf, i32 noundef %bufsz, ptr noundef %failaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %tobool.not = icmp eq ptr %failaddr, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi ptr [ %2, %cond.false ], [ %failaddr, %entry.cond.end_crit_edge ]
  tail call void @__xfs_buf_ioerror(ptr noundef %bp, i32 noundef %error, ptr noundef %cond) #14
  %b_error = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 31
  %3 = ptrtoint ptr %b_error to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %b_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %4)
  %cmp = icmp eq i32 %4, -74
  %cond1 = select i1 %cmp, ptr @.str.10, ptr @.str.11
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %5 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_ops, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %9 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_maps.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %10, align 8
  tail call void (ptr, i32, ptr, ...) @xfs_alert_tag(ptr noundef %1, i32 noundef 256, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond1, ptr noundef %cond, ptr noundef %8, i64 noundef %12, ptr noundef %name) #14
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.8) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1) to i32))
  %13 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3 = icmp sgt i32 %13, 0
  br i1 %cmp3, label %if.end, label %cond.end.if.end11_crit_edge

cond.end.if.end11_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.end:                                           ; preds = %cond.end
  %14 = tail call i32 @llvm.umin.i32(i32 %bufsz, i32 128)
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %14) #14
  tail call void @xfs_hex_dump(ptr noundef %buf, i32 noundef %14) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1) to i32))
  %.pr = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp9 = icmp sgt i32 %.pr, 4
  br i1 %cmp9, label %if.then10, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_stack() #17
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge, %cond.end.if.end11_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfs_buf_ioerror(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_verifier_error(ptr noundef %bp, i32 noundef %error, ptr noundef %failaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xfs_buf_offset(ptr noundef %bp, i32 noundef 0) #14
  tail call void @xfs_buf_verifier_error(ptr noundef %bp, i32 noundef %error, ptr noundef nonnull @.str.13, ptr noundef %call, i32 noundef 128, ptr noundef %failaddr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_buf_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_inode_verifier_error(ptr nocapture noundef readonly %ip, i32 noundef %error, ptr noundef %name, ptr noundef %buf, i32 noundef %bufsz, ptr noundef %failaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %tobool.not = icmp eq ptr %failaddr, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi ptr [ %2, %cond.false ], [ %failaddr, %entry.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %error)
  %cmp = icmp eq i32 %error, -74
  %cond1 = select i1 %cmp, ptr @.str.10, ptr @.str.11
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %3 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond1, ptr noundef %cond, i64 noundef %4, ptr noundef %name) #14
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.8) #14
  %tobool2.not = icmp eq ptr %buf, null
  br i1 %tobool2.not, label %cond.end.if.end_crit_edge, label %land.lhs.true

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1) to i32))
  %5 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3 = icmp sgt i32 %5, 0
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %6 = tail call i32 @llvm.umin.i32(i32 %bufsz, i32 128)
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %6) #14
  tail call void @xfs_hex_dump(ptr noundef nonnull %buf, i32 noundef %6) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1) to i32))
  %.pr = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp9 = icmp sgt i32 %.pr, 4
  br i1 %cmp9, label %if.then10, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_stack() #17
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_sysfs_release(ptr noundef %kobject) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %complete = getelementptr inbounds %struct.xfs_kobj, ptr %kobject, i32 0, i32 1
  tail call void @complete(ptr noundef %complete) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_errortag_attr_show(ptr nocapture noundef readonly %kobject, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tag = getelementptr inbounds %struct.xfs_errortag_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %1)
  %cmp.i = icmp ugt i32 %1, 38
  br i1 %cmp.i, label %entry.xfs_errortag_get.exit_crit_edge, label %if.end.i

entry.xfs_errortag_get.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %xfs_errortag_get.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %m_errortag.i = getelementptr i8, ptr %kobject, i32 -4
  %2 = ptrtoint ptr %m_errortag.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_errortag.i, align 4
  %arrayidx.i = getelementptr i32, ptr %3, i32 %1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  br label %xfs_errortag_get.exit

xfs_errortag_get.exit:                            ; preds = %if.end.i, %entry.xfs_errortag_get.exit_crit_edge
  %retval.0.i = phi i32 [ %5, %if.end.i ], [ -22, %entry.xfs_errortag_get.exit_crit_edge ]
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.17, i32 noundef %retval.0.i)
  ret i32 %call3
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_errortag_attr_store(ptr nocapture noundef readonly %kobject, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #10 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #14
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !177
  %call2 = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(8) @.str.18) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %tag = getelementptr inbounds %struct.xfs_errortag_attr, ptr %attr, i32 0, i32 1
  %1 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tag, align 4
  %arrayidx = getelementptr [39 x i32], ptr @xfs_errortag_random_default, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %val, align 4
  br label %if.end5

if.else:                                          ; preds = %entry
  %call3 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.else.if.end5_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.end5:                                          ; preds = %if.else.if.end5_crit_edge, %if.then
  %tag6 = getelementptr inbounds %struct.xfs_errortag_attr, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %tag6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tag6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %7)
  %cmp.i = icmp ugt i32 %7, 38
  br i1 %cmp.i, label %if.end5.cleanup_crit_edge, label %8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

8:                                                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %m_errortag.i = getelementptr i8, ptr %kobject, i32 -4
  %11 = ptrtoint ptr %m_errortag.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m_errortag.i, align 4
  %arrayidx.i = getelementptr i32, ptr %12, i32 %7
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %arrayidx.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %8, %if.end5.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.else.cleanup_crit_edge ], [ %count, %8 ], [ -22, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #14
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !41, !43, !45, !46, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165}
!llvm.module.flags = !{!167, !168, !169, !170, !171, !172, !173, !174}
!llvm.ident = !{!175}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_error.c", i32 234, i32 24}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/xfs/xfs_error.c", i32 266, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_error.c", i32 271, i32 2}
!7 = !{ptr @xfs_errortag_test._rs, !6, !"_rs", i1 false, i1 false}
!8 = !{ptr @__func__.xfs_errortag_test, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/xfs/xfs_error.c", i32 335, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/xfs/xfs_error.c", i32 356, i32 16}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/xfs/xfs_error.c", i32 374, i32 5}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/xfs/xfs_error.c", i32 377, i32 16}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/xfs/xfs_error.c", i32 404, i32 5}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/xfs/xfs_error.c", i32 405, i32 33}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/xfs/xfs_error.c", i32 405, i32 47}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/xfs/xfs_error.c", i32 412, i32 17}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/xfs/xfs_error.c", i32 431, i32 43}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/xfs/xfs_error.c", i32 454, i32 16}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/xfs/xfs_sysfs.h", i32 39, i32 61}
!32 = !{ptr @init_completion.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../include/linux/completion.h", i32 87, i32 2}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @xfs_errortag_ktype, !36, !"xfs_errortag_ktype", i1 false, i1 false}
!36 = !{!"../fs/xfs/xfs_error.c", i32 218, i32 25}
!37 = !{ptr @xfs_errortag_sysfs_ops, !38, !"xfs_errortag_sysfs_ops", i1 false, i1 false}
!38 = !{!"../fs/xfs/xfs_error.c", i32 120, i32 31}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/xfs/xfs_error.c", i32 116, i32 34}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/xfs/xfs_error.c", i32 93, i32 18}
!43 = !{ptr @xfs_errortag_groups, !44, !"xfs_errortag_groups", i1 false, i1 false}
!44 = !{!"../fs/xfs/xfs_error.c", i32 216, i32 1}
!45 = !{ptr @xfs_errortag_group, !44, !"xfs_errortag_group", i1 false, i1 false}
!46 = !{ptr @xfs_errortag_attrs, !47, !"xfs_errortag_attrs", i1 false, i1 false}
!47 = !{!"../fs/xfs/xfs_error.c", i32 174, i32 26}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/xfs/xfs_error.c", i32 134, i32 1}
!50 = !{ptr @xfs_errortag_attr_noerror, !49, !"xfs_errortag_attr_noerror", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/xfs/xfs_error.c", i32 135, i32 1}
!53 = !{ptr @xfs_errortag_attr_iflush1, !52, !"xfs_errortag_attr_iflush1", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/xfs/xfs_error.c", i32 136, i32 1}
!56 = !{ptr @xfs_errortag_attr_iflush2, !55, !"xfs_errortag_attr_iflush2", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/xfs/xfs_error.c", i32 137, i32 1}
!59 = !{ptr @xfs_errortag_attr_iflush3, !58, !"xfs_errortag_attr_iflush3", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/xfs/xfs_error.c", i32 138, i32 1}
!62 = !{ptr @xfs_errortag_attr_iflush4, !61, !"xfs_errortag_attr_iflush4", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/xfs/xfs_error.c", i32 139, i32 1}
!65 = !{ptr @xfs_errortag_attr_iflush5, !64, !"xfs_errortag_attr_iflush5", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/xfs/xfs_error.c", i32 140, i32 1}
!68 = !{ptr @xfs_errortag_attr_iflush6, !67, !"xfs_errortag_attr_iflush6", i1 false, i1 false}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/xfs/xfs_error.c", i32 141, i32 1}
!71 = !{ptr @xfs_errortag_attr_dareadbuf, !70, !"xfs_errortag_attr_dareadbuf", i1 false, i1 false}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/xfs/xfs_error.c", i32 142, i32 1}
!74 = !{ptr @xfs_errortag_attr_btree_chk_lblk, !73, !"xfs_errortag_attr_btree_chk_lblk", i1 false, i1 false}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/xfs/xfs_error.c", i32 143, i32 1}
!77 = !{ptr @xfs_errortag_attr_btree_chk_sblk, !76, !"xfs_errortag_attr_btree_chk_sblk", i1 false, i1 false}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/xfs/xfs_error.c", i32 144, i32 1}
!80 = !{ptr @xfs_errortag_attr_readagf, !79, !"xfs_errortag_attr_readagf", i1 false, i1 false}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/xfs/xfs_error.c", i32 145, i32 1}
!83 = !{ptr @xfs_errortag_attr_readagi, !82, !"xfs_errortag_attr_readagi", i1 false, i1 false}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/xfs/xfs_error.c", i32 146, i32 1}
!86 = !{ptr @xfs_errortag_attr_itobp, !85, !"xfs_errortag_attr_itobp", i1 false, i1 false}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/xfs/xfs_error.c", i32 147, i32 1}
!89 = !{ptr @xfs_errortag_attr_iunlink, !88, !"xfs_errortag_attr_iunlink", i1 false, i1 false}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/xfs/xfs_error.c", i32 148, i32 1}
!92 = !{ptr @xfs_errortag_attr_iunlinkrm, !91, !"xfs_errortag_attr_iunlinkrm", i1 false, i1 false}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/xfs/xfs_error.c", i32 149, i32 1}
!95 = !{ptr @xfs_errortag_attr_dirinovalid, !94, !"xfs_errortag_attr_dirinovalid", i1 false, i1 false}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/xfs/xfs_error.c", i32 150, i32 1}
!98 = !{ptr @xfs_errortag_attr_bulkstat, !97, !"xfs_errortag_attr_bulkstat", i1 false, i1 false}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/xfs/xfs_error.c", i32 151, i32 1}
!101 = !{ptr @xfs_errortag_attr_logiodone, !100, !"xfs_errortag_attr_logiodone", i1 false, i1 false}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/xfs/xfs_error.c", i32 152, i32 1}
!104 = !{ptr @xfs_errortag_attr_stratread, !103, !"xfs_errortag_attr_stratread", i1 false, i1 false}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/xfs/xfs_error.c", i32 153, i32 1}
!107 = !{ptr @xfs_errortag_attr_stratcmpl, !106, !"xfs_errortag_attr_stratcmpl", i1 false, i1 false}
!108 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/xfs/xfs_error.c", i32 154, i32 1}
!110 = !{ptr @xfs_errortag_attr_diowrite, !109, !"xfs_errortag_attr_diowrite", i1 false, i1 false}
!111 = !{ptr @.str.40, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/xfs/xfs_error.c", i32 155, i32 1}
!113 = !{ptr @xfs_errortag_attr_bmapifmt, !112, !"xfs_errortag_attr_bmapifmt", i1 false, i1 false}
!114 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/xfs/xfs_error.c", i32 156, i32 1}
!116 = !{ptr @xfs_errortag_attr_free_extent, !115, !"xfs_errortag_attr_free_extent", i1 false, i1 false}
!117 = !{ptr @.str.42, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/xfs/xfs_error.c", i32 157, i32 1}
!119 = !{ptr @xfs_errortag_attr_rmap_finish_one, !118, !"xfs_errortag_attr_rmap_finish_one", i1 false, i1 false}
!120 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/xfs/xfs_error.c", i32 158, i32 1}
!122 = !{ptr @xfs_errortag_attr_refcount_continue_update, !121, !"xfs_errortag_attr_refcount_continue_update", i1 false, i1 false}
!123 = !{ptr @.str.44, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/xfs/xfs_error.c", i32 159, i32 1}
!125 = !{ptr @xfs_errortag_attr_refcount_finish_one, !124, !"xfs_errortag_attr_refcount_finish_one", i1 false, i1 false}
!126 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/xfs/xfs_error.c", i32 160, i32 1}
!128 = !{ptr @xfs_errortag_attr_bmap_finish_one, !127, !"xfs_errortag_attr_bmap_finish_one", i1 false, i1 false}
!129 = !{ptr @.str.46, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/xfs/xfs_error.c", i32 161, i32 1}
!131 = !{ptr @xfs_errortag_attr_ag_resv_critical, !130, !"xfs_errortag_attr_ag_resv_critical", i1 false, i1 false}
!132 = !{ptr @.str.47, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/xfs/xfs_error.c", i32 162, i32 1}
!134 = !{ptr @xfs_errortag_attr_drop_writes, !133, !"xfs_errortag_attr_drop_writes", i1 false, i1 false}
!135 = !{ptr @.str.48, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/xfs/xfs_error.c", i32 163, i32 1}
!137 = !{ptr @xfs_errortag_attr_log_bad_crc, !136, !"xfs_errortag_attr_log_bad_crc", i1 false, i1 false}
!138 = !{ptr @.str.49, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/xfs/xfs_error.c", i32 164, i32 1}
!140 = !{ptr @xfs_errortag_attr_log_item_pin, !139, !"xfs_errortag_attr_log_item_pin", i1 false, i1 false}
!141 = !{ptr @.str.50, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/xfs/xfs_error.c", i32 165, i32 1}
!143 = !{ptr @xfs_errortag_attr_buf_lru_ref, !142, !"xfs_errortag_attr_buf_lru_ref", i1 false, i1 false}
!144 = !{ptr @.str.51, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/xfs/xfs_error.c", i32 166, i32 1}
!146 = !{ptr @xfs_errortag_attr_force_repair, !145, !"xfs_errortag_attr_force_repair", i1 false, i1 false}
!147 = !{ptr @.str.52, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/xfs/xfs_error.c", i32 167, i32 1}
!149 = !{ptr @xfs_errortag_attr_bad_summary, !148, !"xfs_errortag_attr_bad_summary", i1 false, i1 false}
!150 = !{ptr @.str.53, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/xfs/xfs_error.c", i32 168, i32 1}
!152 = !{ptr @xfs_errortag_attr_iunlink_fallback, !151, !"xfs_errortag_attr_iunlink_fallback", i1 false, i1 false}
!153 = !{ptr @.str.54, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/xfs/xfs_error.c", i32 169, i32 1}
!155 = !{ptr @xfs_errortag_attr_buf_ioerror, !154, !"xfs_errortag_attr_buf_ioerror", i1 false, i1 false}
!156 = !{ptr @.str.55, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/xfs/xfs_error.c", i32 170, i32 1}
!158 = !{ptr @xfs_errortag_attr_reduce_max_iextents, !157, !"xfs_errortag_attr_reduce_max_iextents", i1 false, i1 false}
!159 = !{ptr @.str.56, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/xfs/xfs_error.c", i32 171, i32 1}
!161 = !{ptr @xfs_errortag_attr_bmap_alloc_minlen_extent, !160, !"xfs_errortag_attr_bmap_alloc_minlen_extent", i1 false, i1 false}
!162 = !{ptr @.str.57, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/xfs/xfs_error.c", i32 172, i32 1}
!164 = !{ptr @xfs_errortag_attr_ag_resv_fail, !163, !"xfs_errortag_attr_ag_resv_fail", i1 false, i1 false}
!165 = !{ptr @xfs_errortag_random_default, !166, !"xfs_errortag_random_default", i1 false, i1 false}
!166 = !{!"../fs/xfs/xfs_error.c", i32 20, i32 21}
!167 = !{i32 1, !"wchar_size", i32 2}
!168 = !{i32 1, !"min_enum_size", i32 4}
!169 = !{i32 8, !"branch-target-enforcement", i32 0}
!170 = !{i32 8, !"sign-return-address", i32 0}
!171 = !{i32 8, !"sign-return-address-all", i32 0}
!172 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!173 = !{i32 7, !"uwtable", i32 1}
!174 = !{i32 7, !"frame-pointer", i32 2}
!175 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!176 = !{!"branch_weights", i32 2000, i32 1}
!177 = !{!"auto-init"}
