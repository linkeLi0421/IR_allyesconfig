; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_attr_leaf.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_attr_leaf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.73 }
%struct.atomic_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_da_blkinfo = type { i32, i32, i16, i16 }
%struct.xfs_attr3_icleaf_hdr = type { i32, i32, i16, i16, i16, i32, i8, [3 x %struct.anon] }
%struct.anon = type { i16, i16 }
%struct.xfs_attr3_leaf_hdr = type { %struct.xfs_da3_blkinfo, i16, i16, i16, i8, i8, [3 x %struct.xfs_attr_leaf_map], i32 }
%struct.xfs_da3_blkinfo = type { %struct.xfs_da_blkinfo, i32, i64, i64, %struct.uuid_t, i64 }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_attr_leaf_map = type { i16, i16 }
%struct.xfs_attr_leaf_hdr = type { %struct.xfs_da_blkinfo, i16, i16, i16, i8, i8, [3 x %struct.xfs_attr_leaf_map] }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.xfs_attr3_leafblock = type { %struct.xfs_attr3_leaf_hdr, [1 x %struct.xfs_attr_leaf_entry] }
%struct.xfs_attr_leaf_entry = type { i32, i16, i8, i8 }
%struct.xfs_attr_leafblock = type { %struct.xfs_attr_leaf_hdr, [1 x %struct.xfs_attr_leaf_entry] }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.91, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.90, i16, i8, i32 }
%union.anon.90 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.llist_node = type { ptr }
%union.anon.91 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.79 = type { ptr }
%struct.xfs_btree_block = type { i32, i16, i16, %union.anon.89 }
%union.anon.89 = type { %struct.xfs_btree_block_lhdr }
%struct.xfs_btree_block_lhdr = type { i64, i64, i64, i64, %struct.uuid_t, i64, i32, i32 }
%struct.xfs_da_args = type { ptr, ptr, i32, i8, ptr, i32, i32, i32, i32, i64, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_attr_shortform = type { %struct.xfs_attr_sf_hdr, [1 x %struct.xfs_attr_sf_entry] }
%struct.xfs_attr_sf_hdr = type { i16, i8, i8 }
%struct.xfs_attr_sf_entry = type { i8, i8, i8, [0 x i8] }
%struct.xfs_attr_leaf_name_local = type { i16, i8, [1 x i8] }
%struct.xfs_attr_leaf_name_remote = type { i32, i32, i8, [1 x i8] }
%struct.xfs_da3_icnode_hdr = type { i32, i32, i16, i16, i16, ptr }
%struct.xfs_da_node_entry = type { i32, i32 }
%struct.xfs_da_state_blk = type { ptr, i32, i64, i32, i32, i32 }
%struct.xfs_da_state = type { ptr, ptr, %struct.xfs_da_state_path, %struct.xfs_da_state_path, i8, i8, i8, %struct.xfs_da_state_blk }
%struct.xfs_da_state_path = type { i32, [5 x %struct.xfs_da_state_blk] }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.xfs_da_geometry = type { i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"from->hdr.info.magic == cpu_to_be16(XFS_ATTR_LEAF_MAGIC) || from->hdr.info.magic == cpu_to_be16(XFS_ATTR3_LEAF_MAGIC)\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fs/xfs/libxfs/xfs_attr_leaf.c\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"from->magic == XFS_ATTR_LEAF_MAGIC || from->magic == XFS_ATTR3_LEAF_MAGIC\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xfs_attr3_leaf\00", [17 x i8] zeroinitializer }, align 32
@xfs_attr3_leaf_buf_ops = dso_local constant { { ptr, { [2 x i16], [4 x i8] }, ptr, ptr, ptr }, [40 x i8] } { { ptr, { [2 x i16], [4 x i8] }, ptr, ptr, ptr } { ptr @.str.3, { [2 x i16], [4 x i8] } { [2 x i16] [i16 -1042, i16 15342], [4 x i8] undef }, ptr @xfs_attr3_leaf_read_verify, ptr @xfs_attr3_leaf_write_verify, ptr @xfs_attr3_leaf_verify }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ifp->if_bytes == 0\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ifp->if_format == XFS_DINODE_FMT_LOCAL\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ip->i_afp->if_nextents == 0\00", [36 x i8] zeroinitializer }, align 32
@xfs_ifork_cache = external dso_local local_unnamed_addr global ptr, align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dp->i_forkoff\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [144 x i8], [48 x i8] } { [144 x i8] c"totsize > sizeof(xfs_attr_sf_hdr_t) || (args->op_flags & XFS_DA_OP_ADDNAME) || !xfs_has_attr2(mp) || dp->i_df.if_format == XFS_DINODE_FMT_BTREE\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"args->dp->i_afp->if_format == XFS_DINODE_FMT_LOCAL\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tmpbuffer != NULL\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"blkno == 0\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"error == -ENOATTR\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"error != -ENOSPC\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ip->i_afp->if_format == XFS_DINODE_FMT_LOCAL\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xfs_has_attr2(dp->i_mount)\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dp->i_df.if_format != XFS_DINODE_FMT_BTREE\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"entry->flags & XFS_ATTR_LOCAL\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"oldblk->magic == XFS_ATTR_LEAF_MAGIC\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"args->index >= 0 && args->index <= ichdr.count\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ichdr.count > 0 && ichdr.count < args->geo->blksize / 8\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"args->index >= 0 && args->index < ichdr.count\00", [50 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"ichdr.firstused >= ichdr.count * sizeof(*entry) + xfs_attr3_leaf_hdr_size(leaf)\00", [48 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"be16_to_cpu(entry->nameidx) >= ichdr.firstused\00", [49 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"be16_to_cpu(entry->nameidx) < args->geo->blksize\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ichdr.freemap[i].base < args->geo->blksize\00", [53 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ichdr.freemap[i].size < args->geo->blksize\00", [53 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ichdr.firstused != 0\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ichdr.count < args->geo->blksize / 8\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"args->index < ichdr.count\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"name_loc->namelen == args->namelen\00", [61 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"memcmp(args->name, name_loc->nameval, args->namelen) == 0\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"name_rmt->namelen == args->namelen\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"memcmp(args->name, name_rmt->name, args->namelen) == 0\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"entry->flags & XFS_ATTR_INCOMPLETE\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"args->index >= 0\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"be32_to_cpu(entry->hashval) == args->hashval\00", [51 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"namelen == args->namelen\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"memcmp(name, args->name, namelen) == 0\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(entry->flags & XFS_ATTR_LOCAL) == 0\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(entry->flags & XFS_ATTR_INCOMPLETE) == 0\00", [54 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"args->index < ichdr1.count\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"args->index2 < ichdr2.count\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"args->index2 >= 0\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"be32_to_cpu(entry1->hashval) == be32_to_cpu(entry2->hashval)\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"namelen1 == namelen2\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"memcmp(name1, name2, namelen1) == 0\00", [60 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"entry1->flags & XFS_ATTR_INCOMPLETE\00", [60 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(entry2->flags & XFS_ATTR_INCOMPLETE) == 0\00", [53 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(entry1->flags & XFS_ATTR_LOCAL) == 0\00", [58 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"!to->count && !to->usedbytes\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"geo->blksize > USHRT_MAX\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"from->firstused != XFS_ATTR3_LEAF_NULLOFF\00", [54 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"from->firstused == geo->blksize\00", [32 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_attr_sf_create = external dso_local global %struct.tracepoint, align 4
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_attr_sf_create.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_attr_sf_add = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_sf_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_sf_remove = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_sf_remove.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_sf_lookup = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_sf_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_sf_to_leaf = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_sf_to_leaf.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_leaf_to_sf = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_leaf_to_sf.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_leaf_to_node = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_leaf_to_node.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_leaf_create = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_leaf_create.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_leaf_split = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_leaf_split.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_leaf_add_old = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_leaf_add_old.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_leaf_add_new = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_leaf_add_new.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_leaf_add = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_leaf_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.58 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"mapindex >= 0 && mapindex < XFS_ATTR_LEAF_MAPSIZE\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"args->index >= 0 && args->index <= ichdr->count\00", [48 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ichdr->freemap[mapindex].base < args->geo->blksize\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(ichdr->freemap[mapindex].base & 0x3) == 0\00", [53 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"ichdr->freemap[mapindex].size >= xfs_attr_leaf_newentsize(args, NULL)\00", [58 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ichdr->freemap[mapindex].size < args->geo->blksize\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(ichdr->freemap[mapindex].size & 0x3) == 0\00", [53 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"(args->index == 0) || (be32_to_cpu(entry->hashval) >= be32_to_cpu((entry-1)->hashval))\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"(args->index == ichdr->count - 1) || (be32_to_cpu(entry->hashval) <= be32_to_cpu((entry+1)->hashval))\00", [58 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"ichdr->firstused >= ichdr->count * sizeof(xfs_attr_leaf_entry_t) + xfs_attr3_leaf_hdr_size(leaf)\00", [63 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_attr_leaf_add_work = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_leaf_add_work.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_leaf_compact = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_leaf_compact.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"blk1->magic == XFS_ATTR_LEAF_MAGIC\00", [61 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"blk2->magic == XFS_ATTR_LEAF_MAGIC\00", [61 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ichdr2.count == 0\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"state->inleaf == 0\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"state->inleaf == 1\00", [45 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_attr_leaf_rebalance = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_leaf_rebalance.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_leaf_toosmall = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_leaf_toosmall.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_leaf_remove = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_leaf_remove.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_leaf_unbalance = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_leaf_unbalance.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_leaf_lookup = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_leaf_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.73 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"ichdr_s->magic == XFS_ATTR_LEAF_MAGIC || ichdr_s->magic == XFS_ATTR3_LEAF_MAGIC\00", [48 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ichdr_s->magic == ichdr_d->magic\00", [63 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"ichdr_s->count > 0 && ichdr_s->count < args->geo->blksize / 8\00", [34 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"ichdr_s->firstused >= (ichdr_s->count * sizeof(*entry_s)) + xfs_attr3_leaf_hdr_size(leaf_s)\00", [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ichdr_d->count < args->geo->blksize / 8\00", [56 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"ichdr_d->firstused >= (ichdr_d->count * sizeof(*entry_d)) + xfs_attr3_leaf_hdr_size(leaf_d)\00", [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"start_s < ichdr_s->count\00", [39 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"start_d <= ichdr_d->count\00", [38 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"count <= ichdr_s->count\00", [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"be16_to_cpu(entry_s->nameidx) >= ichdr_s->firstused\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"be16_to_cpu(entry_d->nameidx) + tmp <= args->geo->blksize\00", [38 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"be16_to_cpu(entry_s->nameidx) + tmp <= args->geo->blksize\00", [38 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ichdr_d->firstused >= tmp\00", [38 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"((char *)entry_s + tmp) <= ((char *)leaf_s + args->geo->blksize)\00", [63 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_attr_leaf_clearflag = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_leaf_clearflag.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_leaf_setflag = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_leaf_setflag.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_attr_leaf_flipflags = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_leaf_flipflags.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 15342, i64 64494]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 16, i64 15342, i64 64494]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 16, i64 15342, i64 64494]
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 158, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 200, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 420, i32 10 }
@___asan_gen_.103 = private unnamed_addr constant [23 x i8] c"xfs_attr3_leaf_buf_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 419, i32 26 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 660, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 738, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 741, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 770, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 826, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 827, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 882, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 921, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 933, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 956, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 958, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1025, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1130, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1131, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1154, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1312, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1374, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2104, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2105, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2106, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2111, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2112, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2127, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2128, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2215, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2483, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2484, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2489, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2490, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2497, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2498, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2759, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2764, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2775, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2776, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2777, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2785, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2829, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2900, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2904, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2905, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2925, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2926, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2927, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2930, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2931, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2937, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 113, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 114, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 129, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 138, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2030, i32 1 }
@___asan_gen_.266 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 108, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1454, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1455, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1474, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1475, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1476, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1478, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1479, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1498, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1500, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1539, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1688, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1689, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1694, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1813, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1843, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2541, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2543, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2544, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2545, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2547, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2548, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2551, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2552, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2553, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2575, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2598, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2602, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2611, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.353 = private constant [33 x i8] c"../fs/xfs/libxfs/xfs_attr_leaf.c\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 2623, i32 3 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @xfs_attr3_leaf_buf_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_attr3_leaf_buf_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_attr3_leaf_hdr_from_disk(ptr nocapture noundef readonly %geo, ptr noundef %to, ptr noundef readonly %from) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %magic = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %from, i32 0, i32 2
  %0 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %magic, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %cond.false [
    i16 -1042, label %entry.cond.end_crit_edge
    i16 15342, label %entry.cond.end_crit_edge154
  ]

entry.cond.end_crit_edge154:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 159) #13
  %3 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %3)
  %.pr = load i16, ptr %magic, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge154
  %4 = phi i16 [ %1, %entry.cond.end_crit_edge ], [ %1, %entry.cond.end_crit_edge154 ], [ %.pr, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %4)
  %cmp13 = icmp eq i16 %4, 15342
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %5 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %from, align 8
  %7 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %to, align 4
  %back = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %from, i32 0, i32 1
  %8 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %back, align 4
  %back20 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %to, i32 0, i32 1
  %10 = ptrtoint ptr %back20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %back20, align 4
  %11 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %magic, align 8
  %magic24 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %to, i32 0, i32 2
  %13 = ptrtoint ptr %magic24 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %magic24, align 4
  %count = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, ptr %from, i32 0, i32 1
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %count, align 8
  %count25 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %to, i32 0, i32 3
  %16 = ptrtoint ptr %count25 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %count25, align 2
  %usedbytes = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, ptr %from, i32 0, i32 2
  %17 = ptrtoint ptr %usedbytes to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %usedbytes, align 2
  %usedbytes26 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %to, i32 0, i32 4
  %19 = ptrtoint ptr %usedbytes26 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %usedbytes26, align 4
  %20 = load i16, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %20)
  %cmp.i = icmp eq i16 %20, 15342
  %firstused.i = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, ptr %from, i32 0, i32 3
  %firstused5.i = getelementptr inbounds %struct.xfs_attr_leaf_hdr, ptr %from, i32 0, i32 3
  %conv6.sink.in.in.i = select i1 %cmp.i, ptr %firstused.i, ptr %firstused5.i
  %21 = ptrtoint ptr %conv6.sink.in.in.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %conv6.sink.in.i = load i16, ptr %conv6.sink.in.in.i, align 4
  %conv6.sink.i = zext i16 %conv6.sink.in.i to i32
  %22 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %to, i32 0, i32 5
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv6.sink.i, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv6.sink.in.i)
  %cmp9.i = icmp eq i16 %conv6.sink.in.i, 0
  br i1 %cmp9.i, label %if.then11.i, label %if.then.xfs_attr3_leaf_firstused_from_disk.exit_crit_edge

if.then.xfs_attr3_leaf_firstused_from_disk.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_attr3_leaf_firstused_from_disk.exit

if.then11.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i = icmp eq i16 %15, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool12.not.i = icmp eq i16 %18, 0
  %or.cond = select i1 %tobool.not.i, i1 %tobool12.not.i, i1 false
  br i1 %or.cond, label %if.then11.i.cond.end.i_crit_edge, label %cond.false.i, !prof !250

if.then11.i.cond.end.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef 113) #13
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then11.i.cond.end.i_crit_edge
  %24 = ptrtoint ptr %geo to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %geo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %25)
  %cmp16.i = icmp ugt i32 %25, 65535
  br i1 %cmp16.i, label %cond.end.i.cond.end26.i_crit_edge, label %cond.false25.i, !prof !251

cond.end.i.cond.end26.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end26.i

cond.false25.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 114) #13
  br label %cond.end26.i

cond.end26.i:                                     ; preds = %cond.false25.i, %cond.end.i.cond.end26.i_crit_edge
  %26 = ptrtoint ptr %geo to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %geo, align 4
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %22, align 4
  br label %xfs_attr3_leaf_firstused_from_disk.exit

xfs_attr3_leaf_firstused_from_disk.exit:          ; preds = %cond.end26.i, %if.then.xfs_attr3_leaf_firstused_from_disk.exit_crit_edge
  %holes = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, ptr %from, i32 0, i32 4
  %29 = ptrtoint ptr %holes to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %holes, align 2
  %holes27 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %to, i32 0, i32 6
  %31 = ptrtoint ptr %holes27 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %holes27, align 4
  %arrayidx = getelementptr %struct.xfs_attr3_leaf_hdr, ptr %from, i32 0, i32 6, i32 0
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx, align 4
  %arrayidx31 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %to, i32 0, i32 7, i32 0
  %34 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %arrayidx31, align 2
  %size = getelementptr %struct.xfs_attr3_leaf_hdr, ptr %from, i32 0, i32 6, i32 0, i32 1
  %35 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %size, align 2
  %size37 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %to, i32 0, i32 7, i32 0, i32 1
  %37 = ptrtoint ptr %size37 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %size37, align 2
  %arrayidx.1 = getelementptr %struct.xfs_attr3_leaf_hdr, ptr %from, i32 0, i32 6, i32 1
  %38 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.1, align 4
  %arrayidx31.1 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %to, i32 0, i32 7, i32 1
  %40 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %arrayidx31.1, align 2
  %size.1 = getelementptr %struct.xfs_attr3_leaf_hdr, ptr %from, i32 0, i32 6, i32 1, i32 1
  %41 = ptrtoint ptr %size.1 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %size.1, align 2
  %size37.1 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %to, i32 0, i32 7, i32 1, i32 1
  %43 = ptrtoint ptr %size37.1 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %size37.1, align 2
  %arrayidx.2 = getelementptr %struct.xfs_attr3_leaf_hdr, ptr %from, i32 0, i32 6, i32 2
  %44 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.2, align 4
  %arrayidx31.2 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %to, i32 0, i32 7, i32 2
  %46 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %arrayidx31.2, align 2
  %size.2 = getelementptr %struct.xfs_attr3_leaf_hdr, ptr %from, i32 0, i32 6, i32 2, i32 1
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %47 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %from, align 4
  %49 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %to, align 4
  %back44 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %from, i32 0, i32 1
  %50 = ptrtoint ptr %back44 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %back44, align 4
  %back45 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %to, i32 0, i32 1
  %52 = ptrtoint ptr %back45 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %back45, align 4
  %53 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %magic, align 4
  %magic49 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %to, i32 0, i32 2
  %55 = ptrtoint ptr %magic49 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %magic49, align 4
  %count51 = getelementptr inbounds %struct.xfs_attr_leaf_hdr, ptr %from, i32 0, i32 1
  %56 = ptrtoint ptr %count51 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %count51, align 4
  %count52 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %to, i32 0, i32 3
  %58 = ptrtoint ptr %count52 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %count52, align 2
  %usedbytes54 = getelementptr inbounds %struct.xfs_attr_leaf_hdr, ptr %from, i32 0, i32 2
  %59 = ptrtoint ptr %usedbytes54 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %usedbytes54, align 2
  %usedbytes55 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %to, i32 0, i32 4
  %61 = ptrtoint ptr %usedbytes55 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %usedbytes55, align 4
  %62 = load i16, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %62)
  %cmp.i130 = icmp eq i16 %62, 15342
  %firstused.i131 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, ptr %from, i32 0, i32 3
  %firstused5.i132 = getelementptr inbounds %struct.xfs_attr_leaf_hdr, ptr %from, i32 0, i32 3
  %conv6.sink.in.in.i133 = select i1 %cmp.i130, ptr %firstused.i131, ptr %firstused5.i132
  %63 = ptrtoint ptr %conv6.sink.in.in.i133 to i32
  call void @__asan_load2_noabort(i32 %63)
  %conv6.sink.in.i134 = load i16, ptr %conv6.sink.in.in.i133, align 4
  %conv6.sink.i135 = zext i16 %conv6.sink.in.i134 to i32
  %64 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %to, i32 0, i32 5
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv6.sink.i135, ptr %64, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv6.sink.in.i134)
  %cmp9.i136 = icmp eq i16 %conv6.sink.in.i134, 0
  br i1 %cmp9.i136, label %if.then11.i139, label %if.end.xfs_attr3_leaf_firstused_from_disk.exit148_crit_edge

if.end.xfs_attr3_leaf_firstused_from_disk.exit148_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_attr3_leaf_firstused_from_disk.exit148

if.then11.i139:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool.not.i138 = icmp eq i16 %57, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool12.not.i141 = icmp eq i16 %60, 0
  %or.cond149 = select i1 %tobool.not.i138, i1 %tobool12.not.i141, i1 false
  br i1 %or.cond149, label %if.then11.i139.cond.end.i145_crit_edge, label %cond.false.i143, !prof !250

if.then11.i139.cond.end.i145_crit_edge:           ; preds = %if.then11.i139
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i145

cond.false.i143:                                  ; preds = %if.then11.i139
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef 113) #13
  br label %cond.end.i145

cond.end.i145:                                    ; preds = %cond.false.i143, %if.then11.i139.cond.end.i145_crit_edge
  %66 = ptrtoint ptr %geo to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %geo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %67)
  %cmp16.i144 = icmp ugt i32 %67, 65535
  br i1 %cmp16.i144, label %cond.end.i145.cond.end26.i147_crit_edge, label %cond.false25.i146, !prof !251

cond.end.i145.cond.end26.i147_crit_edge:          ; preds = %cond.end.i145
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end26.i147

cond.false25.i146:                                ; preds = %cond.end.i145
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 114) #13
  br label %cond.end26.i147

cond.end26.i147:                                  ; preds = %cond.false25.i146, %cond.end.i145.cond.end26.i147_crit_edge
  %68 = ptrtoint ptr %geo to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %geo, align 4
  %70 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %64, align 4
  br label %xfs_attr3_leaf_firstused_from_disk.exit148

xfs_attr3_leaf_firstused_from_disk.exit148:       ; preds = %cond.end26.i147, %if.end.xfs_attr3_leaf_firstused_from_disk.exit148_crit_edge
  %holes57 = getelementptr inbounds %struct.xfs_attr_leaf_hdr, ptr %from, i32 0, i32 4
  %71 = ptrtoint ptr %holes57 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %holes57, align 2
  %holes58 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %to, i32 0, i32 6
  %73 = ptrtoint ptr %holes58 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %holes58, align 4
  %arrayidx65 = getelementptr %struct.xfs_attr_leaf_hdr, ptr %from, i32 0, i32 6, i32 0
  %74 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx65, align 4
  %arrayidx68 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %to, i32 0, i32 7, i32 0
  %76 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %arrayidx68, align 2
  %size73 = getelementptr %struct.xfs_attr_leaf_hdr, ptr %from, i32 0, i32 6, i32 0, i32 1
  %77 = ptrtoint ptr %size73 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %size73, align 2
  %size76 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %to, i32 0, i32 7, i32 0, i32 1
  %79 = ptrtoint ptr %size76 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %size76, align 2
  %arrayidx65.1 = getelementptr %struct.xfs_attr_leaf_hdr, ptr %from, i32 0, i32 6, i32 1
  %80 = ptrtoint ptr %arrayidx65.1 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx65.1, align 4
  %arrayidx68.1 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %to, i32 0, i32 7, i32 1
  %82 = ptrtoint ptr %arrayidx68.1 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %arrayidx68.1, align 2
  %size73.1 = getelementptr %struct.xfs_attr_leaf_hdr, ptr %from, i32 0, i32 6, i32 1, i32 1
  %83 = ptrtoint ptr %size73.1 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %size73.1, align 2
  %size76.1 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %to, i32 0, i32 7, i32 1, i32 1
  %85 = ptrtoint ptr %size76.1 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %size76.1, align 2
  %arrayidx65.2 = getelementptr %struct.xfs_attr_leaf_hdr, ptr %from, i32 0, i32 6, i32 2
  %86 = ptrtoint ptr %arrayidx65.2 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx65.2, align 4
  %arrayidx68.2 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %to, i32 0, i32 7, i32 2
  %88 = ptrtoint ptr %arrayidx68.2 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %arrayidx68.2, align 2
  %size73.2 = getelementptr %struct.xfs_attr_leaf_hdr, ptr %from, i32 0, i32 6, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %xfs_attr3_leaf_firstused_from_disk.exit148, %xfs_attr3_leaf_firstused_from_disk.exit
  %size73.2.sink = phi ptr [ %size73.2, %xfs_attr3_leaf_firstused_from_disk.exit148 ], [ %size.2, %xfs_attr3_leaf_firstused_from_disk.exit ]
  %89 = ptrtoint ptr %size73.2.sink to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %size73.2.sink, align 2
  %size76.2 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %to, i32 0, i32 7, i32 2, i32 1
  %91 = ptrtoint ptr %size76.2 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %size76.2, align 2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_attr3_leaf_hdr_to_disk(ptr nocapture noundef readonly %geo, ptr noundef writeonly %to, ptr nocapture noundef readonly %from) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %magic = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %from, i32 0, i32 2
  %0 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %magic, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.87)
  switch i16 %1, label %cond.false [
    i16 -1042, label %entry.cond.end_crit_edge
    i16 15342, label %entry.cond.end_crit_edge148
  ]

entry.cond.end_crit_edge148:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 201) #13
  %3 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %3)
  %.pr = load i16, ptr %magic, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge148
  %4 = phi i16 [ %1, %entry.cond.end_crit_edge ], [ %1, %entry.cond.end_crit_edge148 ], [ %.pr, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %4)
  %cmp9 = icmp eq i16 %4, 15342
  %5 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %from, align 4
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %7 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %to, align 8
  %back = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %from, i32 0, i32 1
  %8 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %back, align 4
  %back14 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %to, i32 0, i32 1
  %10 = ptrtoint ptr %back14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %back14, align 4
  %11 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %magic, align 4
  %magic18 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %to, i32 0, i32 2
  %13 = ptrtoint ptr %magic18 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %magic18, align 8
  %count = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %from, i32 0, i32 3
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %count, align 2
  %count19 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, ptr %to, i32 0, i32 1
  %16 = ptrtoint ptr %count19 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %count19, align 8
  %usedbytes = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %from, i32 0, i32 4
  %17 = ptrtoint ptr %usedbytes to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %usedbytes, align 4
  %usedbytes20 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, ptr %to, i32 0, i32 2
  %19 = ptrtoint ptr %usedbytes20 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %usedbytes20, align 2
  %firstused1.i = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %from, i32 0, i32 5
  %20 = ptrtoint ptr %firstused1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %firstused1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 0
  br i1 %cmp.not.i, label %cond.false.i, label %if.then.cond.end.i_crit_edge, !prof !252

if.then.cond.end.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 129) #13
  %22 = ptrtoint ptr %firstused1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr.i = load i32, ptr %firstused1.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then.cond.end.i_crit_edge
  %23 = phi i32 [ %21, %if.then.cond.end.i_crit_edge ], [ %.pr.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %23)
  %cmp4.i = icmp ugt i32 %23, 65535
  br i1 %cmp4.i, label %if.then.i, label %cond.end.i.xfs_attr3_leaf_firstused_to_disk.exit_crit_edge

cond.end.i.xfs_attr3_leaf_firstused_to_disk.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_attr3_leaf_firstused_to_disk.exit

if.then.i:                                        ; preds = %cond.end.i
  %24 = ptrtoint ptr %geo to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %geo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp6.i = icmp eq i32 %23, %25
  br i1 %cmp6.i, label %if.then.i.xfs_attr3_leaf_firstused_to_disk.exit_crit_edge, label %cond.false14.i, !prof !251

if.then.i.xfs_attr3_leaf_firstused_to_disk.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_attr3_leaf_firstused_to_disk.exit

cond.false14.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 138) #13
  br label %xfs_attr3_leaf_firstused_to_disk.exit

xfs_attr3_leaf_firstused_to_disk.exit:            ; preds = %cond.false14.i, %if.then.i.xfs_attr3_leaf_firstused_to_disk.exit_crit_edge, %cond.end.i.xfs_attr3_leaf_firstused_to_disk.exit_crit_edge
  %firstused.0.i = phi i32 [ %23, %cond.end.i.xfs_attr3_leaf_firstused_to_disk.exit_crit_edge ], [ 0, %if.then.i.xfs_attr3_leaf_firstused_to_disk.exit_crit_edge ], [ 0, %cond.false14.i ]
  %26 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %27)
  %cmp16.i = icmp eq i16 %27, 15342
  %conv19.i = trunc i32 %firstused.0.i to i16
  %firstused22.i = getelementptr inbounds %struct.xfs_attr_leaf_hdr, ptr %to, i32 0, i32 3
  %firstused20.i = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, ptr %to, i32 0, i32 3
  %firstused22.sink.i = select i1 %cmp16.i, ptr %firstused20.i, ptr %firstused22.i
  %28 = ptrtoint ptr %firstused22.sink.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv19.i, ptr %firstused22.sink.i, align 4
  %holes = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %from, i32 0, i32 6
  %29 = ptrtoint ptr %holes to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %holes, align 4
  %holes21 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, ptr %to, i32 0, i32 4
  %31 = ptrtoint ptr %holes21 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %holes21, align 2
  %pad1 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, ptr %to, i32 0, i32 5
  %32 = ptrtoint ptr %pad1 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %pad1, align 1
  %arrayidx = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %from, i32 0, i32 7, i32 0
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx, align 2
  %arrayidx25 = getelementptr %struct.xfs_attr3_leaf_hdr, ptr %to, i32 0, i32 6, i32 0
  %35 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %arrayidx25, align 4
  %size = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %from, i32 0, i32 7, i32 0, i32 1
  %36 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %size, align 2
  %size31 = getelementptr %struct.xfs_attr3_leaf_hdr, ptr %to, i32 0, i32 6, i32 0, i32 1
  %38 = ptrtoint ptr %size31 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %size31, align 2
  %arrayidx.1 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %from, i32 0, i32 7, i32 1
  %39 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.1, align 2
  %arrayidx25.1 = getelementptr %struct.xfs_attr3_leaf_hdr, ptr %to, i32 0, i32 6, i32 1
  %41 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %arrayidx25.1, align 4
  %size.1 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %from, i32 0, i32 7, i32 1, i32 1
  %42 = ptrtoint ptr %size.1 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %size.1, align 2
  %size31.1 = getelementptr %struct.xfs_attr3_leaf_hdr, ptr %to, i32 0, i32 6, i32 1, i32 1
  %44 = ptrtoint ptr %size31.1 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %size31.1, align 2
  %arrayidx.2 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %from, i32 0, i32 7, i32 2
  %45 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx.2, align 2
  %arrayidx25.2 = getelementptr %struct.xfs_attr3_leaf_hdr, ptr %to, i32 0, i32 6, i32 2
  %47 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %arrayidx25.2, align 4
  %size.2 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %from, i32 0, i32 7, i32 2, i32 1
  %48 = ptrtoint ptr %size.2 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %size.2, align 2
  %size31.2 = getelementptr %struct.xfs_attr3_leaf_hdr, ptr %to, i32 0, i32 6, i32 2, i32 1
  %50 = ptrtoint ptr %size31.2 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %size31.2, align 2
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %51 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %6, ptr %to, align 4
  %back36 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %from, i32 0, i32 1
  %52 = ptrtoint ptr %back36 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %back36, align 4
  %back39 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %to, i32 0, i32 1
  %54 = ptrtoint ptr %back39 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %back39, align 4
  %55 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %magic, align 4
  %magic43 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %to, i32 0, i32 2
  %57 = ptrtoint ptr %magic43 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %magic43, align 4
  %count44 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %from, i32 0, i32 3
  %58 = ptrtoint ptr %count44 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %count44, align 2
  %count46 = getelementptr inbounds %struct.xfs_attr_leaf_hdr, ptr %to, i32 0, i32 1
  %60 = ptrtoint ptr %count46 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %count46, align 4
  %usedbytes47 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %from, i32 0, i32 4
  %61 = ptrtoint ptr %usedbytes47 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %usedbytes47, align 4
  %usedbytes49 = getelementptr inbounds %struct.xfs_attr_leaf_hdr, ptr %to, i32 0, i32 2
  %63 = ptrtoint ptr %usedbytes49 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %usedbytes49, align 2
  %firstused1.i127 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %from, i32 0, i32 5
  %64 = ptrtoint ptr %firstused1.i127 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %firstused1.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.not.i128 = icmp eq i32 %65, 0
  br i1 %cmp.not.i128, label %cond.false.i130, label %if.end.cond.end.i132_crit_edge, !prof !252

if.end.cond.end.i132_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i132

cond.false.i130:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 129) #13
  %66 = ptrtoint ptr %firstused1.i127 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pr.i129 = load i32, ptr %firstused1.i127, align 4
  br label %cond.end.i132

cond.end.i132:                                    ; preds = %cond.false.i130, %if.end.cond.end.i132_crit_edge
  %67 = phi i32 [ %65, %if.end.cond.end.i132_crit_edge ], [ %.pr.i129, %cond.false.i130 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %67)
  %cmp4.i131 = icmp ugt i32 %67, 65535
  br i1 %cmp4.i131, label %if.then.i134, label %cond.end.i132.xfs_attr3_leaf_firstused_to_disk.exit143_crit_edge

cond.end.i132.xfs_attr3_leaf_firstused_to_disk.exit143_crit_edge: ; preds = %cond.end.i132
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_attr3_leaf_firstused_to_disk.exit143

if.then.i134:                                     ; preds = %cond.end.i132
  %68 = ptrtoint ptr %geo to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %geo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp6.i133 = icmp eq i32 %67, %69
  br i1 %cmp6.i133, label %if.then.i134.xfs_attr3_leaf_firstused_to_disk.exit143_crit_edge, label %cond.false14.i135, !prof !251

if.then.i134.xfs_attr3_leaf_firstused_to_disk.exit143_crit_edge: ; preds = %if.then.i134
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_attr3_leaf_firstused_to_disk.exit143

cond.false14.i135:                                ; preds = %if.then.i134
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 138) #13
  br label %xfs_attr3_leaf_firstused_to_disk.exit143

xfs_attr3_leaf_firstused_to_disk.exit143:         ; preds = %cond.false14.i135, %if.then.i134.xfs_attr3_leaf_firstused_to_disk.exit143_crit_edge, %cond.end.i132.xfs_attr3_leaf_firstused_to_disk.exit143_crit_edge
  %firstused.0.i136 = phi i32 [ %67, %cond.end.i132.xfs_attr3_leaf_firstused_to_disk.exit143_crit_edge ], [ 0, %if.then.i134.xfs_attr3_leaf_firstused_to_disk.exit143_crit_edge ], [ 0, %cond.false14.i135 ]
  %70 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %71)
  %cmp16.i138 = icmp eq i16 %71, 15342
  %conv19.i139 = trunc i32 %firstused.0.i136 to i16
  %firstused22.i140 = getelementptr inbounds %struct.xfs_attr_leaf_hdr, ptr %to, i32 0, i32 3
  %firstused20.i141 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, ptr %to, i32 0, i32 3
  %firstused22.sink.i142 = select i1 %cmp16.i138, ptr %firstused20.i141, ptr %firstused22.i140
  %72 = ptrtoint ptr %firstused22.sink.i142 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv19.i139, ptr %firstused22.sink.i142, align 4
  %holes50 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %from, i32 0, i32 6
  %73 = ptrtoint ptr %holes50 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %holes50, align 4
  %holes52 = getelementptr inbounds %struct.xfs_attr_leaf_hdr, ptr %to, i32 0, i32 4
  %75 = ptrtoint ptr %holes52 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %holes52, align 2
  %pad154 = getelementptr inbounds %struct.xfs_attr_leaf_hdr, ptr %to, i32 0, i32 5
  %76 = ptrtoint ptr %pad154 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %pad154, align 1
  %arrayidx60 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %from, i32 0, i32 7, i32 0
  %77 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx60, align 2
  %arrayidx64 = getelementptr %struct.xfs_attr_leaf_hdr, ptr %to, i32 0, i32 6, i32 0
  %79 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %arrayidx64, align 4
  %size68 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %from, i32 0, i32 7, i32 0, i32 1
  %80 = ptrtoint ptr %size68 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %size68, align 2
  %size72 = getelementptr %struct.xfs_attr_leaf_hdr, ptr %to, i32 0, i32 6, i32 0, i32 1
  %82 = ptrtoint ptr %size72 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %size72, align 2
  %arrayidx60.1 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %from, i32 0, i32 7, i32 1
  %83 = ptrtoint ptr %arrayidx60.1 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx60.1, align 2
  %arrayidx64.1 = getelementptr %struct.xfs_attr_leaf_hdr, ptr %to, i32 0, i32 6, i32 1
  %85 = ptrtoint ptr %arrayidx64.1 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %arrayidx64.1, align 4
  %size68.1 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %from, i32 0, i32 7, i32 1, i32 1
  %86 = ptrtoint ptr %size68.1 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %size68.1, align 2
  %size72.1 = getelementptr %struct.xfs_attr_leaf_hdr, ptr %to, i32 0, i32 6, i32 1, i32 1
  %88 = ptrtoint ptr %size72.1 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %size72.1, align 2
  %arrayidx60.2 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %from, i32 0, i32 7, i32 2
  %89 = ptrtoint ptr %arrayidx60.2 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx60.2, align 2
  %arrayidx64.2 = getelementptr %struct.xfs_attr_leaf_hdr, ptr %to, i32 0, i32 6, i32 2
  %91 = ptrtoint ptr %arrayidx64.2 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %arrayidx64.2, align 4
  %size68.2 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %from, i32 0, i32 7, i32 2, i32 1
  %92 = ptrtoint ptr %size68.2 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %size68.2, align 2
  %size72.2 = getelementptr %struct.xfs_attr_leaf_hdr, ptr %to, i32 0, i32 6, i32 2, i32 1
  %94 = ptrtoint ptr %size72.2 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %size72.2, align 2
  br label %cleanup

cleanup:                                          ; preds = %xfs_attr3_leaf_firstused_to_disk.exit143, %xfs_attr3_leaf_firstused_to_disk.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_attr3_leaf_read_verify(ptr noundef %bp) #0 align 64 {
entry:
  %zero.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %4 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_addr.i, align 4
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %6 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %7, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zero.i.i.i) #13
  %8 = ptrtoint ptr %zero.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %zero.i.i.i, align 4
  %call.i.i.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %5, i32 noundef 12) #13
  %call1.i.i.i = call i32 @crc32c(i32 noundef %call.i.i.i, ptr noundef nonnull %zero.i.i.i, i32 noundef 4) #13
  %arrayidx.i.i.i = getelementptr i8, ptr %5, i32 16
  %sub.i.i.i = add i32 %shl.i, -16
  %call3.i.i.i = call i32 @crc32c(i32 noundef %call1.i.i.i, ptr noundef %arrayidx.i.i.i, i32 noundef %sub.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero.i.i.i) #13
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 12
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i, align 4
  %11 = xor i32 %call3.i.i.i, -1
  %12 = call i32 @llvm.bswap.i32(i32 %11) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.i.i.not = icmp eq i32 %10, %12
  br i1 %cmp.i.i.not, label %land.lhs.true.if.else_crit_edge, label %__here

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

__here:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !253
  call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -74, ptr noundef blockaddress(@xfs_attr3_leaf_read_verify, %__here)) #13
  br label %if.end5

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call2 = call ptr @xfs_attr3_leaf_verify(ptr noundef %bp)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.else.if.end5_crit_edge, label %if.then4

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef nonnull %call2) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.else.if.end5_crit_edge, %__here
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_attr3_leaf_write_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %2 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_log_item, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %4 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_addr, align 4
  %call = tail call ptr @xfs_attr3_leaf_verify(ptr noundef %bp)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef nonnull %call) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %6 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end3.if.end6_crit_edge, label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %li_lsn = getelementptr inbounds %struct.xfs_log_item, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %li_lsn to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %li_lsn, align 8
  %lsn = getelementptr inbounds %struct.xfs_da3_blkinfo, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %lsn to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %lsn, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %11 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_addr, align 4
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %13 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %14, 9
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 12
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %add.ptr.i.i.i, align 4
  %call.i.i.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %12, i32 noundef %shl.i) #13
  %16 = xor i32 %call.i.i.i, -1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #13
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %add.ptr.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_attr3_leaf_verify(ptr noundef %bp) #0 align 64 {
entry:
  %ichdr = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  %last_hashval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ichdr) #13
  %0 = call ptr @memset(ptr %ichdr, i32 255, i32 36)
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %1 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %b_mount, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %3 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_hashval) #13
  %5 = ptrtoint ptr %last_hashval to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %last_hashval, align 4
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 7
  %6 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m_attr_geo, align 32
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %7, ptr noundef nonnull %ichdr, ptr noundef %4)
  %8 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_addr, align 4
  %call = call ptr @xfs_da3_blkinfo_verify(ptr noundef %bp, ptr noundef %9) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %firstused = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 5
  %10 = ptrtoint ptr %firstused to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %firstused, align 4
  %12 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m_attr_geo, align 32
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp = icmp ugt i32 %11, %15
  br i1 %cmp, label %__here, label %if.end4

__here:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !254
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %4, i32 0, i32 2
  %16 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %17)
  %cmp.i = icmp eq i16 %17, 15342
  %..i = select i1 %cmp.i, i32 80, i32 32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %..i)
  %cmp7 = icmp ult i32 %11, %..i
  br i1 %cmp7, label %__here9, label %if.end11

__here9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !255
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %18 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_addr, align 4
  %magic.i146 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %magic.i146 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %magic.i146, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %21)
  %cmp.i147 = icmp eq i16 %21, 15342
  %entries.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %19, i32 0, i32 1
  %entries2.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %19, i32 0, i32 1
  %retval.0.i = select i1 %cmp.i147, ptr %entries.i, ptr %entries2.i
  %count = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 3
  %22 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %count, align 2
  %idxprom = zext i16 %23 to i32
  %arrayidx = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %idxprom
  %add.ptr = getelementptr i8, ptr %19, i32 %11
  %cmp16 = icmp ugt ptr %arrayidx, %add.ptr
  br i1 %cmp16, label %__here18, label %if.end20

__here18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !256
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %add.ptr24 = getelementptr i8, ptr %19, i32 %15
  %24 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp26150.not = icmp eq i16 %25, 0
  br i1 %cmp26150.not, label %if.end20.for.cond32.preheader_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  br label %for.body

if.end20.for.cond32.preheader_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond32.preheader

for.cond32.preheader:                             ; preds = %for.inc.for.cond32.preheader_crit_edge, %if.end20.for.cond32.preheader_crit_edge
  %26 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %m_attr_geo, align 32
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %arrayidx36 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 0
  %30 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx36, align 2
  %conv37 = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv37)
  %cmp40 = icmp ult i32 %29, %conv37
  br i1 %cmp40, label %for.cond32.preheader.__here43_crit_edge, label %if.end45

for.cond32.preheader.__here43_crit_edge:          ; preds = %for.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here43

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end20.for.body_crit_edge
  %ent.0152 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %retval.0.i, %if.end20.for.body_crit_edge ]
  %i.0151 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end20.for.body_crit_edge ]
  %call28 = call fastcc ptr @xfs_attr3_leaf_verify_entry(ptr noundef %2, ptr noundef %add.ptr24, ptr noundef %4, ptr noundef nonnull %ichdr, ptr noundef %ent.0152, i32 noundef %i.0151, ptr noundef nonnull %last_hashval)
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.xfs_attr_leaf_entry, ptr %ent.0152, i32 1
  %inc = add nuw nsw i32 %i.0151, 1
  %32 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %count, align 2
  %conv = zext i16 %33 to i32
  %cmp26 = icmp ult i32 %inc, %conv
  br i1 %cmp26, label %for.inc.for.body_crit_edge, label %for.inc.for.cond32.preheader_crit_edge

for.inc.for.cond32.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond32.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond32:                                       ; preds = %if.end93
  %arrayidx36.1 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx36.1, align 2
  %conv37.1 = zext i16 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv37.1)
  %cmp40.1 = icmp ult i32 %29, %conv37.1
  br i1 %cmp40.1, label %for.cond32.__here43_crit_edge, label %if.end45.1

for.cond32.__here43_crit_edge:                    ; preds = %for.cond32
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here43

if.end45.1:                                       ; preds = %for.cond32
  %and.1 = and i32 %conv37.1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool50.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool50.not.1, label %if.end54.1, label %if.end45.1.__here52_crit_edge

if.end45.1.__here52_crit_edge:                    ; preds = %if.end45.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here52

if.end54.1:                                       ; preds = %if.end45.1
  %size.1 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 1, i32 1
  %36 = ptrtoint ptr %size.1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %size.1, align 4
  %conv57.1 = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv57.1)
  %cmp60.1 = icmp ult i32 %29, %conv57.1
  br i1 %cmp60.1, label %if.end54.1.__here63_crit_edge, label %if.end65.1

if.end54.1.__here63_crit_edge:                    ; preds = %if.end54.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here63

if.end65.1:                                       ; preds = %if.end54.1
  %and70.1 = and i32 %conv57.1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.1)
  %tobool71.not.1 = icmp eq i32 %and70.1, 0
  br i1 %tobool71.not.1, label %if.end93.1, label %if.end65.1.__here73_crit_edge

if.end65.1.__here73_crit_edge:                    ; preds = %if.end65.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here73

if.end93.1:                                       ; preds = %if.end65.1
  %add.1 = add nuw nsw i32 %conv57.1, %conv37.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1, i32 %29)
  %cmp96.1 = icmp ugt i32 %add.1, %29
  br i1 %cmp96.1, label %if.end93.1.__here99_crit_edge, label %for.cond32.1

if.end93.1.__here99_crit_edge:                    ; preds = %if.end93.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here99

for.cond32.1:                                     ; preds = %if.end93.1
  %arrayidx36.2 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 2
  %38 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx36.2, align 2
  %conv37.2 = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv37.2)
  %cmp40.2 = icmp ult i32 %29, %conv37.2
  br i1 %cmp40.2, label %for.cond32.1.__here43_crit_edge, label %if.end45.2

for.cond32.1.__here43_crit_edge:                  ; preds = %for.cond32.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here43

if.end45.2:                                       ; preds = %for.cond32.1
  %and.2 = and i32 %conv37.2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool50.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool50.not.2, label %if.end54.2, label %if.end45.2.__here52_crit_edge

if.end45.2.__here52_crit_edge:                    ; preds = %if.end45.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here52

if.end54.2:                                       ; preds = %if.end45.2
  %size.2 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 2, i32 1
  %40 = ptrtoint ptr %size.2 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %size.2, align 4
  %conv57.2 = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv57.2)
  %cmp60.2 = icmp ult i32 %29, %conv57.2
  br i1 %cmp60.2, label %if.end54.2.__here63_crit_edge, label %if.end65.2

if.end54.2.__here63_crit_edge:                    ; preds = %if.end54.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here63

if.end65.2:                                       ; preds = %if.end54.2
  %and70.2 = and i32 %conv57.2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.2)
  %tobool71.not.2 = icmp eq i32 %and70.2, 0
  br i1 %tobool71.not.2, label %if.end93.2, label %if.end65.2.__here73_crit_edge

if.end65.2.__here73_crit_edge:                    ; preds = %if.end65.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here73

if.end93.2:                                       ; preds = %if.end65.2
  %add.2 = add nuw nsw i32 %conv57.2, %conv37.2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.2, i32 %29)
  %cmp96.2 = icmp ugt i32 %add.2, %29
  br i1 %cmp96.2, label %if.end93.2.__here99_crit_edge, label %if.end93.2.cleanup_crit_edge

if.end93.2.cleanup_crit_edge:                     ; preds = %if.end93.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end93.2.__here99_crit_edge:                    ; preds = %if.end93.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here99

__here43:                                         ; preds = %for.cond32.1.__here43_crit_edge, %for.cond32.__here43_crit_edge, %for.cond32.preheader.__here43_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !257
  br label %cleanup

if.end45:                                         ; preds = %for.cond32.preheader
  %and = and i32 %conv37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool50.not = icmp eq i32 %and, 0
  br i1 %tobool50.not, label %if.end54, label %if.end45.__here52_crit_edge

if.end45.__here52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here52

__here52:                                         ; preds = %if.end45.__here52_crit_edge, %if.end45.2.__here52_crit_edge, %if.end45.1.__here52_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !258
  br label %cleanup

if.end54:                                         ; preds = %if.end45
  %size = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 0, i32 1
  %42 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %size, align 4
  %conv57 = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv57)
  %cmp60 = icmp ult i32 %29, %conv57
  br i1 %cmp60, label %if.end54.__here63_crit_edge, label %if.end65

if.end54.__here63_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here63

__here63:                                         ; preds = %if.end54.__here63_crit_edge, %if.end54.2.__here63_crit_edge, %if.end54.1.__here63_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !259
  br label %cleanup

if.end65:                                         ; preds = %if.end54
  %and70 = and i32 %conv57, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end93, label %if.end65.__here73_crit_edge

if.end65.__here73_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here73

__here73:                                         ; preds = %if.end65.__here73_crit_edge, %if.end65.2.__here73_crit_edge, %if.end65.1.__here73_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !260
  br label %cleanup

if.end93:                                         ; preds = %if.end65
  %add = add nuw nsw i32 %conv57, %conv37
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %29)
  %cmp96 = icmp ugt i32 %add, %29
  br i1 %cmp96, label %if.end93.__here99_crit_edge, label %for.cond32

if.end93.__here99_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here99

__here99:                                         ; preds = %if.end93.__here99_crit_edge, %if.end93.2.__here99_crit_edge, %if.end93.1.__here99_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !261
  br label %cleanup

cleanup:                                          ; preds = %__here99, %__here73, %__here63, %__here52, %__here43, %if.end93.2.cleanup_crit_edge, %for.body.cleanup_crit_edge, %__here18, %__here9, %__here, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ blockaddress(@xfs_attr3_leaf_verify, %__here), %__here ], [ blockaddress(@xfs_attr3_leaf_verify, %__here9), %__here9 ], [ blockaddress(@xfs_attr3_leaf_verify, %__here18), %__here18 ], [ blockaddress(@xfs_attr3_leaf_verify, %__here43), %__here43 ], [ blockaddress(@xfs_attr3_leaf_verify, %__here52), %__here52 ], [ blockaddress(@xfs_attr3_leaf_verify, %__here63), %__here63 ], [ blockaddress(@xfs_attr3_leaf_verify, %__here73), %__here73 ], [ blockaddress(@xfs_attr3_leaf_verify, %__here99), %__here99 ], [ %call, %entry.cleanup_crit_edge ], [ null, %if.end93.2.cleanup_crit_edge ], [ %call28, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_hashval) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr3_leaf_read(ptr noundef %tp, ptr noundef %dp, i32 noundef %bno, ptr noundef %bpp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfs_da_read_buf(ptr noundef %tp, ptr noundef %dp, i32 noundef %bno, i32 noundef 0, ptr noundef %bpp, i32 noundef 1, ptr noundef nonnull @xfs_attr3_leaf_buf_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %tobool1.not = icmp eq ptr %tp, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true2:                                   ; preds = %entry
  %0 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bpp, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @xfs_trans_buf_set_type(ptr noundef nonnull %tp, ptr noundef nonnull %1, i32 noundef 16) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da_read_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_buf_set_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_shortform_bytesfit(ptr noundef %dp, i32 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sb_inodesize, align 8
  %conv = zext i16 %3 to i32
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond.neg = select i1 %tobool.i.not, i32 -100, i32 -176
  %sub = add nsw i32 %cond.neg, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %bytes)
  %cmp = icmp ult i32 %sub, %bytes
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub10 = sub i32 %sub, %bytes
  %shr = lshr i32 %sub10, 3
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 8
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 8, i32 6
  %6 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp12 = icmp eq i8 %7, 0
  br i1 %cmp12, label %if.then14, label %if.end20

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub10)
  %cmp17.not = icmp ugt i32 %sub10, 7
  %spec.select = zext i1 %cmp17.not to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 23
  %8 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp22.not = icmp eq i8 %9, 0
  %conv35 = zext i8 %9 to i32
  %shl.neg = mul nsw i32 %conv35, -8
  %sub36 = add nsw i32 %shl.neg, %sub
  %cond39 = select i1 %cmp22.not, i32 0, i32 %sub36
  call void @__sanitizer_cov_trace_cmp4(i32 %cond39, i32 %bytes)
  %cmp40.not = icmp ult i32 %cond39, %bytes
  br i1 %cmp40.not, label %if.end45, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end45:                                         ; preds = %if.end20
  %and.i170 = and i64 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i170)
  %tobool.i171.not = icmp eq i64 %and.i170, 0
  br i1 %tobool.i171.not, label %if.end45.cleanup_crit_edge, label %if.end48

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end48:                                         ; preds = %if.end45
  %10 = ptrtoint ptr %i_df to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_df, align 8
  %conv52 = sext i8 %7 to i32
  %12 = zext i32 %conv52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %conv52, label %if.end48.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb62
  ]

if.end48.sw.epilog_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end48
  br i1 %cmp22.not, label %land.lhs.true, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %call56 = tail call i32 @xfs_default_attroffset(ptr noundef %dp) #13
  %conv57 = zext i32 %call56 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %conv57)
  %cmp58 = icmp sgt i64 %11, %conv57
  %spec.select162 = select i1 %cmp58, i64 52, i64 %11
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end48
  br i1 %cmp22.not, label %if.end74, label %if.then65

if.then65:                                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv35)
  %cmp68 = icmp ult i32 %shr, %conv35
  %.conv67 = select i1 %cmp68, i32 0, i32 %conv35
  br label %cleanup

if.end74:                                         ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #15
  %and.i173 = and i64 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i173)
  %tobool.i174.not = icmp eq i64 %and.i173, 0
  %cond77 = select i1 %tobool.i174.not, i32 24, i32 72
  %if_broot = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %if_broot to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %if_broot, align 8
  %bb_numrecs = getelementptr inbounds %struct.xfs_btree_block, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %bb_numrecs to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %bb_numrecs, align 2
  %conv79 = zext i16 %16 to i32
  %mul80 = shl nuw nsw i32 %conv79, 4
  %add81 = add nuw nsw i32 %mul80, %cond77
  %17 = zext i32 %add81 to i64
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end74, %land.lhs.true, %sw.bb.sw.epilog_crit_edge, %if.end48.sw.epilog_crit_edge
  %dsize.0 = phi i64 [ %11, %if.end48.sw.epilog_crit_edge ], [ %17, %if.end74 ], [ %11, %sw.bb.sw.epilog_crit_edge ], [ %spec.select162, %land.lhs.true ]
  %18 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sb_inodesize, align 8
  %conv100 = zext i16 %19 to i32
  %20 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %m_features.i, align 8
  %and.i176 = and i64 %21, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i176)
  %tobool.i177.not = icmp eq i64 %and.i176, 0
  %cond103.neg = select i1 %tobool.i177.not, i32 -100, i32 -176
  %sub104 = add nsw i32 %conv100, -36
  %sub105 = add nsw i32 %sub104, %cond103.neg
  %shr106 = ashr i32 %sub105, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr106)
  %cmp107.not = icmp slt i32 %shr, %shr106
  br i1 %cmp107.not, label %if.end110, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end110:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 52, i64 %dsize.0)
  %cmp84 = icmp sgt i64 %dsize.0, 52
  %extract.t = trunc i64 %dsize.0 to i32
  %phi.bo = add i32 %extract.t, 7
  %phi.bo159 = sdiv i32 %phi.bo, 8
  %cond89.off0 = select i1 %cmp84, i32 %phi.bo159, i32 7
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %cond89.off0)
  %cmp111.not = icmp slt i32 %shr, %cond89.off0
  %.shr = select i1 %cmp111.not, i32 0, i32 %shr
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %sw.epilog.cleanup_crit_edge, %if.then65, %if.end45.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then14 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ], [ %.conv67, %if.then65 ], [ %shr106, %sw.epilog.cleanup_crit_edge ], [ %.shr, %if.end110 ], [ %conv35, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_default_attroffset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_attr_shortform_create(ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 8
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_afp, align 8
  tail call fastcc void @trace_xfs_attr_sf_create(ptr noundef %args)
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !251

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 660) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp3 = icmp eq i8 %7, 2
  br i1 %cmp3, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %if_format to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %if_format, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  tail call void @xfs_idata_realloc(ptr noundef %1, i64 noundef 4, i32 noundef 1) #13
  %if_u1 = getelementptr inbounds %struct.xfs_ifork, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %if_u1, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 262144, ptr %10, align 2
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %12 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trans, align 4
  tail call void @xfs_trans_log_inode(ptr noundef %13, ptr noundef %1, i32 noundef 65) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_sf_create(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_sf_create, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_sf_create, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !251

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !263
  %call42 = tail call i32 @__traceiter_xfs_attr_sf_create(ptr noundef null, ptr noundef %args) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !264
  %13 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !251

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_sf_create, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_sf_create, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_sf_create.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_attr_sf_create.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 2030, ptr noundef nonnull @.str.56) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !266
  %31 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_idata_realloc(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_sf_findname(ptr nocapture noundef readonly %args, ptr noundef writeonly %sfep, ptr noundef writeonly %basep) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_afp, align 8
  %if_u1 = getelementptr inbounds %struct.xfs_ifork, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %if_u1, align 4
  %list = getelementptr inbounds %struct.xfs_attr_shortform, ptr %5, i32 0, i32 1
  %count = getelementptr inbounds %struct.xfs_attr_sf_hdr, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %count, align 2
  %conv = zext i8 %7 to i32
  %attr_filter.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp37.not = icmp eq i8 %7, 0
  br i1 %cmp37.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %namelen1.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %8 = ptrtoint ptr %namelen1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %namelen1.i, align 8
  %name3.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %base.040 = phi i32 [ 4, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %sfe.038 = phi ptr [ %list, %for.body.lr.ph ], [ %add.ptr.i, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %sfe.038 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sfe.038, align 1
  %conv.i = zext i8 %11 to i32
  %valuelen.i = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.038, i32 0, i32 1
  %12 = ptrtoint ptr %valuelen.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %valuelen.i, align 1
  %conv1.i = zext i8 %13 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %spec.select.i3.i = add nuw nsw i32 %add.i, %conv1.i
  %flags = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.038, i32 0, i32 2
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %9, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %nameval = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.038, i32 0, i32 3
  %16 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name3.i, align 4
  %bcmp.i = tail call i32 @bcmp(ptr %17, ptr %nameval, i32 %9) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp5.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp5.not.i, label %xfs_attr_match.exit, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

xfs_attr_match.exit:                              ; preds = %if.end.i
  %18 = ptrtoint ptr %attr_filter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %attr_filter.i, align 8
  %20 = and i8 %15, -122
  %and.i = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %and.i)
  %cmp9.not.i = icmp eq i32 %19, %and.i
  br i1 %cmp9.not.i, label %xfs_attr_match.exit.for.end_crit_edge, label %xfs_attr_match.exit.for.inc_crit_edge

xfs_attr_match.exit.for.inc_crit_edge:            ; preds = %xfs_attr_match.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

xfs_attr_match.exit.for.end_crit_edge:            ; preds = %xfs_attr_match.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %xfs_attr_match.exit.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %add.ptr.i = getelementptr i8, ptr %sfe.038, i32 %spec.select.i3.i
  %add = add i32 %spec.select.i3.i, %base.040
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %xfs_attr_match.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %sfe.0.lcssa = phi ptr [ %list, %entry.for.end_crit_edge ], [ %sfe.038, %xfs_attr_match.exit.for.end_crit_edge ], [ %add.ptr.i, %for.inc.for.end_crit_edge ]
  %base.0.lcssa = phi i32 [ 4, %entry.for.end_crit_edge ], [ %base.040, %xfs_attr_match.exit.for.end_crit_edge ], [ %add, %for.inc.for.end_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.042, %xfs_attr_match.exit.for.end_crit_edge ], [ %conv, %for.inc.for.end_crit_edge ]
  %cmp5.not = icmp eq ptr %sfep, null
  br i1 %cmp5.not, label %for.end.if.end8_crit_edge, label %if.then7

for.end.if.end8_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then7:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %sfep to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %sfe.0.lcssa, ptr %sfep, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %for.end.if.end8_crit_edge
  %cmp9.not = icmp eq ptr %basep, null
  br i1 %cmp9.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %basep to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %base.0.lcssa, ptr %basep, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8.if.end12_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %conv)
  %cmp13 = icmp eq i32 %i.0.lcssa, %conv
  %. = select i1 %cmp13, i32 -61, i32 -17
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_attr_shortform_add(ptr noundef %args, i32 noundef %forkoff) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_xfs_attr_sf_add(ptr noundef %args)
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %conv = trunc i32 %forkoff to i8
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %i_forkoff, align 4
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_afp, align 8
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp = icmp eq i8 %8, 1
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !251

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 738) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %if_u1 = getelementptr inbounds %struct.xfs_ifork, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %if_u1, align 4
  %11 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dp1, align 8
  %i_afp.i = getelementptr inbounds %struct.xfs_inode, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %i_afp.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_afp.i, align 8
  %if_u1.i = getelementptr inbounds %struct.xfs_ifork, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %if_u1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %if_u1.i, align 4
  %list.i = getelementptr inbounds %struct.xfs_attr_shortform, ptr %16, i32 0, i32 1
  %count.i = getelementptr inbounds %struct.xfs_attr_sf_hdr, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %count.i, align 2
  %conv.i = zext i8 %18 to i32
  %attr_filter.i.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp37.not.i = icmp eq i8 %18, 0
  br i1 %cmp37.not.i, label %cond.end.xfs_attr_sf_findname.exit_crit_edge, label %for.body.lr.ph.i

cond.end.xfs_attr_sf_findname.exit_crit_edge:     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_attr_sf_findname.exit

for.body.lr.ph.i:                                 ; preds = %cond.end
  %namelen1.i.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %19 = ptrtoint ptr %namelen1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %namelen1.i.i, align 8
  %name3.i.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.042.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %sfe.038.i = phi ptr [ %list.i, %for.body.lr.ph.i ], [ %add.ptr.i.i, %for.inc.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %sfe.038.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sfe.038.i, align 1
  %conv.i.i = zext i8 %22 to i32
  %valuelen.i.i = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.038.i, i32 0, i32 1
  %23 = ptrtoint ptr %valuelen.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %valuelen.i.i, align 1
  %conv1.i.i = zext i8 %24 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 3
  %spec.select.i3.i.i = add nuw nsw i32 %add.i.i, %conv1.i.i
  %flags.i = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.038.i, i32 0, i32 2
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %flags.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv.i.i)
  %cmp.not.i.i = icmp eq i32 %20, %conv.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i.i:                                       ; preds = %for.body.i
  %nameval.i = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.038.i, i32 0, i32 3
  %27 = ptrtoint ptr %name3.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name3.i.i, align 4
  %bcmp.i.i = tail call i32 @bcmp(ptr %28, ptr %nameval.i, i32 %20) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp5.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp5.not.i.i, label %xfs_attr_match.exit.i, label %if.end.i.i.for.inc.i_crit_edge

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

xfs_attr_match.exit.i:                            ; preds = %if.end.i.i
  %29 = ptrtoint ptr %attr_filter.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %attr_filter.i.i, align 8
  %31 = and i8 %26, -122
  %and.i.i = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %and.i.i)
  %cmp9.not.i.i = icmp eq i32 %30, %and.i.i
  br i1 %cmp9.not.i.i, label %xfs_attr_match.exit.i.xfs_attr_sf_findname.exit_crit_edge, label %xfs_attr_match.exit.i.for.inc.i_crit_edge

xfs_attr_match.exit.i.for.inc.i_crit_edge:        ; preds = %xfs_attr_match.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

xfs_attr_match.exit.i.xfs_attr_sf_findname.exit_crit_edge: ; preds = %xfs_attr_match.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_attr_sf_findname.exit

for.inc.i:                                        ; preds = %xfs_attr_match.exit.i.for.inc.i_crit_edge, %if.end.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %sfe.038.i, i32 %spec.select.i3.i.i
  %inc.i = add nuw nsw i32 %i.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

xfs_attr_sf_findname.exit:                        ; preds = %xfs_attr_match.exit.i.xfs_attr_sf_findname.exit_crit_edge, %cond.end.xfs_attr_sf_findname.exit_crit_edge
  %sfe.0.lcssa.i = phi ptr [ %list.i, %cond.end.xfs_attr_sf_findname.exit_crit_edge ], [ %sfe.038.i, %xfs_attr_match.exit.i.xfs_attr_sf_findname.exit_crit_edge ]
  %i.0.lcssa.i = phi i32 [ 0, %cond.end.xfs_attr_sf_findname.exit_crit_edge ], [ %i.042.i, %xfs_attr_match.exit.i.xfs_attr_sf_findname.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %conv.i)
  %cmp13.i.not = icmp eq i32 %i.0.lcssa.i, %conv.i
  br i1 %cmp13.i.not, label %xfs_attr_sf_findname.exit.if.end_crit_edge, label %if.then

xfs_attr_sf_findname.exit.if.end_crit_edge:       ; preds = %xfs_attr_sf_findname.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %xfs_attr_sf_findname.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 741) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %xfs_attr_sf_findname.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge
  %sfe.0.lcssa.i62 = phi ptr [ %sfe.0.lcssa.i, %if.then ], [ %sfe.0.lcssa.i, %xfs_attr_sf_findname.exit.if.end_crit_edge ], [ %add.ptr.i.i, %for.inc.i.if.end_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %sfe.0.lcssa.i62 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %namelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %32 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %namelen, align 8
  %valuelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 5
  %34 = ptrtoint ptr %valuelen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %valuelen, align 4
  %conv.i50 = and i32 %33, 255
  %add.i51 = add nuw nsw i32 %conv.i50, 3
  %conv1.i = and i32 %35, 255
  %add2.i = add nuw nsw i32 %add.i51, %conv1.i
  %36 = zext i32 %add2.i to i64
  tail call void @xfs_idata_realloc(ptr noundef %1, i64 noundef %36, i32 noundef 1) #13
  %37 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %if_u1, align 4
  %add.ptr = getelementptr i8, ptr %38, i32 %sub.ptr.sub
  %39 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %namelen, align 8
  %conv13 = trunc i32 %40 to i8
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv13, ptr %add.ptr, align 1
  %42 = ptrtoint ptr %valuelen to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %valuelen, align 4
  %conv16 = trunc i32 %43 to i8
  %valuelen17 = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %add.ptr, i32 0, i32 1
  %44 = ptrtoint ptr %valuelen17 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv16, ptr %valuelen17, align 1
  %45 = ptrtoint ptr %attr_filter.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %attr_filter.i.i, align 8
  %conv18 = trunc i32 %46 to i8
  %flags = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %add.ptr, i32 0, i32 2
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv18, ptr %flags, align 1
  %nameval = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %add.ptr, i32 0, i32 3
  %name = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %48 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name, align 4
  %50 = load i32, ptr %namelen, align 8
  %51 = call ptr @memcpy(ptr %nameval, ptr %49, i32 %50)
  %52 = load i32, ptr %namelen, align 8
  %arrayidx = getelementptr %struct.xfs_attr_sf_entry, ptr %add.ptr, i32 0, i32 3, i32 %52
  %value = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 4
  %53 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %value, align 8
  %55 = load i32, ptr %valuelen, align 4
  %56 = call ptr @memcpy(ptr %arrayidx, ptr %54, i32 %55)
  %count = getelementptr inbounds %struct.xfs_attr_sf_hdr, ptr %38, i32 0, i32 1
  %57 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %count, align 2
  %inc = add i8 %58, 1
  store i8 %inc, ptr %count, align 2
  %conv24 = trunc i32 %add2.i to i16
  %59 = ptrtoint ptr %38 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %38, align 2
  %add.i52 = add i16 %60, %conv24
  store i16 %add.i52, ptr %38, align 2
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %61 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %trans, align 4
  tail call void @xfs_trans_log_inode(ptr noundef %62, ptr noundef %1, i32 noundef 65) #13
  %63 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %trans, align 4
  tail call fastcc void @xfs_sbversion_add_attr2(ptr noundef %3, ptr noundef %64)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_sf_add(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_sf_add, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_sf_add, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !251

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !267
  %call42 = tail call i32 @__traceiter_xfs_attr_sf_add(ptr noundef null, ptr noundef %args) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !268
  %13 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !251

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_sf_add, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_sf_add, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_sf_add.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_attr_sf_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 2028, ptr noundef nonnull @.str.56) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !266
  %31 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_sbversion_add_attr2(ptr noundef %mp, ptr noundef %tp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %sb_features2 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 44
  %2 = ptrtoint ptr %sb_features2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_features2, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and.i13 = and i64 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i13)
  %tobool.i14 = icmp ne i64 %and.i13, 0
  %or.cond = select i1 %tobool.not, i1 %tobool.i14, i1 false
  br i1 %or.cond, label %if.end5, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %m_sb_lock = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 76
  tail call void @_raw_spin_lock(ptr noundef %m_sb_lock) #13
  %4 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i, align 8
  %or.i = or i64 %5, 1024
  store i64 %or.i, ptr %m_features.i, align 8
  %sb_versionnum.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 15
  %6 = ptrtoint ptr %sb_versionnum.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sb_versionnum.i.i, align 4
  %8 = or i16 %7, -32768
  store i16 %8, ptr %sb_versionnum.i.i, align 4
  %9 = ptrtoint ptr %sb_features2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sb_features2, align 8
  %or2.i.i = or i32 %10, 8
  store i32 %or2.i.i, ptr %sb_features2, align 8
  tail call void @_raw_spin_unlock(ptr noundef %m_sb_lock) #13
  tail call void @xfs_log_sb(ptr noundef %tp) #13
  br label %return

return:                                           ; preds = %if.end5, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_attr_fork_remove(ptr noundef %ip, ptr noundef %tp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %0 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_afp, align 8
  %if_nextents = getelementptr inbounds %struct.xfs_ifork, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %if_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !251

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 770) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %4 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_afp, align 8
  tail call void @xfs_idestroy_fork(ptr noundef %5) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_ifork_cache to i32))
  %6 = load ptr, ptr @xfs_ifork_cache, align 4
  %7 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_afp, align 8
  tail call void @kmem_cache_free(ptr noundef %6, ptr noundef %8) #13
  %9 = ptrtoint ptr %i_afp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %i_afp, align 8
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %10 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %i_forkoff, align 4
  tail call void @xfs_trans_log_inode(ptr noundef %tp, ptr noundef %ip, i32 noundef 1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_idestroy_fork(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_sf_removename(ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_xfs_attr_sf_remove(ptr noundef %args)
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_afp, align 8
  %if_u1 = getelementptr inbounds %struct.xfs_ifork, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %if_u1, align 4
  %list.i = getelementptr inbounds %struct.xfs_attr_shortform, ptr %7, i32 0, i32 1
  %count.i = getelementptr inbounds %struct.xfs_attr_sf_hdr, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %count.i, align 2
  %conv.i = zext i8 %9 to i32
  %attr_filter.i.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp37.not.i = icmp eq i8 %9, 0
  br i1 %cmp37.not.i, label %entry.xfs_attr_sf_findname.exit_crit_edge, label %for.body.lr.ph.i

entry.xfs_attr_sf_findname.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_attr_sf_findname.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %namelen1.i.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %10 = ptrtoint ptr %namelen1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %namelen1.i.i, align 8
  %name3.i.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.042.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %base.040.i = phi i32 [ 4, %for.body.lr.ph.i ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %sfe.038.i = phi ptr [ %list.i, %for.body.lr.ph.i ], [ %add.ptr.i.i, %for.inc.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %sfe.038.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sfe.038.i, align 1
  %conv.i.i = zext i8 %13 to i32
  %valuelen.i.i = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.038.i, i32 0, i32 1
  %14 = ptrtoint ptr %valuelen.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %valuelen.i.i, align 1
  %conv1.i.i = zext i8 %15 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 3
  %spec.select.i3.i.i = add nuw nsw i32 %add.i.i, %conv1.i.i
  %flags.i = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.038.i, i32 0, i32 2
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flags.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv.i.i)
  %cmp.not.i.i = icmp eq i32 %11, %conv.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i.i:                                       ; preds = %for.body.i
  %nameval.i = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.038.i, i32 0, i32 3
  %18 = ptrtoint ptr %name3.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name3.i.i, align 4
  %bcmp.i.i = tail call i32 @bcmp(ptr %19, ptr %nameval.i, i32 %11) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp5.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp5.not.i.i, label %xfs_attr_match.exit.i, label %if.end.i.i.for.inc.i_crit_edge

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

xfs_attr_match.exit.i:                            ; preds = %if.end.i.i
  %20 = ptrtoint ptr %attr_filter.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %attr_filter.i.i, align 8
  %22 = and i8 %17, -122
  %and.i.i = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %and.i.i)
  %cmp9.not.i.i = icmp eq i32 %21, %and.i.i
  br i1 %cmp9.not.i.i, label %xfs_attr_match.exit.i.xfs_attr_sf_findname.exit_crit_edge, label %xfs_attr_match.exit.i.for.inc.i_crit_edge

xfs_attr_match.exit.i.for.inc.i_crit_edge:        ; preds = %xfs_attr_match.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

xfs_attr_match.exit.i.xfs_attr_sf_findname.exit_crit_edge: ; preds = %xfs_attr_match.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_attr_sf_findname.exit

for.inc.i:                                        ; preds = %xfs_attr_match.exit.i.for.inc.i_crit_edge, %if.end.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %sfe.038.i, i32 %spec.select.i3.i.i
  %add.i = add i32 %spec.select.i3.i.i, %base.040.i
  %inc.i = add nuw nsw i32 %i.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

xfs_attr_sf_findname.exit:                        ; preds = %xfs_attr_match.exit.i.xfs_attr_sf_findname.exit_crit_edge, %entry.xfs_attr_sf_findname.exit_crit_edge
  %sfe.0.lcssa.i = phi ptr [ %list.i, %entry.xfs_attr_sf_findname.exit_crit_edge ], [ %sfe.038.i, %xfs_attr_match.exit.i.xfs_attr_sf_findname.exit_crit_edge ]
  %base.0.lcssa.i = phi i32 [ 4, %entry.xfs_attr_sf_findname.exit_crit_edge ], [ %base.040.i, %xfs_attr_match.exit.i.xfs_attr_sf_findname.exit_crit_edge ]
  %i.0.lcssa.i = phi i32 [ 0, %entry.xfs_attr_sf_findname.exit_crit_edge ], [ %i.042.i, %xfs_attr_match.exit.i.xfs_attr_sf_findname.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %conv.i)
  %cmp13.i.not = icmp eq i32 %i.0.lcssa.i, %conv.i
  br i1 %cmp13.i.not, label %xfs_attr_sf_findname.exit.cleanup_crit_edge, label %if.end

xfs_attr_sf_findname.exit.cleanup_crit_edge:      ; preds = %xfs_attr_sf_findname.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %xfs_attr_sf_findname.exit
  %23 = ptrtoint ptr %sfe.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sfe.0.lcssa.i, align 1
  %conv.i100 = zext i8 %24 to i32
  %valuelen.i = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.0.lcssa.i, i32 0, i32 1
  %25 = ptrtoint ptr %valuelen.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %valuelen.i, align 1
  %conv1.i = zext i8 %26 to i32
  %add.i101 = add nuw nsw i32 %conv.i100, 3
  %spec.select.i3.i = add nuw nsw i32 %add.i101, %conv1.i
  %add = add i32 %spec.select.i3.i, %base.0.lcssa.i
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %7, align 2
  %conv = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp4.not = icmp eq i32 %add, %conv
  br i1 %cmp4.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr i8, ptr %7, i32 %base.0.lcssa.i
  %arrayidx7 = getelementptr i8, ptr %7, i32 %add
  %sub = sub i32 %conv, %add
  %29 = call ptr @memmove(ptr %arrayidx, ptr %arrayidx7, i32 %sub)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %30 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %count.i, align 2
  %dec = add i8 %31, -1
  store i8 %dec, ptr %count.i, align 2
  %sub12 = sub nsw i32 0, %spec.select.i3.i
  %conv13 = trunc i32 %sub12 to i16
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %7, align 2
  %add.i102 = add i16 %33, %conv13
  store i16 %add.i102, ptr %7, align 2
  %sub14 = sub nsw i32 %conv, %spec.select.i3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub14)
  %cmp15 = icmp eq i32 %sub14, 4
  br i1 %cmp15, label %land.lhs.true, label %if.end8.if.else_crit_edge

if.end8.if.else_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %if.end8
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %34 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %35, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true19

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true19:                                  ; preds = %land.lhs.true
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 6
  %36 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %37)
  %cmp21.not = icmp eq i8 %37, 3
  br i1 %cmp21.not, label %land.lhs.true19.if.else_crit_edge, label %land.lhs.true23

land.lhs.true19.if.else_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true23:                                  ; preds = %land.lhs.true19
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 24
  %38 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %op_flags, align 8
  %and = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then24, label %land.lhs.true23.if.else_crit_edge

land.lhs.true23.if.else_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then24:                                        ; preds = %land.lhs.true23
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %40 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %trans, align 4
  %42 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_afp, align 8
  %if_nextents.i = getelementptr inbounds %struct.xfs_ifork, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %if_nextents.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %if_nextents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i = icmp eq i32 %45, 0
  br i1 %cmp.i, label %if.then24.xfs_attr_fork_remove.exit_crit_edge, label %cond.false.i, !prof !251

if.then24.xfs_attr_fork_remove.exit_crit_edge:    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_attr_fork_remove.exit

cond.false.i:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 770) #13
  br label %xfs_attr_fork_remove.exit

xfs_attr_fork_remove.exit:                        ; preds = %cond.false.i, %if.then24.xfs_attr_fork_remove.exit_crit_edge
  %46 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_afp, align 8
  tail call void @xfs_idestroy_fork(ptr noundef %47) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_ifork_cache to i32))
  %48 = load ptr, ptr @xfs_ifork_cache, align 4
  %49 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_afp, align 8
  tail call void @kmem_cache_free(ptr noundef %48, ptr noundef %50) #13
  %51 = ptrtoint ptr %i_afp to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %i_afp, align 8
  %i_forkoff.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 23
  %52 = ptrtoint ptr %i_forkoff.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %i_forkoff.i, align 4
  tail call void @xfs_trans_log_inode(ptr noundef %41, ptr noundef %1, i32 noundef 1) #13
  br label %if.end55

if.else:                                          ; preds = %land.lhs.true23.if.else_crit_edge, %land.lhs.true19.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end8.if.else_crit_edge
  %conv26 = sext i32 %sub12 to i64
  tail call void @xfs_idata_realloc(ptr noundef %1, i64 noundef %conv26, i32 noundef 1) #13
  %call27 = tail call i32 @xfs_attr_shortform_bytesfit(ptr noundef %1, i32 noundef %sub14)
  %conv28 = trunc i32 %call27 to i8
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 23
  %53 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv28, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv28)
  %tobool30.not = icmp eq i8 %conv28, 0
  br i1 %tobool30.not, label %cond.false, label %if.else.cond.end_crit_edge, !prof !252

if.else.cond.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 826) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.else.cond.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub14)
  %cmp33 = icmp ugt i32 %sub14, 4
  br i1 %cmp33, label %cond.end.cond.end53_crit_edge, label %lor.lhs.false

cond.end.cond.end53_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end53

lor.lhs.false:                                    ; preds = %cond.end
  %op_flags35 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 24
  %54 = ptrtoint ptr %op_flags35 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %op_flags35, align 8
  %and36 = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %lor.lhs.false38, label %lor.lhs.false.cond.end53_crit_edge

lor.lhs.false.cond.end53_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end53

lor.lhs.false38:                                  ; preds = %lor.lhs.false
  %m_features.i104 = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %56 = ptrtoint ptr %m_features.i104 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %m_features.i104, align 8
  %and.i105 = and i64 %57, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i105)
  %tobool.i106.not = icmp eq i64 %and.i105, 0
  br i1 %tobool.i106.not, label %lor.lhs.false38.cond.end53_crit_edge, label %lor.rhs

lor.lhs.false38.cond.end53_crit_edge:             ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end53

lor.rhs:                                          ; preds = %lor.lhs.false38
  %if_format41 = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 6
  %58 = ptrtoint ptr %if_format41 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %if_format41, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %59)
  %cmp43 = icmp eq i8 %59, 3
  br i1 %cmp43, label %lor.rhs.cond.end53_crit_edge, label %cond.false52, !prof !251

lor.rhs.cond.end53_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end53

cond.false52:                                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 830) #13
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false52, %lor.rhs.cond.end53_crit_edge, %lor.lhs.false38.cond.end53_crit_edge, %lor.lhs.false.cond.end53_crit_edge, %cond.end.cond.end53_crit_edge
  %trans54 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %60 = ptrtoint ptr %trans54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %trans54, align 4
  tail call void @xfs_trans_log_inode(ptr noundef %61, ptr noundef %1, i32 noundef 65) #13
  br label %if.end55

if.end55:                                         ; preds = %cond.end53, %xfs_attr_fork_remove.exit
  %trans56 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %62 = ptrtoint ptr %trans56 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %trans56, align 4
  tail call fastcc void @xfs_sbversion_add_attr2(ptr noundef %3, ptr noundef %63)
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %xfs_attr_sf_findname.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end55 ], [ -61, %xfs_attr_sf_findname.exit.cleanup_crit_edge ], [ -61, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_sf_remove(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_sf_remove, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_sf_remove, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !251

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !269
  %call42 = tail call i32 @__traceiter_xfs_attr_sf_remove(ptr noundef null, ptr noundef %args) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !270
  %13 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !251

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_sf_remove, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_sf_remove, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_sf_remove.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_attr_sf_remove.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 2032, ptr noundef nonnull @.str.56) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !266
  %31 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_shortform_lookup(ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_xfs_attr_sf_lookup(ptr noundef %args)
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_afp, align 8
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !251

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 855) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %if_u1 = getelementptr inbounds %struct.xfs_ifork, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %if_u1, align 4
  %attr_filter.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 6
  %count = getelementptr inbounds %struct.xfs_attr_sf_hdr, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %count, align 2
  %conv3 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp420.not = icmp eq i8 %9, 0
  br i1 %cmp420.not, label %cond.end.cleanup_crit_edge, label %for.body.lr.ph

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %cond.end
  %list = getelementptr inbounds %struct.xfs_attr_shortform, ptr %7, i32 0, i32 1
  %namelen1.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %10 = ptrtoint ptr %namelen1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %namelen1.i, align 8
  %name3.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %sfe.021 = phi ptr [ %list, %for.body.lr.ph ], [ %add.ptr.i, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %sfe.021 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sfe.021, align 1
  %flags = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.021, i32 0, i32 2
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flags, align 1
  %conv.i = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %11, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %nameval = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.021, i32 0, i32 3
  %16 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name3.i, align 4
  %bcmp.i = tail call i32 @bcmp(ptr %17, ptr %nameval, i32 %11) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp5.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp5.not.i, label %xfs_attr_match.exit, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

xfs_attr_match.exit:                              ; preds = %if.end.i
  %18 = ptrtoint ptr %attr_filter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %attr_filter.i, align 8
  %20 = and i8 %15, -122
  %and.i = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %and.i)
  %cmp9.not.i = icmp eq i32 %19, %and.i
  br i1 %cmp9.not.i, label %xfs_attr_match.exit.cleanup_crit_edge, label %xfs_attr_match.exit.for.inc_crit_edge

xfs_attr_match.exit.for.inc_crit_edge:            ; preds = %xfs_attr_match.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

xfs_attr_match.exit.cleanup_crit_edge:            ; preds = %xfs_attr_match.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc:                                          ; preds = %xfs_attr_match.exit.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %valuelen.i.i = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.021, i32 0, i32 1
  %21 = ptrtoint ptr %valuelen.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %valuelen.i.i, align 1
  %conv1.i.i = zext i8 %22 to i32
  %add.i.i = add nuw nsw i32 %conv.i, 3
  %spec.select.i3.i.i = add nuw nsw i32 %add.i.i, %conv1.i.i
  %add.ptr.i = getelementptr i8, ptr %sfe.021, i32 %spec.select.i3.i.i
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %conv3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %xfs_attr_match.exit.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %cond.end.cleanup_crit_edge ], [ -61, %for.inc.cleanup_crit_edge ], [ -17, %xfs_attr_match.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_sf_lookup(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_sf_lookup, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_sf_lookup, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !251

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !271
  %call42 = tail call i32 @__traceiter_xfs_attr_sf_lookup(ptr noundef null, ptr noundef %args) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !272
  %13 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !251

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_sf_lookup, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_sf_lookup, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_sf_lookup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_attr_sf_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 2031, ptr noundef nonnull @.str.56) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !266
  %31 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_shortform_getvalue(ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_afp, align 8
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !251

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 882) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %6 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dp, align 8
  %i_afp4 = getelementptr inbounds %struct.xfs_inode, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %i_afp4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_afp4, align 8
  %if_u1 = getelementptr inbounds %struct.xfs_ifork, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %if_u1, align 4
  %count = getelementptr inbounds %struct.xfs_attr_sf_hdr, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %count, align 2
  %conv5 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp632.not = icmp eq i8 %13, 0
  br i1 %cmp632.not, label %cond.end.cleanup_crit_edge, label %for.body.lr.ph

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %cond.end
  %list = getelementptr inbounds %struct.xfs_attr_shortform, ptr %11, i32 0, i32 1
  %namelen1.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %14 = ptrtoint ptr %namelen1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %namelen1.i, align 8
  %name3.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %attr_filter.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %sfe.033 = phi ptr [ %list, %for.body.lr.ph ], [ %add.ptr.i, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %sfe.033 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sfe.033, align 1
  %flags = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.033, i32 0, i32 2
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flags, align 1
  %conv.i = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %15, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %nameval = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.033, i32 0, i32 3
  %20 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name3.i, align 4
  %bcmp.i = tail call i32 @bcmp(ptr %21, ptr %nameval, i32 %15) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp5.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp5.not.i, label %xfs_attr_match.exit, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

xfs_attr_match.exit:                              ; preds = %if.end.i
  %22 = ptrtoint ptr %attr_filter.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %attr_filter.i, align 8
  %24 = and i8 %19, -122
  %and.i = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %and.i)
  %cmp9.not.i = icmp eq i32 %23, %and.i
  br i1 %cmp9.not.i, label %if.then, label %xfs_attr_match.exit.for.inc_crit_edge

xfs_attr_match.exit.for.inc_crit_edge:            ; preds = %xfs_attr_match.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %xfs_attr_match.exit
  %arrayidx11 = getelementptr %struct.xfs_attr_sf_entry, ptr %sfe.033, i32 0, i32 3, i32 %15
  %valuelen = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.033, i32 0, i32 1
  %25 = ptrtoint ptr %valuelen to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %valuelen, align 1
  %conv12 = zext i8 %26 to i32
  %valuelen1.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 5
  %27 = ptrtoint ptr %valuelen1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %valuelen1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i28

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %valuelen1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv12, ptr %valuelen1.i, align 4
  br label %cleanup

if.end.i28:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv12)
  %cmp.i = icmp slt i32 %28, %conv12
  br i1 %cmp.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %valuelen1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv12, ptr %valuelen1.i, align 4
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i28
  %value7.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 4
  %31 = ptrtoint ptr %value7.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %value7.i, align 8
  %tobool8.not.i = icmp eq ptr %32, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end6.i.if.end15.i_crit_edge

if.end6.i.if.end15.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

if.then9.i:                                       ; preds = %if.end6.i
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %conv12, i32 noundef 33557696, i32 noundef -1) #17
  %33 = ptrtoint ptr %value7.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i.i, ptr %value7.i, align 8
  %tobool12.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool12.not.i, label %if.then9.i.cleanup_crit_edge, label %if.then9.i.if.end15.i_crit_edge

if.then9.i.if.end15.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

if.then9.i.cleanup_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15.i:                                       ; preds = %if.then9.i.if.end15.i_crit_edge, %if.end6.i.if.end15.i_crit_edge
  %34 = ptrtoint ptr %valuelen1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv12, ptr %valuelen1.i, align 4
  %rmtblkno.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 16
  %35 = ptrtoint ptr %rmtblkno.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rmtblkno.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool17.not.i = icmp eq i32 %36, 0
  br i1 %tobool17.not.i, label %if.end20.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  %call19.i = tail call i32 @xfs_attr_rmtval_get(ptr noundef %args) #13
  br label %cleanup

if.end20.i:                                       ; preds = %if.end15.i
  %tobool21.not.i = icmp eq ptr %arrayidx11, null
  br i1 %tobool21.not.i, label %if.end20.i.cleanup_crit_edge, label %if.end23.i

if.end20.i.cleanup_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end23.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %value7.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %value7.i, align 8
  %39 = call ptr @memcpy(ptr %38, ptr %arrayidx11, i32 %conv12)
  br label %cleanup

for.inc:                                          ; preds = %xfs_attr_match.exit.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %valuelen.i.i = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.033, i32 0, i32 1
  %40 = ptrtoint ptr %valuelen.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %valuelen.i.i, align 1
  %conv1.i.i = zext i8 %41 to i32
  %add.i.i = add nuw nsw i32 %conv.i, 3
  %spec.select.i3.i.i = add nuw nsw i32 %add.i.i, %conv1.i.i
  %add.ptr.i = getelementptr i8, ptr %sfe.033, i32 %spec.select.i3.i.i
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, %conv5
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end23.i, %if.end20.i.cleanup_crit_edge, %if.then18.i, %if.then9.i.cleanup_crit_edge, %if.then4.i, %if.then.i, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %if.then4.i ], [ %call19.i, %if.then18.i ], [ 0, %if.end23.i ], [ 0, %if.then.i ], [ -12, %if.then9.i.cleanup_crit_edge ], [ -22, %if.end20.i.cleanup_crit_edge ], [ -61, %cond.end.cleanup_crit_edge ], [ -61, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_shortform_to_leaf(ptr noundef %args, ptr nocapture noundef writeonly %leaf_bp) local_unnamed_addr #0 align 64 {
entry:
  %nargs = alloca %struct.xfs_da_args, align 8
  %blkno = alloca i32, align 4
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %nargs) #13
  %0 = call ptr @memset(ptr %nargs, i32 255, i32 112)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blkno) #13
  %1 = ptrtoint ptr %blkno to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %blkno, align 4, !annotation !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #13
  tail call fastcc void @trace_xfs_attr_sf_to_leaf(ptr noundef %args)
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %2 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp1, align 8
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_afp, align 8
  %if_u1 = getelementptr inbounds %struct.xfs_ifork, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %if_u1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  %conv = zext i16 %9 to i32
  %call = tail call ptr @kmem_alloc(i32 noundef %conv, i32 noundef 0) #13
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !252

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 921) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %10 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %if_u1, align 4
  %12 = call ptr @memcpy(ptr %call, ptr %11, i32 %conv)
  %sub = sub nsw i32 0, %conv
  %conv5 = sext i32 %sub to i64
  tail call void @xfs_idata_realloc(ptr noundef %3, i64 noundef %conv5, i32 noundef 1) #13
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %13 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trans, align 4
  tail call void @xfs_bmap_local_to_extents_empty(ptr noundef %14, ptr noundef %3, i32 noundef 1) #13
  %15 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %bp, align 4
  %call6 = call i32 @xfs_da_grow_inode(ptr noundef %args, ptr noundef nonnull %blkno) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end, label %cond.end.out_crit_edge

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %cond.end
  %16 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blkno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp8 = icmp eq i32 %17, 0
  br i1 %cmp8, label %if.end.cond.end18_crit_edge, label %cond.false17, !prof !251

if.end.cond.end18_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end18

cond.false17:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 933) #13
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %if.end.cond.end18_crit_edge
  %18 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blkno, align 4
  %call19 = call fastcc i32 @xfs_attr3_leaf_create(ptr noundef %args, i32 noundef %19, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %cond.end18.out_crit_edge

cond.end18.out_crit_edge:                         ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end22:                                         ; preds = %cond.end18
  %20 = call ptr @memset(ptr %nargs, i32 0, i32 112)
  %dp23 = getelementptr inbounds %struct.xfs_da_args, ptr %nargs, i32 0, i32 10
  %21 = ptrtoint ptr %dp23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %3, ptr %dp23, align 8
  %22 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %args, align 8
  %24 = ptrtoint ptr %nargs to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %nargs, align 8
  %total = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 12
  %25 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %total, align 8
  %total25 = getelementptr inbounds %struct.xfs_da_args, ptr %nargs, i32 0, i32 12
  %27 = ptrtoint ptr %total25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %total25, align 8
  %whichfork = getelementptr inbounds %struct.xfs_da_args, ptr %nargs, i32 0, i32 13
  %28 = ptrtoint ptr %whichfork to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %whichfork, align 4
  %29 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %trans, align 4
  %trans27 = getelementptr inbounds %struct.xfs_da_args, ptr %nargs, i32 0, i32 11
  %31 = ptrtoint ptr %trans27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %trans27, align 4
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %nargs, i32 0, i32 24
  %32 = ptrtoint ptr %op_flags to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %op_flags, align 8
  %count = getelementptr inbounds %struct.xfs_attr_sf_hdr, ptr %call, i32 0, i32 1
  %33 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp30106.not = icmp eq i8 %34, 0
  br i1 %cmp30106.not, label %if.end22.for.end_crit_edge, label %for.body.lr.ph

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end22
  %list = getelementptr inbounds %struct.xfs_attr_shortform, ptr %call, i32 0, i32 1
  %name = getelementptr inbounds %struct.xfs_da_args, ptr %nargs, i32 0, i32 1
  %namelen33 = getelementptr inbounds %struct.xfs_da_args, ptr %nargs, i32 0, i32 2
  %value = getelementptr inbounds %struct.xfs_da_args, ptr %nargs, i32 0, i32 4
  %valuelen38 = getelementptr inbounds %struct.xfs_da_args, ptr %nargs, i32 0, i32 5
  %hashval = getelementptr inbounds %struct.xfs_da_args, ptr %nargs, i32 0, i32 8
  %attr_filter = getelementptr inbounds %struct.xfs_da_args, ptr %nargs, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end71.for.body_crit_edge, %for.body.lr.ph
  %i.0108 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end71.for.body_crit_edge ]
  %sfe.0107 = phi ptr [ %list, %for.body.lr.ph ], [ %add.ptr.i, %if.end71.for.body_crit_edge ]
  %nameval = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.0107, i32 0, i32 3
  %35 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %nameval, ptr %name, align 4
  %36 = ptrtoint ptr %sfe.0107 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %sfe.0107, align 1
  %conv32 = zext i8 %37 to i32
  %38 = ptrtoint ptr %namelen33 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv32, ptr %namelen33, align 8
  %arrayidx36 = getelementptr %struct.xfs_attr_sf_entry, ptr %sfe.0107, i32 0, i32 3, i32 %conv32
  %39 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx36, ptr %value, align 8
  %valuelen = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.0107, i32 0, i32 1
  %40 = ptrtoint ptr %valuelen to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %valuelen, align 1
  %conv37 = zext i8 %41 to i32
  %42 = ptrtoint ptr %valuelen38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv37, ptr %valuelen38, align 4
  %43 = load i8, ptr %sfe.0107, align 1
  %conv42 = zext i8 %43 to i32
  %call43 = call i32 @xfs_da_hashname(ptr noundef %nameval, i32 noundef %conv42) #13
  %44 = ptrtoint ptr %hashval to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call43, ptr %hashval, align 8
  %flags = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfe.0107, i32 0, i32 2
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %flags, align 1
  %47 = and i8 %46, 6
  %and = zext i8 %47 to i32
  %48 = ptrtoint ptr %attr_filter to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and, ptr %attr_filter, align 8
  %49 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bp, align 4
  %call45 = call i32 @xfs_attr3_leaf_lookup_int(ptr noundef %50, ptr noundef nonnull %nargs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call45)
  %cmp46 = icmp eq i32 %call45, -61
  br i1 %cmp46, label %for.body.cond.end56_crit_edge, label %cond.false55, !prof !251

for.body.cond.end56_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end56

cond.false55:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 956) #13
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false55, %for.body.cond.end56_crit_edge
  %call57 = call i32 @xfs_attr3_leaf_add(ptr noundef %50, ptr noundef nonnull %nargs)
  %51 = zext i32 %call57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %call57, label %cond.end56.out_crit_edge [
    i32 -28, label %cond.false67
    i32 0, label %if.end71
  ], !prof !274

cond.end56.out_crit_edge:                         ; preds = %cond.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

cond.false67:                                     ; preds = %cond.end56
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 958) #13
  br label %out

if.end71:                                         ; preds = %cond.end56
  %52 = ptrtoint ptr %sfe.0107 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %sfe.0107, align 1
  %conv.i.i = zext i8 %53 to i32
  %54 = ptrtoint ptr %valuelen to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %valuelen, align 1
  %conv1.i.i = zext i8 %55 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 3
  %spec.select.i3.i.i = add nuw nsw i32 %add.i.i, %conv1.i.i
  %add.ptr.i = getelementptr i8, ptr %sfe.0107, i32 %spec.select.i3.i.i
  %inc = add nuw nsw i32 %i.0108, 1
  %56 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %count, align 2
  %conv29 = zext i8 %57 to i32
  %cmp30 = icmp ult i32 %inc, %conv29
  br i1 %cmp30, label %if.end71.for.body_crit_edge, label %if.end71.for.end_crit_edge

if.end71.for.end_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end71.for.body_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end71.for.end_crit_edge, %if.end22.for.end_crit_edge
  %58 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bp, align 4
  %60 = ptrtoint ptr %leaf_bp to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %leaf_bp, align 4
  br label %out

out:                                              ; preds = %for.end, %cond.false67, %cond.end56.out_crit_edge, %cond.end18.out_crit_edge, %cond.end.out_crit_edge
  %error.0 = phi i32 [ %call6, %cond.end.out_crit_edge ], [ %call19, %cond.end18.out_crit_edge ], [ -28, %cond.false67 ], [ 0, %for.end ], [ %call57, %cond.end56.out_crit_edge ]
  call void @kvfree(ptr noundef %call) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blkno) #13
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %nargs) #13
  ret i32 %error.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_sf_to_leaf(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_sf_to_leaf, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_sf_to_leaf, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !251

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !275
  %call42 = tail call i32 @__traceiter_xfs_attr_sf_to_leaf(ptr noundef null, ptr noundef %args) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !276
  %13 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !251

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_sf_to_leaf, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_sf_to_leaf, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_sf_to_leaf.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_attr_sf_to_leaf.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 2033, ptr noundef nonnull @.str.56) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !266
  %31 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_bmap_local_to_extents_empty(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da_grow_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr3_leaf_create(ptr noundef %args, i32 noundef %blkno, ptr nocapture noundef writeonly %bpp) unnamed_addr #5 align 64 {
entry:
  %ichdr = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ichdr) #13
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #13
  %4 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !273
  tail call fastcc void @trace_xfs_attr_leaf_create(ptr noundef %args)
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %5 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trans, align 4
  %7 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dp1, align 8
  %call = call i32 @xfs_da_get_buf(ptr noundef %6, ptr noundef %8, i32 noundef %blkno, ptr noundef nonnull %bp, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bp, align 4
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %10, i32 0, i32 35
  %11 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @xfs_attr3_leaf_buf_ops, ptr %b_ops, align 4
  %12 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trans, align 4
  call void @xfs_trans_buf_set_type(ptr noundef %13, ptr noundef %10, i32 noundef 16) #13
  %14 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_addr, align 4
  %18 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %args, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %22 = call ptr @memset(ptr %17, i32 0, i32 %21)
  %23 = call ptr @memset(ptr %ichdr, i32 0, i32 36)
  %24 = load ptr, ptr %args, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %firstused = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 5
  %27 = ptrtoint ptr %firstused to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %firstused, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %28 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %29, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.end15_crit_edge, label %if.then7

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bp, align 4
  %b_addr8 = getelementptr inbounds %struct.xfs_buf, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %b_addr8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b_addr8, align 4
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %31, i32 0, i32 24
  %34 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_maps.i, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %35, align 8
  %blkno10 = getelementptr inbounds %struct.xfs_da3_blkinfo, ptr %33, i32 0, i32 2
  %38 = ptrtoint ptr %blkno10 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %blkno10, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 4
  %39 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %i_ino, align 8
  %owner = getelementptr inbounds %struct.xfs_da3_blkinfo, ptr %33, i32 0, i32 5
  %41 = ptrtoint ptr %owner to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %owner, align 8
  %uuid = getelementptr inbounds %struct.xfs_da3_blkinfo, ptr %33, i32 0, i32 4
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 54
  %42 = call ptr @memcpy(ptr %uuid, ptr %sb_meta_uuid, i32 16)
  br label %if.end15

if.end15:                                         ; preds = %if.then7, %if.end.if.end15_crit_edge
  %.sink48 = phi i16 [ 15342, %if.then7 ], [ -1042, %if.end.if.end15_crit_edge ]
  %.sink = phi i16 [ 80, %if.then7 ], [ 32, %if.end.if.end15_crit_edge ]
  %43 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %.sink48, ptr %43, align 4
  %45 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %.sink, ptr %45, align 2
  %47 = trunc i32 %26 to i16
  %conv20 = sub i16 %47, %.sink
  %size = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 0, i32 1
  %48 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv20, ptr %size, align 4
  %49 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %args, align 8
  call void @xfs_attr3_leaf_hdr_to_disk(ptr noundef %50, ptr noundef %17, ptr noundef nonnull %ichdr)
  %51 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %trans, align 4
  %53 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bp, align 4
  %55 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %args, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %sub27 = add i32 %58, -1
  call void @xfs_trans_log_buf(ptr noundef %52, ptr noundef %54, i32 noundef 0, i32 noundef %sub27) #13
  %59 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bp, align 4
  %61 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %bpp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da_hashname(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr3_leaf_lookup_int(ptr noundef %bp, ptr noundef %args) #0 align 64 {
entry:
  %ichdr = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ichdr) #13
  %0 = call ptr @memset(ptr %ichdr, i32 255, i32 36)
  tail call fastcc void @trace_xfs_attr_leaf_lookup(ptr noundef %args)
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %1 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %b_addr, align 4
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args, align 8
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %4, ptr noundef nonnull %ichdr, ptr noundef %2)
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %6)
  %cmp.i = icmp eq i16 %6, 15342
  %entries.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %2, i32 0, i32 1
  %entries2.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %2, i32 0, i32 1
  %retval.0.i = select i1 %cmp.i, ptr %entries.i, ptr %entries2.i
  %count = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 3
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %count, align 2
  %conv = zext i16 %8 to i32
  %9 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %args, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %div185 = lshr i32 %12, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div185, i32 %conv)
  %cmp.not = icmp ugt i32 %div185, %conv
  br i1 %cmp.not, label %if.end, label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !277
  call void @__xfs_buf_mark_corrupt(ptr noundef %bp, ptr noundef blockaddress(@xfs_attr3_leaf_lookup_int, %__here)) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %hashval4 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 8
  %13 = ptrtoint ptr %hashval4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hashval4, align 8
  %div7186 = lshr i32 %conv, 1
  %entry1.0215 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %div7186
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %8)
  %cmp8216 = icmp ugt i16 %8, 9
  br i1 %cmp8216, label %if.end.for.body_crit_edge, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %entry1.0219 = phi ptr [ %entry1.0, %for.inc.for.body_crit_edge ], [ %entry1.0215, %if.end.for.body_crit_edge ]
  %span.0218 = phi i32 [ %div10211212, %for.inc.for.body_crit_edge ], [ %div7186, %if.end.for.body_crit_edge ]
  %probe.0217 = phi i32 [ %probe.1, %for.inc.for.body_crit_edge ], [ %div7186, %if.end.for.body_crit_edge ]
  %div10211212 = lshr i32 %span.0218, 1
  %15 = ptrtoint ptr %entry1.0219 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %entry1.0219, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp12 = icmp ult i32 %16, %14
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %add = add i32 %div10211212, %probe.0217
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp16 = icmp ugt i32 %16, %14
  br i1 %cmp16, label %if.then18, label %if.else.for.end_crit_edge

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i32 %probe.0217, %div10211212
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %if.then14
  %probe.1 = phi i32 [ %add, %if.then14 ], [ %sub, %if.then18 ]
  %entry1.0 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %probe.1
  %cmp8 = icmp ugt i32 %span.0218, 9
  br i1 %cmp8, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else.for.end_crit_edge
  %probe.0.lcssa = phi i32 [ %probe.1, %for.inc.for.end_crit_edge ], [ %probe.0217, %if.else.for.end_crit_edge ]
  %entry1.0.lcssa = phi ptr [ %entry1.0, %for.inc.for.end_crit_edge ], [ %entry1.0219, %if.else.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %probe.0.lcssa)
  %cmp23 = icmp sgt i32 %probe.0.lcssa, -1
  br i1 %cmp23, label %for.end.land.lhs.true_crit_edge, label %for.end.__here31_crit_edge

for.end.__here31_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here31

for.end.land.lhs.true_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %span.1256 = phi i32 [ %div10211212, %for.end.land.lhs.true_crit_edge ], [ %div7186, %if.end.land.lhs.true_crit_edge ]
  %entry1.0.lcssa254 = phi ptr [ %entry1.0.lcssa, %for.end.land.lhs.true_crit_edge ], [ %entry1.0215, %if.end.land.lhs.true_crit_edge ]
  %probe.0.lcssa253 = phi i32 [ %probe.0.lcssa, %for.end.land.lhs.true_crit_edge ], [ %div7186, %if.end.land.lhs.true_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %probe.0.lcssa253, i32 %conv)
  %cmp28 = icmp slt i32 %probe.0.lcssa253, %conv
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp28
  br i1 %or.cond, label %if.end33, label %land.lhs.true.__here31_crit_edge

land.lhs.true.__here31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here31

__here31:                                         ; preds = %land.lhs.true.__here31_crit_edge, %for.end.__here31_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !278
  call void @__xfs_buf_mark_corrupt(ptr noundef %bp, ptr noundef blockaddress(@xfs_attr3_leaf_lookup_int, %__here31)) #13
  br label %cleanup

if.end33:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %span.1256)
  %cmp34 = icmp ult i32 %span.1256, 5
  br i1 %cmp34, label %if.end33.if.end43_crit_edge, label %lor.lhs.false36

if.end33.if.end43_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

lor.lhs.false36:                                  ; preds = %if.end33
  %17 = ptrtoint ptr %entry1.0.lcssa254 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %entry1.0.lcssa254, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %14)
  %cmp38 = icmp eq i32 %18, %14
  br i1 %cmp38, label %lor.lhs.false36.if.end43_crit_edge, label %__here41

lor.lhs.false36.if.end43_crit_edge:               ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

__here41:                                         ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !279
  call void @__xfs_buf_mark_corrupt(ptr noundef %bp, ptr noundef blockaddress(@xfs_attr3_leaf_lookup_int, %__here41)) #13
  br label %cleanup

if.end43:                                         ; preds = %lor.lhs.false36.if.end43_crit_edge, %if.end33.if.end43_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %probe.0.lcssa253)
  %cmp44225.not = icmp eq i32 %probe.0.lcssa253, 0
  br i1 %cmp44225.not, label %if.end43.while.end_crit_edge, label %land.rhs.preheader

if.end43.while.end_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

land.rhs.preheader:                               ; preds = %if.end43
  %19 = mul i32 %probe.0.lcssa253, -8
  %uglygep = getelementptr i8, ptr %entry1.0.lcssa254, i32 %19
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.preheader
  %entry1.1227 = phi ptr [ %incdec.ptr, %while.body.land.rhs_crit_edge ], [ %entry1.0.lcssa254, %land.rhs.preheader ]
  %probe.2226 = phi i32 [ %dec, %while.body.land.rhs_crit_edge ], [ %probe.0.lcssa253, %land.rhs.preheader ]
  %20 = ptrtoint ptr %entry1.1227 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %entry1.1227, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %14)
  %cmp47.not = icmp ult i32 %21, %14
  br i1 %cmp47.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr %struct.xfs_attr_leaf_entry, ptr %entry1.1227, i32 -1
  %dec = add nsw i32 %probe.2226, -1
  %cmp44 = icmp sgt i32 %probe.2226, 1
  br i1 %cmp44, label %while.body.land.rhs_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.end43.while.end_crit_edge
  %probe.2.lcssa = phi i32 [ 0, %if.end43.while.end_crit_edge ], [ 0, %while.body.while.end_crit_edge ], [ %probe.2226, %land.rhs.while.end_crit_edge ]
  %entry1.1.lcssa = phi ptr [ %entry1.0.lcssa254, %if.end43.while.end_crit_edge ], [ %uglygep, %while.body.while.end_crit_edge ], [ %entry1.1227, %land.rhs.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %probe.2.lcssa, i32 %conv)
  %cmp52232 = icmp slt i32 %probe.2.lcssa, %conv
  br i1 %cmp52232, label %while.end.land.rhs54_crit_edge, label %while.end.while.end61_crit_edge

while.end.while.end61_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end61

while.end.land.rhs54_crit_edge:                   ; preds = %while.end
  br label %land.rhs54

land.rhs54:                                       ; preds = %while.body59.land.rhs54_crit_edge, %while.end.land.rhs54_crit_edge
  %entry1.2234 = phi ptr [ %incdec.ptr60, %while.body59.land.rhs54_crit_edge ], [ %entry1.1.lcssa, %while.end.land.rhs54_crit_edge ]
  %probe.3233 = phi i32 [ %inc, %while.body59.land.rhs54_crit_edge ], [ %probe.2.lcssa, %while.end.land.rhs54_crit_edge ]
  %22 = ptrtoint ptr %entry1.2234 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %entry1.2234, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %14)
  %cmp56 = icmp ult i32 %23, %14
  br i1 %cmp56, label %while.body59, label %land.rhs54.while.end61_crit_edge

land.rhs54.while.end61_crit_edge:                 ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end61

while.body59:                                     ; preds = %land.rhs54
  %incdec.ptr60 = getelementptr %struct.xfs_attr_leaf_entry, ptr %entry1.2234, i32 1
  %inc = add i32 %probe.3233, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %while.body59.if.then70_crit_edge, label %while.body59.land.rhs54_crit_edge

while.body59.land.rhs54_crit_edge:                ; preds = %while.body59
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs54

while.body59.if.then70_crit_edge:                 ; preds = %while.body59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then70

while.end61:                                      ; preds = %land.rhs54.while.end61_crit_edge, %while.end.while.end61_crit_edge
  %probe.3.lcssa = phi i32 [ %probe.2.lcssa, %while.end.while.end61_crit_edge ], [ %probe.3233, %land.rhs54.while.end61_crit_edge ]
  %entry1.2.lcssa = phi ptr [ %entry1.1.lcssa, %while.end.while.end61_crit_edge ], [ %entry1.2234, %land.rhs54.while.end61_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %probe.3.lcssa, i32 %conv)
  %cmp64 = icmp eq i32 %probe.3.lcssa, %conv
  br i1 %cmp64, label %while.end61.if.then70_crit_edge, label %lor.lhs.false66

while.end61.if.then70_crit_edge:                  ; preds = %while.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then70

lor.lhs.false66:                                  ; preds = %while.end61
  %24 = ptrtoint ptr %entry1.2.lcssa to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %entry1.2.lcssa, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %14)
  %cmp68.not = icmp eq i32 %25, %14
  br i1 %cmp68.not, label %for.cond72.preheader, label %lor.lhs.false66.if.then70_crit_edge

lor.lhs.false66.if.then70_crit_edge:              ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then70

for.cond72.preheader:                             ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_cmp4(i32 %probe.3.lcssa, i32 %conv)
  %cmp75239 = icmp slt i32 %probe.3.lcssa, %conv
  br i1 %cmp75239, label %land.rhs77.lr.ph, label %for.cond72.preheader.for.end108_crit_edge

for.cond72.preheader.for.end108_crit_edge:        ; preds = %for.cond72.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end108

land.rhs77.lr.ph:                                 ; preds = %for.cond72.preheader
  %namelen1.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %name3.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %attr_filter.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 6
  br label %land.rhs77

if.then70:                                        ; preds = %lor.lhs.false66.if.then70_crit_edge, %while.end61.if.then70_crit_edge, %while.body59.if.then70_crit_edge
  %probe.3.lcssa260 = phi i32 [ %probe.3.lcssa, %lor.lhs.false66.if.then70_crit_edge ], [ %probe.3.lcssa, %while.end61.if.then70_crit_edge ], [ %conv, %while.body59.if.then70_crit_edge ]
  %index = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 15
  %26 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %probe.3.lcssa260, ptr %index, align 4
  br label %cleanup

land.rhs77:                                       ; preds = %for.inc105.land.rhs77_crit_edge, %land.rhs77.lr.ph
  %entry1.3242 = phi ptr [ %entry1.2.lcssa, %land.rhs77.lr.ph ], [ %incdec.ptr106, %for.inc105.land.rhs77_crit_edge ]
  %probe.4240 = phi i32 [ %probe.3.lcssa, %land.rhs77.lr.ph ], [ %inc107, %for.inc105.land.rhs77_crit_edge ]
  %27 = ptrtoint ptr %entry1.3242 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %entry1.3242, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %14)
  %cmp79 = icmp eq i32 %28, %14
  br i1 %cmp79, label %for.body82, label %land.rhs77.for.end108_crit_edge

land.rhs77.for.end108_crit_edge:                  ; preds = %land.rhs77
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end108

for.body82:                                       ; preds = %land.rhs77
  %flags = getelementptr inbounds %struct.xfs_attr_leaf_entry, ptr %entry1.3242, i32 0, i32 2
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flags, align 2
  %31 = and i8 %30, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool84.not = icmp eq i8 %31, 0
  %nameidx.i.i193 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %probe.4240, i32 1
  %32 = ptrtoint ptr %nameidx.i.i193 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %nameidx.i.i193, align 4
  %idxprom.i.i194 = zext i16 %33 to i32
  %arrayidx1.i.i195 = getelementptr i8, ptr %2, i32 %idxprom.i.i194
  br i1 %tobool84.not, label %if.else93, label %if.then85

if.then85:                                        ; preds = %for.body82
  %namelen = getelementptr inbounds %struct.xfs_attr_leaf_name_local, ptr %arrayidx1.i.i195, i32 0, i32 1
  %34 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %namelen, align 2
  %36 = ptrtoint ptr %namelen1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %namelen1.i, align 8
  %conv.i = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %37, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then85.for.inc105_crit_edge

if.then85.for.inc105_crit_edge:                   ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc105

if.end.i:                                         ; preds = %if.then85
  %nameval = getelementptr inbounds %struct.xfs_attr_leaf_name_local, ptr %arrayidx1.i.i195, i32 0, i32 2
  %38 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name3.i, align 4
  %bcmp.i = call i32 @bcmp(ptr %39, ptr %nameval, i32 %37) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp5.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp5.not.i, label %xfs_attr_match.exit, label %if.end.i.for.inc105_crit_edge

if.end.i.for.inc105_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc105

xfs_attr_match.exit:                              ; preds = %if.end.i
  %40 = ptrtoint ptr %attr_filter.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %attr_filter.i, align 8
  %42 = and i8 %30, -122
  %and.i = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %and.i)
  %cmp9.not.i = icmp eq i32 %41, %and.i
  br i1 %cmp9.not.i, label %if.end91, label %xfs_attr_match.exit.for.inc105_crit_edge

xfs_attr_match.exit.for.inc105_crit_edge:         ; preds = %xfs_attr_match.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc105

if.end91:                                         ; preds = %xfs_attr_match.exit
  call void @__sanitizer_cov_trace_pc() #15
  %index92 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 15
  %43 = ptrtoint ptr %index92 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %probe.4240, ptr %index92, align 4
  br label %cleanup

if.else93:                                        ; preds = %for.body82
  %namelen95 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i195, i32 0, i32 2
  %44 = ptrtoint ptr %namelen95 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %namelen95, align 4
  %46 = ptrtoint ptr %namelen1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %namelen1.i, align 8
  %conv.i197 = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %conv.i197)
  %cmp.not.i198 = icmp eq i32 %47, %conv.i197
  br i1 %cmp.not.i198, label %if.end.i202, label %if.else93.for.inc105_crit_edge

if.else93.for.inc105_crit_edge:                   ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc105

if.end.i202:                                      ; preds = %if.else93
  %name = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i195, i32 0, i32 3
  %48 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name3.i, align 4
  %bcmp.i200 = call i32 @bcmp(ptr %49, ptr %name, i32 %47) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i200)
  %cmp5.not.i201 = icmp eq i32 %bcmp.i200, 0
  br i1 %cmp5.not.i201, label %xfs_attr_match.exit208, label %if.end.i202.for.inc105_crit_edge

if.end.i202.for.inc105_crit_edge:                 ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc105

xfs_attr_match.exit208:                           ; preds = %if.end.i202
  %50 = ptrtoint ptr %attr_filter.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %attr_filter.i, align 8
  %52 = and i8 %30, -122
  %and.i204 = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %and.i204)
  %cmp9.not.i205 = icmp eq i32 %51, %and.i204
  br i1 %cmp9.not.i205, label %if.end101, label %xfs_attr_match.exit208.for.inc105_crit_edge

xfs_attr_match.exit208.for.inc105_crit_edge:      ; preds = %xfs_attr_match.exit208
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc105

if.end101:                                        ; preds = %xfs_attr_match.exit208
  call void @__sanitizer_cov_trace_pc() #15
  %index102 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 15
  %53 = ptrtoint ptr %index102 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %probe.4240, ptr %index102, align 4
  %valuelen = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i195, i32 0, i32 1
  %54 = ptrtoint ptr %valuelen to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %valuelen, align 4
  %rmtvaluelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 18
  %56 = ptrtoint ptr %rmtvaluelen to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %rmtvaluelen, align 8
  %57 = ptrtoint ptr %arrayidx1.i.i195 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx1.i.i195, align 4
  %rmtblkno = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 16
  %59 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %rmtblkno, align 8
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %60 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dp, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %call104 = call i32 @xfs_attr3_rmt_blocks(ptr noundef %63, i32 noundef %55) #13
  %rmtblkcnt = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 17
  %64 = ptrtoint ptr %rmtblkcnt to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call104, ptr %rmtblkcnt, align 4
  br label %cleanup

for.inc105:                                       ; preds = %xfs_attr_match.exit208.for.inc105_crit_edge, %if.end.i202.for.inc105_crit_edge, %if.else93.for.inc105_crit_edge, %xfs_attr_match.exit.for.inc105_crit_edge, %if.end.i.for.inc105_crit_edge, %if.then85.for.inc105_crit_edge
  %incdec.ptr106 = getelementptr %struct.xfs_attr_leaf_entry, ptr %entry1.3242, i32 1
  %inc107 = add i32 %probe.4240, 1
  %exitcond248.not = icmp eq i32 %inc107, %conv
  br i1 %exitcond248.not, label %for.inc105.for.end108_crit_edge, label %for.inc105.land.rhs77_crit_edge

for.inc105.land.rhs77_crit_edge:                  ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs77

for.inc105.for.end108_crit_edge:                  ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end108

for.end108:                                       ; preds = %for.inc105.for.end108_crit_edge, %land.rhs77.for.end108_crit_edge, %for.cond72.preheader.for.end108_crit_edge
  %probe.4.lcssa = phi i32 [ %probe.3.lcssa, %for.cond72.preheader.for.end108_crit_edge ], [ %conv, %for.inc105.for.end108_crit_edge ], [ %probe.4240, %land.rhs77.for.end108_crit_edge ]
  %index109 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 15
  %65 = ptrtoint ptr %index109 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %probe.4.lcssa, ptr %index109, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end108, %if.end101, %if.end91, %if.then70, %__here41, %__here31, %__here
  %retval.0 = phi i32 [ -117, %__here ], [ -61, %if.then70 ], [ -17, %if.end91 ], [ -17, %if.end101 ], [ -61, %for.end108 ], [ -117, %__here41 ], [ -117, %__here31 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr3_leaf_add(ptr noundef %bp, ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %ichdr = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ichdr) #13
  %0 = call ptr @memset(ptr %ichdr, i32 255, i32 36)
  tail call fastcc void @trace_xfs_attr_leaf_add(ptr noundef %args)
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %1 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %b_addr, align 4
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args, align 8
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %4, ptr noundef nonnull %ichdr, ptr noundef %2)
  %index = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 15
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp = icmp sgt i32 %6, -1
  br i1 %cmp, label %land.rhs, label %entry.cond.false_crit_edge, !prof !251

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

land.rhs:                                         ; preds = %entry
  %count = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 3
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %count, align 2
  %conv = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp2.not = icmp ugt i32 %6, %conv
  br i1 %cmp2.not, label %land.rhs.cond.false_crit_edge, label %land.rhs.cond.end_crit_edge, !prof !252

land.rhs.cond.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

land.rhs.cond.false_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

cond.false:                                       ; preds = %land.rhs.cond.false_crit_edge, %entry.cond.false_crit_edge
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 1374) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.rhs.cond.end_crit_edge
  %namelen.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %9 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %namelen.i, align 8
  %valuelen.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 5
  %11 = ptrtoint ptr %valuelen.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %valuelen.i, align 4
  %add1.i.i = add i32 %10, 2
  %sub.i.i = add i32 %add1.i.i, %12
  %or.i.i = or i32 %sub.i.i, 3
  %add2.i.i = add i32 %or.i.i, 1
  %13 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %args, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %shr.i.i = ashr i32 %16, 1
  %shr1.i.i = ashr i32 %16, 2
  %add.i.i = add nsw i32 %shr.i.i, %shr1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i.i, i32 %add.i.i)
  %cmp.i = icmp slt i32 %add2.i.i, %add.i.i
  %sub.i16.i = add i32 %10, 10
  %or.i17.i = or i32 %sub.i16.i, 3
  %add1.i18.i = add i32 %or.i17.i, 1
  %retval.0.i = select i1 %cmp.i, i32 %add2.i.i, i32 %add1.i18.i
  %count5 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 3
  %17 = ptrtoint ptr %count5 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %count5, align 2
  %conv6 = zext i16 %18 to i32
  %add = shl nuw nsw i32 %conv6, 3
  %mul = add nuw nsw i32 %add, 8
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %2, i32 0, i32 2
  %19 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %20)
  %cmp.i106 = icmp eq i16 %20, 15342
  %..i = select i1 %cmp.i106, i32 80, i32 32
  %add8 = add nuw nsw i32 %mul, %..i
  %firstused = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 5
  %21 = ptrtoint ptr %firstused to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %firstused, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add8, i32 %22)
  %cmp11 = icmp ugt i32 %add8, %22
  %add28 = add i32 %retval.0.i, 8
  %size = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 2, i32 1
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %size, align 4
  br i1 %cmp11, label %if.then.2, label %if.end

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool18.not = icmp eq i16 %24, 0
  br i1 %tobool18.not, label %if.end.if.end.1_crit_edge, label %if.end20

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.1

if.end20:                                         ; preds = %if.end
  %arrayidx16 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 2
  %25 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx16, align 2
  %conv23 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv23)
  %cmp25 = icmp ugt i32 %22, %conv23
  %spec.select = select i1 %cmp25, i32 %add28, i32 %retval.0.i
  %conv33 = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv33)
  %cmp34.not = icmp sgt i32 %spec.select, %conv33
  br i1 %cmp34.not, label %if.end20.if.end.1_crit_edge, label %if.end20.out_log_hdr.sink.split_crit_edge

if.end20.out_log_hdr.sink.split_crit_edge:        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_log_hdr.sink.split

if.end20.if.end.1_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.1

if.end.1:                                         ; preds = %if.end20.if.end.1_crit_edge, %if.end.if.end.1_crit_edge
  %sum.1.ph = phi i32 [ %conv33, %if.end20.if.end.1_crit_edge ], [ 0, %if.end.if.end.1_crit_edge ]
  %size17.1 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 1, i32 1
  %27 = ptrtoint ptr %size17.1 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %size17.1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool18.not.1 = icmp eq i16 %28, 0
  br i1 %tobool18.not.1, label %if.end.1.if.end.2_crit_edge, label %if.end20.1

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.2

if.end20.1:                                       ; preds = %if.end.1
  %arrayidx16.1 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx16.1, align 2
  %conv23.1 = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv23.1)
  %cmp25.1 = icmp ugt i32 %22, %conv23.1
  %spec.select.1 = select i1 %cmp25.1, i32 %add28, i32 %retval.0.i
  %conv33.1 = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.1, i32 %conv33.1)
  %cmp34.not.1 = icmp sgt i32 %spec.select.1, %conv33.1
  br i1 %cmp34.not.1, label %if.end38.1, label %if.end20.1.out_log_hdr.sink.split_crit_edge

if.end20.1.out_log_hdr.sink.split_crit_edge:      ; preds = %if.end20.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_log_hdr.sink.split

if.end38.1:                                       ; preds = %if.end20.1
  call void @__sanitizer_cov_trace_pc() #15
  %add43.1 = add nuw nsw i32 %sum.1.ph, %conv33.1
  br label %if.end.2

if.end.2:                                         ; preds = %if.end38.1, %if.end.1.if.end.2_crit_edge
  %sum.1.1.ph = phi i32 [ %sum.1.ph, %if.end.1.if.end.2_crit_edge ], [ %add43.1, %if.end38.1 ]
  %size17.2 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 0, i32 1
  %31 = ptrtoint ptr %size17.2 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %size17.2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool18.not.2 = icmp eq i16 %32, 0
  br i1 %tobool18.not.2, label %if.end.2.for.inc.2_crit_edge, label %if.end20.2

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.end20.2:                                       ; preds = %if.end.2
  %arrayidx16.2 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 0
  %33 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx16.2, align 2
  %conv23.2 = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv23.2)
  %cmp25.2 = icmp ugt i32 %22, %conv23.2
  %spec.select.2 = select i1 %cmp25.2, i32 %add28, i32 %retval.0.i
  %conv33.2 = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.2, i32 %conv33.2)
  %cmp34.not.2 = icmp sgt i32 %spec.select.2, %conv33.2
  br i1 %cmp34.not.2, label %if.end38.2, label %if.end20.2.out_log_hdr.sink.split_crit_edge

if.end20.2.out_log_hdr.sink.split_crit_edge:      ; preds = %if.end20.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_log_hdr.sink.split

if.end38.2:                                       ; preds = %if.end20.2
  call void @__sanitizer_cov_trace_pc() #15
  %add43.2 = add nuw nsw i32 %sum.1.1.ph, %conv33.2
  br label %for.inc.2

if.then.2:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %conv13 = zext i16 %24 to i32
  %size.1 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 1, i32 1
  %35 = ptrtoint ptr %size.1 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %size.1, align 4
  %conv13.1 = zext i16 %36 to i32
  %add14.1 = add nuw nsw i32 %conv13, %conv13.1
  %size.2 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 0, i32 1
  %37 = ptrtoint ptr %size.2 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %size.2, align 4
  %conv13.2 = zext i16 %38 to i32
  %add14.2 = add nuw nsw i32 %add14.1, %conv13.2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %if.end38.2, %if.end.2.for.inc.2_crit_edge
  %sum.1.2 = phi i32 [ %add14.2, %if.then.2 ], [ %add43.2, %if.end38.2 ], [ %sum.1.1.ph, %if.end.2.for.inc.2_crit_edge ]
  %holes = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 6
  %39 = ptrtoint ptr %holes to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %holes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool44.not = icmp eq i8 %40, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sum.1.2, i32 %retval.0.i)
  %cmp45 = icmp slt i32 %sum.1.2, %retval.0.i
  %or.cond = select i1 %tobool44.not, i1 %cmp45, i1 false
  br i1 %or.cond, label %for.inc.2.cleanup_crit_edge, label %if.end48

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end48:                                         ; preds = %for.inc.2
  call fastcc void @xfs_attr3_leaf_compact(ptr noundef %args, ptr noundef nonnull %ichdr, ptr noundef %bp)
  %size51 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 0, i32 1
  %41 = ptrtoint ptr %size51 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %size51, align 4
  %conv52 = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add28, i32 %conv52)
  %cmp54 = icmp ugt i32 %add28, %conv52
  br i1 %cmp54, label %if.end48.out_log_hdr_crit_edge, label %if.end48.out_log_hdr.sink.split_crit_edge

if.end48.out_log_hdr.sink.split_crit_edge:        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_log_hdr.sink.split

if.end48.out_log_hdr_crit_edge:                   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_log_hdr

out_log_hdr.sink.split:                           ; preds = %if.end48.out_log_hdr.sink.split_crit_edge, %if.end20.2.out_log_hdr.sink.split_crit_edge, %if.end20.1.out_log_hdr.sink.split_crit_edge, %if.end20.out_log_hdr.sink.split_crit_edge
  %.sink = phi i32 [ 2, %if.end20.out_log_hdr.sink.split_crit_edge ], [ 1, %if.end20.1.out_log_hdr.sink.split_crit_edge ], [ 0, %if.end20.2.out_log_hdr.sink.split_crit_edge ], [ 0, %if.end48.out_log_hdr.sink.split_crit_edge ]
  call fastcc void @xfs_attr3_leaf_add_work(ptr noundef %bp, ptr noundef nonnull %ichdr, ptr noundef %args, i32 noundef %.sink)
  br label %out_log_hdr

out_log_hdr:                                      ; preds = %out_log_hdr.sink.split, %if.end48.out_log_hdr_crit_edge
  %tmp.1 = phi i32 [ -28, %if.end48.out_log_hdr_crit_edge ], [ 0, %out_log_hdr.sink.split ]
  %43 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %args, align 8
  call void @xfs_attr3_leaf_hdr_to_disk(ptr noundef %44, ptr noundef %2, ptr noundef nonnull %ichdr)
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %45 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %trans, align 4
  %47 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %48)
  %cmp.i108 = icmp eq i16 %48, 15342
  %sub = select i1 %cmp.i108, i32 79, i32 31
  call void @xfs_trans_log_buf(ptr noundef %46, ptr noundef %bp, i32 noundef 0, i32 noundef %sub) #13
  br label %cleanup

cleanup:                                          ; preds = %out_log_hdr, %for.inc.2.cleanup_crit_edge
  %retval.0 = phi i32 [ %tmp.1, %out_log_hdr ], [ -28, %for.inc.2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_shortform_allfit(ptr nocapture noundef readonly %bp, ptr noundef %dp) local_unnamed_addr #0 align 64 {
entry:
  %leafhdr = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %leafhdr) #13
  %0 = call ptr @memset(ptr %leafhdr, i32 255, i32 36)
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %1 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %b_mount, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %3 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_addr, align 4
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_attr_geo, align 32
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %6, ptr noundef nonnull %leafhdr, ptr noundef %4)
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %8)
  %cmp.i = icmp eq i16 %8, 15342
  %entries.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %4, i32 0, i32 1
  %entries2.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %4, i32 0, i32 1
  %retval.0.i = select i1 %cmp.i, ptr %entries.i, ptr %entries2.i
  %count = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %count, align 2
  %conv = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp58.not = icmp eq i16 %10, 0
  br i1 %cmp58.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.061 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %bytes.060 = phi i32 [ %bytes.1, %for.inc.for.body_crit_edge ], [ 4, %entry.for.body_crit_edge ]
  %entry1.059 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %retval.0.i, %entry.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.xfs_attr_leaf_entry, ptr %entry1.059, i32 0, i32 2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags, align 2
  %conv3 = zext i8 %12 to i32
  %and = and i32 %conv3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %and6 = and i32 %conv3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %nameidx.i.i = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %i.061, i32 1
  %13 = ptrtoint ptr %nameidx.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nameidx.i.i, align 4
  %idxprom.i.i = zext i16 %14 to i32
  %arrayidx1.i.i = getelementptr i8, ptr %4, i32 %idxprom.i.i
  %namelen = getelementptr inbounds %struct.xfs_attr_leaf_name_local, ptr %arrayidx1.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %namelen, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp12 = icmp eq i8 %16, -1
  br i1 %cmp12, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %17 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %18)
  %cmp17 = icmp ugt i16 %18, 254
  br i1 %cmp17, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i = zext i8 %16 to i32
  %conv1.i = zext i16 %18 to i32
  %add.i = add i32 %bytes.060, 3
  %add2.i = add i32 %add.i, %conv.i
  %add = add i32 %add2.i, %conv1.i
  br label %for.inc

for.inc:                                          ; preds = %if.end20, %for.body.for.inc_crit_edge
  %bytes.1 = phi i32 [ %bytes.060, %for.body.for.inc_crit_edge ], [ %add, %if.end20 ]
  %incdec.ptr = getelementptr %struct.xfs_attr_leaf_entry, ptr %entry1.059, i32 1
  %inc = add nuw nsw i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %bytes.0.lcssa = phi i32 [ 4, %entry.for.end_crit_edge ], [ %bytes.1, %for.inc.for.end_crit_edge ]
  %19 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dp, align 8
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %20, i32 0, i32 61
  %21 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %22, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %for.end.if.end34_crit_edge, label %land.lhs.true

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

land.lhs.true:                                    ; preds = %for.end
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 8, i32 6
  %23 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp28.not = icmp ne i8 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bytes.0.lcssa)
  %cmp31 = icmp eq i32 %bytes.0.lcssa, 4
  %or.cond = select i1 %cmp28.not, i1 %cmp31, i1 false
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end34:                                         ; preds = %land.lhs.true.if.end34_crit_edge, %for.end.if.end34_crit_edge
  %call35 = call i32 @xfs_attr_shortform_bytesfit(ptr noundef %dp, i32 noundef %bytes.0.lcssa)
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %land.lhs.true.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %if.end34 ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %leafhdr) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_attr_shortform_verify(ptr nocapture noundef readonly %ip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %0 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_afp, align 8
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !251

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1025) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %4 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_afp, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %7)
  %cmp4 = icmp slt i64 %7, 4
  br i1 %cmp4, label %__here, label %if.end

__here:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !280
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %if_u1 = getelementptr inbounds %struct.xfs_ifork, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %if_u1, align 4
  %idx.ext = trunc i64 %7 to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %idx.ext
  %list = getelementptr inbounds %struct.xfs_attr_shortform, ptr %9, i32 0, i32 1
  %count = getelementptr inbounds %struct.xfs_attr_sf_hdr, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp7178.not = icmp eq i8 %11, 0
  br i1 %cmp7178.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond:                                         ; preds = %cond.false125
  %inc = add nuw nsw i32 %i.0179, 1
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %count, align 2
  %conv6 = zext i8 %13 to i32
  %cmp7 = icmp ult i32 %inc, %conv6
  br i1 %cmp7, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %sfep.0180 = phi ptr [ %add.ptr.i, %for.cond.for.body_crit_edge ], [ %list, %if.end.for.body_crit_edge ]
  %i.0179 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %add.ptr9 = getelementptr i8, ptr %sfep.0180, i32 3
  %cmp10.not = icmp ult ptr %add.ptr9, %add.ptr
  br i1 %cmp10.not, label %if.end15, label %__here13

__here13:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !281
  br label %cleanup

if.end15:                                         ; preds = %for.body
  %14 = ptrtoint ptr %sfep.0180 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sfep.0180, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp17 = icmp eq i8 %15, 0
  br i1 %cmp17, label %__here20, label %if.end22

__here20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !282
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %conv.i.i = zext i8 %15 to i32
  %valuelen.i.i = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfep.0180, i32 0, i32 1
  %16 = ptrtoint ptr %valuelen.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %valuelen.i.i, align 1
  %conv1.i.i = zext i8 %17 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 3
  %spec.select.i3.i.i = add nuw nsw i32 %add.i.i, %conv1.i.i
  %add.ptr.i = getelementptr i8, ptr %sfep.0180, i32 %spec.select.i3.i.i
  %cmp23 = icmp ugt ptr %add.ptr.i, %add.ptr
  br i1 %cmp23, label %__here26, label %if.end28

__here26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !283
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %flags = getelementptr inbounds %struct.xfs_attr_sf_entry, ptr %sfep.0180, i32 0, i32 2
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flags, align 1
  %conv29 = zext i8 %19 to i32
  %and = and i32 %conv29, 249
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %cond.false125, label %__here32

__here32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !284
  br label %cleanup

cond.false125:                                    ; preds = %if.end28
  %and37 = and i32 %conv29, 6
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %and37) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp131 = icmp ugt i32 %call.i, 1
  br i1 %cmp131, label %__here134, label %for.cond

__here134:                                        ; preds = %cond.false125
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !285
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end.for.end_crit_edge
  %sfep.0.lcssa = phi ptr [ %list, %if.end.for.end_crit_edge ], [ %add.ptr.i, %for.cond.for.end_crit_edge ]
  %cmp137.not = icmp eq ptr %sfep.0.lcssa, %add.ptr
  br i1 %cmp137.not, label %for.end.cleanup_crit_edge, label %__here140

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

__here140:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !286
  br label %cleanup

cleanup:                                          ; preds = %__here140, %for.end.cleanup_crit_edge, %__here134, %__here32, %__here26, %__here20, %__here13, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_attr_shortform_verify, %__here), %__here ], [ blockaddress(@xfs_attr_shortform_verify, %__here13), %__here13 ], [ blockaddress(@xfs_attr_shortform_verify, %__here20), %__here20 ], [ blockaddress(@xfs_attr_shortform_verify, %__here26), %__here26 ], [ blockaddress(@xfs_attr_shortform_verify, %__here32), %__here32 ], [ blockaddress(@xfs_attr_shortform_verify, %__here134), %__here134 ], [ blockaddress(@xfs_attr_shortform_verify, %__here140), %__here140 ], [ null, %for.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr3_leaf_to_shortform(ptr noundef %bp, ptr noundef %args, i32 noundef %forkoff) local_unnamed_addr #0 align 64 {
entry:
  %ichdr = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  %nargs = alloca %struct.xfs_da_args, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ichdr) #13
  %0 = call ptr @memset(ptr %ichdr, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %nargs) #13
  %1 = call ptr @memset(ptr %nargs, i32 255, i32 112)
  %dp2 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %2 = ptrtoint ptr %dp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp2, align 8
  tail call fastcc void @trace_xfs_attr_leaf_to_sf(ptr noundef %args)
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %args, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %call = tail call ptr @kmem_alloc(i32 noundef %7, i32 noundef 0) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %8 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_addr, align 4
  %10 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %args, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = call ptr @memcpy(ptr %call, ptr %9, i32 %13)
  %15 = load ptr, ptr %args, align 8
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %15, ptr noundef nonnull %ichdr, ptr noundef nonnull %call)
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %call, i32 0, i32 2
  %16 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %17)
  %cmp.i = icmp eq i16 %17, 15342
  %entries.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %call, i32 0, i32 1
  %entries2.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %call, i32 0, i32 1
  %retval.0.i = select i1 %cmp.i, ptr %entries.i, ptr %entries2.i
  %18 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_addr, align 4
  %20 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %args, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %24 = call ptr @memset(ptr %19, i32 0, i32 %23)
  %call10 = call i32 @xfs_da_shrink_inode(ptr noundef %args, i32 noundef 0, ptr noundef %bp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %forkoff)
  %cmp = icmp eq i32 %forkoff, -1
  br i1 %cmp, label %if.then14, label %if.end29

if.then14:                                        ; preds = %if.end13
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 8
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %26, i32 0, i32 61
  %27 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %28, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %cond.false, label %if.then14.cond.end_crit_edge, !prof !252

if.then14.cond.end_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 1130) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then14.cond.end_crit_edge
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 8, i32 6
  %29 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %30)
  %cmp18.not = icmp eq i8 %30, 3
  br i1 %cmp18.not, label %cond.false27, label %cond.end.cond.end28_crit_edge, !prof !252

cond.end.cond.end28_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end28

cond.false27:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 1131) #13
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false27, %cond.end.cond.end28_crit_edge
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %31 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %trans, align 4
  %i_afp.i = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 6
  %33 = ptrtoint ptr %i_afp.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_afp.i, align 8
  %if_nextents.i = getelementptr inbounds %struct.xfs_ifork, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %if_nextents.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %if_nextents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i111 = icmp eq i32 %36, 0
  br i1 %cmp.i111, label %cond.end28.xfs_attr_fork_remove.exit_crit_edge, label %cond.false.i, !prof !251

cond.end28.xfs_attr_fork_remove.exit_crit_edge:   ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_attr_fork_remove.exit

cond.false.i:                                     ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 770) #13
  br label %xfs_attr_fork_remove.exit

xfs_attr_fork_remove.exit:                        ; preds = %cond.false.i, %cond.end28.xfs_attr_fork_remove.exit_crit_edge
  %37 = ptrtoint ptr %i_afp.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_afp.i, align 8
  call void @xfs_idestroy_fork(ptr noundef %38) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_ifork_cache to i32))
  %39 = load ptr, ptr @xfs_ifork_cache, align 4
  %40 = ptrtoint ptr %i_afp.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_afp.i, align 8
  call void @kmem_cache_free(ptr noundef %39, ptr noundef %41) #13
  %42 = ptrtoint ptr %i_afp.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %i_afp.i, align 8
  %i_forkoff.i = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 23
  %43 = ptrtoint ptr %i_forkoff.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %i_forkoff.i, align 4
  call void @xfs_trans_log_inode(ptr noundef %32, ptr noundef %3, i32 noundef 1) #13
  br label %out

if.end29:                                         ; preds = %if.end13
  %44 = ptrtoint ptr %dp2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dp2, align 8
  %i_afp.i112 = getelementptr inbounds %struct.xfs_inode, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %i_afp.i112 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_afp.i112, align 8
  call fastcc void @trace_xfs_attr_sf_create(ptr noundef %args) #13
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %47, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %49)
  %cmp.i113 = icmp eq i64 %49, 0
  br i1 %cmp.i113, label %if.end29.cond.end.i_crit_edge, label %cond.false.i114, !prof !251

if.end29.cond.end.i_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.false.i114:                                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 660) #13
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i114, %if.end29.cond.end.i_crit_edge
  %if_format.i = getelementptr inbounds %struct.xfs_ifork, ptr %47, i32 0, i32 6
  %50 = ptrtoint ptr %if_format.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %if_format.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %51)
  %cmp3.i = icmp eq i8 %51, 2
  br i1 %cmp3.i, label %if.then.i, label %cond.end.i.xfs_attr_shortform_create.exit_crit_edge

cond.end.i.xfs_attr_shortform_create.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_attr_shortform_create.exit

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %if_format.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %if_format.i, align 2
  br label %xfs_attr_shortform_create.exit

xfs_attr_shortform_create.exit:                   ; preds = %if.then.i, %cond.end.i.xfs_attr_shortform_create.exit_crit_edge
  call void @xfs_idata_realloc(ptr noundef %45, i64 noundef 4, i32 noundef 1) #13
  %if_u1.i = getelementptr inbounds %struct.xfs_ifork, ptr %47, i32 0, i32 4
  %53 = ptrtoint ptr %if_u1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %if_u1.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 262144, ptr %54, align 2
  %trans.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %56 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %trans.i, align 4
  call void @xfs_trans_log_inode(ptr noundef %57, ptr noundef %45, i32 noundef 65) #13
  %58 = call ptr @memset(ptr %nargs, i32 0, i32 112)
  %59 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %args, align 8
  %61 = ptrtoint ptr %nargs to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %nargs, align 8
  %dp32 = getelementptr inbounds %struct.xfs_da_args, ptr %nargs, i32 0, i32 10
  %62 = ptrtoint ptr %dp32 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %3, ptr %dp32, align 8
  %total = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 12
  %63 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %total, align 8
  %total33 = getelementptr inbounds %struct.xfs_da_args, ptr %nargs, i32 0, i32 12
  %65 = ptrtoint ptr %total33 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %total33, align 8
  %whichfork = getelementptr inbounds %struct.xfs_da_args, ptr %nargs, i32 0, i32 13
  %66 = ptrtoint ptr %whichfork to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %whichfork, align 4
  %67 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %trans.i, align 4
  %trans35 = getelementptr inbounds %struct.xfs_da_args, ptr %nargs, i32 0, i32 11
  %69 = ptrtoint ptr %trans35 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %trans35, align 4
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %nargs, i32 0, i32 24
  %70 = ptrtoint ptr %op_flags to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 8, ptr %op_flags, align 8
  %count = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 3
  %71 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %cmp37116.not = icmp eq i16 %72, 0
  br i1 %cmp37116.not, label %xfs_attr_shortform_create.exit.out_crit_edge, label %for.body.lr.ph

xfs_attr_shortform_create.exit.out_crit_edge:     ; preds = %xfs_attr_shortform_create.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body.lr.ph:                                   ; preds = %xfs_attr_shortform_create.exit
  %name = getelementptr inbounds %struct.xfs_da_args, ptr %nargs, i32 0, i32 1
  %namelen61 = getelementptr inbounds %struct.xfs_da_args, ptr %nargs, i32 0, i32 2
  %value = getelementptr inbounds %struct.xfs_da_args, ptr %nargs, i32 0, i32 4
  %valuelen65 = getelementptr inbounds %struct.xfs_da_args, ptr %nargs, i32 0, i32 5
  %hashval66 = getelementptr inbounds %struct.xfs_da_args, ptr %nargs, i32 0, i32 8
  %attr_filter = getelementptr inbounds %struct.xfs_da_args, ptr %nargs, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0119 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %entry1.0117 = phi ptr [ %retval.0.i, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.xfs_attr_leaf_entry, ptr %entry1.0117, i32 0, i32 2
  %73 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %flags, align 2
  %conv39 = zext i8 %74 to i32
  %and = and i32 %conv39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %if.end42, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end42:                                         ; preds = %for.body
  %nameidx = getelementptr inbounds %struct.xfs_attr_leaf_entry, ptr %entry1.0117, i32 0, i32 1
  %75 = ptrtoint ptr %nameidx to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %nameidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool43.not = icmp eq i16 %76, 0
  br i1 %tobool43.not, label %if.end42.for.inc_crit_edge, label %if.end45

if.end42.for.inc_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end45:                                         ; preds = %if.end42
  %and48 = and i32 %conv39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %cond.false57, label %if.end45.cond.end58_crit_edge, !prof !252

if.end45.cond.end58_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end58

cond.false57:                                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 1154) #13
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false57, %if.end45.cond.end58_crit_edge
  %77 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %78)
  %cmp.i.i.i = icmp eq i16 %78, 15342
  %retval.0.i.i.i = select i1 %cmp.i.i.i, ptr %entries.i, ptr %entries2.i
  %nameidx.i.i = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i.i, i32 %i.0119, i32 1
  %79 = ptrtoint ptr %nameidx.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %nameidx.i.i, align 4
  %idxprom.i.i = zext i16 %80 to i32
  %arrayidx1.i.i = getelementptr i8, ptr %call, i32 %idxprom.i.i
  %nameval = getelementptr inbounds %struct.xfs_attr_leaf_name_local, ptr %arrayidx1.i.i, i32 0, i32 2
  %81 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %nameval, ptr %name, align 4
  %namelen = getelementptr inbounds %struct.xfs_attr_leaf_name_local, ptr %arrayidx1.i.i, i32 0, i32 1
  %82 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %namelen, align 2
  %conv60 = zext i8 %83 to i32
  %84 = ptrtoint ptr %namelen61 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv60, ptr %namelen61, align 8
  %arrayidx = getelementptr %struct.xfs_attr_leaf_name_local, ptr %arrayidx1.i.i, i32 0, i32 2, i32 %conv60
  %85 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %arrayidx, ptr %value, align 8
  %86 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx1.i.i, align 2
  %conv64 = zext i16 %87 to i32
  %88 = ptrtoint ptr %valuelen65 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv64, ptr %valuelen65, align 4
  %89 = ptrtoint ptr %entry1.0117 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %entry1.0117, align 4
  %91 = ptrtoint ptr %hashval66 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %hashval66, align 8
  %92 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %flags, align 2
  %94 = and i8 %93, 6
  %and69 = zext i8 %94 to i32
  %95 = ptrtoint ptr %attr_filter to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %and69, ptr %attr_filter, align 8
  call void @xfs_attr_shortform_add(ptr noundef nonnull %nargs, i32 noundef %forkoff)
  br label %for.inc

for.inc:                                          ; preds = %cond.end58, %if.end42.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.xfs_attr_leaf_entry, ptr %entry1.0117, i32 1
  %inc = add nuw nsw i32 %i.0119, 1
  %96 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %count, align 2
  %conv36 = zext i16 %97 to i32
  %cmp37 = icmp ult i32 %inc, %conv36
  br i1 %cmp37, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

out:                                              ; preds = %for.inc.out_crit_edge, %xfs_attr_shortform_create.exit.out_crit_edge, %xfs_attr_fork_remove.exit, %if.end.out_crit_edge
  %error.0 = phi i32 [ %call10, %if.end.out_crit_edge ], [ 0, %xfs_attr_fork_remove.exit ], [ 0, %xfs_attr_shortform_create.exit.out_crit_edge ], [ 0, %for.inc.out_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %nargs) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr) #13
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_leaf_to_sf(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_to_sf, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_leaf_to_sf, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !251

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !287
  %call42 = tail call i32 @__traceiter_xfs_attr_leaf_to_sf(ptr noundef null, ptr noundef %args) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !288
  %13 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !251

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_to_sf, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_to_sf, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_leaf_to_sf.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_attr_leaf_to_sf.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 2052, ptr noundef nonnull @.str.56) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !266
  %31 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da_shrink_inode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr3_leaf_to_node(ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %icleafhdr = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  %icnodehdr = alloca %struct.xfs_da3_icnode_hdr, align 4
  %bp1 = alloca ptr, align 4
  %bp2 = alloca ptr, align 4
  %blkno = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %icleafhdr) #13
  %0 = call ptr @memset(ptr %icleafhdr, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %icnodehdr) #13
  %1 = call ptr @memset(ptr %icnodehdr, i32 255, i32 20)
  %dp1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %2 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp1) #13
  %6 = ptrtoint ptr %bp1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %bp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp2) #13
  %7 = ptrtoint ptr %bp2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %bp2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blkno) #13
  %8 = ptrtoint ptr %blkno to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %blkno, align 4, !annotation !273
  tail call fastcc void @trace_xfs_attr_leaf_to_node(ptr noundef %args)
  %call = call i32 @xfs_da_grow_inode(ptr noundef %args, ptr noundef nonnull %blkno) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %9 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %trans, align 4
  %call.i = call i32 @xfs_da_read_buf(ptr noundef %10, ptr noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %bp1, i32 noundef 1, ptr noundef nonnull @xfs_attr3_leaf_buf_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  %tobool1.not.i = icmp eq ptr %10, null
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %xfs_attr3_leaf_read.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %if.end
  %11 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bp1, align 4
  %tobool3.not.i = icmp eq ptr %12, null
  br i1 %tobool3.not.i, label %land.lhs.true2.i.if.end5_crit_edge, label %if.then.i

land.lhs.true2.i.if.end5_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @xfs_trans_buf_set_type(ptr noundef nonnull %10, ptr noundef nonnull %12, i32 noundef 16) #13
  br label %if.end5

xfs_attr3_leaf_read.exit:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %xfs_attr3_leaf_read.exit.if.end5_crit_edge, label %xfs_attr3_leaf_read.exit.out_crit_edge

xfs_attr3_leaf_read.exit.out_crit_edge:           ; preds = %xfs_attr3_leaf_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

xfs_attr3_leaf_read.exit.if.end5_crit_edge:       ; preds = %xfs_attr3_leaf_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.end5:                                          ; preds = %xfs_attr3_leaf_read.exit.if.end5_crit_edge, %if.then.i, %land.lhs.true2.i.if.end5_crit_edge
  %13 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trans, align 4
  %15 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %blkno, align 4
  %call7 = call i32 @xfs_da_get_buf(ptr noundef %14, ptr noundef %3, i32 noundef %16, ptr noundef nonnull %bp2, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end10:                                         ; preds = %if.end5
  %17 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %trans, align 4
  %19 = ptrtoint ptr %bp2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bp2, align 4
  call void @xfs_trans_buf_set_type(ptr noundef %18, ptr noundef %20, i32 noundef 16) #13
  %21 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bp1, align 4
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %22, i32 0, i32 35
  %23 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_ops, align 4
  %25 = ptrtoint ptr %bp2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bp2, align 4
  %b_ops12 = getelementptr inbounds %struct.xfs_buf, ptr %26, i32 0, i32 35
  %27 = ptrtoint ptr %b_ops12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %b_ops12, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %26, i32 0, i32 16
  %28 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_addr, align 4
  %b_addr13 = getelementptr inbounds %struct.xfs_buf, ptr %22, i32 0, i32 16
  %30 = ptrtoint ptr %b_addr13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_addr13, align 4
  %32 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %args, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %36 = call ptr @memcpy(ptr %29, ptr %31, i32 %35)
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 61
  %37 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %38, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end10.if.end19_crit_edge, label %if.then15

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %bp2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bp2, align 4
  %b_addr16 = getelementptr inbounds %struct.xfs_buf, ptr %40, i32 0, i32 16
  %41 = ptrtoint ptr %b_addr16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %b_addr16, align 4
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %40, i32 0, i32 24
  %43 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %b_maps.i, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %44, align 8
  %blkno18 = getelementptr inbounds %struct.xfs_da3_blkinfo, ptr %42, i32 0, i32 2
  %47 = ptrtoint ptr %blkno18 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %blkno18, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end10.if.end19_crit_edge
  %48 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %trans, align 4
  %50 = ptrtoint ptr %bp2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bp2, align 4
  %52 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %args, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %sub = add i32 %55, -1
  call void @xfs_trans_log_buf(ptr noundef %49, ptr noundef %51, i32 noundef 0, i32 noundef %sub) #13
  %call23 = call i32 @xfs_da3_node_create(ptr noundef %args, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %bp1, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bp1, align 4
  %b_addr27 = getelementptr inbounds %struct.xfs_buf, ptr %57, i32 0, i32 16
  %58 = ptrtoint ptr %b_addr27 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %b_addr27, align 4
  call void @xfs_da3_node_hdr_from_disk(ptr noundef %5, ptr noundef nonnull %icnodehdr, ptr noundef %59) #13
  %60 = ptrtoint ptr %bp2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bp2, align 4
  %b_addr28 = getelementptr inbounds %struct.xfs_buf, ptr %61, i32 0, i32 16
  %62 = ptrtoint ptr %b_addr28 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %b_addr28, align 4
  %64 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %args, align 8
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %65, ptr noundef nonnull %icleafhdr, ptr noundef %63)
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %63, i32 0, i32 2
  %66 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %67)
  %cmp.i = icmp eq i16 %67, 15342
  %entries.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %63, i32 0, i32 1
  %entries2.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %63, i32 0, i32 1
  %retval.0.i = select i1 %cmp.i, ptr %entries.i, ptr %entries2.i
  %count = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %icleafhdr, i32 0, i32 3
  %68 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %count, align 2
  %conv = zext i16 %69 to i32
  %sub31 = add nsw i32 %conv, -1
  %arrayidx = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %sub31
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx, align 4
  %btree = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %icnodehdr, i32 0, i32 5
  %72 = ptrtoint ptr %btree to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %btree, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %71, ptr %73, align 4
  %75 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %blkno, align 4
  %77 = load ptr, ptr %btree, align 4
  %before = getelementptr inbounds %struct.xfs_da_node_entry, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %before to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %76, ptr %before, align 4
  %count36 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %icnodehdr, i32 0, i32 3
  %79 = ptrtoint ptr %count36 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 1, ptr %count36, align 2
  %80 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %3, align 8
  call void @xfs_da3_node_hdr_to_disk(ptr noundef %81, ptr noundef %59, ptr noundef nonnull %icnodehdr) #13
  %82 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %trans, align 4
  %84 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bp1, align 4
  %86 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %args, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %sub41 = add i32 %89, -1
  call void @xfs_trans_log_buf(ptr noundef %83, ptr noundef %85, i32 noundef 0, i32 noundef %sub41) #13
  br label %out

out:                                              ; preds = %if.end26, %if.end19.out_crit_edge, %if.end5.out_crit_edge, %xfs_attr3_leaf_read.exit.out_crit_edge, %entry.out_crit_edge
  %error.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call.i, %xfs_attr3_leaf_read.exit.out_crit_edge ], [ %call7, %if.end5.out_crit_edge ], [ %call23, %if.end19.out_crit_edge ], [ 0, %if.end26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blkno) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp2) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp1) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %icnodehdr) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %icleafhdr) #13
  ret i32 %error.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_leaf_to_node(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_to_node, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_leaf_to_node, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !251

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !289
  %call42 = tail call i32 @__traceiter_xfs_attr_leaf_to_node(ptr noundef null, ptr noundef %args) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !290
  %13 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !251

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_to_node, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_to_node, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_leaf_to_node.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_attr_leaf_to_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 2053, ptr noundef nonnull @.str.56) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !266
  %31 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da_get_buf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da3_node_create(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_da3_node_hdr_from_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_da3_node_hdr_to_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr3_leaf_split(ptr noundef %state, ptr noundef %oldblk, ptr noundef %newblk) local_unnamed_addr #0 align 64 {
entry:
  %ichdr.i59 = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  %ichdr.i = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  %blkno = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blkno) #13
  %0 = ptrtoint ptr %blkno to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %blkno, align 4, !annotation !273
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 8
  tail call fastcc void @trace_xfs_attr_leaf_split(ptr noundef %2)
  %magic = getelementptr inbounds %struct.xfs_da_state_blk, ptr %oldblk, i32 0, i32 5
  %3 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64494, i32 %4)
  %cmp = icmp eq i32 %4, 64494
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !251

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 1312) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 8
  %call = call i32 @xfs_da_grow_inode(ptr noundef %6, ptr noundef nonnull %blkno) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 8
  %9 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %blkno, align 4
  %call5 = call fastcc i32 @xfs_attr3_leaf_create(ptr noundef %8, i32 noundef %10, ptr noundef %newblk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %11 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %blkno, align 4
  %blkno9 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %newblk, i32 0, i32 1
  %13 = ptrtoint ptr %blkno9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %blkno9, align 4
  %magic10 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %newblk, i32 0, i32 5
  %14 = ptrtoint ptr %magic10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 64494, ptr %magic10, align 8
  call fastcc void @xfs_attr3_leaf_rebalance(ptr noundef %state, ptr noundef %oldblk, ptr noundef %newblk)
  %call11 = call i32 @xfs_da3_blk_link(ptr noundef %state, ptr noundef %oldblk, ptr noundef %newblk) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %inleaf = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 4
  %15 = ptrtoint ptr %inleaf to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %inleaf, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool15.not = icmp eq i8 %16, 0
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 8
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @trace_xfs_attr_leaf_add_old(ptr noundef %18)
  br label %if.end25

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @trace_xfs_attr_leaf_add_new(ptr noundef %18)
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then16
  %newblk.sink = phi ptr [ %newblk, %if.else ], [ %oldblk, %if.then16 ]
  %19 = ptrtoint ptr %newblk.sink to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %newblk.sink, align 8
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state, align 8
  %call24 = call i32 @xfs_attr3_leaf_add(ptr noundef %20, ptr noundef %22)
  %23 = ptrtoint ptr %oldblk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %oldblk, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ichdr.i) #13
  %25 = call ptr @memset(ptr %ichdr.i, i32 255, i32 36)
  %b_mount.i = getelementptr inbounds %struct.xfs_buf, ptr %24, i32 0, i32 14
  %26 = ptrtoint ptr %b_mount.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_mount.i, align 4
  %m_attr_geo.i = getelementptr inbounds %struct.xfs_mount, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %m_attr_geo.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %m_attr_geo.i, align 32
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %24, i32 0, i32 16
  %30 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_addr.i, align 4
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %29, ptr noundef nonnull %ichdr.i, ptr noundef %31) #13
  %count3.i = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr.i, i32 0, i32 3
  %32 = ptrtoint ptr %count3.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %count3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool4.not.i = icmp eq i16 %33, 0
  br i1 %tobool4.not.i, label %if.end25.xfs_attr_leaf_lasthash.exit_crit_edge, label %if.end6.i

if.end25.xfs_attr_leaf_lasthash.exit_crit_edge:   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_attr_leaf_lasthash.exit

if.end6.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_addr.i, align 4
  %magic.i.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %magic.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %magic.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %37)
  %cmp.i.i = icmp eq i16 %37, 15342
  %entries.i.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %35, i32 0, i32 1
  %entries2.i.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %35, i32 0, i32 1
  %retval.0.i.i = select i1 %cmp.i.i, ptr %entries.i.i, ptr %entries2.i.i
  %conv8.i = zext i16 %33 to i32
  %sub.i = add nsw i32 %conv8.i, -1
  %arrayidx.i = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i, i32 %sub.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i, align 4
  br label %xfs_attr_leaf_lasthash.exit

xfs_attr_leaf_lasthash.exit:                      ; preds = %if.end6.i, %if.end25.xfs_attr_leaf_lasthash.exit_crit_edge
  %retval.0.i = phi i32 [ %39, %if.end6.i ], [ 0, %if.end25.xfs_attr_leaf_lasthash.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr.i) #13
  %hashval = getelementptr inbounds %struct.xfs_da_state_blk, ptr %oldblk, i32 0, i32 4
  %40 = ptrtoint ptr %hashval to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %retval.0.i, ptr %hashval, align 4
  %41 = ptrtoint ptr %newblk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %newblk, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ichdr.i59) #13
  %43 = call ptr @memset(ptr %ichdr.i59, i32 255, i32 36)
  %b_mount.i60 = getelementptr inbounds %struct.xfs_buf, ptr %42, i32 0, i32 14
  %44 = ptrtoint ptr %b_mount.i60 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %b_mount.i60, align 4
  %m_attr_geo.i61 = getelementptr inbounds %struct.xfs_mount, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %m_attr_geo.i61 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %m_attr_geo.i61, align 32
  %b_addr.i62 = getelementptr inbounds %struct.xfs_buf, ptr %42, i32 0, i32 16
  %48 = ptrtoint ptr %b_addr.i62 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %b_addr.i62, align 4
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %47, ptr noundef nonnull %ichdr.i59, ptr noundef %49) #13
  %count3.i68 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr.i59, i32 0, i32 3
  %50 = ptrtoint ptr %count3.i68 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %count3.i68, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool4.not.i69 = icmp eq i16 %51, 0
  br i1 %tobool4.not.i69, label %xfs_attr_leaf_lasthash.exit.xfs_attr_leaf_lasthash.exit75_crit_edge, label %if.end6.i73

xfs_attr_leaf_lasthash.exit.xfs_attr_leaf_lasthash.exit75_crit_edge: ; preds = %xfs_attr_leaf_lasthash.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_attr_leaf_lasthash.exit75

if.end6.i73:                                      ; preds = %xfs_attr_leaf_lasthash.exit
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %b_addr.i62 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %b_addr.i62, align 4
  %magic.i.i63 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %magic.i.i63 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %magic.i.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %55)
  %cmp.i.i64 = icmp eq i16 %55, 15342
  %entries.i.i65 = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %53, i32 0, i32 1
  %entries2.i.i66 = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %53, i32 0, i32 1
  %retval.0.i.i67 = select i1 %cmp.i.i64, ptr %entries.i.i65, ptr %entries2.i.i66
  %conv8.i70 = zext i16 %51 to i32
  %sub.i71 = add nsw i32 %conv8.i70, -1
  %arrayidx.i72 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i67, i32 %sub.i71
  %56 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i72, align 4
  br label %xfs_attr_leaf_lasthash.exit75

xfs_attr_leaf_lasthash.exit75:                    ; preds = %if.end6.i73, %xfs_attr_leaf_lasthash.exit.xfs_attr_leaf_lasthash.exit75_crit_edge
  %retval.0.i74 = phi i32 [ %57, %if.end6.i73 ], [ 0, %xfs_attr_leaf_lasthash.exit.xfs_attr_leaf_lasthash.exit75_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr.i59) #13
  %hashval30 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %newblk, i32 0, i32 4
  %58 = ptrtoint ptr %hashval30 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %retval.0.i74, ptr %hashval30, align 4
  br label %cleanup

cleanup:                                          ; preds = %xfs_attr_leaf_lasthash.exit75, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %xfs_attr_leaf_lasthash.exit75 ], [ %call, %cond.end.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call11, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blkno) #13
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_leaf_split(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_split, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_leaf_split, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !251

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !291
  %call42 = tail call i32 @__traceiter_xfs_attr_leaf_split(ptr noundef null, ptr noundef %args) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !292
  %13 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !251

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_split, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_split, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_leaf_split.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_attr_leaf_split.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 2046, ptr noundef nonnull @.str.56) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !266
  %31 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_attr3_leaf_rebalance(ptr nocapture noundef %state, ptr nocapture noundef %blk1, ptr nocapture noundef %blk2) unnamed_addr #5 align 64 {
entry:
  %ichdr1 = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  %ichdr2 = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  %count = alloca i32, align 4
  %totallen = alloca i32, align 4
  %__tmp35 = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ichdr1) #13
  %0 = call ptr @memset(ptr %ichdr1, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ichdr2) #13
  %1 = call ptr @memset(ptr %ichdr2, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #13
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %count, align 4, !annotation !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %totallen) #13
  %3 = ptrtoint ptr %totallen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %totallen, align 4, !annotation !273
  %magic = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk1, i32 0, i32 5
  %4 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64494, i32 %5)
  %cmp = icmp eq i32 %5, 64494
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !251

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.1, i32 noundef 1688) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %magic2 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk2, i32 0, i32 5
  %6 = ptrtoint ptr %magic2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %magic2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64494, i32 %7)
  %cmp3 = icmp eq i32 %7, 64494
  br i1 %cmp3, label %cond.end.cond.end12_crit_edge, label %cond.false11, !prof !251

cond.end.cond.end12_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1, i32 noundef 1689) #13
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.end.cond.end12_crit_edge
  %8 = ptrtoint ptr %blk1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %blk1, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_addr, align 4
  %12 = ptrtoint ptr %blk2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %blk2, align 8
  %b_addr14 = getelementptr inbounds %struct.xfs_buf, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %b_addr14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_addr14, align 4
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %19, ptr noundef nonnull %ichdr1, ptr noundef %11)
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %23, ptr noundef nonnull %ichdr2, ptr noundef %15)
  %count18 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr2, i32 0, i32 3
  %24 = ptrtoint ptr %count18 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %count18, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp19 = icmp eq i16 %25, 0
  br i1 %cmp19, label %cond.end12.cond.end29_crit_edge, label %cond.false28, !prof !251

cond.end12.cond.end29_crit_edge:                  ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end29

cond.false28:                                     ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.1, i32 noundef 1694) #13
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false28, %cond.end12.cond.end29_crit_edge
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %state, align 8
  call fastcc void @trace_xfs_attr_leaf_rebalance(ptr noundef %27)
  %28 = ptrtoint ptr %blk1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %blk1, align 8
  %30 = ptrtoint ptr %blk2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %blk2, align 8
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %29, i32 0, i32 16
  %32 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b_addr.i, align 4
  %magic.i.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %magic.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %magic.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %35)
  %cmp.i.i = icmp eq i16 %35, 15342
  %entries.i.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %33, i32 0, i32 1
  %entries2.i.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %33, i32 0, i32 1
  %retval.0.i.i = select i1 %cmp.i.i, ptr %entries.i.i, ptr %entries2.i.i
  %b_addr1.i = getelementptr inbounds %struct.xfs_buf, ptr %31, i32 0, i32 16
  %36 = ptrtoint ptr %b_addr1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %b_addr1.i, align 4
  %magic.i29.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %magic.i29.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %magic.i29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %39)
  %cmp.i30.i = icmp eq i16 %39, 15342
  %entries.i31.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %37, i32 0, i32 1
  %entries2.i32.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %37, i32 0, i32 1
  %retval.0.i33.i = select i1 %cmp.i30.i, ptr %entries.i31.i, ptr %entries2.i32.i
  %count.i = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr1, i32 0, i32 3
  %40 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %count.i, align 2
  %conv.i = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp.not.i = icmp eq i16 %41, 0
  br i1 %cmp.not.i, label %cond.end29._crit_edge, label %land.lhs.true.i

cond.end29._crit_edge:                            ; preds = %cond.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %55

land.lhs.true.i:                                  ; preds = %cond.end29
  %42 = ptrtoint ptr %count18 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %count18, align 2
  %conv5.i = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp6.not.i = icmp eq i16 %43, 0
  br i1 %cmp6.not.i, label %land.lhs.true.i._crit_edge, label %land.lhs.true8.i

land.lhs.true.i._crit_edge:                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %55

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %44 = ptrtoint ptr %retval.0.i33.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %retval.0.i33.i, align 4
  %46 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %retval.0.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp11.i = icmp ult i32 %45, %47
  br i1 %cmp11.i, label %land.lhs.true8.i.if.end_crit_edge, label %lor.lhs.false.i

land.lhs.true8.i.if.end_crit_edge:                ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.lhs.false.i:                                  ; preds = %land.lhs.true8.i
  %sub.i = add nsw i32 %conv5.i, -1
  %arrayidx15.i = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i33.i, i32 %sub.i
  %48 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx15.i, align 4
  %sub19.i = add nsw i32 %conv.i, -1
  %arrayidx20.i = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i, i32 %sub19.i
  %50 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp22.i = icmp ult i32 %49, %51
  br i1 %cmp22.i, label %lor.lhs.false.i.if.end_crit_edge, label %lor.lhs.false.i._crit_edge

lor.lhs.false.i._crit_edge:                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %55

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.i.if.end_crit_edge, %land.lhs.true8.i.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__tmp35)
  %52 = call ptr @memcpy(ptr %__tmp35, ptr %ichdr1, i32 36)
  %53 = call ptr @memcpy(ptr %ichdr1, ptr %ichdr2, i32 36)
  %54 = call ptr @memcpy(ptr %ichdr2, ptr %__tmp35, i32 36)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__tmp35)
  %call42 = call fastcc i32 @xfs_attr3_leaf_figure_balance(ptr noundef %state, ptr noundef %blk2, ptr noundef nonnull %ichdr1, ptr noundef %blk1, ptr noundef nonnull %ichdr2, ptr noundef nonnull %count, ptr noundef nonnull %totallen)
  %conv43 = trunc i32 %call42 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv43)
  %tobool47.not = icmp eq i8 %conv43, 0
  %conv50 = zext i1 %tobool47.not to i8
  br label %56

55:                                               ; preds = %lor.lhs.false.i._crit_edge, %land.lhs.true.i._crit_edge, %cond.end29._crit_edge
  %call42318 = call fastcc i32 @xfs_attr3_leaf_figure_balance(ptr noundef %state, ptr noundef %blk1, ptr noundef nonnull %ichdr1, ptr noundef %blk2, ptr noundef nonnull %ichdr2, ptr noundef nonnull %count, ptr noundef nonnull %totallen)
  %conv43319 = trunc i32 %call42318 to i8
  br label %56

56:                                               ; preds = %55, %if.end
  %blk1.addr.0331 = phi ptr [ %blk1, %55 ], [ %blk2, %if.end ]
  %leaf2.0328 = phi ptr [ %15, %55 ], [ %33, %if.end ]
  %leaf1.0325 = phi ptr [ %11, %55 ], [ %37, %if.end ]
  %blk2.addr.0323 = phi ptr [ %blk2, %55 ], [ %blk1, %if.end ]
  %57 = phi i8 [ %conv43319, %55 ], [ %conv50, %if.end ]
  %inleaf334 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 4
  %58 = ptrtoint ptr %inleaf334 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %inleaf334, align 8
  %59 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %count, align 4
  %61 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %count.i, align 2
  %conv54 = zext i16 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %conv54)
  %cmp55 = icmp slt i32 %60, %conv54
  br i1 %cmp55, label %if.then57, label %if.else

if.then57:                                        ; preds = %56
  %sub = sub i32 %conv54, %60
  %63 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub, ptr %count, align 4
  %usedbytes = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr1, i32 0, i32 4
  %64 = ptrtoint ptr %usedbytes to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %usedbytes, align 4
  %conv60 = zext i16 %65 to i32
  %66 = ptrtoint ptr %totallen to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %totallen, align 4
  %mul = shl i32 %sub, 3
  %sub61 = sub i32 %mul, %67
  %add = add i32 %sub61, %conv60
  %firstused = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr2, i32 0, i32 5
  %68 = ptrtoint ptr %firstused to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %firstused, align 4
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %leaf1.0325, i32 0, i32 2
  %70 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %71)
  %cmp.i = icmp eq i16 %71, 15342
  %..i.neg = select i1 %cmp.i, i32 -80, i32 -32
  %sub63 = add i32 %..i.neg, %69
  %72 = ptrtoint ptr %count18 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %count18, align 2
  %conv65 = zext i16 %73 to i32
  %mul66.neg = mul nsw i32 %conv65, -8
  %sub67 = add i32 %sub63, %mul66.neg
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub67)
  %cmp68 = icmp sgt i32 %add, %sub67
  br i1 %cmp68, label %if.then70, label %if.then57.if.end72_crit_edge

if.then57.if.end72_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

if.then70:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %blk2.addr.0323 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %blk2.addr.0323, align 8
  call fastcc void @xfs_attr3_leaf_compact(ptr noundef %27, ptr noundef nonnull %ichdr2, ptr noundef %75)
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.then57.if.end72_crit_edge
  %76 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %count.i, align 2
  %conv74 = zext i16 %77 to i32
  %sub75 = sub i32 %conv74, %sub
  call fastcc void @xfs_attr3_leaf_moveents(ptr noundef %27, ptr noundef %leaf1.0325, ptr noundef nonnull %ichdr1, i32 noundef %sub75, ptr noundef %leaf2.0328, ptr noundef nonnull %ichdr2, i32 noundef 0, i32 noundef %sub)
  br label %if.end104

if.else:                                          ; preds = %56
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %conv54)
  %cmp78 = icmp sgt i32 %60, %conv54
  br i1 %cmp78, label %if.then80, label %if.else.if.end104_crit_edge

if.else.if.end104_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end104

if.then80:                                        ; preds = %if.else
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1762) #13
  %78 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %count.i, align 2
  %conv82 = zext i16 %79 to i32
  %sub83 = sub i32 %60, %conv82
  %80 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %sub83, ptr %count, align 4
  %81 = ptrtoint ptr %totallen to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %totallen, align 4
  %usedbytes84 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr1, i32 0, i32 4
  %83 = ptrtoint ptr %usedbytes84 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %usedbytes84, align 4
  %conv85 = zext i16 %84 to i32
  %mul87 = shl i32 %sub83, 3
  %sub86 = add i32 %mul87, %82
  %add88 = sub i32 %sub86, %conv85
  %firstused89 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr1, i32 0, i32 5
  %85 = ptrtoint ptr %firstused89 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %firstused89, align 4
  %magic.i298 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %leaf1.0325, i32 0, i32 2
  %87 = ptrtoint ptr %magic.i298 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %magic.i298, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %88)
  %cmp.i299 = icmp eq i16 %88, 15342
  %..i300.neg = select i1 %cmp.i299, i32 -80, i32 -32
  %mul94.neg = mul nsw i32 %conv82, -8
  %sub91 = add i32 %86, %mul94.neg
  %sub95 = add i32 %sub91, %..i300.neg
  call void @__sanitizer_cov_trace_cmp4(i32 %add88, i32 %sub95)
  %cmp96 = icmp sgt i32 %add88, %sub95
  br i1 %cmp96, label %if.then98, label %if.then80.if.end100_crit_edge

if.then80.if.end100_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

if.then98:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #15
  %89 = ptrtoint ptr %blk1.addr.0331 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %blk1.addr.0331, align 8
  call fastcc void @xfs_attr3_leaf_compact(ptr noundef %27, ptr noundef nonnull %ichdr1, ptr noundef %90)
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %if.then80.if.end100_crit_edge
  %91 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %count.i, align 2
  %conv102 = zext i16 %92 to i32
  call fastcc void @xfs_attr3_leaf_moveents(ptr noundef %27, ptr noundef %leaf2.0328, ptr noundef nonnull %ichdr2, i32 noundef 0, ptr noundef %leaf1.0325, ptr noundef nonnull %ichdr1, i32 noundef %conv102, i32 noundef %sub83)
  br label %if.end104

if.end104:                                        ; preds = %if.end100, %if.else.if.end104_crit_edge, %if.end72
  %93 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %state, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 8
  call void @xfs_attr3_leaf_hdr_to_disk(ptr noundef %96, ptr noundef %leaf1.0325, ptr noundef nonnull %ichdr1)
  %97 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %state, align 8
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 8
  call void @xfs_attr3_leaf_hdr_to_disk(ptr noundef %100, ptr noundef %leaf2.0328, ptr noundef nonnull %ichdr2)
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %27, i32 0, i32 11
  %101 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %trans, align 4
  %103 = ptrtoint ptr %blk1.addr.0331 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %blk1.addr.0331, align 8
  %105 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %27, align 8
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 4
  %sub111 = add i32 %108, -1
  call void @xfs_trans_log_buf(ptr noundef %102, ptr noundef %104, i32 noundef 0, i32 noundef %sub111) #13
  %109 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %trans, align 4
  %111 = ptrtoint ptr %blk2.addr.0323 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %blk2.addr.0323, align 8
  %113 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %27, align 8
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 4
  %sub116 = add i32 %116, -1
  call void @xfs_trans_log_buf(ptr noundef %110, ptr noundef %112, i32 noundef 0, i32 noundef %sub116) #13
  %magic.i301 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %leaf1.0325, i32 0, i32 2
  %117 = ptrtoint ptr %magic.i301 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %magic.i301, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %118)
  %cmp.i302 = icmp eq i16 %118, 15342
  %entries.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %leaf1.0325, i32 0, i32 1
  %entries2.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %leaf1.0325, i32 0, i32 1
  %retval.0.i303 = select i1 %cmp.i302, ptr %entries.i, ptr %entries2.i
  %magic.i304 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %leaf2.0328, i32 0, i32 2
  %119 = ptrtoint ptr %magic.i304 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %magic.i304, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %120)
  %cmp.i305 = icmp eq i16 %120, 15342
  %entries.i306 = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %leaf2.0328, i32 0, i32 1
  %entries2.i307 = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %leaf2.0328, i32 0, i32 1
  %retval.0.i308 = select i1 %cmp.i305, ptr %entries.i306, ptr %entries2.i307
  %121 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %count.i, align 2
  %conv120 = zext i16 %122 to i32
  %sub121 = add nsw i32 %conv120, -1
  %arrayidx = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i303, i32 %sub121
  %123 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx, align 4
  %hashval122 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk1.addr.0331, i32 0, i32 4
  %125 = ptrtoint ptr %hashval122 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %hashval122, align 4
  %126 = ptrtoint ptr %count18 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %count18, align 2
  %conv124 = zext i16 %127 to i32
  %sub125 = add nsw i32 %conv124, -1
  %arrayidx126 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i308, i32 %sub125
  %128 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx126, align 4
  %hashval128 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk2.addr.0323, i32 0, i32 4
  %130 = ptrtoint ptr %hashval128 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %hashval128, align 4
  %index = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk1.addr.0331, i32 0, i32 3
  %131 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %index, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %conv120)
  %cmp131 = icmp sgt i32 %132, %conv120
  br i1 %cmp131, label %if.then133, label %if.else155

if.then133:                                       ; preds = %if.end104
  %133 = ptrtoint ptr %inleaf334 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %inleaf334, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %cmp136 = icmp eq i8 %134, 0
  br i1 %cmp136, label %if.then133.cond.end146_crit_edge, label %cond.false145, !prof !251

if.then133.cond.end146_crit_edge:                 ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end146

cond.false145:                                    ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.1, i32 noundef 1813) #13
  br label %cond.end146

cond.end146:                                      ; preds = %cond.false145, %if.then133.cond.end146_crit_edge
  %135 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %index, align 8
  %137 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %count.i, align 2
  %conv149 = zext i16 %138 to i32
  %sub150 = sub i32 %136, %conv149
  %index151 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk2.addr.0323, i32 0, i32 3
  %139 = ptrtoint ptr %index151 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %sub150, ptr %index151, align 8
  %index2 = getelementptr inbounds %struct.xfs_da_args, ptr %27, i32 0, i32 20
  %140 = ptrtoint ptr %index2 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %sub150, ptr %index2, align 8
  %index153 = getelementptr inbounds %struct.xfs_da_args, ptr %27, i32 0, i32 15
  %141 = ptrtoint ptr %index153 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %sub150, ptr %index153, align 4
  %blkno = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk2.addr.0323, i32 0, i32 1
  %142 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %blkno, align 4
  %blkno2 = getelementptr inbounds %struct.xfs_da_args, ptr %27, i32 0, i32 19
  %144 = ptrtoint ptr %blkno2 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %blkno2, align 4
  %blkno154 = getelementptr inbounds %struct.xfs_da_args, ptr %27, i32 0, i32 14
  %145 = ptrtoint ptr %blkno154 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %143, ptr %blkno154, align 8
  br label %if.end211

if.else155:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %conv120)
  %cmp159 = icmp eq i32 %132, %conv120
  %146 = ptrtoint ptr %inleaf334 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %inleaf334, align 8
  br i1 %cmp159, label %if.then161, label %if.else190

if.then161:                                       ; preds = %if.else155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool163.not = icmp eq i8 %147, 0
  br i1 %tobool163.not, label %if.else172, label %if.then164

if.then164:                                       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #15
  %index166 = getelementptr inbounds %struct.xfs_da_args, ptr %27, i32 0, i32 15
  %148 = ptrtoint ptr %index166 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %conv120, ptr %index166, align 4
  %blkno167 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk1.addr.0331, i32 0, i32 1
  %149 = ptrtoint ptr %blkno167 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %blkno167, align 4
  %blkno168 = getelementptr inbounds %struct.xfs_da_args, ptr %27, i32 0, i32 14
  %151 = ptrtoint ptr %blkno168 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %blkno168, align 8
  %index2169 = getelementptr inbounds %struct.xfs_da_args, ptr %27, i32 0, i32 20
  %152 = ptrtoint ptr %index2169 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %index2169, align 8
  %blkno170 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk2.addr.0323, i32 0, i32 1
  %153 = ptrtoint ptr %blkno170 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %blkno170, align 4
  %blkno2171 = getelementptr inbounds %struct.xfs_da_args, ptr %27, i32 0, i32 19
  %155 = ptrtoint ptr %blkno2171 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %blkno2171, align 4
  br label %if.end211

if.else172:                                       ; preds = %if.then161
  %index177 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk2.addr.0323, i32 0, i32 3
  %156 = ptrtoint ptr %index177 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %index177, align 8
  %index179 = getelementptr inbounds %struct.xfs_da_args, ptr %27, i32 0, i32 15
  %157 = ptrtoint ptr %index179 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %index179, align 4
  %blkno180 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk2.addr.0323, i32 0, i32 1
  %158 = ptrtoint ptr %blkno180 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %blkno180, align 4
  %blkno181 = getelementptr inbounds %struct.xfs_da_args, ptr %27, i32 0, i32 14
  %160 = ptrtoint ptr %blkno181 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %blkno181, align 8
  %extravalid = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 5
  %161 = ptrtoint ptr %extravalid to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %extravalid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool182.not = icmp eq i8 %162, 0
  br i1 %tobool182.not, label %if.then183, label %if.else172.if.end211_crit_edge

if.else172.if.end211_crit_edge:                   ; preds = %if.else172
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end211

if.then183:                                       ; preds = %if.else172
  call void @__sanitizer_cov_trace_pc() #15
  %163 = ptrtoint ptr %index177 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %index177, align 8
  %index2185 = getelementptr inbounds %struct.xfs_da_args, ptr %27, i32 0, i32 20
  %165 = ptrtoint ptr %index2185 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %index2185, align 8
  %166 = ptrtoint ptr %blkno180 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %blkno180, align 4
  %blkno2187 = getelementptr inbounds %struct.xfs_da_args, ptr %27, i32 0, i32 19
  %168 = ptrtoint ptr %blkno2187 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %blkno2187, align 4
  br label %if.end211

if.else190:                                       ; preds = %if.else155
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %147)
  %cmp193 = icmp eq i8 %147, 1
  br i1 %cmp193, label %if.else190.cond.end203_crit_edge, label %cond.false202, !prof !251

if.else190.cond.end203_crit_edge:                 ; preds = %if.else190
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end203

cond.false202:                                    ; preds = %if.else190
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 1843) #13
  br label %cond.end203

cond.end203:                                      ; preds = %cond.false202, %if.else190.cond.end203_crit_edge
  %169 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %index, align 8
  %index2205 = getelementptr inbounds %struct.xfs_da_args, ptr %27, i32 0, i32 20
  %171 = ptrtoint ptr %index2205 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %index2205, align 8
  %index206 = getelementptr inbounds %struct.xfs_da_args, ptr %27, i32 0, i32 15
  %172 = ptrtoint ptr %index206 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %170, ptr %index206, align 4
  %blkno207 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk1.addr.0331, i32 0, i32 1
  %173 = ptrtoint ptr %blkno207 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %blkno207, align 4
  %blkno2208 = getelementptr inbounds %struct.xfs_da_args, ptr %27, i32 0, i32 19
  %175 = ptrtoint ptr %blkno2208 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %blkno2208, align 4
  %blkno209 = getelementptr inbounds %struct.xfs_da_args, ptr %27, i32 0, i32 14
  %176 = ptrtoint ptr %blkno209 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %174, ptr %blkno209, align 8
  br label %if.end211

if.end211:                                        ; preds = %cond.end203, %if.then183, %if.else172.if.end211_crit_edge, %if.then164, %cond.end146
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %totallen) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr2) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da3_blk_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_leaf_add_old(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_add_old, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_leaf_add_old, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !251

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !293
  %call42 = tail call i32 @__traceiter_xfs_attr_leaf_add_old(ptr noundef null, ptr noundef %args) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !294
  %13 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !251

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_add_old, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_add_old, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_leaf_add_old.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_attr_leaf_add_old.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 2036, ptr noundef nonnull @.str.56) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !266
  %31 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_leaf_add_new(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_add_new, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_leaf_add_new, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !251

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !295
  %call42 = tail call i32 @__traceiter_xfs_attr_leaf_add_new(ptr noundef null, ptr noundef %args) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !296
  %13 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !251

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_add_new, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_add_new, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_leaf_add_new.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_attr_leaf_add_new.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 2037, ptr noundef nonnull @.str.56) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !266
  %31 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_leaf_lasthash(ptr nocapture noundef readonly %bp, ptr noundef writeonly %count) local_unnamed_addr #0 align 64 {
entry:
  %ichdr = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ichdr) #13
  %0 = call ptr @memset(ptr %ichdr, i32 255, i32 36)
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %1 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %b_mount, align 4
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m_attr_geo, align 32
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %5 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_addr, align 4
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %4, ptr noundef nonnull %ichdr, ptr noundef %6)
  %7 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_addr, align 4
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %10)
  %cmp.i = icmp eq i16 %10, 15342
  %entries.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %8, i32 0, i32 1
  %entries2.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %8, i32 0, i32 1
  %retval.0.i = select i1 %cmp.i, ptr %entries.i, ptr %entries2.i
  %tobool.not = icmp eq ptr %count, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %count2 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 3
  %11 = ptrtoint ptr %count2 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %count2, align 2
  %conv = zext i16 %12 to i32
  %13 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %count3 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 3
  %14 = ptrtoint ptr %count3 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %count3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool4.not = icmp eq i16 %15, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %conv8 = zext i16 %15 to i32
  %sub = add nsw i32 %conv8, -1
  %arrayidx = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %sub
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.end6 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr) #13
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_leaf_add(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_add, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_leaf_add, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !251

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !297
  %call42 = tail call i32 @__traceiter_xfs_attr_leaf_add(ptr noundef null, ptr noundef %args) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !298
  %13 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !251

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_add, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_add, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_leaf_add.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_attr_leaf_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 2035, ptr noundef nonnull @.str.56) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !266
  %31 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_attr_leaf_newentsize(ptr nocapture noundef readonly %args, ptr noundef writeonly %local) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %namelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %0 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %namelen, align 8
  %valuelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 5
  %2 = ptrtoint ptr %valuelen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %valuelen, align 4
  %add1.i = add i32 %1, 2
  %sub.i = add i32 %add1.i, %3
  %or.i = or i32 %sub.i, 3
  %add2.i = add i32 %or.i, 1
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %args, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %shr.i = ashr i32 %7, 1
  %shr1.i = ashr i32 %7, 2
  %add.i = add nsw i32 %shr.i, %shr1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %add.i)
  %cmp = icmp slt i32 %add2.i, %add.i
  %tobool.not = icmp eq ptr %local, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %local to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %local, align 4
  br label %cleanup

if.end3:                                          ; preds = %entry
  br i1 %tobool.not, label %if.end3.if.end6_crit_edge, label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %local to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %local, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %10 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %namelen, align 8
  %sub.i16 = add i32 %11, 10
  %or.i17 = or i32 %sub.i16, 3
  %add1.i18 = add i32 %or.i17, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then2, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %add1.i18, %if.end6 ], [ %add2.i, %if.then2 ], [ %add2.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_attr3_leaf_add_work(ptr noundef %bp, ptr nocapture noundef %ichdr, ptr noundef %args, i32 noundef %mapindex) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_xfs_attr_leaf_add_work(ptr noundef %args)
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mapindex)
  %cmp2 = icmp slt i32 %mapindex, 3
  br i1 %cmp2, label %entry.cond.end_crit_edge, label %cond.false, !prof !251

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.1, i32 noundef 1454) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %index = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 15
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp4 = icmp sgt i32 %3, -1
  br i1 %cmp4, label %land.rhs5, label %cond.end.cond.false17_crit_edge, !prof !251

cond.end.cond.false17_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false17

land.rhs5:                                        ; preds = %cond.end
  %count = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 3
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %count, align 2
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp7.not = icmp ugt i32 %3, %conv
  br i1 %cmp7.not, label %land.rhs5.cond.false17_crit_edge, label %land.rhs5.cond.end18_crit_edge, !prof !252

land.rhs5.cond.end18_crit_edge:                   ; preds = %land.rhs5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end18

land.rhs5.cond.false17_crit_edge:                 ; preds = %land.rhs5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false17

cond.false17:                                     ; preds = %land.rhs5.cond.false17_crit_edge, %cond.end.cond.false17_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.1, i32 noundef 1455) #13
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %land.rhs5.cond.end18_crit_edge
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %7)
  %cmp.i = icmp eq i16 %7, 15342
  %entries.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %1, i32 0, i32 1
  %entries2.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %1, i32 0, i32 1
  %retval.0.i = select i1 %cmp.i, ptr %entries.i, ptr %entries2.i
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %9
  %count21 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 3
  %10 = ptrtoint ptr %count21 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %count21, align 2
  %conv22 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv22)
  %cmp23 = icmp slt i32 %9, %conv22
  br i1 %cmp23, label %if.then, label %cond.end18.if.end_crit_edge

cond.end18.if.end_crit_edge:                      ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i32 %conv22, %9
  %mul = shl i32 %sub, 3
  %add.ptr = getelementptr %struct.xfs_attr_leaf_entry, ptr %arrayidx, i32 1
  %12 = call ptr @memmove(ptr %add.ptr, ptr %arrayidx, i32 %mul)
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %13 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trans, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add31 = or i32 %mul, 7
  %sub32 = add i32 %add31, %sub.ptr.sub
  tail call void @xfs_trans_log_buf(ptr noundef %14, ptr noundef %bp, i32 noundef %sub.ptr.sub, i32 noundef %sub32) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end18.if.end_crit_edge
  %15 = ptrtoint ptr %count21 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %count21, align 2
  %inc = add i16 %16, 1
  store i16 %inc, ptr %count21, align 2
  %trans34 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %17 = ptrtoint ptr %trans34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %trans34, align 4
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %t_mountp, align 4
  %arrayidx35 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 %mapindex
  %21 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx35, align 2
  %conv36 = zext i16 %22 to i32
  %23 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %args, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv36)
  %cmp37 = icmp ugt i32 %26, %conv36
  br i1 %cmp37, label %if.end.cond.end47_crit_edge, label %cond.false46, !prof !251

if.end.cond.end47_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end47

cond.false46:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.1, i32 noundef 1474) #13
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false46, %if.end.cond.end47_crit_edge
  %27 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx35, align 2
  %29 = and i16 %28, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp52 = icmp eq i16 %29, 0
  br i1 %cmp52, label %cond.end47.cond.end62_crit_edge, label %cond.false61, !prof !251

cond.end47.cond.end62_crit_edge:                  ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end62

cond.false61:                                     ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.1, i32 noundef 1475) #13
  br label %cond.end62

cond.end62:                                       ; preds = %cond.false61, %cond.end47.cond.end62_crit_edge
  %size = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 %mapindex, i32 1
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %size, align 2
  %conv65 = zext i16 %31 to i32
  %namelen.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %32 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %namelen.i, align 8
  %valuelen.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 5
  %34 = ptrtoint ptr %valuelen.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %valuelen.i, align 4
  %add1.i.i = add i32 %33, 2
  %sub.i.i = add i32 %add1.i.i, %35
  %or.i.i = or i32 %sub.i.i, 3
  %add2.i.i = add i32 %or.i.i, 1
  %36 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %args, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %shr.i.i = ashr i32 %39, 1
  %shr1.i.i = ashr i32 %39, 2
  %add.i.i = add nsw i32 %shr.i.i, %shr1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i.i, i32 %add.i.i)
  %cmp.i1 = icmp slt i32 %add2.i.i, %add.i.i
  %sub.i16.i = add i32 %33, 10
  %or.i17.i = or i32 %sub.i16.i, 3
  %add1.i18.i = add i32 %or.i17.i, 1
  %retval.0.i2 = select i1 %cmp.i1, i32 %add2.i.i, i32 %add1.i18.i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i2, i32 %conv65)
  %cmp67.not = icmp sgt i32 %retval.0.i2, %conv65
  br i1 %cmp67.not, label %cond.false76, label %cond.end62.cond.end77_crit_edge, !prof !252

cond.end62.cond.end77_crit_edge:                  ; preds = %cond.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end77

cond.false76:                                     ; preds = %cond.end62
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.1, i32 noundef 1477) #13
  br label %cond.end77

cond.end77:                                       ; preds = %cond.false76, %cond.end62.cond.end77_crit_edge
  %40 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %size, align 2
  %conv81 = zext i16 %41 to i32
  %42 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %args, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv81)
  %cmp84 = icmp ugt i32 %45, %conv81
  br i1 %cmp84, label %cond.end77.cond.end94_crit_edge, label %cond.false93, !prof !251

cond.end77.cond.end94_crit_edge:                  ; preds = %cond.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end94

cond.false93:                                     ; preds = %cond.end77
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.1, i32 noundef 1478) #13
  br label %cond.end94

cond.end94:                                       ; preds = %cond.false93, %cond.end77.cond.end94_crit_edge
  %46 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %size, align 2
  %48 = and i16 %47, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %cmp100 = icmp eq i16 %48, 0
  br i1 %cmp100, label %cond.end94.cond.end110_crit_edge, label %cond.false109, !prof !251

cond.end94.cond.end110_crit_edge:                 ; preds = %cond.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end110

cond.false109:                                    ; preds = %cond.end94
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.1, i32 noundef 1479) #13
  br label %cond.end110

cond.end110:                                      ; preds = %cond.false109, %cond.end94.cond.end110_crit_edge
  %49 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %namelen.i, align 8
  %51 = ptrtoint ptr %valuelen.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %valuelen.i, align 4
  %add1.i.i5 = add i32 %50, 2
  %sub.i.i6 = add i32 %add1.i.i5, %52
  %or.i.i7 = or i32 %sub.i.i6, 3
  %add2.i.i8 = add i32 %or.i.i7, 1
  %53 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %args, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %shr.i.i9 = ashr i32 %56, 1
  %shr1.i.i10 = ashr i32 %56, 2
  %add.i.i11 = add nsw i32 %shr.i.i9, %shr1.i.i10
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i.i8, i32 %add.i.i11)
  %cmp.i12 = icmp slt i32 %add2.i.i8, %add.i.i11
  %sub.i16.i15 = add i32 %50, 10
  %or.i17.i16 = or i32 %sub.i16.i15, 3
  %add1.i18.i17 = add i32 %or.i17.i16, 1
  %retval.0.i18 = select i1 %cmp.i12, i32 %add2.i.i8, i32 %add1.i18.i17
  %57 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %size, align 2
  %59 = trunc i32 %retval.0.i18 to i16
  %conv117 = sub i16 %58, %59
  store i16 %conv117, ptr %size, align 2
  %60 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx35, align 2
  %add126 = add i16 %conv117, %61
  %nameidx = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %9, i32 1
  %62 = ptrtoint ptr %nameidx to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %add126, ptr %nameidx, align 4
  %hashval = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 8
  %63 = ptrtoint ptr %hashval to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hashval, align 8
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx, align 4
  %attr_filter = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 6
  %66 = ptrtoint ptr %attr_filter to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %attr_filter, align 8
  %conv129 = trunc i32 %67 to i8
  %flags = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %9, i32 2
  %conv134 = zext i1 %cmp.i12 to i8
  %spec.select = or i8 %conv129, %conv134
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %spec.select, ptr %flags, align 2
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 24
  %69 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %op_flags, align 8
  %and136 = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %cond.end110.if.end152_crit_edge, label %if.then138

cond.end110.if.end152_crit_edge:                  ; preds = %cond.end110
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

if.then138:                                       ; preds = %cond.end110
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %flags, align 2
  %73 = or i8 %72, -128
  store i8 %73, ptr %flags, align 2
  %blkno2 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 19
  %74 = ptrtoint ptr %blkno2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %blkno2, align 4
  %blkno = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 14
  %76 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %blkno, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp143 = icmp eq i32 %75, %77
  br i1 %cmp143, label %land.lhs.true, label %if.then138.if.end152_crit_edge

if.then138.if.end152_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

land.lhs.true:                                    ; preds = %if.then138
  %index2 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 20
  %78 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %index2, align 8
  %80 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp146.not = icmp sgt i32 %79, %81
  br i1 %cmp146.not, label %land.lhs.true.if.end152_crit_edge, label %if.then148

land.lhs.true.if.end152_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

if.then148:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %inc150 = add i32 %79, 1
  %82 = ptrtoint ptr %index2 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %inc150, ptr %index2, align 8
  br label %if.end152

if.end152:                                        ; preds = %if.then148, %land.lhs.true.if.end152_crit_edge, %if.then138.if.end152_crit_edge, %cond.end110.if.end152_crit_edge
  %83 = ptrtoint ptr %trans34 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %trans34, align 4
  %sub.ptr.lhs.cast154 = ptrtoint ptr %arrayidx to i32
  %sub.ptr.rhs.cast155 = ptrtoint ptr %1 to i32
  %sub.ptr.sub156 = sub i32 %sub.ptr.lhs.cast154, %sub.ptr.rhs.cast155
  %sub161 = add i32 %sub.ptr.sub156, 7
  tail call void @xfs_trans_log_buf(ptr noundef %84, ptr noundef %bp, i32 noundef %sub.ptr.sub156, i32 noundef %sub161) #13
  %85 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp163 = icmp eq i32 %86, 0
  br i1 %cmp163, label %if.end152.cond.end178_crit_edge, label %lor.rhs

if.end152.cond.end178_crit_edge:                  ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end178

lor.rhs:                                          ; preds = %if.end152
  %87 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx, align 4
  %add.ptr166 = getelementptr %struct.xfs_attr_leaf_entry, ptr %arrayidx, i32 -1
  %89 = ptrtoint ptr %add.ptr166 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %add.ptr166, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %90)
  %cmp168.not = icmp ult i32 %88, %90
  br i1 %cmp168.not, label %cond.false177, label %lor.rhs.cond.end178_crit_edge, !prof !252

lor.rhs.cond.end178_crit_edge:                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end178

cond.false177:                                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.1, i32 noundef 1499) #13
  br label %cond.end178

cond.end178:                                      ; preds = %cond.false177, %lor.rhs.cond.end178_crit_edge, %if.end152.cond.end178_crit_edge
  %91 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %index, align 4
  %93 = ptrtoint ptr %count21 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %count21, align 2
  %conv181 = zext i16 %94 to i32
  %sub182 = add nsw i32 %conv181, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %sub182)
  %cmp183 = icmp eq i32 %92, %sub182
  br i1 %cmp183, label %cond.end178.cond.end200_crit_edge, label %lor.rhs185

cond.end178.cond.end200_crit_edge:                ; preds = %cond.end178
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end200

lor.rhs185:                                       ; preds = %cond.end178
  %95 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx, align 4
  %add.ptr187 = getelementptr %struct.xfs_attr_leaf_entry, ptr %arrayidx, i32 1
  %97 = ptrtoint ptr %add.ptr187 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr187, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %98)
  %cmp189.not = icmp ugt i32 %96, %98
  br i1 %cmp189.not, label %cond.false199, label %lor.rhs185.cond.end200_crit_edge, !prof !252

lor.rhs185.cond.end200_crit_edge:                 ; preds = %lor.rhs185
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end200

cond.false199:                                    ; preds = %lor.rhs185
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.1, i32 noundef 1501) #13
  br label %cond.end200

cond.end200:                                      ; preds = %cond.false199, %lor.rhs185.cond.end200_crit_edge, %cond.end178.cond.end200_crit_edge
  %99 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %flags, align 2
  %101 = and i8 %100, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool204.not = icmp eq i8 %101, 0
  %102 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %index, align 4
  %104 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %105)
  %cmp.i.i.i21 = icmp eq i16 %105, 15342
  %retval.0.i.i.i24 = select i1 %cmp.i.i.i21, ptr %entries.i, ptr %entries2.i
  %nameidx.i.i25 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i.i24, i32 %103, i32 1
  %106 = ptrtoint ptr %nameidx.i.i25 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %nameidx.i.i25, align 4
  %idxprom.i.i26 = zext i16 %107 to i32
  %arrayidx1.i.i27 = getelementptr i8, ptr %1, i32 %idxprom.i.i26
  %108 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %namelen.i, align 8
  %conv221 = trunc i32 %109 to i8
  br i1 %tobool204.not, label %if.else, label %if.then205

if.then205:                                       ; preds = %cond.end200
  call void @__sanitizer_cov_trace_pc() #15
  %namelen209 = getelementptr inbounds %struct.xfs_attr_leaf_name_local, ptr %arrayidx1.i.i27, i32 0, i32 1
  %110 = ptrtoint ptr %namelen209 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv221, ptr %namelen209, align 2
  %111 = ptrtoint ptr %valuelen.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %valuelen.i, align 4
  %conv210 = trunc i32 %112 to i16
  %113 = ptrtoint ptr %arrayidx1.i.i27 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv210, ptr %arrayidx1.i.i27, align 2
  %nameval = getelementptr inbounds %struct.xfs_attr_leaf_name_local, ptr %arrayidx1.i.i27, i32 0, i32 2
  %name = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %114 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %name, align 4
  %116 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %namelen.i, align 8
  %118 = call ptr @memcpy(ptr %nameval, ptr %115, i32 %117)
  %119 = load i32, ptr %namelen.i, align 8
  %arrayidx215 = getelementptr %struct.xfs_attr_leaf_name_local, ptr %arrayidx1.i.i27, i32 0, i32 2, i32 %119
  %value = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 4
  %120 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %value, align 8
  %conv217 = and i32 %112, 65535
  %122 = call ptr @memcpy(ptr %arrayidx215, ptr %121, i32 %conv217)
  br label %if.end235

if.else:                                          ; preds = %cond.end200
  call void @__sanitizer_cov_trace_pc() #15
  %namelen222 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i27, i32 0, i32 2
  %123 = ptrtoint ptr %namelen222 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv221, ptr %namelen222, align 4
  %name223 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i27, i32 0, i32 3
  %name225 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %124 = ptrtoint ptr %name225 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %name225, align 4
  %126 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %namelen.i, align 8
  %128 = call ptr @memcpy(ptr %name223, ptr %125, i32 %127)
  %129 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %flags, align 2
  %131 = or i8 %130, -128
  store i8 %131, ptr %flags, align 2
  %valuelen231 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i27, i32 0, i32 1
  %132 = ptrtoint ptr %valuelen231 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %valuelen231, align 4
  %133 = ptrtoint ptr %arrayidx1.i.i27 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %arrayidx1.i.i27, align 4
  %rmtblkno = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 16
  %134 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 1, ptr %rmtblkno, align 8
  %135 = ptrtoint ptr %valuelen.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %valuelen.i, align 4
  %call233 = tail call i32 @xfs_attr3_rmt_blocks(ptr noundef %20, i32 noundef %136) #13
  %rmtblkcnt = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 17
  %137 = ptrtoint ptr %rmtblkcnt to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %call233, ptr %rmtblkcnt, align 4
  %138 = ptrtoint ptr %valuelen.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %valuelen.i, align 4
  %rmtvaluelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 18
  %140 = ptrtoint ptr %rmtvaluelen to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %rmtvaluelen, align 8
  br label %if.end235

if.end235:                                        ; preds = %if.else, %if.then205
  %141 = ptrtoint ptr %trans34 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %trans34, align 4
  %143 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %index, align 4
  %145 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %146)
  %cmp.i.i = icmp eq i16 %146, 15342
  %retval.0.i.i = select i1 %cmp.i.i, ptr %entries.i, ptr %entries2.i
  %nameidx.i = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i, i32 %144, i32 1
  %147 = ptrtoint ptr %nameidx.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %nameidx.i, align 4
  %idxprom.i = zext i16 %148 to i32
  %call248 = tail call fastcc i32 @xfs_attr_leaf_entsize(ptr noundef %1, i32 noundef %144)
  %add249 = add nsw i32 %idxprom.i, -1
  %sub250 = add i32 %add249, %call248
  tail call void @xfs_trans_log_buf(ptr noundef %142, ptr noundef %bp, i32 noundef %idxprom.i, i32 noundef %sub250) #13
  %149 = ptrtoint ptr %nameidx to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %nameidx, align 4
  %conv252 = zext i16 %150 to i32
  %firstused = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 5
  %151 = ptrtoint ptr %firstused to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %firstused, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %conv252)
  %cmp253 = icmp ugt i32 %152, %conv252
  br i1 %cmp253, label %if.then255, label %if.end235.if.end259_crit_edge

if.end235.if.end259_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end259

if.then255:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #15
  %153 = ptrtoint ptr %firstused to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %conv252, ptr %firstused, align 4
  br label %if.end259

if.end259:                                        ; preds = %if.then255, %if.end235.if.end259_crit_edge
  %154 = ptrtoint ptr %firstused to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %firstused, align 4
  %156 = ptrtoint ptr %count21 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %count21, align 2
  %conv262 = zext i16 %157 to i32
  %mul263 = shl nuw nsw i32 %conv262, 3
  %158 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %159)
  %cmp.i37 = icmp eq i16 %159, 15342
  %..i = select i1 %cmp.i37, i32 80, i32 32
  %add265 = add nuw nsw i32 %..i, %mul263
  call void @__sanitizer_cov_trace_cmp4(i32 %155, i32 %add265)
  %cmp266.not = icmp ult i32 %155, %add265
  br i1 %cmp266.not, label %cond.false275, label %if.end259.cond.end276_crit_edge, !prof !252

if.end259.cond.end276_crit_edge:                  ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end276

cond.false275:                                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.1, i32 noundef 1540) #13
  br label %cond.end276

cond.end276:                                      ; preds = %cond.false275, %if.end259.cond.end276_crit_edge
  %160 = ptrtoint ptr %count21 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %count21, align 2
  %conv278 = zext i16 %161 to i32
  %sub279 = shl nuw nsw i32 %conv278, 3
  %mul280 = add nsw i32 %sub279, -8
  %162 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %163)
  %cmp.i39 = icmp eq i16 %163, 15342
  %..i40 = select i1 %cmp.i39, i32 80, i32 32
  %add282 = add nsw i32 %mul280, %..i40
  %arrayidx286 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 0
  %164 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %arrayidx286, align 2
  %conv288 = zext i16 %165 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add282, i32 %conv288)
  %cmp289 = icmp eq i32 %add282, %conv288
  br i1 %cmp289, label %if.then291, label %cond.end276.for.inc_crit_edge

cond.end276.for.inc_crit_edge:                    ; preds = %cond.end276
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then291:                                       ; preds = %cond.end276
  call void @__sanitizer_cov_trace_pc() #15
  %add296 = add i16 %165, 8
  %166 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %add296, ptr %arrayidx286, align 2
  %size300 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 0, i32 1
  %167 = ptrtoint ptr %size300 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %size300, align 2
  %169 = tail call i16 @llvm.usub.sat.i16(i16 %168, i16 8)
  %170 = ptrtoint ptr %size300 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %169, ptr %size300, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then291, %cond.end276.for.inc_crit_edge
  %arrayidx286.1 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 1
  %171 = ptrtoint ptr %arrayidx286.1 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %arrayidx286.1, align 2
  %conv288.1 = zext i16 %172 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add282, i32 %conv288.1)
  %cmp289.1 = icmp eq i32 %add282, %conv288.1
  br i1 %cmp289.1, label %if.then291.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.then291.1:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %add296.1 = add i16 %172, 8
  %173 = ptrtoint ptr %arrayidx286.1 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %add296.1, ptr %arrayidx286.1, align 2
  %size300.1 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 1, i32 1
  %174 = ptrtoint ptr %size300.1 to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %size300.1, align 2
  %176 = tail call i16 @llvm.usub.sat.i16(i16 %175, i16 8)
  %177 = ptrtoint ptr %size300.1 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %176, ptr %size300.1, align 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then291.1, %for.inc.for.inc.1_crit_edge
  %arrayidx286.2 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 2
  %178 = ptrtoint ptr %arrayidx286.2 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %arrayidx286.2, align 2
  %conv288.2 = zext i16 %179 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add282, i32 %conv288.2)
  %cmp289.2 = icmp eq i32 %add282, %conv288.2
  br i1 %cmp289.2, label %if.then291.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.then291.2:                                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  %add296.2 = add i16 %179, 8
  %180 = ptrtoint ptr %arrayidx286.2 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %add296.2, ptr %arrayidx286.2, align 2
  %size300.2 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 2, i32 1
  %181 = ptrtoint ptr %size300.2 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %size300.2, align 2
  %183 = tail call i16 @llvm.usub.sat.i16(i16 %182, i16 8)
  %184 = ptrtoint ptr %size300.2 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %183, ptr %size300.2, align 2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then291.2, %for.inc.1.for.inc.2_crit_edge
  %185 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %index, align 4
  %call320 = tail call fastcc i32 @xfs_attr_leaf_entsize(ptr noundef %1, i32 noundef %186)
  %usedbytes = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 4
  %187 = ptrtoint ptr %usedbytes to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %usedbytes, align 4
  %189 = trunc i32 %call320 to i16
  %conv323 = add i16 %188, %189
  store i16 %conv323, ptr %usedbytes, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_attr3_leaf_compact(ptr noundef %args, ptr nocapture noundef %ichdr_dst, ptr noundef %bp) unnamed_addr #5 align 64 {
entry:
  %ichdr_src = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ichdr_src) #13
  %trans1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %0 = ptrtoint ptr %trans1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans1, align 4
  tail call fastcc void @trace_xfs_attr_leaf_compact(ptr noundef %args)
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %args, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %call = tail call ptr @kmem_alloc(i32 noundef %5, i32 noundef 0) #13
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %6 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_addr, align 4
  %8 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %args, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = call ptr @memcpy(ptr %call, ptr %7, i32 %11)
  %13 = load ptr, ptr %b_addr, align 4
  %14 = load ptr, ptr %args, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %17 = call ptr @memset(ptr %13, i32 0, i32 %16)
  %18 = load ptr, ptr %b_addr, align 4
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %call, i32 0, i32 2
  %19 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %20)
  %cmp.i = icmp eq i16 %20, 15342
  %..i = select i1 %cmp.i, i32 80, i32 32
  %21 = call ptr @memcpy(ptr %18, ptr %call, i32 %..i)
  %22 = call ptr @memcpy(ptr %ichdr_src, ptr %ichdr_dst, i32 36)
  %23 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %args, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %firstused = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr_dst, i32 0, i32 5
  %27 = ptrtoint ptr %firstused to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %firstused, align 4
  %usedbytes = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr_dst, i32 0, i32 4
  %28 = ptrtoint ptr %usedbytes to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %usedbytes, align 4
  %count = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr_dst, i32 0, i32 3
  %29 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %count, align 2
  %holes = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr_dst, i32 0, i32 6
  %30 = ptrtoint ptr %holes to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %holes, align 4
  %31 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %32)
  %cmp.i56 = icmp eq i16 %32, 15342
  %..i57 = select i1 %cmp.i56, i32 80, i32 32
  %conv = trunc i32 %..i57 to i16
  %freemap = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr_dst, i32 0, i32 7
  %33 = ptrtoint ptr %freemap to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv, ptr %freemap, align 2
  %sub = sub i32 %26, %..i57
  %conv18 = trunc i32 %sub to i16
  %size = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr_dst, i32 0, i32 7, i32 0, i32 1
  %34 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv18, ptr %size, align 2
  %35 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %args, align 8
  tail call void @xfs_attr3_leaf_hdr_to_disk(ptr noundef %36, ptr noundef %18, ptr noundef %ichdr_dst)
  %count22 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr_src, i32 0, i32 3
  %37 = ptrtoint ptr %count22 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %count22, align 2
  %conv23 = zext i16 %38 to i32
  call fastcc void @xfs_attr3_leaf_moveents(ptr noundef %args, ptr noundef %call, ptr noundef nonnull %ichdr_src, i32 noundef 0, ptr noundef %18, ptr noundef %ichdr_dst, i32 noundef 0, i32 noundef %conv23)
  %39 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %args, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %sub26 = add i32 %42, -1
  tail call void @xfs_trans_log_buf(ptr noundef %1, ptr noundef %bp, i32 noundef 0, i32 noundef %sub26) #13
  tail call void @kvfree(ptr noundef %call) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr_src) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr_leaf_order(ptr nocapture noundef readonly %leaf1_bp, ptr nocapture noundef readonly %leaf2_bp) local_unnamed_addr #0 align 64 {
entry:
  %ichdr1 = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  %ichdr2 = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ichdr1) #13
  %0 = call ptr @memset(ptr %ichdr1, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ichdr2) #13
  %1 = call ptr @memset(ptr %ichdr2, i32 255, i32 36)
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %leaf1_bp, i32 0, i32 14
  %2 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_mount, align 4
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_attr_geo, align 32
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %leaf1_bp, i32 0, i32 16
  %6 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_addr, align 4
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %5, ptr noundef nonnull %ichdr1, ptr noundef %7)
  %8 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m_attr_geo, align 32
  %b_addr2 = getelementptr inbounds %struct.xfs_buf, ptr %leaf2_bp, i32 0, i32 16
  %10 = ptrtoint ptr %b_addr2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_addr2, align 4
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %9, ptr noundef nonnull %ichdr2, ptr noundef %11)
  %12 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_addr, align 4
  %magic.i.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %magic.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %magic.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %15)
  %cmp.i.i = icmp eq i16 %15, 15342
  %entries.i.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %13, i32 0, i32 1
  %entries2.i.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %13, i32 0, i32 1
  %retval.0.i.i = select i1 %cmp.i.i, ptr %entries.i.i, ptr %entries2.i.i
  %16 = ptrtoint ptr %b_addr2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_addr2, align 4
  %magic.i29.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %magic.i29.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %magic.i29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %19)
  %cmp.i30.i = icmp eq i16 %19, 15342
  %entries.i31.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %17, i32 0, i32 1
  %entries2.i32.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %17, i32 0, i32 1
  %retval.0.i33.i = select i1 %cmp.i30.i, ptr %entries.i31.i, ptr %entries2.i32.i
  %count.i = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr1, i32 0, i32 3
  %20 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %count.i, align 2
  %conv.i = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp.not.i = icmp eq i16 %21, 0
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %count4.i = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr2, i32 0, i32 3
  %22 = ptrtoint ptr %count4.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %count4.i, align 2
  %conv5.i = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp6.not.i = icmp eq i16 %23, 0
  br i1 %cmp6.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %24 = ptrtoint ptr %retval.0.i33.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %retval.0.i33.i, align 4
  %26 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %retval.0.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp11.i = icmp ult i32 %25, %27
  br i1 %cmp11.i, label %land.lhs.true8.i.xfs_attr3_leaf_order.exit_crit_edge, label %lor.lhs.false.i

land.lhs.true8.i.xfs_attr3_leaf_order.exit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_attr3_leaf_order.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true8.i
  %sub.i = add nsw i32 %conv5.i, -1
  %arrayidx15.i = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i33.i, i32 %sub.i
  %28 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx15.i, align 4
  %sub19.i = add nsw i32 %conv.i, -1
  %arrayidx20.i = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i, i32 %sub19.i
  %30 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp22.i = icmp ult i32 %29, %31
  br i1 %cmp22.i, label %lor.lhs.false.i.xfs_attr3_leaf_order.exit_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

lor.lhs.false.i.xfs_attr3_leaf_order.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_attr3_leaf_order.exit

if.end.i:                                         ; preds = %lor.lhs.false.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  br label %xfs_attr3_leaf_order.exit

xfs_attr3_leaf_order.exit:                        ; preds = %if.end.i, %lor.lhs.false.i.xfs_attr3_leaf_order.exit_crit_edge, %land.lhs.true8.i.xfs_attr3_leaf_order.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ 1, %lor.lhs.false.i.xfs_attr3_leaf_order.exit_crit_edge ], [ 1, %land.lhs.true8.i.xfs_attr3_leaf_order.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr2) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr1) #13
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr3_leaf_toosmall(ptr noundef %state, ptr nocapture noundef writeonly %action) local_unnamed_addr #0 align 64 {
entry:
  %ichdr = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  %bp = alloca ptr, align 4
  %retval1 = alloca i32, align 4
  %ichdr2 = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ichdr) #13
  %0 = call ptr @memset(ptr %ichdr, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #13
  %1 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1) #13
  %2 = ptrtoint ptr %retval1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %retval1, align 4, !annotation !273
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state, align 8
  tail call fastcc void @trace_xfs_attr_leaf_toosmall(ptr noundef %4)
  %path = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 2
  %5 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %path, align 8
  %sub = add i32 %6, -1
  %arrayidx = getelementptr %struct.xfs_da_state, ptr %state, i32 0, i32 2, i32 1, i32 %sub
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_addr, align 4
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %14, ptr noundef nonnull %ichdr, ptr noundef %10)
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %10, i32 0, i32 2
  %15 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %16)
  %cmp.i = icmp eq i16 %16, 15342
  %..i = select i1 %cmp.i, i32 80, i32 32
  %count = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 3
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %count, align 2
  %conv = zext i16 %18 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %add = add nuw nsw i32 %mul, %..i
  %usedbytes = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 4
  %19 = ptrtoint ptr %usedbytes to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %usedbytes, align 4
  %conv6 = zext i16 %20 to i32
  %add7 = add nuw nsw i32 %add, %conv6
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %shr = lshr i32 %26, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add7, i32 %shr)
  %cmp = icmp ugt i32 %add7, %shr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %action, align 4
  br label %cleanup104

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp13 = icmp eq i16 %18, 0
  %28 = ptrtoint ptr %ichdr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ichdr, align 4
  br i1 %cmp13, label %if.then15, label %if.end26

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp16 = icmp ne i32 %29, 0
  %conv17 = zext i1 %cmp16 to i32
  %altpath = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 3
  %30 = call ptr @memcpy(ptr %altpath, ptr %path, i32 168)
  %call20 = call i32 @xfs_da3_path_shift(ptr noundef %state, ptr noundef %altpath, i32 noundef %conv17, i32 noundef 0, ptr noundef nonnull %retval1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.end22, label %if.then15.cleanup104_crit_edge

if.then15.cleanup104_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup104

if.end22:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %retval1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %retval1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool23.not = icmp eq i32 %32, 0
  %. = select i1 %tobool23.not, i32 2, i32 0
  %33 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %., ptr %action, align 4
  br label %cleanup104

if.end26:                                         ; preds = %if.end
  %back = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 1
  %34 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %back, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %35)
  %cmp28 = icmp ult i32 %29, %35
  %usedbytes62 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr2, i32 0, i32 4
  %count67 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr2, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ichdr2) #13
  %36 = call ptr @memset(ptr %ichdr2, i32 255, i32 36)
  br i1 %cmp28, label %if.then33, label %if.else35

if.then33:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %ichdr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ichdr, align 4
  br label %if.end37

if.else35:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %back, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else35, %if.then33
  %blkno.1 = phi i32 [ %38, %if.then33 ], [ %40, %if.else35 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blkno.1)
  %cmp38 = icmp eq i32 %blkno.1, 0
  br i1 %cmp38, label %if.end37.for.inc_crit_edge, label %if.end41

if.end37.for.inc_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end41:                                         ; preds = %if.end37
  %41 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %state, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %trans, align 4
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %42, i32 0, i32 10
  %45 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dp, align 8
  %call.i = call i32 @xfs_da_read_buf(ptr noundef %44, ptr noundef %46, i32 noundef %blkno.1, i32 noundef 0, ptr noundef nonnull %bp, i32 noundef 1, ptr noundef nonnull @xfs_attr3_leaf_buf_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  %tobool1.not.i = icmp eq ptr %44, null
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %xfs_attr3_leaf_read.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %if.end41
  %47 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bp, align 4
  %tobool3.not.i = icmp eq ptr %48, null
  br i1 %tobool3.not.i, label %land.lhs.true2.i.if.end47_crit_edge, label %if.then.i

land.lhs.true2.i.if.end47_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @xfs_trans_buf_set_type(ptr noundef nonnull %44, ptr noundef nonnull %48, i32 noundef 16) #13
  br label %if.end47

xfs_attr3_leaf_read.exit:                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool45.not = icmp eq i32 %call.i, 0
  br i1 %tobool45.not, label %xfs_attr3_leaf_read.exit.if.end47_crit_edge, label %xfs_attr3_leaf_read.exit.cleanup.thread166_crit_edge

xfs_attr3_leaf_read.exit.cleanup.thread166_crit_edge: ; preds = %xfs_attr3_leaf_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread166

xfs_attr3_leaf_read.exit.if.end47_crit_edge:      ; preds = %xfs_attr3_leaf_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

cleanup.thread166:                                ; preds = %xfs_attr3_leaf_read.exit.1.cleanup.thread166_crit_edge, %xfs_attr3_leaf_read.exit.cleanup.thread166_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %xfs_attr3_leaf_read.exit.cleanup.thread166_crit_edge ], [ %call.i.1, %xfs_attr3_leaf_read.exit.1.cleanup.thread166_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr2) #13
  br label %cleanup104

if.end47:                                         ; preds = %xfs_attr3_leaf_read.exit.if.end47_crit_edge, %if.then.i, %land.lhs.true2.i.if.end47_crit_edge
  %49 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %state, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  %53 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bp, align 4
  %b_addr50 = getelementptr inbounds %struct.xfs_buf, ptr %54, i32 0, i32 16
  %55 = ptrtoint ptr %b_addr50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %b_addr50, align 4
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %52, ptr noundef nonnull %ichdr2, ptr noundef %56)
  %57 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %state, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %shr57 = lshr i32 %62, 2
  %63 = ptrtoint ptr %usedbytes to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %usedbytes, align 4
  %conv60 = zext i16 %64 to i32
  %65 = ptrtoint ptr %usedbytes62 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %usedbytes62, align 4
  %conv63 = zext i16 %66 to i32
  %67 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %count, align 2
  %conv66 = zext i16 %68 to i32
  %69 = ptrtoint ptr %count67 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %count67, align 2
  %conv68 = zext i16 %70 to i32
  %add69 = add nuw nsw i32 %conv68, %conv66
  %mul70.neg = mul nsw i32 %add69, -8
  %71 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %72)
  %cmp.i160 = icmp eq i16 %72, 15342
  %..i161.neg180 = select i1 %cmp.i160, i32 -80, i32 -32
  %73 = add nuw nsw i32 %shr57, %conv60
  %74 = add nuw nsw i32 %73, %conv63
  %.neg172 = sub i32 %62, %74
  %75 = add i32 %.neg172, %mul70.neg
  %sub73 = add i32 %75, %..i161.neg180
  %trans75 = getelementptr inbounds %struct.xfs_da_args, ptr %58, i32 0, i32 11
  %76 = ptrtoint ptr %trans75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %trans75, align 4
  %78 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %77, ptr noundef %79) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub73)
  %cmp76 = icmp sgt i32 %sub73, -1
  br i1 %cmp76, label %if.end47.if.end84_crit_edge, label %if.end47.for.inc_crit_edge

if.end47.for.inc_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end47.if.end84_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

for.inc:                                          ; preds = %if.end47.for.inc_crit_edge, %if.end37.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr2) #13
  %lnot = xor i1 %cmp28, true
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ichdr2) #13
  %80 = call ptr @memset(ptr %ichdr2, i32 255, i32 36)
  br i1 %cmp28, label %if.else35.1, label %if.then33.1

if.else35.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %81 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %back, align 4
  br label %if.end37.1

if.then33.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %83 = ptrtoint ptr %ichdr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ichdr, align 4
  br label %if.end37.1

if.end37.1:                                       ; preds = %if.then33.1, %if.else35.1
  %blkno.1.1 = phi i32 [ %84, %if.then33.1 ], [ %82, %if.else35.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blkno.1.1)
  %cmp38.1 = icmp eq i32 %blkno.1.1, 0
  br i1 %cmp38.1, label %if.end37.1.for.inc.1_crit_edge, label %if.end41.1

if.end37.1.for.inc.1_crit_edge:                   ; preds = %if.end37.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.end41.1:                                       ; preds = %if.end37.1
  %85 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %state, align 8
  %trans.1 = getelementptr inbounds %struct.xfs_da_args, ptr %86, i32 0, i32 11
  %87 = ptrtoint ptr %trans.1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %trans.1, align 4
  %dp.1 = getelementptr inbounds %struct.xfs_da_args, ptr %86, i32 0, i32 10
  %89 = ptrtoint ptr %dp.1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dp.1, align 8
  %call.i.1 = call i32 @xfs_da_read_buf(ptr noundef %88, ptr noundef %90, i32 noundef %blkno.1.1, i32 noundef 0, ptr noundef nonnull %bp, i32 noundef 1, ptr noundef nonnull @xfs_attr3_leaf_buf_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp ne i32 %call.i.1, 0
  %tobool1.not.i.1 = icmp eq ptr %88, null
  %or.cond.i.1 = or i1 %tobool1.not.i.1, %tobool.not.i.1
  br i1 %or.cond.i.1, label %xfs_attr3_leaf_read.exit.1, label %land.lhs.true2.i.1

land.lhs.true2.i.1:                               ; preds = %if.end41.1
  %91 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bp, align 4
  %tobool3.not.i.1 = icmp eq ptr %92, null
  br i1 %tobool3.not.i.1, label %land.lhs.true2.i.1.if.end47.1_crit_edge, label %if.then.i.1

land.lhs.true2.i.1.if.end47.1_crit_edge:          ; preds = %land.lhs.true2.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47.1

if.then.i.1:                                      ; preds = %land.lhs.true2.i.1
  call void @__sanitizer_cov_trace_pc() #15
  call void @xfs_trans_buf_set_type(ptr noundef nonnull %88, ptr noundef nonnull %92, i32 noundef 16) #13
  br label %if.end47.1

xfs_attr3_leaf_read.exit.1:                       ; preds = %if.end41.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool45.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool45.not.1, label %xfs_attr3_leaf_read.exit.1.if.end47.1_crit_edge, label %xfs_attr3_leaf_read.exit.1.cleanup.thread166_crit_edge

xfs_attr3_leaf_read.exit.1.cleanup.thread166_crit_edge: ; preds = %xfs_attr3_leaf_read.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread166

xfs_attr3_leaf_read.exit.1.if.end47.1_crit_edge:  ; preds = %xfs_attr3_leaf_read.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47.1

if.end47.1:                                       ; preds = %xfs_attr3_leaf_read.exit.1.if.end47.1_crit_edge, %if.then.i.1, %land.lhs.true2.i.1.if.end47.1_crit_edge
  %93 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %state, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 8
  %97 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bp, align 4
  %b_addr50.1 = getelementptr inbounds %struct.xfs_buf, ptr %98, i32 0, i32 16
  %99 = ptrtoint ptr %b_addr50.1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %b_addr50.1, align 4
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %96, ptr noundef nonnull %ichdr2, ptr noundef %100)
  %101 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %state, align 8
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 8
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 4
  %shr57.1 = lshr i32 %106, 2
  %107 = ptrtoint ptr %usedbytes to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %usedbytes, align 4
  %conv60.1 = zext i16 %108 to i32
  %109 = ptrtoint ptr %usedbytes62 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %usedbytes62, align 4
  %conv63.1 = zext i16 %110 to i32
  %111 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %count, align 2
  %conv66.1 = zext i16 %112 to i32
  %113 = ptrtoint ptr %count67 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %count67, align 2
  %conv68.1 = zext i16 %114 to i32
  %add69.1 = add nuw nsw i32 %conv68.1, %conv66.1
  %mul70.neg.1 = mul nsw i32 %add69.1, -8
  %115 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %116)
  %cmp.i160.1 = icmp eq i16 %116, 15342
  %..i161.neg180.1 = select i1 %cmp.i160.1, i32 -80, i32 -32
  %117 = add nuw nsw i32 %shr57.1, %conv60.1
  %118 = add nuw nsw i32 %117, %conv63.1
  %.neg172.1 = sub i32 %106, %118
  %119 = add i32 %.neg172.1, %mul70.neg.1
  %sub73.1 = add i32 %119, %..i161.neg180.1
  %trans75.1 = getelementptr inbounds %struct.xfs_da_args, ptr %102, i32 0, i32 11
  %120 = ptrtoint ptr %trans75.1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %trans75.1, align 4
  %122 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %121, ptr noundef %123) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub73.1)
  %cmp76.1 = icmp sgt i32 %sub73.1, -1
  br i1 %cmp76.1, label %if.end47.1.if.end84_crit_edge, label %if.end47.1.for.inc.1_crit_edge

if.end47.1.for.inc.1_crit_edge:                   ; preds = %if.end47.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.end47.1.if.end84_crit_edge:                    ; preds = %if.end47.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

for.inc.1:                                        ; preds = %if.end47.1.for.inc.1_crit_edge, %if.end37.1.for.inc.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr2) #13
  %124 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %action, align 4
  br label %cleanup104

if.end84:                                         ; preds = %if.end47.1.if.end84_crit_edge, %if.end47.if.end84_crit_edge
  %blkno.1.lcssa184 = phi i32 [ %blkno.1, %if.end47.if.end84_crit_edge ], [ %blkno.1.1, %if.end47.1.if.end84_crit_edge ]
  %forward.0.in177.lcssa182 = phi i1 [ %cmp28, %if.end47.if.end84_crit_edge ], [ %lnot, %if.end47.1.if.end84_crit_edge ]
  %forward.0.le = zext i1 %forward.0.in177.lcssa182 to i32
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr2) #13
  %altpath85 = getelementptr inbounds %struct.xfs_da_state, ptr %state, i32 0, i32 3
  %125 = call ptr @memcpy(ptr %altpath85, ptr %path, i32 168)
  %blkno87 = getelementptr %struct.xfs_da_state, ptr %state, i32 0, i32 2, i32 1, i32 %sub, i32 1
  %126 = ptrtoint ptr %blkno87 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %blkno87, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %blkno.1.lcssa184, i32 %127)
  %cmp88 = icmp ult i32 %blkno.1.lcssa184, %127
  %altpath85.path = select i1 %cmp88, ptr %altpath85, ptr %path
  %call95 = call i32 @xfs_da3_path_shift(ptr noundef %state, ptr noundef %altpath85.path, i32 noundef %forward.0.le, i32 noundef 0, ptr noundef nonnull %retval1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool97.not = icmp eq i32 %call95, 0
  br i1 %tobool97.not, label %if.end99, label %if.end84.cleanup104_crit_edge

if.end84.cleanup104_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup104

if.end99:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  %128 = ptrtoint ptr %retval1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %retval1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool100.not = icmp eq i32 %129, 0
  %.158 = zext i1 %tobool100.not to i32
  %130 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %.158, ptr %action, align 4
  br label %cleanup104

cleanup104:                                       ; preds = %if.end99, %if.end84.cleanup104_crit_edge, %for.inc.1, %cleanup.thread166, %if.end22, %if.then15.cleanup104_crit_edge, %if.then
  %retval.2 = phi i32 [ 0, %if.then ], [ 0, %if.end22 ], [ 0, %for.inc.1 ], [ 0, %if.end99 ], [ %call20, %if.then15.cleanup104_crit_edge ], [ %call95, %if.end84.cleanup104_crit_edge ], [ %call.i.lcssa, %cleanup.thread166 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr) #13
  ret i32 %retval.2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_leaf_toosmall(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_toosmall, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_leaf_toosmall, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !251

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !299
  %call42 = tail call i32 @__traceiter_xfs_attr_leaf_toosmall(ptr noundef null, ptr noundef %args) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !300
  %13 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !251

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_toosmall, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_toosmall, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_leaf_toosmall.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_attr_leaf_toosmall.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 2056, ptr noundef nonnull @.str.56) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !266
  %31 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da3_path_shift(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr3_leaf_remove(ptr noundef %bp, ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %ichdr = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ichdr) #13
  %0 = call ptr @memset(ptr %ichdr, i32 255, i32 36)
  tail call fastcc void @trace_xfs_attr_leaf_remove(ptr noundef %args)
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %1 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %b_addr, align 4
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args, align 8
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %4, ptr noundef nonnull %ichdr, ptr noundef %2)
  %count = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.not = icmp eq i16 %6, 0
  br i1 %cmp.not, label %entry.cond.false_crit_edge, label %land.rhs, !prof !252

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

land.rhs:                                         ; preds = %entry
  %conv = zext i16 %6 to i32
  %7 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %div476 = lshr i32 %10, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div476, i32 %conv)
  %cmp6 = icmp ugt i32 %div476, %conv
  br i1 %cmp6, label %land.rhs.cond.end_crit_edge, label %land.rhs.cond.false_crit_edge, !prof !251

land.rhs.cond.false_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

land.rhs.cond.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %land.rhs.cond.false_crit_edge, %entry.cond.false_crit_edge
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 2104) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.rhs.cond.end_crit_edge
  %index = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 15
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp9 = icmp sgt i32 %12, -1
  br i1 %cmp9, label %land.rhs11, label %cond.end.cond.false25_crit_edge, !prof !251

cond.end.cond.false25_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false25

land.rhs11:                                       ; preds = %cond.end
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %count, align 2
  %conv14 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv14)
  %cmp15 = icmp ult i32 %12, %conv14
  br i1 %cmp15, label %land.rhs11.cond.end26_crit_edge, label %land.rhs11.cond.false25_crit_edge, !prof !251

land.rhs11.cond.false25_crit_edge:                ; preds = %land.rhs11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false25

land.rhs11.cond.end26_crit_edge:                  ; preds = %land.rhs11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end26

cond.false25:                                     ; preds = %land.rhs11.cond.false25_crit_edge, %cond.end.cond.false25_crit_edge
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 2105) #13
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false25, %land.rhs11.cond.end26_crit_edge
  %firstused = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 5
  %15 = ptrtoint ptr %firstused to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %firstused, align 4
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %count, align 2
  %conv28 = zext i16 %18 to i32
  %mul = shl nuw nsw i32 %conv28, 3
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %2, i32 0, i32 2
  %19 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %20)
  %cmp.i = icmp eq i16 %20, 15342
  %..i = select i1 %cmp.i, i32 80, i32 32
  %add = add nuw nsw i32 %..i, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add)
  %cmp29.not = icmp ult i32 %16, %add
  br i1 %cmp29.not, label %cond.false38, label %cond.end26.cond.end39_crit_edge, !prof !252

cond.end26.cond.end39_crit_edge:                  ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end39

cond.false38:                                     ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 2107) #13
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false38, %cond.end26.cond.end39_crit_edge
  %21 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %22)
  %cmp.i481 = icmp eq i16 %22, 15342
  %entries.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %2, i32 0, i32 1
  %entries2.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %2, i32 0, i32 1
  %retval.0.i = select i1 %cmp.i481, ptr %entries.i, ptr %entries2.i
  %23 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %24
  %nameidx = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %24, i32 1
  %25 = ptrtoint ptr %nameidx to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %nameidx, align 4
  %conv42 = zext i16 %26 to i32
  %27 = ptrtoint ptr %firstused to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %firstused, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv42)
  %cmp44.not = icmp ugt i32 %28, %conv42
  br i1 %cmp44.not, label %cond.false53, label %cond.end39.cond.end54_crit_edge, !prof !252

cond.end39.cond.end54_crit_edge:                  ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end54

cond.false53:                                     ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 2111) #13
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false53, %cond.end39.cond.end54_crit_edge
  %29 = ptrtoint ptr %nameidx to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %nameidx, align 4
  %conv56 = zext i16 %30 to i32
  %31 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %args, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv56)
  %cmp59 = icmp ugt i32 %34, %conv56
  br i1 %cmp59, label %cond.end54.cond.end69_crit_edge, label %cond.false68, !prof !251

cond.end54.cond.end69_crit_edge:                  ; preds = %cond.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end69

cond.false68:                                     ; preds = %cond.end54
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 2112) #13
  br label %cond.end69

cond.end69:                                       ; preds = %cond.false68, %cond.end54.cond.end69_crit_edge
  %35 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %count, align 2
  %conv71 = zext i16 %36 to i32
  %mul72 = shl nuw nsw i32 %conv71, 3
  %37 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %38)
  %cmp.i483 = icmp eq i16 %38, 15342
  %..i484 = select i1 %cmp.i483, i32 80, i32 32
  %add74 = add nuw nsw i32 %..i484, %mul72
  %size = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 0, i32 1
  %39 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %size, align 4
  %conv76 = zext i16 %40 to i32
  %41 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %index, align 4
  %call78 = call fastcc i32 @xfs_attr_leaf_entsize(ptr noundef %2, i32 noundef %42)
  %arrayidx82 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 0
  %43 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx82, align 2
  %conv83 = zext i16 %44 to i32
  %45 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %args, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %conv83)
  %cmp86 = icmp ugt i32 %48, %conv83
  br i1 %cmp86, label %cond.end69.cond.end96_crit_edge, label %cond.false95, !prof !251

cond.end69.cond.end96_crit_edge:                  ; preds = %cond.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end96

cond.false95:                                     ; preds = %cond.end69
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 2127) #13
  br label %cond.end96

cond.end96:                                       ; preds = %cond.false95, %cond.end69.cond.end96_crit_edge
  %49 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %size, align 4
  %conv100 = zext i16 %50 to i32
  %51 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %args, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %conv100)
  %cmp103 = icmp ugt i32 %54, %conv100
  br i1 %cmp103, label %cond.end96.cond.end113_crit_edge, label %cond.false112, !prof !251

cond.end96.cond.end113_crit_edge:                 ; preds = %cond.end96
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end113

cond.false112:                                    ; preds = %cond.end96
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 2128) #13
  br label %cond.end113

cond.end113:                                      ; preds = %cond.false112, %cond.end96.cond.end113_crit_edge
  %55 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx82, align 2
  %conv117 = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add74, i32 %conv117)
  %cmp118 = icmp eq i32 %add74, %conv117
  br i1 %cmp118, label %if.then, label %cond.end113.if.end_crit_edge

cond.end113.if.end_crit_edge:                     ; preds = %cond.end113
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %cond.end113
  call void @__sanitizer_cov_trace_pc() #15
  %sub = add i16 %56, -8
  %57 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %sub, ptr %arrayidx82, align 2
  %58 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %size, align 4
  %add129 = add i16 %59, 8
  store i16 %add129, ptr %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end113.if.end_crit_edge
  %60 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx82, align 2
  %conv134 = zext i16 %61 to i32
  %62 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %size, align 4
  %conv138 = zext i16 %63 to i32
  %add139 = add nuw nsw i32 %conv138, %conv134
  %64 = ptrtoint ptr %nameidx to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %nameidx, align 4
  %conv141 = zext i16 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add139, i32 %conv141)
  %cmp142 = icmp eq i32 %add139, %conv141
  br i1 %cmp142, label %if.end.for.inc_crit_edge, label %if.else

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.else:                                          ; preds = %if.end
  %add151 = add i32 %call78, %conv141
  call void @__sanitizer_cov_trace_cmp4(i32 %add151, i32 %conv134)
  %cmp152 = icmp eq i32 %add151, %conv134
  br i1 %cmp152, label %if.else.for.inc_crit_edge, label %if.else155

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.else155:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %63)
  %cmp160 = icmp ugt i16 %40, %63
  %spec.select = select i1 %cmp160, i32 0, i32 2
  %66 = call i32 @llvm.smin.i32(i32 %conv76, i32 %conv138)
  br label %for.inc

for.inc:                                          ; preds = %if.else155, %if.else.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %before.1 = phi i32 [ 0, %if.end.for.inc_crit_edge ], [ -1, %if.else.for.inc_crit_edge ], [ -1, %if.else155 ]
  %after.1 = phi i32 [ -1, %if.end.for.inc_crit_edge ], [ 0, %if.else.for.inc_crit_edge ], [ -1, %if.else155 ]
  %smallest.1 = phi i32 [ 2, %if.end.for.inc_crit_edge ], [ 2, %if.else.for.inc_crit_edge ], [ %spec.select, %if.else155 ]
  %tmp.1 = phi i32 [ %conv76, %if.end.for.inc_crit_edge ], [ %conv76, %if.else.for.inc_crit_edge ], [ %66, %if.else155 ]
  %arrayidx82.1 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 1
  %67 = ptrtoint ptr %arrayidx82.1 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx82.1, align 2
  %conv83.1 = zext i16 %68 to i32
  %69 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %args, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %conv83.1)
  %cmp86.1 = icmp ugt i32 %72, %conv83.1
  br i1 %cmp86.1, label %for.inc.cond.end96.1_crit_edge, label %cond.false95.1, !prof !251

for.inc.cond.end96.1_crit_edge:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end96.1

cond.false95.1:                                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 2127) #13
  br label %cond.end96.1

cond.end96.1:                                     ; preds = %cond.false95.1, %for.inc.cond.end96.1_crit_edge
  %size99.1 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 1, i32 1
  %73 = ptrtoint ptr %size99.1 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %size99.1, align 4
  %conv100.1 = zext i16 %74 to i32
  %75 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %args, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %conv100.1)
  %cmp103.1 = icmp ugt i32 %78, %conv100.1
  br i1 %cmp103.1, label %cond.end96.1.cond.end113.1_crit_edge, label %cond.false112.1, !prof !251

cond.end96.1.cond.end113.1_crit_edge:             ; preds = %cond.end96.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end113.1

cond.false112.1:                                  ; preds = %cond.end96.1
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 2128) #13
  br label %cond.end113.1

cond.end113.1:                                    ; preds = %cond.false112.1, %cond.end96.1.cond.end113.1_crit_edge
  %79 = ptrtoint ptr %arrayidx82.1 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx82.1, align 2
  %conv117.1 = zext i16 %80 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add74, i32 %conv117.1)
  %cmp118.1 = icmp eq i32 %add74, %conv117.1
  br i1 %cmp118.1, label %if.then.1, label %cond.end113.1.if.end.1_crit_edge

cond.end113.1.if.end.1_crit_edge:                 ; preds = %cond.end113.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.1

if.then.1:                                        ; preds = %cond.end113.1
  call void @__sanitizer_cov_trace_pc() #15
  %sub.1 = add i16 %80, -8
  %81 = ptrtoint ptr %arrayidx82.1 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %sub.1, ptr %arrayidx82.1, align 2
  %82 = ptrtoint ptr %size99.1 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %size99.1, align 4
  %add129.1 = add i16 %83, 8
  store i16 %add129.1, ptr %size99.1, align 4
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %cond.end113.1.if.end.1_crit_edge
  %84 = ptrtoint ptr %arrayidx82.1 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx82.1, align 2
  %conv134.1 = zext i16 %85 to i32
  %86 = ptrtoint ptr %size99.1 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %size99.1, align 4
  %conv138.1 = zext i16 %87 to i32
  %add139.1 = add nuw nsw i32 %conv138.1, %conv134.1
  %88 = ptrtoint ptr %nameidx to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %nameidx, align 4
  %conv141.1 = zext i16 %89 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add139.1, i32 %conv141.1)
  %cmp142.1 = icmp eq i32 %add139.1, %conv141.1
  br i1 %cmp142.1, label %if.end.1.for.inc.1_crit_edge, label %if.else.1

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.else.1:                                        ; preds = %if.end.1
  %add151.1 = add i32 %call78, %conv141.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add151.1, i32 %conv134.1)
  %cmp152.1 = icmp eq i32 %add151.1, %conv134.1
  br i1 %cmp152.1, label %if.else.1.for.inc.1_crit_edge, label %if.else155.1

if.else.1.for.inc.1_crit_edge:                    ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.else155.1:                                     ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp.1, i32 %conv138.1)
  %cmp160.1 = icmp ugt i32 %tmp.1, %conv138.1
  %spec.select.1 = select i1 %cmp160.1, i32 1, i32 %smallest.1
  %90 = call i32 @llvm.smin.i32(i32 %tmp.1, i32 %conv138.1)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else155.1, %if.else.1.for.inc.1_crit_edge, %if.end.1.for.inc.1_crit_edge
  %before.1.1 = phi i32 [ 1, %if.end.1.for.inc.1_crit_edge ], [ %before.1, %if.else.1.for.inc.1_crit_edge ], [ %before.1, %if.else155.1 ]
  %after.1.1 = phi i32 [ %after.1, %if.end.1.for.inc.1_crit_edge ], [ 1, %if.else.1.for.inc.1_crit_edge ], [ %after.1, %if.else155.1 ]
  %smallest.1.1 = phi i32 [ %smallest.1, %if.end.1.for.inc.1_crit_edge ], [ %smallest.1, %if.else.1.for.inc.1_crit_edge ], [ %spec.select.1, %if.else155.1 ]
  %tmp.1.1 = phi i32 [ %tmp.1, %if.end.1.for.inc.1_crit_edge ], [ %tmp.1, %if.else.1.for.inc.1_crit_edge ], [ %90, %if.else155.1 ]
  %arrayidx82.2 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 2
  %91 = ptrtoint ptr %arrayidx82.2 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %arrayidx82.2, align 2
  %conv83.2 = zext i16 %92 to i32
  %93 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %args, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %conv83.2)
  %cmp86.2 = icmp ugt i32 %96, %conv83.2
  br i1 %cmp86.2, label %for.inc.1.cond.end96.2_crit_edge, label %cond.false95.2, !prof !251

for.inc.1.cond.end96.2_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end96.2

cond.false95.2:                                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 2127) #13
  br label %cond.end96.2

cond.end96.2:                                     ; preds = %cond.false95.2, %for.inc.1.cond.end96.2_crit_edge
  %size99.2 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 2, i32 1
  %97 = ptrtoint ptr %size99.2 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %size99.2, align 4
  %conv100.2 = zext i16 %98 to i32
  %99 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %args, align 8
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %conv100.2)
  %cmp103.2 = icmp ugt i32 %102, %conv100.2
  br i1 %cmp103.2, label %cond.end96.2.cond.end113.2_crit_edge, label %cond.false112.2, !prof !251

cond.end96.2.cond.end113.2_crit_edge:             ; preds = %cond.end96.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end113.2

cond.false112.2:                                  ; preds = %cond.end96.2
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 2128) #13
  br label %cond.end113.2

cond.end113.2:                                    ; preds = %cond.false112.2, %cond.end96.2.cond.end113.2_crit_edge
  %103 = ptrtoint ptr %arrayidx82.2 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx82.2, align 2
  %conv117.2 = zext i16 %104 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add74, i32 %conv117.2)
  %cmp118.2 = icmp eq i32 %add74, %conv117.2
  br i1 %cmp118.2, label %if.then.2, label %cond.end113.2.if.end.2_crit_edge

cond.end113.2.if.end.2_crit_edge:                 ; preds = %cond.end113.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.2

if.then.2:                                        ; preds = %cond.end113.2
  call void @__sanitizer_cov_trace_pc() #15
  %sub.2 = add i16 %104, -8
  %105 = ptrtoint ptr %arrayidx82.2 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %sub.2, ptr %arrayidx82.2, align 2
  %106 = ptrtoint ptr %size99.2 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %size99.2, align 4
  %add129.2 = add i16 %107, 8
  store i16 %add129.2, ptr %size99.2, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %cond.end113.2.if.end.2_crit_edge
  %108 = ptrtoint ptr %arrayidx82.2 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx82.2, align 2
  %conv134.2 = zext i16 %109 to i32
  %110 = ptrtoint ptr %size99.2 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %size99.2, align 4
  %conv138.2 = zext i16 %111 to i32
  %add139.2 = add nuw nsw i32 %conv138.2, %conv134.2
  %112 = ptrtoint ptr %nameidx to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %nameidx, align 4
  %conv141.2 = zext i16 %113 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add139.2, i32 %conv141.2)
  %cmp142.2 = icmp eq i32 %add139.2, %conv141.2
  br i1 %cmp142.2, label %if.end.2.for.inc.2_crit_edge, label %if.else.2

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.else.2:                                        ; preds = %if.end.2
  %add151.2 = add i32 %call78, %conv141.2
  call void @__sanitizer_cov_trace_cmp4(i32 %add151.2, i32 %conv134.2)
  %cmp152.2 = icmp eq i32 %add151.2, %conv134.2
  br i1 %cmp152.2, label %if.else.2.for.inc.2_crit_edge, label %if.else155.2

if.else.2.for.inc.2_crit_edge:                    ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.else155.2:                                     ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp.1.1, i32 %conv138.2)
  %cmp160.2 = icmp ugt i32 %tmp.1.1, %conv138.2
  %spec.select.2 = select i1 %cmp160.2, i32 2, i32 %smallest.1.1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.else155.2, %if.else.2.for.inc.2_crit_edge, %if.end.2.for.inc.2_crit_edge
  %before.1.2 = phi i32 [ 2, %if.end.2.for.inc.2_crit_edge ], [ %before.1.1, %if.else.2.for.inc.2_crit_edge ], [ %before.1.1, %if.else155.2 ]
  %after.1.2 = phi i32 [ %after.1.1, %if.end.2.for.inc.2_crit_edge ], [ 2, %if.else.2.for.inc.2_crit_edge ], [ %after.1.1, %if.else155.2 ]
  %smallest.1.2 = phi i32 [ %smallest.1.1, %if.end.2.for.inc.2_crit_edge ], [ %smallest.1.1, %if.else.2.for.inc.2_crit_edge ], [ %spec.select.2, %if.else155.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %before.1.2)
  %cmp170 = icmp sgt i32 %before.1.2, -1
  %114 = and i32 %before.1.2, %after.1.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %.not = icmp slt i32 %114, 0
  br i1 %.not, label %if.else225, label %if.then174

if.then174:                                       ; preds = %for.inc.2
  %115 = or i32 %before.1.2, %after.1.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %115)
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %if.then179, label %if.else202

if.then179:                                       ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #15
  %size182 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 %before.1.2, i32 1
  %117 = ptrtoint ptr %size182 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %size182, align 4
  %119 = trunc i32 %call78 to i16
  %conv185 = add i16 %118, %119
  store i16 %conv185, ptr %size182, align 4
  %arrayidx187 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 %after.1.2
  %size188 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 %after.1.2, i32 1
  %120 = ptrtoint ptr %size188 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %size188, align 4
  %add194 = add i16 %121, %conv185
  store i16 %add194, ptr %size182, align 4
  %122 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 0, ptr %arrayidx187, align 2
  store i16 0, ptr %size188, align 4
  br label %if.end242

if.else202:                                       ; preds = %if.then174
  br i1 %cmp170, label %if.then205, label %if.else212

if.then205:                                       ; preds = %if.else202
  call void @__sanitizer_cov_trace_pc() #15
  %size208 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 %before.1.2, i32 1
  %123 = ptrtoint ptr %size208 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %size208, align 4
  %125 = trunc i32 %call78 to i16
  %conv211 = add i16 %124, %125
  store i16 %conv211, ptr %size208, align 4
  br label %if.end242

if.else212:                                       ; preds = %if.else202
  call void @__sanitizer_cov_trace_pc() #15
  %126 = ptrtoint ptr %nameidx to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %nameidx, align 4
  %arrayidx215 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 %after.1.2
  %128 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %127, ptr %arrayidx215, align 2
  %size219 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 %after.1.2, i32 1
  %129 = ptrtoint ptr %size219 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %size219, align 4
  %131 = trunc i32 %call78 to i16
  %conv222 = add i16 %130, %131
  store i16 %conv222, ptr %size219, align 4
  br label %if.end242

if.else225:                                       ; preds = %for.inc.2
  %size228 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 %smallest.1.2, i32 1
  %132 = ptrtoint ptr %size228 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %size228, align 4
  %conv229 = zext i16 %133 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call78, i32 %conv229)
  %cmp230 = icmp sgt i32 %call78, %conv229
  br i1 %cmp230, label %if.then232, label %if.else225.if.end242_crit_edge

if.else225.if.end242_crit_edge:                   ; preds = %if.else225
  call void @__sanitizer_cov_trace_pc() #15
  %.pre = trunc i32 %call78 to i16
  br label %if.end242

if.then232:                                       ; preds = %if.else225
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx227 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 7, i32 %smallest.1.2
  %134 = ptrtoint ptr %nameidx to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %nameidx, align 4
  %136 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %135, ptr %arrayidx227, align 2
  %conv237 = trunc i32 %call78 to i16
  %137 = ptrtoint ptr %size228 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %conv237, ptr %size228, align 4
  br label %if.end242

if.end242:                                        ; preds = %if.then232, %if.else225.if.end242_crit_edge, %if.else212, %if.then205, %if.then179
  %.pre-phi = phi i16 [ %.pre, %if.else225.if.end242_crit_edge ], [ %conv237, %if.then232 ], [ %119, %if.then179 ], [ %131, %if.else212 ], [ %125, %if.then205 ]
  %138 = ptrtoint ptr %nameidx to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %nameidx, align 4
  %conv244 = zext i16 %139 to i32
  %140 = ptrtoint ptr %firstused to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %firstused, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %conv244)
  %cmp246 = icmp eq i32 %141, %conv244
  %142 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %index, align 4
  %144 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %145)
  %cmp.i.i = icmp eq i16 %145, 15342
  %retval.0.i.i = select i1 %cmp.i.i, ptr %entries.i, ptr %entries2.i
  %nameidx.i = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i, i32 %143, i32 1
  %146 = ptrtoint ptr %nameidx.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %nameidx.i, align 4
  %idxprom.i = zext i16 %147 to i32
  %arrayidx1.i = getelementptr i8, ptr %2, i32 %idxprom.i
  %148 = call ptr @memset(ptr %arrayidx1.i, i32 0, i32 %call78)
  %usedbytes = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 4
  %149 = ptrtoint ptr %usedbytes to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %usedbytes, align 4
  %conv255 = sub i16 %150, %.pre-phi
  store i16 %conv255, ptr %usedbytes, align 4
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %151 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %trans, align 4
  %153 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %index, align 4
  %155 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %156)
  %cmp.i.i486 = icmp eq i16 %156, 15342
  %retval.0.i.i489 = select i1 %cmp.i.i486, ptr %entries.i, ptr %entries2.i
  %nameidx.i490 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i489, i32 %154, i32 1
  %157 = ptrtoint ptr %nameidx.i490 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %nameidx.i490, align 4
  %idxprom.i491 = zext i16 %158 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i32
  %add263 = add i32 %call78, -1
  %sub264 = add i32 %add263, %idxprom.i491
  call void @xfs_trans_log_buf(ptr noundef %152, ptr noundef %bp, i32 noundef %idxprom.i491, i32 noundef %sub264) #13
  %159 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %count, align 2
  %conv266 = zext i16 %160 to i32
  %161 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %index, align 4
  %sub268 = sub i32 %conv266, %162
  %mul269 = shl i32 %sub268, 3
  %add.ptr = getelementptr %struct.xfs_attr_leaf_entry, ptr %arrayidx, i32 1
  %163 = call ptr @memmove(ptr %arrayidx, ptr %add.ptr, i32 %mul269)
  %164 = load i16, ptr %count, align 2
  %dec = add i16 %164, -1
  store i16 %dec, ptr %count, align 2
  %165 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %trans, align 4
  %sub.ptr.lhs.cast272 = ptrtoint ptr %arrayidx to i32
  %sub.ptr.sub274 = sub i32 %sub.ptr.lhs.cast272, %sub.ptr.rhs.cast
  %add279 = add i32 %sub.ptr.sub274, 7
  %sub280 = add i32 %add279, %mul269
  call void @xfs_trans_log_buf(ptr noundef %166, ptr noundef %bp, i32 noundef %sub.ptr.sub274, i32 noundef %sub280) #13
  %167 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %168)
  %cmp.i502 = icmp eq i16 %168, 15342
  %retval.0.i505 = select i1 %cmp.i502, ptr %entries.i, ptr %entries2.i
  %169 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %count, align 2
  %idxprom = zext i16 %170 to i32
  %arrayidx283 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i505, i32 %idxprom
  %171 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_storeN_noabort(i32 %171, i32 8)
  store i64 0, ptr %arrayidx283, align 4
  br i1 %cmp246, label %if.then285, label %if.else349

if.then285:                                       ; preds = %if.end242
  %172 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %args, align 8
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %173, align 4
  %176 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %177)
  %cmp293524.not = icmp eq i16 %177, 0
  br i1 %cmp293524.not, label %if.then285.for.end335_crit_edge, label %for.body295.preheader

if.then285.for.end335_crit_edge:                  ; preds = %if.then285
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end335

for.body295.preheader:                            ; preds = %if.then285
  %conv290 = zext i16 %177 to i32
  %178 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %179)
  %cmp.i507 = icmp eq i16 %179, 15342
  %retval.0.i510 = select i1 %cmp.i507, ptr %entries.i, ptr %entries2.i
  br label %for.body295

for.body295:                                      ; preds = %cond.end324.for.body295_crit_edge, %for.body295.preheader
  %i.1527.in = phi i32 [ %i.1527, %cond.end324.for.body295_crit_edge ], [ %conv290, %for.body295.preheader ]
  %tmp.2526 = phi i32 [ %192, %cond.end324.for.body295_crit_edge ], [ %175, %for.body295.preheader ]
  %entry1.0525 = phi ptr [ %incdec.ptr, %cond.end324.for.body295_crit_edge ], [ %retval.0.i510, %for.body295.preheader ]
  %i.1527 = add nsw i32 %i.1527.in, -1
  %nameidx296 = getelementptr inbounds %struct.xfs_attr_leaf_entry, ptr %entry1.0525, i32 0, i32 1
  %180 = ptrtoint ptr %nameidx296 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %nameidx296, align 4
  %conv297 = zext i16 %181 to i32
  %182 = ptrtoint ptr %firstused to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %firstused, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %183, i32 %conv297)
  %cmp299.not = icmp ugt i32 %183, %conv297
  br i1 %cmp299.not, label %cond.false308, label %for.body295.cond.end309_crit_edge, !prof !252

for.body295.cond.end309_crit_edge:                ; preds = %for.body295
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end309

cond.false308:                                    ; preds = %for.body295
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 2208) #13
  br label %cond.end309

cond.end309:                                      ; preds = %cond.false308, %for.body295.cond.end309_crit_edge
  %184 = ptrtoint ptr %nameidx296 to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %nameidx296, align 4
  %conv311 = zext i16 %185 to i32
  %186 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %args, align 8
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %187, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %189, i32 %conv311)
  %cmp314 = icmp ugt i32 %189, %conv311
  br i1 %cmp314, label %cond.end309.cond.end324_crit_edge, label %cond.false323, !prof !251

cond.end309.cond.end324_crit_edge:                ; preds = %cond.end309
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end324

cond.false323:                                    ; preds = %cond.end309
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 2209) #13
  br label %cond.end324

cond.end324:                                      ; preds = %cond.false323, %cond.end309.cond.end324_crit_edge
  %190 = ptrtoint ptr %nameidx296 to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %nameidx296, align 4
  %conv326 = zext i16 %191 to i32
  %192 = call i32 @llvm.smin.i32(i32 %tmp.2526, i32 %conv326)
  %incdec.ptr = getelementptr %struct.xfs_attr_leaf_entry, ptr %entry1.0525, i32 1
  %cmp293 = icmp ugt i32 %i.1527.in, 1
  br i1 %cmp293, label %cond.end324.for.body295_crit_edge, label %cond.end324.for.end335_crit_edge

cond.end324.for.end335_crit_edge:                 ; preds = %cond.end324
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end335

cond.end324.for.body295_crit_edge:                ; preds = %cond.end324
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body295

for.end335:                                       ; preds = %cond.end324.for.end335_crit_edge, %if.then285.for.end335_crit_edge
  %tmp.2.lcssa = phi i32 [ %175, %if.then285.for.end335_crit_edge ], [ %192, %cond.end324.for.end335_crit_edge ]
  %193 = ptrtoint ptr %firstused to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %tmp.2.lcssa, ptr %firstused, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp.2.lcssa)
  %cmp338.not = icmp eq i32 %tmp.2.lcssa, 0
  br i1 %cmp338.not, label %cond.false347, label %for.end335.if.end350_crit_edge, !prof !252

for.end335.if.end350_crit_edge:                   ; preds = %for.end335
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end350

cond.false347:                                    ; preds = %for.end335
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 2215) #13
  br label %if.end350

if.else349:                                       ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #15
  %holes = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 6
  %194 = ptrtoint ptr %holes to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 1, ptr %holes, align 4
  br label %if.end350

if.end350:                                        ; preds = %if.else349, %cond.false347, %for.end335.if.end350_crit_edge
  %195 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %args, align 8
  call void @xfs_attr3_leaf_hdr_to_disk(ptr noundef %196, ptr noundef %2, ptr noundef nonnull %ichdr)
  %197 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %trans, align 4
  %199 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %200)
  %cmp.i512 = icmp eq i16 %200, 15342
  %sub362 = select i1 %cmp.i512, i32 79, i32 31
  call void @xfs_trans_log_buf(ptr noundef %198, ptr noundef %bp, i32 noundef 0, i32 noundef %sub362) #13
  %201 = ptrtoint ptr %usedbytes to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %usedbytes, align 4
  %conv364 = zext i16 %202 to i32
  %203 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %204)
  %cmp.i515 = icmp eq i16 %204, 15342
  %..i516 = select i1 %cmp.i515, i32 80, i32 32
  %add366 = add nuw nsw i32 %..i516, %conv364
  %205 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %count, align 2
  %conv368 = zext i16 %206 to i32
  %mul369 = shl nuw nsw i32 %conv368, 3
  %add370 = add nuw nsw i32 %add366, %mul369
  %207 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %args, align 8
  %magicpct = getelementptr inbounds %struct.xfs_da_geometry, ptr %208, i32 0, i32 6
  %209 = ptrtoint ptr %magicpct to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %magicpct, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add370, i32 %210)
  %cmp372 = icmp ult i32 %add370, %210
  %conv373 = zext i1 %cmp372 to i32
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr) #13
  ret i32 %conv373
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_leaf_remove(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_remove, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_leaf_remove, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !251

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !301
  %call42 = tail call i32 @__traceiter_xfs_attr_leaf_remove(ptr noundef null, ptr noundef %args) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !302
  %13 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !251

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_remove, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_remove, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_leaf_remove.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_attr_leaf_remove.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 2044, ptr noundef nonnull @.str.56) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !266
  %31 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_attr_leaf_entsize(ptr nocapture noundef readonly %leaf, i32 noundef %index) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %leaf, i32 0, i32 2
  %0 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %1)
  %cmp.i = icmp eq i16 %1, 15342
  %entries.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %leaf, i32 0, i32 1
  %entries2.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %leaf, i32 0, i32 1
  %retval.0.i = select i1 %cmp.i, ptr %entries.i, ptr %entries2.i
  %flags = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %index, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 2
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %nameidx.i.i19 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %index, i32 1
  %5 = ptrtoint ptr %nameidx.i.i19 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nameidx.i.i19, align 4
  %idxprom.i.i20 = zext i16 %6 to i32
  %arrayidx1.i.i21 = getelementptr i8, ptr %leaf, i32 %idxprom.i.i20
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %namelen = getelementptr inbounds %struct.xfs_attr_leaf_name_local, ptr %arrayidx1.i.i21, i32 0, i32 1
  %7 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %namelen, align 2
  %conv2 = zext i8 %8 to i32
  %9 = ptrtoint ptr %arrayidx1.i.i21 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx1.i.i21, align 2
  %conv3 = zext i16 %10 to i32
  %add1.i = add nuw nsw i32 %conv2, 2
  %sub.i = add nuw nsw i32 %add1.i, %conv3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %namelen6 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i21, i32 0, i32 2
  %11 = ptrtoint ptr %namelen6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %namelen6, align 4
  %conv7 = zext i8 %12 to i32
  %sub.i22 = add nuw nsw i32 %conv7, 10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %size.0.in.in = phi i32 [ %sub.i, %if.then ], [ %sub.i22, %if.else ]
  %size.0.in = or i32 %size.0.in.in, 3
  %size.0 = add nsw i32 %size.0.in, 1
  ret i32 %size.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_attr3_leaf_unbalance(ptr nocapture noundef readonly %state, ptr nocapture noundef %drop_blk, ptr nocapture noundef %save_blk) local_unnamed_addr #0 align 64 {
entry:
  %drophdr = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  %savehdr = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  %tmphdr = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %drophdr) #13
  %0 = call ptr @memset(ptr %drophdr, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %savehdr) #13
  %1 = call ptr @memset(ptr %savehdr, i32 255, i32 36)
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 8
  tail call fastcc void @trace_xfs_attr_leaf_unbalance(ptr noundef %3)
  %4 = ptrtoint ptr %drop_blk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drop_blk, align 8
  %b_addr5 = getelementptr inbounds %struct.xfs_buf, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %b_addr5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_addr5, align 4
  %8 = ptrtoint ptr %save_blk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %save_blk, align 8
  %b_addr7 = getelementptr inbounds %struct.xfs_buf, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %b_addr7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_addr7, align 4
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %15, ptr noundef nonnull %drophdr, ptr noundef %7)
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %19, ptr noundef nonnull %savehdr, ptr noundef %11)
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %7, i32 0, i32 2
  %20 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %21)
  %cmp.i = icmp eq i16 %21, 15342
  %entries.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %7, i32 0, i32 1
  %entries2.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %7, i32 0, i32 1
  %retval.0.i = select i1 %cmp.i, ptr %entries.i, ptr %entries2.i
  %count = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %drophdr, i32 0, i32 3
  %22 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %count, align 2
  %conv = zext i16 %23 to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %sub
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %hashval11 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %drop_blk, i32 0, i32 4
  %26 = ptrtoint ptr %hashval11 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %hashval11, align 4
  %holes = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %savehdr, i32 0, i32 6
  %27 = ptrtoint ptr %holes to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %holes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp = icmp eq i8 %28, 0
  br i1 %cmp, label %if.then, label %if.else26

if.then:                                          ; preds = %entry
  %29 = ptrtoint ptr %save_blk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %save_blk, align 8
  %31 = ptrtoint ptr %drop_blk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %drop_blk, align 8
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %30, i32 0, i32 16
  %33 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_addr.i, align 4
  %magic.i.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %magic.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %magic.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %36)
  %cmp.i.i = icmp eq i16 %36, 15342
  %entries.i.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %34, i32 0, i32 1
  %entries2.i.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %34, i32 0, i32 1
  %retval.0.i.i = select i1 %cmp.i.i, ptr %entries.i.i, ptr %entries2.i.i
  %b_addr1.i = getelementptr inbounds %struct.xfs_buf, ptr %32, i32 0, i32 16
  %37 = ptrtoint ptr %b_addr1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %b_addr1.i, align 4
  %magic.i29.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %magic.i29.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %magic.i29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %40)
  %cmp.i30.i = icmp eq i16 %40, 15342
  %entries.i31.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %38, i32 0, i32 1
  %entries2.i32.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %38, i32 0, i32 1
  %retval.0.i33.i = select i1 %cmp.i30.i, ptr %entries.i31.i, ptr %entries2.i32.i
  %count.i = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %savehdr, i32 0, i32 3
  %41 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %count.i, align 2
  %conv.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp.not.i = icmp eq i16 %42, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp6.not.i = icmp eq i16 %23, 0
  %or.cond = select i1 %cmp.not.i, i1 true, i1 %cmp6.not.i
  br i1 %or.cond, label %if.then.if.else_crit_edge, label %land.lhs.true8.i

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true8.i:                                 ; preds = %if.then
  %43 = ptrtoint ptr %retval.0.i33.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %retval.0.i33.i, align 4
  %45 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %retval.0.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp11.i = icmp ult i32 %44, %46
  br i1 %cmp11.i, label %land.lhs.true8.i.if.then17_crit_edge, label %lor.lhs.false.i

land.lhs.true8.i.if.then17_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17

lor.lhs.false.i:                                  ; preds = %land.lhs.true8.i
  %arrayidx15.i = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i33.i, i32 %sub
  %47 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx15.i, align 4
  %sub19.i = add nsw i32 %conv.i, -1
  %arrayidx20.i = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i, i32 %sub19.i
  %49 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp22.i = icmp ult i32 %48, %50
  br i1 %cmp22.i, label %lor.lhs.false.i.if.then17_crit_edge, label %lor.lhs.false.i.if.else_crit_edge

lor.lhs.false.i.if.else_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

lor.lhs.false.i.if.then17_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.i.if.then17_crit_edge, %land.lhs.true8.i.if.then17_crit_edge
  %51 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %state, align 8
  call fastcc void @xfs_attr3_leaf_moveents(ptr noundef %52, ptr noundef %7, ptr noundef nonnull %drophdr, i32 noundef 0, ptr noundef %11, ptr noundef nonnull %savehdr, i32 noundef 0, i32 noundef %conv)
  br label %if.end65

if.else:                                          ; preds = %lor.lhs.false.i.if.else_crit_edge, %if.then.if.else_crit_edge
  %53 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %state, align 8
  call fastcc void @xfs_attr3_leaf_moveents(ptr noundef %54, ptr noundef %7, ptr noundef nonnull %drophdr, i32 noundef 0, ptr noundef %11, ptr noundef nonnull %savehdr, i32 noundef %conv.i, i32 noundef %conv)
  br label %if.end65

if.else26:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tmphdr) #13
  %55 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %state, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %call.i = call ptr @kmem_alloc(i32 noundef %60, i32 noundef 16) #13
  %magic.i128 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %11, i32 0, i32 2
  %61 = ptrtoint ptr %magic.i128 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %magic.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %62)
  %cmp.i129 = icmp eq i16 %62, 15342
  %..i = select i1 %cmp.i129, i32 80, i32 32
  %63 = call ptr @memcpy(ptr %call.i, ptr %11, i32 %..i)
  %64 = getelementptr inbounds i8, ptr %tmphdr, i32 8
  %65 = call ptr @memset(ptr %64, i32 0, i32 28)
  %magic = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %savehdr, i32 0, i32 2
  %66 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %magic, align 4
  %magic31 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %tmphdr, i32 0, i32 2
  %68 = ptrtoint ptr %magic31 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %magic31, align 4
  %69 = ptrtoint ptr %savehdr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %savehdr, align 4
  %71 = ptrtoint ptr %tmphdr to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %tmphdr, align 4
  %back = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %savehdr, i32 0, i32 1
  %72 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %back, align 4
  %back33 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %tmphdr, i32 0, i32 1
  %74 = ptrtoint ptr %back33 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %back33, align 4
  %75 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %state, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  %firstused = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %tmphdr, i32 0, i32 5
  %81 = ptrtoint ptr %firstused to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %firstused, align 4
  call void @xfs_attr3_leaf_hdr_to_disk(ptr noundef %78, ptr noundef %call.i, ptr noundef nonnull %tmphdr)
  %82 = ptrtoint ptr %save_blk to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %save_blk, align 8
  %84 = ptrtoint ptr %drop_blk to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %drop_blk, align 8
  %b_addr.i130 = getelementptr inbounds %struct.xfs_buf, ptr %83, i32 0, i32 16
  %86 = ptrtoint ptr %b_addr.i130 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %b_addr.i130, align 4
  %magic.i.i131 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %magic.i.i131 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %magic.i.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %89)
  %cmp.i.i132 = icmp eq i16 %89, 15342
  %entries.i.i133 = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %87, i32 0, i32 1
  %entries2.i.i134 = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %87, i32 0, i32 1
  %retval.0.i.i135 = select i1 %cmp.i.i132, ptr %entries.i.i133, ptr %entries2.i.i134
  %b_addr1.i136 = getelementptr inbounds %struct.xfs_buf, ptr %85, i32 0, i32 16
  %90 = ptrtoint ptr %b_addr1.i136 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %b_addr1.i136, align 4
  %magic.i29.i137 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %magic.i29.i137 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %magic.i29.i137, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %93)
  %cmp.i30.i138 = icmp eq i16 %93, 15342
  %entries.i31.i139 = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %91, i32 0, i32 1
  %entries2.i32.i140 = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %91, i32 0, i32 1
  %retval.0.i33.i141 = select i1 %cmp.i30.i138, ptr %entries.i31.i139, ptr %entries2.i32.i140
  %count.i142 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %savehdr, i32 0, i32 3
  %94 = ptrtoint ptr %count.i142 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %count.i142, align 2
  %conv.i143 = zext i16 %95 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %cmp.not.i144 = icmp eq i16 %95, 0
  br i1 %cmp.not.i144, label %if.else26.if.else52_crit_edge, label %land.lhs.true.i148

if.else26.if.else52_crit_edge:                    ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else52

land.lhs.true.i148:                               ; preds = %if.else26
  %96 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %count, align 2
  %conv5.i146 = zext i16 %97 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %cmp6.not.i147 = icmp eq i16 %97, 0
  br i1 %cmp6.not.i147, label %land.lhs.true.i148.if.else52_crit_edge, label %land.lhs.true8.i150

land.lhs.true.i148.if.else52_crit_edge:           ; preds = %land.lhs.true.i148
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else52

land.lhs.true8.i150:                              ; preds = %land.lhs.true.i148
  %98 = ptrtoint ptr %retval.0.i33.i141 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %retval.0.i33.i141, align 4
  %100 = ptrtoint ptr %retval.0.i.i135 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %retval.0.i.i135, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %101)
  %cmp11.i149 = icmp ult i32 %99, %101
  br i1 %cmp11.i149, label %land.lhs.true8.i150.if.then43_crit_edge, label %lor.lhs.false.i156

land.lhs.true8.i150.if.then43_crit_edge:          ; preds = %land.lhs.true8.i150
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then43

lor.lhs.false.i156:                               ; preds = %land.lhs.true8.i150
  %sub.i151 = add nsw i32 %conv5.i146, -1
  %arrayidx15.i152 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i33.i141, i32 %sub.i151
  %102 = ptrtoint ptr %arrayidx15.i152 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx15.i152, align 4
  %sub19.i153 = add nsw i32 %conv.i143, -1
  %arrayidx20.i154 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i135, i32 %sub19.i153
  %104 = ptrtoint ptr %arrayidx20.i154 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx20.i154, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %105)
  %cmp22.i155 = icmp ult i32 %103, %105
  br i1 %cmp22.i155, label %lor.lhs.false.i156.if.then43_crit_edge, label %lor.lhs.false.i156.if.else52_crit_edge

lor.lhs.false.i156.if.else52_crit_edge:           ; preds = %lor.lhs.false.i156
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else52

lor.lhs.false.i156.if.then43_crit_edge:           ; preds = %lor.lhs.false.i156
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false.i156.if.then43_crit_edge, %land.lhs.true8.i150.if.then43_crit_edge
  %106 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %state, align 8
  %108 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %count, align 2
  %conv46 = zext i16 %109 to i32
  call fastcc void @xfs_attr3_leaf_moveents(ptr noundef %107, ptr noundef %7, ptr noundef nonnull %drophdr, i32 noundef 0, ptr noundef %call.i, ptr noundef nonnull %tmphdr, i32 noundef 0, i32 noundef %conv46)
  %110 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %state, align 8
  %count48 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %tmphdr, i32 0, i32 3
  %112 = ptrtoint ptr %count48 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %count48, align 2
  %conv49 = zext i16 %113 to i32
  %114 = ptrtoint ptr %count.i142 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %count.i142, align 2
  %conv51 = zext i16 %115 to i32
  call fastcc void @xfs_attr3_leaf_moveents(ptr noundef %111, ptr noundef %11, ptr noundef nonnull %savehdr, i32 noundef 0, ptr noundef %call.i, ptr noundef nonnull %tmphdr, i32 noundef %conv49, i32 noundef %conv51)
  br label %if.end61

if.else52:                                        ; preds = %lor.lhs.false.i156.if.else52_crit_edge, %land.lhs.true.i148.if.else52_crit_edge, %if.else26.if.else52_crit_edge
  %116 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %state, align 8
  call fastcc void @xfs_attr3_leaf_moveents(ptr noundef %117, ptr noundef %11, ptr noundef nonnull %savehdr, i32 noundef 0, ptr noundef %call.i, ptr noundef nonnull %tmphdr, i32 noundef 0, i32 noundef %conv.i143)
  %118 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %state, align 8
  %count57 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %tmphdr, i32 0, i32 3
  %120 = ptrtoint ptr %count57 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %count57, align 2
  %conv58 = zext i16 %121 to i32
  %122 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %count, align 2
  %conv60 = zext i16 %123 to i32
  call fastcc void @xfs_attr3_leaf_moveents(ptr noundef %119, ptr noundef %7, ptr noundef nonnull %drophdr, i32 noundef 0, ptr noundef %call.i, ptr noundef nonnull %tmphdr, i32 noundef %conv58, i32 noundef %conv60)
  br label %if.end61

if.end61:                                         ; preds = %if.else52, %if.then43
  %124 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %state, align 8
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 8
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 4
  %130 = call ptr @memcpy(ptr %11, ptr %call.i, i32 %129)
  %131 = call ptr @memcpy(ptr %savehdr, ptr %tmphdr, i32 36)
  call void @kvfree(ptr noundef %call.i) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tmphdr) #13
  br label %if.end65

if.end65:                                         ; preds = %if.end61, %if.else, %if.then17
  %132 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %state, align 8
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 8
  call void @xfs_attr3_leaf_hdr_to_disk(ptr noundef %135, ptr noundef %11, ptr noundef nonnull %savehdr)
  %136 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %state, align 8
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %137, i32 0, i32 11
  %138 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %trans, align 4
  %140 = ptrtoint ptr %save_blk to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %save_blk, align 8
  %142 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %137, align 8
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %143, align 4
  %sub73 = add i32 %145, -1
  call void @xfs_trans_log_buf(ptr noundef %139, ptr noundef %141, i32 noundef 0, i32 noundef %sub73) #13
  %magic.i160 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %11, i32 0, i32 2
  %146 = ptrtoint ptr %magic.i160 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %magic.i160, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %147)
  %cmp.i161 = icmp eq i16 %147, 15342
  %entries.i162 = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %11, i32 0, i32 1
  %entries2.i163 = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %11, i32 0, i32 1
  %retval.0.i164 = select i1 %cmp.i161, ptr %entries.i162, ptr %entries2.i163
  %count75 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %savehdr, i32 0, i32 3
  %148 = ptrtoint ptr %count75 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %count75, align 2
  %conv76 = zext i16 %149 to i32
  %sub77 = add nsw i32 %conv76, -1
  %arrayidx78 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i164, i32 %sub77
  %150 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx78, align 4
  %hashval80 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %save_blk, i32 0, i32 4
  %152 = ptrtoint ptr %hashval80 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %hashval80, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %savehdr) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %drophdr) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_leaf_unbalance(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_unbalance, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_leaf_unbalance, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !251

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !303
  %call42 = tail call i32 @__traceiter_xfs_attr_leaf_unbalance(ptr noundef null, ptr noundef %args) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !304
  %13 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !251

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_unbalance, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_unbalance, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_leaf_unbalance.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_attr_leaf_unbalance.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 2055, ptr noundef nonnull @.str.56) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !266
  %31 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_attr3_leaf_moveents(ptr nocapture noundef readonly %args, ptr noundef %leaf_s, ptr nocapture noundef %ichdr_s, i32 noundef %start_s, ptr nocapture noundef %leaf_d, ptr nocapture noundef %ichdr_d, i32 noundef %start_d, i32 noundef %count) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %magic = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr_s, i32 0, i32 2
  %0 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %magic, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.90)
  switch i16 %1, label %cond.false [
    i16 -1042, label %if.end.cond.end_crit_edge
    i16 15342, label %if.end.cond.end_crit_edge508
  ]

if.end.cond.end_crit_edge508:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 2542) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge, %if.end.cond.end_crit_edge508
  %3 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %magic, align 4
  %magic10 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr_d, i32 0, i32 2
  %5 = ptrtoint ptr %magic10 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %magic10, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %6)
  %cmp12 = icmp eq i16 %4, %6
  br i1 %cmp12, label %cond.end.cond.end22_crit_edge, label %cond.false21, !prof !251

cond.end.cond.end22_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end22

cond.false21:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 2543) #13
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false21, %cond.end.cond.end22_crit_edge
  %count23 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr_s, i32 0, i32 3
  %7 = ptrtoint ptr %count23 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %count23, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp25.not = icmp eq i16 %8, 0
  br i1 %cmp25.not, label %cond.end22.cond.false38_crit_edge, label %land.rhs, !prof !252

cond.end22.cond.false38_crit_edge:                ; preds = %cond.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false38

land.rhs:                                         ; preds = %cond.end22
  %conv24 = zext i16 %8 to i32
  %9 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %args, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %div440 = lshr i32 %12, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div440, i32 %conv24)
  %cmp29 = icmp ugt i32 %div440, %conv24
  br i1 %cmp29, label %land.rhs.cond.end39_crit_edge, label %land.rhs.cond.false38_crit_edge, !prof !251

land.rhs.cond.false38_crit_edge:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false38

land.rhs.cond.end39_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end39

cond.false38:                                     ; preds = %land.rhs.cond.false38_crit_edge, %cond.end22.cond.false38_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.1, i32 noundef 2544) #13
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false38, %land.rhs.cond.end39_crit_edge
  %firstused = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr_s, i32 0, i32 5
  %13 = ptrtoint ptr %firstused to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %firstused, align 4
  %15 = ptrtoint ptr %count23 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %count23, align 2
  %conv41 = zext i16 %16 to i32
  %mul = shl nuw nsw i32 %conv41, 3
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %leaf_s, i32 0, i32 2
  %17 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %18)
  %cmp.i = icmp eq i16 %18, 15342
  %..i = select i1 %cmp.i, i32 80, i32 32
  %add = add nuw nsw i32 %..i, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %add)
  %cmp42.not = icmp ult i32 %14, %add
  br i1 %cmp42.not, label %cond.false51, label %cond.end39.cond.end52_crit_edge, !prof !252

cond.end39.cond.end52_crit_edge:                  ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end52

cond.false51:                                     ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 2546) #13
  br label %cond.end52

cond.end52:                                       ; preds = %cond.false51, %cond.end39.cond.end52_crit_edge
  %count53 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr_d, i32 0, i32 3
  %19 = ptrtoint ptr %count53 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %count53, align 2
  %conv54 = zext i16 %20 to i32
  %21 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %args, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %div57439 = lshr i32 %24, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div57439, i32 %conv54)
  %cmp58 = icmp ugt i32 %div57439, %conv54
  br i1 %cmp58, label %cond.end52.cond.end68_crit_edge, label %cond.false67, !prof !251

cond.end52.cond.end68_crit_edge:                  ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end68

cond.false67:                                     ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.1, i32 noundef 2547) #13
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false67, %cond.end52.cond.end68_crit_edge
  %firstused69 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr_d, i32 0, i32 5
  %25 = ptrtoint ptr %firstused69 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %firstused69, align 4
  %27 = ptrtoint ptr %count53 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %count53, align 2
  %conv71 = zext i16 %28 to i32
  %mul72 = shl nuw nsw i32 %conv71, 3
  %magic.i441 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %leaf_d, i32 0, i32 2
  %29 = ptrtoint ptr %magic.i441 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %magic.i441, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %30)
  %cmp.i442 = icmp eq i16 %30, 15342
  %..i443 = select i1 %cmp.i442, i32 80, i32 32
  %add74 = add nuw nsw i32 %..i443, %mul72
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %add74)
  %cmp75.not = icmp ult i32 %26, %add74
  br i1 %cmp75.not, label %cond.false84, label %cond.end68.cond.end85_crit_edge, !prof !252

cond.end68.cond.end85_crit_edge:                  ; preds = %cond.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end85

cond.false84:                                     ; preds = %cond.end68
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 2549) #13
  br label %cond.end85

cond.end85:                                       ; preds = %cond.false84, %cond.end68.cond.end85_crit_edge
  %31 = ptrtoint ptr %count23 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %count23, align 2
  %conv87 = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv87, i32 %start_s)
  %cmp88 = icmp sgt i32 %conv87, %start_s
  br i1 %cmp88, label %cond.end85.cond.end98_crit_edge, label %cond.false97, !prof !251

cond.end85.cond.end98_crit_edge:                  ; preds = %cond.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end98

cond.false97:                                     ; preds = %cond.end85
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.1, i32 noundef 2551) #13
  br label %cond.end98

cond.end98:                                       ; preds = %cond.false97, %cond.end85.cond.end98_crit_edge
  %33 = ptrtoint ptr %count53 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %count53, align 2
  %conv100 = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv100, i32 %start_d)
  %cmp101.not = icmp slt i32 %conv100, %start_d
  br i1 %cmp101.not, label %cond.false110, label %cond.end98.cond.end111_crit_edge, !prof !252

cond.end98.cond.end111_crit_edge:                 ; preds = %cond.end98
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end111

cond.false110:                                    ; preds = %cond.end98
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.1, i32 noundef 2552) #13
  br label %cond.end111

cond.end111:                                      ; preds = %cond.false110, %cond.end98.cond.end111_crit_edge
  %35 = ptrtoint ptr %count23 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %count23, align 2
  %conv113 = zext i16 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv113, i32 %count)
  %cmp114.not = icmp slt i32 %conv113, %count
  br i1 %cmp114.not, label %cond.false123, label %cond.end111.cond.end124_crit_edge, !prof !252

cond.end111.cond.end124_crit_edge:                ; preds = %cond.end111
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end124

cond.false123:                                    ; preds = %cond.end111
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.1, i32 noundef 2553) #13
  br label %cond.end124

cond.end124:                                      ; preds = %cond.false123, %cond.end111.cond.end124_crit_edge
  %37 = ptrtoint ptr %count53 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %count53, align 2
  %conv126 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv126, i32 %start_d)
  %cmp127 = icmp sgt i32 %conv126, %start_d
  br i1 %cmp127, label %if.then129, label %cond.end124.if.end137_crit_edge

cond.end124.if.end137_crit_edge:                  ; preds = %cond.end124
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end137

if.then129:                                       ; preds = %cond.end124
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i32 %conv126, %start_d
  %mul132 = shl i32 %sub, 3
  %39 = ptrtoint ptr %magic.i441 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %magic.i441, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %40)
  %cmp.i445 = icmp eq i16 %40, 15342
  %entries.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %leaf_d, i32 0, i32 1
  %entries2.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %leaf_d, i32 0, i32 1
  %retval.0.i = select i1 %cmp.i445, ptr %entries.i, ptr %entries2.i
  %arrayidx = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %start_d
  %add135 = add i32 %count, %start_d
  %arrayidx136 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %add135
  %41 = call ptr @memmove(ptr %arrayidx136, ptr %arrayidx, i32 %mul132)
  br label %if.end137

if.end137:                                        ; preds = %if.then129, %cond.end124.if.end137_crit_edge
  %entries.i453 = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %leaf_s, i32 0, i32 1
  %entries2.i454 = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %leaf_s, i32 0, i32 1
  %entries.i458 = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %leaf_d, i32 0, i32 1
  %entries2.i459 = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %leaf_d, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp142503 = icmp sgt i32 %count, 0
  br i1 %cmp142503, label %for.body.lr.ph, label %if.end137.for.end_crit_edge

if.end137.for.end_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end137
  %42 = ptrtoint ptr %magic.i441 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %magic.i441, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %43)
  %cmp.i457 = icmp eq i16 %43, 15342
  %retval.0.i460 = select i1 %cmp.i457, ptr %entries.i458, ptr %entries2.i459
  %arrayidx141 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i460, i32 %start_d
  %44 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %45)
  %cmp.i452 = icmp eq i16 %45, 15342
  %retval.0.i455 = select i1 %cmp.i452, ptr %entries.i453, ptr %entries2.i454
  %arrayidx139 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i455, i32 %start_s
  %usedbytes = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr_s, i32 0, i32 4
  %usedbytes206 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr_d, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0507 = phi i32 [ 0, %for.body.lr.ph ], [ %inc236, %for.inc.for.body_crit_edge ]
  %desti.0506 = phi i32 [ %start_d, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %entry_d.0505 = phi ptr [ %arrayidx141, %for.body.lr.ph ], [ %incdec.ptr235, %for.inc.for.body_crit_edge ]
  %entry_s.0504 = phi ptr [ %arrayidx139, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %nameidx = getelementptr inbounds %struct.xfs_attr_leaf_entry, ptr %entry_s.0504, i32 0, i32 1
  %46 = ptrtoint ptr %nameidx to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %nameidx, align 4
  %conv144 = zext i16 %47 to i32
  %48 = ptrtoint ptr %firstused to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %firstused, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %conv144)
  %cmp146.not = icmp ugt i32 %49, %conv144
  br i1 %cmp146.not, label %cond.false155, label %for.body.cond.end156_crit_edge, !prof !252

for.body.cond.end156_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end156

cond.false155:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.1, i32 noundef 2575) #13
  br label %cond.end156

cond.end156:                                      ; preds = %cond.false155, %for.body.cond.end156_crit_edge
  %add157 = add i32 %i.0507, %start_s
  %call158 = tail call fastcc i32 @xfs_attr_leaf_entsize(ptr noundef %leaf_s, i32 noundef %add157)
  %50 = ptrtoint ptr %firstused69 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %firstused69, align 4
  %sub160 = sub i32 %51, %call158
  store i32 %sub160, ptr %firstused69, align 4
  %52 = ptrtoint ptr %entry_s.0504 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %entry_s.0504, align 4
  %54 = ptrtoint ptr %entry_d.0505 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %entry_d.0505, align 4
  %55 = load i32, ptr %firstused69, align 4
  %conv163 = trunc i32 %55 to i16
  %nameidx164 = getelementptr inbounds %struct.xfs_attr_leaf_entry, ptr %entry_d.0505, i32 0, i32 1
  %56 = ptrtoint ptr %nameidx164 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv163, ptr %nameidx164, align 4
  %flags = getelementptr inbounds %struct.xfs_attr_leaf_entry, ptr %entry_s.0504, i32 0, i32 2
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %flags, align 2
  %flags165 = getelementptr inbounds %struct.xfs_attr_leaf_entry, ptr %entry_d.0505, i32 0, i32 2
  %59 = ptrtoint ptr %flags165 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %flags165, align 2
  %conv167 = and i32 %55, 65535
  %add168 = add i32 %conv167, %call158
  %60 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %args, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add168, i32 %63)
  %cmp171.not = icmp ugt i32 %add168, %63
  br i1 %cmp171.not, label %cond.false180, label %cond.end156.cond.end181_crit_edge, !prof !252

cond.end156.cond.end181_crit_edge:                ; preds = %cond.end156
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end181

cond.false180:                                    ; preds = %cond.end156
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.1, i32 noundef 2599) #13
  br label %cond.end181

cond.end181:                                      ; preds = %cond.false180, %cond.end156.cond.end181_crit_edge
  %64 = ptrtoint ptr %magic.i441 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %magic.i441, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %65)
  %cmp.i.i = icmp eq i16 %65, 15342
  %retval.0.i.i = select i1 %cmp.i.i, ptr %entries.i458, ptr %entries2.i459
  %nameidx.i = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i, i32 %desti.0506, i32 1
  %66 = ptrtoint ptr %nameidx.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %nameidx.i, align 4
  %idxprom.i = zext i16 %67 to i32
  %arrayidx1.i = getelementptr i8, ptr %leaf_d, i32 %idxprom.i
  %68 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %69)
  %cmp.i.i462 = icmp eq i16 %69, 15342
  %retval.0.i.i465 = select i1 %cmp.i.i462, ptr %entries.i453, ptr %entries2.i454
  %nameidx.i466 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i465, i32 %add157, i32 1
  %70 = ptrtoint ptr %nameidx.i466 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %nameidx.i466, align 4
  %idxprom.i467 = zext i16 %71 to i32
  %arrayidx1.i468 = getelementptr i8, ptr %leaf_s, i32 %idxprom.i467
  %72 = call ptr @memmove(ptr %arrayidx1.i, ptr %arrayidx1.i468, i32 %call158)
  %73 = ptrtoint ptr %nameidx to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %nameidx, align 4
  %conv186 = zext i16 %74 to i32
  %add187 = add i32 %call158, %conv186
  %75 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %args, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add187, i32 %78)
  %cmp190.not = icmp ugt i32 %add187, %78
  br i1 %cmp190.not, label %cond.false199, label %cond.end181.cond.end200_crit_edge, !prof !252

cond.end181.cond.end200_crit_edge:                ; preds = %cond.end181
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end200

cond.false199:                                    ; preds = %cond.end181
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.1, i32 noundef 2603) #13
  br label %cond.end200

cond.end200:                                      ; preds = %cond.false199, %cond.end181.cond.end200_crit_edge
  %79 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %80)
  %cmp.i.i470 = icmp eq i16 %80, 15342
  %retval.0.i.i473 = select i1 %cmp.i.i470, ptr %entries.i453, ptr %entries2.i454
  %nameidx.i474 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i473, i32 %add157, i32 1
  %81 = ptrtoint ptr %nameidx.i474 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %nameidx.i474, align 4
  %idxprom.i475 = zext i16 %82 to i32
  %arrayidx1.i476 = getelementptr i8, ptr %leaf_s, i32 %idxprom.i475
  %83 = call ptr @memset(ptr %arrayidx1.i476, i32 0, i32 %call158)
  %84 = ptrtoint ptr %usedbytes to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %usedbytes, align 4
  %86 = trunc i32 %call158 to i16
  %conv205 = sub i16 %85, %86
  store i16 %conv205, ptr %usedbytes, align 4
  %87 = ptrtoint ptr %usedbytes206 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %usedbytes206, align 4
  %conv209 = add i16 %88, %86
  store i16 %conv209, ptr %usedbytes206, align 4
  %89 = ptrtoint ptr %count23 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %count23, align 2
  %sub212 = add i16 %90, -1
  store i16 %sub212, ptr %count23, align 2
  %91 = ptrtoint ptr %count53 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %count53, align 2
  %add216 = add i16 %92, 1
  store i16 %add216, ptr %count53, align 2
  %conv219 = zext i16 %add216 to i32
  %mul220 = shl nuw nsw i32 %conv219, 3
  %93 = ptrtoint ptr %magic.i441 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %magic.i441, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %94)
  %cmp.i478 = icmp eq i16 %94, 15342
  %..i479 = select i1 %cmp.i478, i32 80, i32 32
  %add222 = add nuw nsw i32 %..i479, %mul220
  %95 = ptrtoint ptr %firstused69 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %firstused69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %add222)
  %cmp224.not = icmp ult i32 %96, %add222
  br i1 %cmp224.not, label %cond.false233, label %cond.end200.for.inc_crit_edge, !prof !252

cond.end200.for.inc_crit_edge:                    ; preds = %cond.end200
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

cond.false233:                                    ; preds = %cond.end200
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, i32 noundef 2611) #13
  br label %for.inc

for.inc:                                          ; preds = %cond.false233, %cond.end200.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.xfs_attr_leaf_entry, ptr %entry_s.0504, i32 1
  %incdec.ptr235 = getelementptr %struct.xfs_attr_leaf_entry, ptr %entry_d.0505, i32 1
  %inc = add i32 %desti.0506, 1
  %inc236 = add nuw nsw i32 %i.0507, 1
  %exitcond.not = icmp eq i32 %inc236, %count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end137.for.end_crit_edge
  %97 = ptrtoint ptr %count23 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %count23, align 2
  %conv238 = zext i16 %98 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv238, i32 %start_s)
  %cmp239 = icmp eq i32 %conv238, %start_s
  br i1 %cmp239, label %if.then241, label %if.else

if.then241:                                       ; preds = %for.end
  %mul242 = shl i32 %count, 3
  %99 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %100)
  %cmp.i481 = icmp eq i16 %100, 15342
  %retval.0.i484 = select i1 %cmp.i481, ptr %entries.i453, ptr %entries2.i454
  %arrayidx244 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i484, i32 %start_s
  %add.ptr = getelementptr i8, ptr %arrayidx244, i32 %mul242
  %101 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %args, align 8
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %102, align 4
  %add.ptr247 = getelementptr i8, ptr %leaf_s, i32 %104
  %cmp248.not = icmp ugt ptr %add.ptr, %add.ptr247
  br i1 %cmp248.not, label %cond.false257, label %if.then241.cond.end258_crit_edge, !prof !252

if.then241.cond.end258_crit_edge:                 ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end258

cond.false257:                                    ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.1, i32 noundef 2624) #13
  br label %cond.end258

cond.end258:                                      ; preds = %cond.false257, %if.then241.cond.end258_crit_edge
  %105 = call ptr @memset(ptr %arrayidx244, i32 0, i32 %mul242)
  br label %if.end287

if.else:                                          ; preds = %for.end
  %sub261 = sub i32 %conv238, %count
  %mul262 = shl i32 %sub261, 3
  %106 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %107)
  %cmp.i486 = icmp eq i16 %107, 15342
  %retval.0.i489 = select i1 %cmp.i486, ptr %entries.i453, ptr %entries2.i454
  %add264 = add i32 %count, %start_s
  %arrayidx265 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i489, i32 %add264
  %arrayidx267 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i489, i32 %start_s
  %108 = call ptr @memmove(ptr %arrayidx267, ptr %arrayidx265, i32 %mul262)
  %mul268 = shl i32 %count, 3
  %109 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %110)
  %cmp.i496 = icmp eq i16 %110, 15342
  %retval.0.i499 = select i1 %cmp.i496, ptr %entries.i453, ptr %entries2.i454
  %111 = ptrtoint ptr %count23 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %count23, align 2
  %idxprom = zext i16 %112 to i32
  %arrayidx271 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i499, i32 %idxprom
  %add.ptr272 = getelementptr i8, ptr %arrayidx271, i32 %mul268
  %113 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %args, align 8
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 4
  %add.ptr275 = getelementptr i8, ptr %leaf_s, i32 %116
  %cmp276.not = icmp ugt ptr %add.ptr272, %add.ptr275
  br i1 %cmp276.not, label %cond.false285, label %if.else.cond.end286_crit_edge, !prof !252

if.else.cond.end286_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end286

cond.false285:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.1, i32 noundef 2639) #13
  br label %cond.end286

cond.end286:                                      ; preds = %cond.false285, %if.else.cond.end286_crit_edge
  %117 = call ptr @memset(ptr %arrayidx271, i32 0, i32 %mul268)
  br label %if.end287

if.end287:                                        ; preds = %cond.end286, %cond.end258
  %118 = ptrtoint ptr %magic.i441 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %magic.i441, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %119)
  %cmp.i501 = icmp eq i16 %119, 15342
  %..i502 = select i1 %cmp.i501, i32 80, i32 32
  %freemap = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr_d, i32 0, i32 7
  %120 = ptrtoint ptr %count53 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %count53, align 2
  %conv292 = zext i16 %121 to i32
  %mul293 = shl nuw nsw i32 %conv292, 3
  %add298 = add nuw nsw i32 %mul293, %..i502
  %conv299 = trunc i32 %add298 to i16
  %122 = ptrtoint ptr %freemap to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %conv299, ptr %freemap, align 2
  %123 = ptrtoint ptr %firstused69 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %firstused69, align 4
  %sub305 = sub i32 %124, %add298
  %conv306 = trunc i32 %sub305 to i16
  %size = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr_d, i32 0, i32 7, i32 0, i32 1
  %125 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv306, ptr %size, align 2
  %arrayidx310 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %ichdr_d, i32 0, i32 7, i32 1
  %holes = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr_s, i32 0, i32 6
  %126 = ptrtoint ptr %arrayidx310 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 8)
  store i64 0, ptr %arrayidx310, align 2
  %127 = ptrtoint ptr %holes to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %holes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end287, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_leaf_lookup(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_lookup, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_leaf_lookup, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !251

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !305
  %call42 = tail call i32 @__traceiter_xfs_attr_leaf_lookup(ptr noundef null, ptr noundef %args) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !306
  %13 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !251

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_lookup, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_lookup, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_leaf_lookup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_attr_leaf_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 2042, ptr noundef nonnull @.str.56) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !266
  %31 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfs_buf_mark_corrupt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr3_rmt_blocks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr3_leaf_getvalue(ptr nocapture noundef readonly %bp, ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %ichdr = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ichdr) #13
  %0 = call ptr @memset(ptr %ichdr, i32 255, i32 36)
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %1 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %b_addr, align 4
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args, align 8
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %4, ptr noundef nonnull %ichdr, ptr noundef %2)
  %count = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %count, align 2
  %conv = zext i16 %6 to i32
  %7 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %div124 = lshr i32 %10, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div124, i32 %conv)
  %cmp = icmp ugt i32 %div124, %conv
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !251

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 2483) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %index = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 15
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %count, align 2
  %conv6 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv6)
  %cmp7 = icmp slt i32 %12, %conv6
  br i1 %cmp7, label %cond.end.cond.end17_crit_edge, label %cond.false16, !prof !251

cond.end.cond.end17_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end17

cond.false16:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 2484) #13
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false16, %cond.end.cond.end17_crit_edge
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %2, i32 0, i32 2
  %15 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %16)
  %cmp.i = icmp eq i16 %16, 15342
  %entries.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %2, i32 0, i32 1
  %entries2.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %2, i32 0, i32 1
  %retval.0.i = select i1 %cmp.i, ptr %entries.i, ptr %entries2.i
  %17 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index, align 4
  %flags = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %18, i32 2
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags, align 2
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool20.not = icmp eq i8 %21, 0
  %nameidx.i.i133 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %18, i32 1
  %22 = ptrtoint ptr %nameidx.i.i133 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %nameidx.i.i133, align 4
  %idxprom.i.i134 = zext i16 %23 to i32
  %arrayidx1.i.i135 = getelementptr i8, ptr %2, i32 %idxprom.i.i134
  br i1 %tobool20.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end17
  %namelen = getelementptr inbounds %struct.xfs_attr_leaf_name_local, ptr %arrayidx1.i.i135, i32 0, i32 1
  %24 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %namelen, align 2
  %conv23 = zext i8 %25 to i32
  %namelen24 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %26 = ptrtoint ptr %namelen24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %namelen24, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv23)
  %cmp25 = icmp eq i32 %27, %conv23
  br i1 %cmp25, label %if.then.cond.end35_crit_edge, label %cond.false34, !prof !251

if.then.cond.end35_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end35

cond.false34:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 2489) #13
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false34, %if.then.cond.end35_crit_edge
  %name = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %28 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name, align 4
  %nameval = getelementptr inbounds %struct.xfs_attr_leaf_name_local, ptr %arrayidx1.i.i135, i32 0, i32 2
  %30 = ptrtoint ptr %namelen24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %namelen24, align 8
  %bcmp125 = call i32 @bcmp(ptr %29, ptr %nameval, i32 %31) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp125)
  %cmp38 = icmp eq i32 %bcmp125, 0
  br i1 %cmp38, label %cond.end35.cond.end48_crit_edge, label %cond.false47, !prof !251

cond.end35.cond.end48_crit_edge:                  ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end48

cond.false47:                                     ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 2490) #13
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false47, %cond.end35.cond.end48_crit_edge
  %32 = ptrtoint ptr %namelen24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %namelen24, align 8
  %arrayidx51 = getelementptr %struct.xfs_attr_leaf_name_local, ptr %arrayidx1.i.i135, i32 0, i32 2, i32 %33
  %34 = ptrtoint ptr %arrayidx1.i.i135 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx1.i.i135, align 2
  %conv52 = zext i16 %35 to i32
  %valuelen1.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 5
  %36 = ptrtoint ptr %valuelen1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %valuelen1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %cond.end48
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %valuelen1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv52, ptr %valuelen1.i, align 4
  br label %cleanup

if.end.i:                                         ; preds = %cond.end48
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv52)
  %cmp.i126 = icmp slt i32 %37, %conv52
  br i1 %cmp.i126, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %valuelen1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv52, ptr %valuelen1.i, align 4
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %value7.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 4
  %40 = ptrtoint ptr %value7.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %value7.i, align 8
  %tobool8.not.i = icmp eq ptr %41, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end6.i.if.end15.i_crit_edge

if.end6.i.if.end15.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

if.then9.i:                                       ; preds = %if.end6.i
  %call.i.i = call noalias ptr @kvmalloc_node(i32 noundef %conv52, i32 noundef 33557696, i32 noundef -1) #17
  %42 = ptrtoint ptr %value7.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i.i, ptr %value7.i, align 8
  %tobool12.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool12.not.i, label %if.then9.i.cleanup_crit_edge, label %if.then9.i.if.end15.i_crit_edge

if.then9.i.if.end15.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

if.then9.i.cleanup_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15.i:                                       ; preds = %if.then9.i.if.end15.i_crit_edge, %if.end6.i.if.end15.i_crit_edge
  %43 = ptrtoint ptr %valuelen1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv52, ptr %valuelen1.i, align 4
  %rmtblkno.i = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 16
  %44 = ptrtoint ptr %rmtblkno.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rmtblkno.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool17.not.i = icmp eq i32 %45, 0
  br i1 %tobool17.not.i, label %if.end20.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  %call19.i = call i32 @xfs_attr_rmtval_get(ptr noundef %args) #13
  br label %cleanup

if.end20.i:                                       ; preds = %if.end15.i
  %tobool21.not.i = icmp eq ptr %arrayidx51, null
  br i1 %tobool21.not.i, label %if.end20.i.cleanup_crit_edge, label %if.end23.i

if.end20.i.cleanup_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end23.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %value7.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %value7.i, align 8
  %48 = call ptr @memcpy(ptr %47, ptr %arrayidx51, i32 %conv52)
  br label %cleanup

if.end:                                           ; preds = %cond.end17
  %namelen56 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i135, i32 0, i32 2
  %49 = ptrtoint ptr %namelen56 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %namelen56, align 4
  %conv57 = zext i8 %50 to i32
  %namelen58 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %51 = ptrtoint ptr %namelen58 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %namelen58, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %conv57)
  %cmp59 = icmp eq i32 %52, %conv57
  br i1 %cmp59, label %if.end.cond.end69_crit_edge, label %cond.false68, !prof !251

if.end.cond.end69_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end69

cond.false68:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 2497) #13
  br label %cond.end69

cond.end69:                                       ; preds = %cond.false68, %if.end.cond.end69_crit_edge
  %name70 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %53 = ptrtoint ptr %name70 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name70, align 4
  %name71 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i135, i32 0, i32 3
  %55 = ptrtoint ptr %namelen58 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %namelen58, align 8
  %bcmp = call i32 @bcmp(ptr %54, ptr %name71, i32 %56) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp75 = icmp eq i32 %bcmp, 0
  br i1 %cmp75, label %cond.end69.cond.end85_crit_edge, label %cond.false84, !prof !251

cond.end69.cond.end85_crit_edge:                  ; preds = %cond.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end85

cond.false84:                                     ; preds = %cond.end69
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 2498) #13
  br label %cond.end85

cond.end85:                                       ; preds = %cond.false84, %cond.end69.cond.end85_crit_edge
  %valuelen86 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i135, i32 0, i32 1
  %57 = ptrtoint ptr %valuelen86 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %valuelen86, align 4
  %rmtvaluelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 18
  %59 = ptrtoint ptr %rmtvaluelen to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %rmtvaluelen, align 8
  %60 = ptrtoint ptr %arrayidx1.i.i135 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx1.i.i135, align 4
  %rmtblkno = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 16
  %62 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %rmtblkno, align 8
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %63 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dp, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  %call88 = call i32 @xfs_attr3_rmt_blocks(ptr noundef %66, i32 noundef %58) #13
  %rmtblkcnt = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 17
  %67 = ptrtoint ptr %rmtblkcnt to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call88, ptr %rmtblkcnt, align 4
  %68 = ptrtoint ptr %rmtvaluelen to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rmtvaluelen, align 8
  %valuelen1.i136 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 5
  %70 = ptrtoint ptr %valuelen1.i136 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %valuelen1.i136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i137 = icmp eq i32 %71, 0
  br i1 %tobool.not.i137, label %if.then.i138, label %if.end.i140

if.then.i138:                                     ; preds = %cond.end85
  call void @__sanitizer_cov_trace_pc() #15
  %72 = ptrtoint ptr %valuelen1.i136 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %69, ptr %valuelen1.i136, align 4
  br label %cleanup

if.end.i140:                                      ; preds = %cond.end85
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %69)
  %cmp.i139 = icmp slt i32 %71, %69
  br i1 %cmp.i139, label %if.then4.i141, label %if.end6.i144

if.then4.i141:                                    ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #15
  %73 = ptrtoint ptr %valuelen1.i136 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %69, ptr %valuelen1.i136, align 4
  br label %cleanup

if.end6.i144:                                     ; preds = %if.end.i140
  %value7.i142 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 4
  %74 = ptrtoint ptr %value7.i142 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %value7.i142, align 8
  %tobool8.not.i143 = icmp eq ptr %75, null
  br i1 %tobool8.not.i143, label %if.then9.i147, label %if.end6.i144.if.end15.i150_crit_edge

if.end6.i144.if.end15.i150_crit_edge:             ; preds = %if.end6.i144
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i150

if.then9.i147:                                    ; preds = %if.end6.i144
  %call.i.i145 = call noalias ptr @kvmalloc_node(i32 noundef %69, i32 noundef 33557696, i32 noundef -1) #17
  %76 = ptrtoint ptr %value7.i142 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i.i145, ptr %value7.i142, align 8
  %tobool12.not.i146 = icmp eq ptr %call.i.i145, null
  br i1 %tobool12.not.i146, label %if.then9.i147.cleanup_crit_edge, label %if.then9.i147.if.end15.i150_crit_edge

if.then9.i147.if.end15.i150_crit_edge:            ; preds = %if.then9.i147
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i150

if.then9.i147.cleanup_crit_edge:                  ; preds = %if.then9.i147
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15.i150:                                    ; preds = %if.then9.i147.if.end15.i150_crit_edge, %if.end6.i144.if.end15.i150_crit_edge
  %77 = ptrtoint ptr %valuelen1.i136 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %69, ptr %valuelen1.i136, align 4
  %78 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rmtblkno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool17.not.i149 = icmp eq i32 %79, 0
  br i1 %tobool17.not.i149, label %if.end15.i150.cleanup_crit_edge, label %if.then18.i152

if.end15.i150.cleanup_crit_edge:                  ; preds = %if.end15.i150
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then18.i152:                                   ; preds = %if.end15.i150
  call void @__sanitizer_cov_trace_pc() #15
  %call19.i151 = call i32 @xfs_attr_rmtval_get(ptr noundef %args) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then18.i152, %if.end15.i150.cleanup_crit_edge, %if.then9.i147.cleanup_crit_edge, %if.then4.i141, %if.then.i138, %if.end23.i, %if.end20.i.cleanup_crit_edge, %if.then18.i, %if.then9.i.cleanup_crit_edge, %if.then4.i, %if.then.i
  %retval.0 = phi i32 [ -34, %if.then4.i ], [ %call19.i, %if.then18.i ], [ 0, %if.end23.i ], [ 0, %if.then.i ], [ -12, %if.then9.i.cleanup_crit_edge ], [ -22, %if.end20.i.cleanup_crit_edge ], [ -34, %if.then4.i141 ], [ %call19.i151, %if.then18.i152 ], [ 0, %if.then.i138 ], [ -12, %if.then9.i147.cleanup_crit_edge ], [ -22, %if.end15.i150.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr3_leaf_clearflag(ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  %ichdr = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #13
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !273
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ichdr) #13
  %1 = call ptr @memset(ptr %ichdr, i32 255, i32 36)
  tail call fastcc void @trace_xfs_attr_leaf_clearflag(ptr noundef %args)
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %2 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans, align 4
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %4 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dp, align 8
  %blkno = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 14
  %6 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blkno, align 8
  %call.i = call i32 @xfs_da_read_buf(ptr noundef %3, ptr noundef %5, i32 noundef %7, i32 noundef 0, ptr noundef nonnull %bp, i32 noundef 1, ptr noundef nonnull @xfs_attr3_leaf_buf_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  %tobool1.not.i = icmp eq ptr %3, null
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %xfs_attr3_leaf_read.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %entry
  %8 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bp, align 4
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %land.lhs.true2.i.if.end_crit_edge, label %if.then.i

land.lhs.true2.i.if.end_crit_edge:                ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @xfs_trans_buf_set_type(ptr noundef nonnull %3, ptr noundef nonnull %9, i32 noundef 16) #13
  br label %if.end

xfs_attr3_leaf_read.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %xfs_attr3_leaf_read.exit.if.end_crit_edge, label %xfs_attr3_leaf_read.exit.cleanup_crit_edge

xfs_attr3_leaf_read.exit.cleanup_crit_edge:       ; preds = %xfs_attr3_leaf_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

xfs_attr3_leaf_read.exit.if.end_crit_edge:        ; preds = %xfs_attr3_leaf_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %xfs_attr3_leaf_read.exit.if.end_crit_edge, %if.then.i, %land.lhs.true2.i.if.end_crit_edge
  %10 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_addr, align 4
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %15)
  %cmp.i = icmp eq i16 %15, 15342
  %entries.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %13, i32 0, i32 1
  %entries2.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %13, i32 0, i32 1
  %retval.0.i = select i1 %cmp.i, ptr %entries.i, ptr %entries2.i
  %index = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 15
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %17
  %flags = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %17, i32 2
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %tobool3.not = icmp sgt i8 %19, -1
  br i1 %tobool3.not, label %cond.false, label %if.end.cond.end_crit_edge, !prof !252

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 2759) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %20 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %args, align 8
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %21, ptr noundef nonnull %ichdr, ptr noundef %13)
  %22 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index, align 4
  %count = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 3
  %24 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %count, align 2
  %conv7 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv7)
  %cmp = icmp slt i32 %23, %conv7
  br i1 %cmp, label %cond.end.cond.end17_crit_edge, label %cond.false16, !prof !251

cond.end.cond.end17_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end17

cond.false16:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 2763) #13
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load i32, ptr %index, align 4
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false16, %cond.end.cond.end17_crit_edge
  %27 = phi i32 [ %23, %cond.end.cond.end17_crit_edge ], [ %.pr, %cond.false16 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp19 = icmp sgt i32 %27, -1
  br i1 %cmp19, label %cond.end17.cond.end29_crit_edge, label %cond.false28, !prof !251

cond.end17.cond.end29_crit_edge:                  ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end29

cond.false28:                                     ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 2764) #13
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false28, %cond.end17.cond.end29_crit_edge
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flags, align 2
  %30 = and i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool33.not = icmp eq i8 %30, 0
  %31 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index, align 4
  %33 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %34)
  %cmp.i.i.i169 = icmp eq i16 %34, 15342
  %retval.0.i.i.i172 = select i1 %cmp.i.i.i169, ptr %entries.i, ptr %entries2.i
  %nameidx.i.i173 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i.i172, i32 %32, i32 1
  %35 = ptrtoint ptr %nameidx.i.i173 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %nameidx.i.i173, align 4
  %idxprom.i.i174 = zext i16 %36 to i32
  %arrayidx1.i.i175 = getelementptr i8, ptr %13, i32 %idxprom.i.i174
  %namelen37 = getelementptr inbounds %struct.xfs_attr_leaf_name_local, ptr %arrayidx1.i.i175, i32 0, i32 1
  %nameval = getelementptr inbounds %struct.xfs_attr_leaf_name_local, ptr %arrayidx1.i.i175, i32 0, i32 2
  %namelen41 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i175, i32 0, i32 2
  %name43 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i175, i32 0, i32 3
  %namelen.0.in.in = select i1 %tobool33.not, ptr %namelen41, ptr %namelen37
  %name.0 = select i1 %tobool33.not, ptr %name43, ptr %nameval
  %37 = ptrtoint ptr %namelen.0.in.in to i32
  call void @__asan_load1_noabort(i32 %37)
  %namelen.0.in = load i8, ptr %namelen.0.in.in, align 2
  %namelen.0 = zext i8 %namelen.0.in to i32
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx, align 4
  %hashval46 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 8
  %40 = ptrtoint ptr %hashval46 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hashval46, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp47 = icmp eq i32 %39, %41
  br i1 %cmp47, label %cond.end29.cond.end57_crit_edge, label %cond.false56, !prof !251

cond.end29.cond.end57_crit_edge:                  ; preds = %cond.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end57

cond.false56:                                     ; preds = %cond.end29
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 2775) #13
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false56, %cond.end29.cond.end57_crit_edge
  %namelen58 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %42 = ptrtoint ptr %namelen58 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %namelen58, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %namelen.0)
  %cmp59 = icmp eq i32 %43, %namelen.0
  br i1 %cmp59, label %cond.end57.cond.end69_crit_edge, label %cond.false68, !prof !251

cond.end57.cond.end69_crit_edge:                  ; preds = %cond.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end69

cond.false68:                                     ; preds = %cond.end57
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1, i32 noundef 2776) #13
  br label %cond.end69

cond.end69:                                       ; preds = %cond.false68, %cond.end57.cond.end69_crit_edge
  %name70 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %44 = ptrtoint ptr %name70 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name70, align 4
  %bcmp = call i32 @bcmp(ptr %name.0, ptr %45, i32 %namelen.0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp72 = icmp eq i32 %bcmp, 0
  br i1 %cmp72, label %cond.end69.cond.end82_crit_edge, label %cond.false81, !prof !251

cond.end69.cond.end82_crit_edge:                  ; preds = %cond.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end82

cond.false81:                                     ; preds = %cond.end69
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1, i32 noundef 2777) #13
  br label %cond.end82

cond.end82:                                       ; preds = %cond.false81, %cond.end69.cond.end82_crit_edge
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %flags, align 2
  %48 = and i8 %47, 127
  store i8 %48, ptr %flags, align 2
  %49 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %trans, align 4
  %51 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bp, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = add i32 %sub.ptr.sub, 7
  call void @xfs_trans_log_buf(ptr noundef %50, ptr noundef %52, i32 noundef %sub.ptr.sub, i32 noundef %sub) #13
  %rmtblkno = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 16
  %53 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rmtblkno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool91.not = icmp eq i32 %54, 0
  br i1 %tobool91.not, label %cond.end82.cleanup_crit_edge, label %if.then92

cond.end82.cleanup_crit_edge:                     ; preds = %cond.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then92:                                        ; preds = %cond.end82
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %flags, align 2
  %57 = and i8 %56, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp96 = icmp eq i8 %57, 0
  br i1 %cmp96, label %if.then92.cond.end106_crit_edge, label %cond.false105, !prof !251

if.then92.cond.end106_crit_edge:                  ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end106

cond.false105:                                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, i32 noundef 2785) #13
  br label %cond.end106

cond.end106:                                      ; preds = %cond.false105, %if.then92.cond.end106_crit_edge
  %58 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %index, align 4
  %60 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %61)
  %cmp.i.i.i177 = icmp eq i16 %61, 15342
  %retval.0.i.i.i180 = select i1 %cmp.i.i.i177, ptr %entries.i, ptr %entries2.i
  %nameidx.i.i181 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i.i180, i32 %59, i32 1
  %62 = ptrtoint ptr %nameidx.i.i181 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %nameidx.i.i181, align 4
  %idxprom.i.i182 = zext i16 %63 to i32
  %arrayidx1.i.i183 = getelementptr i8, ptr %13, i32 %idxprom.i.i182
  %64 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rmtblkno, align 8
  %66 = ptrtoint ptr %arrayidx1.i.i183 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx1.i.i183, align 4
  %rmtvaluelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 18
  %67 = ptrtoint ptr %rmtvaluelen to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rmtvaluelen, align 8
  %valuelen = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i183, i32 0, i32 1
  %69 = ptrtoint ptr %valuelen to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %valuelen, align 4
  %70 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %trans, align 4
  %72 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bp, align 4
  %sub118 = add nuw nsw i32 %idxprom.i.i182, 11
  call void @xfs_trans_log_buf(ptr noundef %71, ptr noundef %73, i32 noundef %idxprom.i.i182, i32 noundef %sub118) #13
  br label %cleanup

cleanup:                                          ; preds = %cond.end106, %cond.end82.cleanup_crit_edge, %xfs_attr3_leaf_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %xfs_attr3_leaf_read.exit.cleanup_crit_edge ], [ 0, %cond.end106 ], [ 0, %cond.end82.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #13
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_leaf_clearflag(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_clearflag, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_leaf_clearflag, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !251

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !307
  %call42 = tail call i32 @__traceiter_xfs_attr_leaf_clearflag(ptr noundef null, ptr noundef %args) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !308
  %13 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !251

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_clearflag, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_clearflag, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_leaf_clearflag.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_attr_leaf_clearflag.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 2049, ptr noundef nonnull @.str.56) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !266
  %31 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr3_leaf_setflag(ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  %ichdr = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #13
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !273
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ichdr) #13
  %1 = call ptr @memset(ptr %ichdr, i32 255, i32 36)
  tail call fastcc void @trace_xfs_attr_leaf_setflag(ptr noundef %args)
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %2 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans, align 4
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %4 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dp, align 8
  %blkno = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 14
  %6 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blkno, align 8
  %call.i = call i32 @xfs_da_read_buf(ptr noundef %3, ptr noundef %5, i32 noundef %7, i32 noundef 0, ptr noundef nonnull %bp, i32 noundef 1, ptr noundef nonnull @xfs_attr3_leaf_buf_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  %tobool1.not.i = icmp eq ptr %3, null
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %xfs_attr3_leaf_read.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %entry
  %8 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bp, align 4
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %land.lhs.true2.i.if.end_crit_edge, label %if.then.i

land.lhs.true2.i.if.end_crit_edge:                ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @xfs_trans_buf_set_type(ptr noundef nonnull %3, ptr noundef nonnull %9, i32 noundef 16) #13
  br label %if.end

xfs_attr3_leaf_read.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %xfs_attr3_leaf_read.exit.if.end_crit_edge, label %xfs_attr3_leaf_read.exit.cleanup_crit_edge

xfs_attr3_leaf_read.exit.cleanup_crit_edge:       ; preds = %xfs_attr3_leaf_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

xfs_attr3_leaf_read.exit.if.end_crit_edge:        ; preds = %xfs_attr3_leaf_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %xfs_attr3_leaf_read.exit.if.end_crit_edge, %if.then.i, %land.lhs.true2.i.if.end_crit_edge
  %10 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_addr, align 4
  %14 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %args, align 8
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %15, ptr noundef nonnull %ichdr, ptr noundef %13)
  %index = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 15
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index, align 4
  %count = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr, i32 0, i32 3
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %count, align 2
  %conv = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv)
  %cmp = icmp slt i32 %17, %conv
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %cond.false, !prof !251

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 2824) #13
  %20 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %index, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %21 = phi i32 [ %17, %if.end.cond.end_crit_edge ], [ %.pr, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp6 = icmp sgt i32 %21, -1
  br i1 %cmp6, label %cond.end.cond.end16_crit_edge, label %cond.false15, !prof !251

cond.end.cond.end16_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end16

cond.false15:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 2825) #13
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false15, %cond.end.cond.end16_crit_edge
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %13, i32 0, i32 2
  %22 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %23)
  %cmp.i = icmp eq i16 %23, 15342
  %entries.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %13, i32 0, i32 1
  %entries2.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %13, i32 0, i32 1
  %retval.0.i = select i1 %cmp.i, ptr %entries.i, ptr %entries2.i
  %24 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %25
  %flags = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %25, i32 2
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %cmp20 = icmp sgt i8 %27, -1
  br i1 %cmp20, label %cond.end16.cond.end30_crit_edge, label %cond.false29, !prof !251

cond.end16.cond.end30_crit_edge:                  ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end30

cond.false29:                                     ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1, i32 noundef 2829) #13
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false29, %cond.end16.cond.end30_crit_edge
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flags, align 2
  %30 = or i8 %29, -128
  store i8 %30, ptr %flags, align 2
  %31 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %trans, align 4
  %33 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bp, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = add i32 %sub.ptr.sub, 7
  call void @xfs_trans_log_buf(ptr noundef %32, ptr noundef %34, i32 noundef %sub.ptr.sub, i32 noundef %sub) #13
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %flags, align 2
  %37 = and i8 %36, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp41 = icmp eq i8 %37, 0
  br i1 %cmp41, label %if.then43, label %cond.end30.cleanup_crit_edge

cond.end30.cleanup_crit_edge:                     ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then43:                                        ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %index, align 4
  %40 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %41)
  %cmp.i.i.i = icmp eq i16 %41, 15342
  %retval.0.i.i.i = select i1 %cmp.i.i.i, ptr %entries.i, ptr %entries2.i
  %nameidx.i.i = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i.i, i32 %39, i32 1
  %42 = ptrtoint ptr %nameidx.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %nameidx.i.i, align 4
  %idxprom.i.i = zext i16 %43 to i32
  %arrayidx1.i.i = getelementptr i8, ptr %13, i32 %idxprom.i.i
  %44 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %arrayidx1.i.i, align 4
  %valuelen = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %valuelen to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %valuelen, align 4
  %46 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %trans, align 4
  %48 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bp, align 4
  %sub54 = add nuw nsw i32 %idxprom.i.i, 11
  call void @xfs_trans_log_buf(ptr noundef %47, ptr noundef %49, i32 noundef %idxprom.i.i, i32 noundef %sub54) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %cond.end30.cleanup_crit_edge, %xfs_attr3_leaf_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %xfs_attr3_leaf_read.exit.cleanup_crit_edge ], [ 0, %if.then43 ], [ 0, %cond.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #13
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_leaf_setflag(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_setflag, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_leaf_setflag, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !251

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !309
  %call42 = tail call i32 @__traceiter_xfs_attr_leaf_setflag(ptr noundef null, ptr noundef %args) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !310
  %13 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !251

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_setflag, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_setflag, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_leaf_setflag.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_attr_leaf_setflag.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 2050, ptr noundef nonnull @.str.56) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !266
  %31 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_attr3_leaf_flipflags(ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %bp1 = alloca ptr, align 4
  %bp2 = alloca ptr, align 4
  %ichdr1 = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  %ichdr2 = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp1) #13
  %0 = ptrtoint ptr %bp1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp1, align 4, !annotation !273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp2) #13
  %1 = ptrtoint ptr %bp2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp2, align 4, !annotation !273
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ichdr1) #13
  %2 = call ptr @memset(ptr %ichdr1, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ichdr2) #13
  %3 = call ptr @memset(ptr %ichdr2, i32 255, i32 36)
  tail call fastcc void @trace_xfs_attr_leaf_flipflags(ptr noundef %args)
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %4 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trans, align 4
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %6 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dp, align 8
  %blkno = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 14
  %8 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blkno, align 8
  %call.i = call i32 @xfs_da_read_buf(ptr noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef 0, ptr noundef nonnull %bp1, i32 noundef 1, ptr noundef nonnull @xfs_attr3_leaf_buf_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  %tobool1.not.i = icmp eq ptr %5, null
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %xfs_attr3_leaf_read.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %entry
  %10 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bp1, align 4
  %tobool3.not.i = icmp eq ptr %11, null
  br i1 %tobool3.not.i, label %land.lhs.true2.i.if.end_crit_edge, label %if.then.i

land.lhs.true2.i.if.end_crit_edge:                ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @xfs_trans_buf_set_type(ptr noundef nonnull %5, ptr noundef nonnull %11, i32 noundef 16) #13
  br label %if.end

xfs_attr3_leaf_read.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %xfs_attr3_leaf_read.exit.if.end_crit_edge, label %xfs_attr3_leaf_read.exit.cleanup_crit_edge

xfs_attr3_leaf_read.exit.cleanup_crit_edge:       ; preds = %xfs_attr3_leaf_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

xfs_attr3_leaf_read.exit.if.end_crit_edge:        ; preds = %xfs_attr3_leaf_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %xfs_attr3_leaf_read.exit.if.end_crit_edge, %if.then.i, %land.lhs.true2.i.if.end_crit_edge
  %blkno2 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 19
  %12 = ptrtoint ptr %blkno2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blkno2, align 4
  %14 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %blkno, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not = icmp eq i32 %13, %15
  br i1 %cmp.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %16 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trans, align 4
  %18 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dp, align 8
  %call.i311 = call i32 @xfs_da_read_buf(ptr noundef %17, ptr noundef %19, i32 noundef %13, i32 noundef 0, ptr noundef nonnull %bp2, i32 noundef 1, ptr noundef nonnull @xfs_attr3_leaf_buf_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i311)
  %tobool.not.i312 = icmp ne i32 %call.i311, 0
  %tobool1.not.i313 = icmp eq ptr %17, null
  %or.cond.i314 = or i1 %tobool1.not.i313, %tobool.not.i312
  br i1 %or.cond.i314, label %xfs_attr3_leaf_read.exit318, label %land.lhs.true2.i316

land.lhs.true2.i316:                              ; preds = %if.then2
  %20 = ptrtoint ptr %bp2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bp2, align 4
  %tobool3.not.i315 = icmp eq ptr %21, null
  br i1 %tobool3.not.i315, label %land.lhs.true2.i316.if.end10_crit_edge, label %if.then.i317

land.lhs.true2.i316.if.end10_crit_edge:           ; preds = %land.lhs.true2.i316
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then.i317:                                     ; preds = %land.lhs.true2.i316
  call void @__sanitizer_cov_trace_pc() #15
  call void @xfs_trans_buf_set_type(ptr noundef nonnull %17, ptr noundef nonnull %21, i32 noundef 16) #13
  br label %if.end10

xfs_attr3_leaf_read.exit318:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i311)
  %tobool7.not = icmp eq i32 %call.i311, 0
  br i1 %tobool7.not, label %xfs_attr3_leaf_read.exit318.if.end10_crit_edge, label %xfs_attr3_leaf_read.exit318.cleanup_crit_edge

xfs_attr3_leaf_read.exit318.cleanup_crit_edge:    ; preds = %xfs_attr3_leaf_read.exit318
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

xfs_attr3_leaf_read.exit318.if.end10_crit_edge:   ; preds = %xfs_attr3_leaf_read.exit318
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bp1, align 4
  %24 = ptrtoint ptr %bp2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %bp2, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %xfs_attr3_leaf_read.exit318.if.end10_crit_edge, %if.then.i317, %land.lhs.true2.i316.if.end10_crit_edge
  %25 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bp1, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_addr, align 4
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %30)
  %cmp.i = icmp eq i16 %30, 15342
  %entries.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %28, i32 0, i32 1
  %entries2.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %28, i32 0, i32 1
  %retval.0.i = select i1 %cmp.i, ptr %entries.i, ptr %entries2.i
  %index = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 15
  %31 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %32
  %33 = ptrtoint ptr %bp2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bp2, align 4
  %b_addr12 = getelementptr inbounds %struct.xfs_buf, ptr %34, i32 0, i32 16
  %35 = ptrtoint ptr %b_addr12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %b_addr12, align 4
  %magic.i319 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %magic.i319 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %magic.i319, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %38)
  %cmp.i320 = icmp eq i16 %38, 15342
  %entries.i321 = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %36, i32 0, i32 1
  %entries2.i322 = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %36, i32 0, i32 1
  %retval.0.i323 = select i1 %cmp.i320, ptr %entries.i321, ptr %entries2.i322
  %index2 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 20
  %39 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index2, align 8
  %arrayidx14 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i323, i32 %40
  %41 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %args, align 8
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %42, ptr noundef nonnull %ichdr1, ptr noundef %28)
  %43 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %index, align 4
  %count = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr1, i32 0, i32 3
  %45 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %count, align 2
  %conv = zext i16 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %conv)
  %cmp16 = icmp slt i32 %44, %conv
  br i1 %cmp16, label %if.end10.cond.end_crit_edge, label %cond.false, !prof !251

if.end10.cond.end_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.1, i32 noundef 2900) #13
  %47 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr = load i32, ptr %index, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end10.cond.end_crit_edge
  %48 = phi i32 [ %44, %if.end10.cond.end_crit_edge ], [ %.pr, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp21 = icmp sgt i32 %48, -1
  br i1 %cmp21, label %cond.end.cond.end31_crit_edge, label %cond.false30, !prof !251

cond.end.cond.end31_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end31

cond.false30:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 2901) #13
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false30, %cond.end.cond.end31_crit_edge
  %49 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %args, align 8
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %50, ptr noundef nonnull %ichdr2, ptr noundef %36)
  %51 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %index2, align 8
  %count34 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr2, i32 0, i32 3
  %53 = ptrtoint ptr %count34 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %count34, align 2
  %conv35 = zext i16 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %conv35)
  %cmp36 = icmp slt i32 %52, %conv35
  br i1 %cmp36, label %cond.end31.cond.end46_crit_edge, label %cond.false45, !prof !251

cond.end31.cond.end46_crit_edge:                  ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end46

cond.false45:                                     ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.1, i32 noundef 2904) #13
  %55 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr366 = load i32, ptr %index2, align 8
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false45, %cond.end31.cond.end46_crit_edge
  %56 = phi i32 [ %52, %cond.end31.cond.end46_crit_edge ], [ %.pr366, %cond.false45 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %cmp48 = icmp sgt i32 %56, -1
  br i1 %cmp48, label %cond.end46.cond.end58_crit_edge, label %cond.false57, !prof !251

cond.end46.cond.end58_crit_edge:                  ; preds = %cond.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end58

cond.false57:                                     ; preds = %cond.end46
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.1, i32 noundef 2905) #13
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false57, %cond.end46.cond.end58_crit_edge
  %flags = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %32, i32 2
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %flags, align 2
  %59 = and i8 %58, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool60.not = icmp eq i8 %59, 0
  %60 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %index, align 4
  %62 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %63)
  %cmp.i.i.i325 = icmp eq i16 %63, 15342
  %retval.0.i.i.i328 = select i1 %cmp.i.i.i325, ptr %entries.i, ptr %entries2.i
  %nameidx.i.i329 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i.i328, i32 %61, i32 1
  %64 = ptrtoint ptr %nameidx.i.i329 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %nameidx.i.i329, align 4
  %idxprom.i.i330 = zext i16 %65 to i32
  %arrayidx1.i.i331 = getelementptr i8, ptr %28, i32 %idxprom.i.i330
  %namelen = getelementptr inbounds %struct.xfs_attr_leaf_name_local, ptr %arrayidx1.i.i331, i32 0, i32 1
  %nameval = getelementptr inbounds %struct.xfs_attr_leaf_name_local, ptr %arrayidx1.i.i331, i32 0, i32 2
  %namelen68 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i331, i32 0, i32 2
  %name = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i331, i32 0, i32 3
  %namelen1.0.in.in = select i1 %tobool60.not, ptr %namelen68, ptr %namelen
  %name1.0 = select i1 %tobool60.not, ptr %name, ptr %nameval
  %66 = ptrtoint ptr %namelen1.0.in.in to i32
  call void @__asan_load1_noabort(i32 %66)
  %namelen1.0.in = load i8, ptr %namelen1.0.in.in, align 2
  %namelen1.0 = zext i8 %namelen1.0.in to i32
  %flags72 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i323, i32 %40, i32 2
  %67 = ptrtoint ptr %flags72 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %flags72, align 2
  %69 = and i8 %68, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool75.not = icmp eq i8 %69, 0
  %70 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %index2, align 8
  %72 = ptrtoint ptr %magic.i319 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %magic.i319, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %73)
  %cmp.i.i.i341 = icmp eq i16 %73, 15342
  %retval.0.i.i.i344 = select i1 %cmp.i.i.i341, ptr %entries.i321, ptr %entries2.i322
  %nameidx.i.i345 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i.i344, i32 %71, i32 1
  %74 = ptrtoint ptr %nameidx.i.i345 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %nameidx.i.i345, align 4
  %idxprom.i.i346 = zext i16 %75 to i32
  %arrayidx1.i.i347 = getelementptr i8, ptr %36, i32 %idxprom.i.i346
  %namelen79 = getelementptr inbounds %struct.xfs_attr_leaf_name_local, ptr %arrayidx1.i.i347, i32 0, i32 1
  %nameval81 = getelementptr inbounds %struct.xfs_attr_leaf_name_local, ptr %arrayidx1.i.i347, i32 0, i32 2
  %namelen86 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i347, i32 0, i32 2
  %name88 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i347, i32 0, i32 3
  %namelen2.0.in.in = select i1 %tobool75.not, ptr %namelen86, ptr %namelen79
  %name2.0 = select i1 %tobool75.not, ptr %name88, ptr %nameval81
  %76 = ptrtoint ptr %namelen2.0.in.in to i32
  call void @__asan_load1_noabort(i32 %76)
  %namelen2.0.in = load i8, ptr %namelen2.0.in.in, align 2
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx, align 4
  %79 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp92 = icmp eq i32 %78, %80
  br i1 %cmp92, label %cond.end58.cond.end102_crit_edge, label %cond.false101, !prof !251

cond.end58.cond.end102_crit_edge:                 ; preds = %cond.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end102

cond.false101:                                    ; preds = %cond.end58
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 2925) #13
  br label %cond.end102

cond.end102:                                      ; preds = %cond.false101, %cond.end58.cond.end102_crit_edge
  call void @__sanitizer_cov_trace_cmp1(i8 %namelen1.0.in, i8 %namelen2.0.in)
  %cmp103 = icmp eq i8 %namelen1.0.in, %namelen2.0.in
  br i1 %cmp103, label %cond.end102.cond.end113_crit_edge, label %cond.false112, !prof !251

cond.end102.cond.end113_crit_edge:                ; preds = %cond.end102
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end113

cond.false112:                                    ; preds = %cond.end102
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.1, i32 noundef 2926) #13
  br label %cond.end113

cond.end113:                                      ; preds = %cond.false112, %cond.end102.cond.end113_crit_edge
  %bcmp = call i32 @bcmp(ptr %name1.0, ptr %name2.0, i32 %namelen1.0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp115 = icmp eq i32 %bcmp, 0
  br i1 %cmp115, label %cond.end113.cond.end125_crit_edge, label %cond.false124, !prof !251

cond.end113.cond.end125_crit_edge:                ; preds = %cond.end113
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end125

cond.false124:                                    ; preds = %cond.end113
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1, i32 noundef 2927) #13
  br label %cond.end125

cond.end125:                                      ; preds = %cond.false124, %cond.end113.cond.end125_crit_edge
  %81 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %82)
  %tobool129.not = icmp sgt i8 %82, -1
  br i1 %tobool129.not, label %cond.false137, label %cond.end125.cond.end138_crit_edge, !prof !252

cond.end125.cond.end138_crit_edge:                ; preds = %cond.end125
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end138

cond.false137:                                    ; preds = %cond.end125
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1, i32 noundef 2930) #13
  br label %cond.end138

cond.end138:                                      ; preds = %cond.false137, %cond.end125.cond.end138_crit_edge
  %83 = ptrtoint ptr %flags72 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %flags72, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %84)
  %cmp142 = icmp sgt i8 %84, -1
  br i1 %cmp142, label %cond.end138.cond.end152_crit_edge, label %cond.false151, !prof !251

cond.end138.cond.end152_crit_edge:                ; preds = %cond.end138
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end152

cond.false151:                                    ; preds = %cond.end138
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 2931) #13
  br label %cond.end152

cond.end152:                                      ; preds = %cond.false151, %cond.end138.cond.end152_crit_edge
  %85 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %flags, align 2
  %87 = and i8 %86, 127
  store i8 %87, ptr %flags, align 2
  %88 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %trans, align 4
  %90 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bp1, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %28 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = add i32 %sub.ptr.sub, 7
  call void @xfs_trans_log_buf(ptr noundef %89, ptr noundef %91, i32 noundef %sub.ptr.sub, i32 noundef %sub) #13
  %rmtblkno = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 16
  %92 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rmtblkno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool161.not = icmp eq i32 %93, 0
  br i1 %tobool161.not, label %cond.end152.if.end189_crit_edge, label %if.then162

cond.end152.if.end189_crit_edge:                  ; preds = %cond.end152
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end189

if.then162:                                       ; preds = %cond.end152
  %94 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %flags, align 2
  %96 = and i8 %95, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %cmp166 = icmp eq i8 %96, 0
  br i1 %cmp166, label %if.then162.cond.end176_crit_edge, label %cond.false175, !prof !251

if.then162.cond.end176_crit_edge:                 ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end176

cond.false175:                                    ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #15
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 2937) #13
  br label %cond.end176

cond.end176:                                      ; preds = %cond.false175, %if.then162.cond.end176_crit_edge
  %97 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %index, align 4
  %99 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %100)
  %cmp.i.i.i349 = icmp eq i16 %100, 15342
  %retval.0.i.i.i352 = select i1 %cmp.i.i.i349, ptr %entries.i, ptr %entries2.i
  %nameidx.i.i353 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i.i352, i32 %98, i32 1
  %101 = ptrtoint ptr %nameidx.i.i353 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %nameidx.i.i353, align 4
  %idxprom.i.i354 = zext i16 %102 to i32
  %arrayidx1.i.i355 = getelementptr i8, ptr %28, i32 %idxprom.i.i354
  %103 = ptrtoint ptr %rmtblkno to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rmtblkno, align 8
  %105 = ptrtoint ptr %arrayidx1.i.i355 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %arrayidx1.i.i355, align 4
  %rmtvaluelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 18
  %106 = ptrtoint ptr %rmtvaluelen to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %rmtvaluelen, align 8
  %valuelen = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i355, i32 0, i32 1
  %108 = ptrtoint ptr %valuelen to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %valuelen, align 4
  %109 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %trans, align 4
  %111 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bp1, align 4
  %sub188 = add nuw nsw i32 %idxprom.i.i354, 11
  call void @xfs_trans_log_buf(ptr noundef %110, ptr noundef %112, i32 noundef %idxprom.i.i354, i32 noundef %sub188) #13
  br label %if.end189

if.end189:                                        ; preds = %cond.end176, %cond.end152.if.end189_crit_edge
  %113 = ptrtoint ptr %flags72 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %flags72, align 2
  %115 = or i8 %114, -128
  store i8 %115, ptr %flags72, align 2
  %116 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %trans, align 4
  %118 = ptrtoint ptr %bp2 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bp2, align 4
  %sub.ptr.lhs.cast194 = ptrtoint ptr %arrayidx14 to i32
  %sub.ptr.rhs.cast195 = ptrtoint ptr %36 to i32
  %sub.ptr.sub196 = sub i32 %sub.ptr.lhs.cast194, %sub.ptr.rhs.cast195
  %sub201 = add i32 %sub.ptr.sub196, 7
  call void @xfs_trans_log_buf(ptr noundef %117, ptr noundef %119, i32 noundef %sub.ptr.sub196, i32 noundef %sub201) #13
  %120 = ptrtoint ptr %flags72 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %flags72, align 2
  %122 = and i8 %121, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %cmp205 = icmp eq i8 %122, 0
  br i1 %cmp205, label %if.then207, label %if.end189.cleanup_crit_edge

if.end189.cleanup_crit_edge:                      ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then207:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #15
  %123 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %index2, align 8
  %125 = ptrtoint ptr %magic.i319 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %magic.i319, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %126)
  %cmp.i.i.i357 = icmp eq i16 %126, 15342
  %retval.0.i.i.i360 = select i1 %cmp.i.i.i357, ptr %entries.i321, ptr %entries2.i322
  %nameidx.i.i361 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i.i360, i32 %124, i32 1
  %127 = ptrtoint ptr %nameidx.i.i361 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %nameidx.i.i361, align 4
  %idxprom.i.i362 = zext i16 %128 to i32
  %arrayidx1.i.i363 = getelementptr i8, ptr %36, i32 %idxprom.i.i362
  %129 = ptrtoint ptr %arrayidx1.i.i363 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %arrayidx1.i.i363, align 4
  %valuelen211 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i363, i32 0, i32 1
  %130 = ptrtoint ptr %valuelen211 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %valuelen211, align 4
  %131 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %trans, align 4
  %133 = ptrtoint ptr %bp2 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %bp2, align 4
  %sub220 = add nuw nsw i32 %idxprom.i.i362, 11
  call void @xfs_trans_log_buf(ptr noundef %132, ptr noundef %134, i32 noundef %idxprom.i.i362, i32 noundef %sub220) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then207, %if.end189.cleanup_crit_edge, %xfs_attr3_leaf_read.exit318.cleanup_crit_edge, %xfs_attr3_leaf_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %xfs_attr3_leaf_read.exit.cleanup_crit_edge ], [ %call.i311, %xfs_attr3_leaf_read.exit318.cleanup_crit_edge ], [ 0, %if.then207 ], [ 0, %if.end189.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr2) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ichdr1) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp2) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp1) #13
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_leaf_flipflags(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_flipflags, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_leaf_flipflags, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !251

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !311
  %call42 = tail call i32 @__traceiter_xfs_attr_leaf_flipflags(ptr noundef null, ptr noundef %args) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !312
  %13 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !251

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_flipflags, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_flipflags, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_leaf_flipflags.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_attr_leaf_flipflags.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 2051, ptr noundef nonnull @.str.56) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !266
  %31 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_verifier_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_da3_blkinfo_verify(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_attr3_leaf_verify_entry(ptr nocapture noundef readonly %mp, ptr noundef readnone %buf_end, ptr noundef readonly %leaf, ptr nocapture noundef readonly %leafhdr, ptr nocapture noundef readonly %ent, i32 noundef %idx, ptr nocapture noundef %last_hashval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ent, align 4
  %2 = ptrtoint ptr %last_hashval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_hashval, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %__here, label %if.end

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !313
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %last_hashval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %last_hashval, align 4
  %nameidx2 = getelementptr inbounds %struct.xfs_attr_leaf_entry, ptr %ent, i32 0, i32 1
  %5 = ptrtoint ptr %nameidx2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nameidx2, align 4
  %conv = zext i16 %6 to i32
  %firstused = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  %7 = ptrtoint ptr %firstused to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %firstused, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp3 = icmp ugt i32 %8, %conv
  br i1 %cmp3, label %if.end.__here8_crit_edge, label %lor.lhs.false

if.end.__here8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here8

lor.lhs.false:                                    ; preds = %if.end
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 7
  %9 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m_attr_geo, align 32
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv)
  %cmp5.not = icmp ugt i32 %12, %conv
  br i1 %cmp5.not, label %if.end10, label %lor.lhs.false.__here8_crit_edge

lor.lhs.false.__here8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here8

__here8:                                          ; preds = %lor.lhs.false.__here8_crit_edge, %if.end.__here8_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !314
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.xfs_attr_leaf_entry, ptr %ent, i32 0, i32 2
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags, align 2
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  %magic.i.i.i74 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %leaf, i32 0, i32 2
  %16 = ptrtoint ptr %magic.i.i.i74 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %magic.i.i.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %17)
  %cmp.i.i.i75 = icmp eq i16 %17, 15342
  %entries.i.i.i76 = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %leaf, i32 0, i32 1
  %entries2.i.i.i77 = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %leaf, i32 0, i32 1
  %retval.0.i.i.i78 = select i1 %cmp.i.i.i75, ptr %entries.i.i.i76, ptr %entries2.i.i.i77
  %nameidx.i.i79 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i.i78, i32 %idx, i32 1
  %18 = ptrtoint ptr %nameidx.i.i79 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %nameidx.i.i79, align 4
  %idxprom.i.i80 = zext i16 %19 to i32
  %arrayidx1.i.i81 = getelementptr i8, ptr %leaf, i32 %idxprom.i.i80
  br i1 %tobool.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end10
  %namelen = getelementptr inbounds %struct.xfs_attr_leaf_name_local, ptr %arrayidx1.i.i81, i32 0, i32 1
  %20 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %namelen, align 2
  %conv13 = zext i8 %21 to i32
  %22 = ptrtoint ptr %arrayidx1.i.i81 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx1.i.i81, align 2
  %conv14 = zext i16 %23 to i32
  %add1.i = add nuw nsw i32 %conv13, 2
  %sub.i = add nuw nsw i32 %add1.i, %conv14
  %or.i = or i32 %sub.i, 3
  %add2.i = add nuw nsw i32 %or.i, 1
  %add.ptr = getelementptr i8, ptr %arrayidx1.i.i81, i32 %add2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp18 = icmp eq i8 %21, 0
  br i1 %cmp18, label %__here21, label %if.then12.if.end47_crit_edge

if.then12.if.end47_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

__here21:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !315
  br label %cleanup

if.else:                                          ; preds = %if.end10
  %namelen25 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i81, i32 0, i32 2
  %24 = ptrtoint ptr %namelen25 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %namelen25, align 4
  %conv26 = zext i8 %25 to i32
  %sub.i82 = add nuw nsw i32 %conv26, 10
  %or.i83 = or i32 %sub.i82, 3
  %add1.i84 = add nuw nsw i32 %or.i83, 1
  %add.ptr28 = getelementptr i8, ptr %arrayidx1.i.i81, i32 %add1.i84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp31 = icmp eq i8 %25, 0
  br i1 %cmp31, label %__here34, label %if.end36

__here34:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !316
  br label %cleanup

if.end36:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool40.not = icmp sgt i8 %14, -1
  br i1 %tobool40.not, label %land.lhs.true, label %if.end36.if.end47_crit_edge

if.end36.if.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end36
  %26 = ptrtoint ptr %arrayidx1.i.i81 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx1.i.i81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp41 = icmp eq i32 %27, 0
  br i1 %cmp41, label %__here44, label %land.lhs.true.if.end47_crit_edge

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

__here44:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !317
  br label %cleanup

if.end47:                                         ; preds = %land.lhs.true.if.end47_crit_edge, %if.end36.if.end47_crit_edge, %if.then12.if.end47_crit_edge
  %name_end.0 = phi ptr [ %add.ptr, %if.then12.if.end47_crit_edge ], [ %add.ptr28, %if.end36.if.end47_crit_edge ], [ %add.ptr28, %land.lhs.true.if.end47_crit_edge ]
  %cmp48 = icmp ugt ptr %name_end.0, %buf_end
  br i1 %cmp48, label %__here51, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

__here51:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !318
  br label %cleanup

cleanup:                                          ; preds = %__here51, %if.end47.cleanup_crit_edge, %__here44, %__here34, %__here21, %__here8, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_attr3_leaf_verify_entry, %__here), %__here ], [ blockaddress(@xfs_attr3_leaf_verify_entry, %__here8), %__here8 ], [ blockaddress(@xfs_attr3_leaf_verify_entry, %__here21), %__here21 ], [ blockaddress(@xfs_attr3_leaf_verify_entry, %__here51), %__here51 ], [ blockaddress(@xfs_attr3_leaf_verify_entry, %__here34), %__here34 ], [ blockaddress(@xfs_attr3_leaf_verify_entry, %__here44), %__here44 ], [ null, %if.end47.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_sf_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_sf_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_log_sb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_sf_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_sf_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_rmtval_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_sf_to_leaf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_leaf_to_sf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_leaf_to_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_leaf_create(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_create, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_leaf_create, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !251

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !319
  %call42 = tail call i32 @__traceiter_xfs_attr_leaf_create(ptr noundef null, ptr noundef %args) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !320
  %13 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !251

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_create, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_create, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_leaf_create.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_attr_leaf_create.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 2039, ptr noundef nonnull @.str.56) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !266
  %31 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_leaf_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_leaf_split(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_leaf_add_old(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_leaf_add_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_leaf_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_leaf_add_work(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_add_work, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_leaf_add_work, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !251

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !321
  %call42 = tail call i32 @__traceiter_xfs_attr_leaf_add_work(ptr noundef null, ptr noundef %args) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !322
  %13 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !251

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_add_work, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_add_work, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_leaf_add_work.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_attr_leaf_add_work.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 2038, ptr noundef nonnull @.str.56) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !266
  %31 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_leaf_add_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_leaf_compact(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_compact, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_leaf_compact, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !251

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !323
  %call42 = tail call i32 @__traceiter_xfs_attr_leaf_compact(ptr noundef null, ptr noundef %args) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !324
  %13 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !251

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_compact, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_compact, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_leaf_compact.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_attr_leaf_compact.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 2040, ptr noundef nonnull @.str.56) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !266
  %31 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_leaf_compact(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_leaf_rebalance(ptr noundef %args) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_rebalance, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_leaf_rebalance, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !251

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !325
  %call42 = tail call i32 @__traceiter_xfs_attr_leaf_rebalance(ptr noundef null, ptr noundef %args) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !326
  %13 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !251

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_rebalance, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_leaf_rebalance, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_leaf_rebalance.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_attr_leaf_rebalance.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 2054, ptr noundef nonnull @.str.56) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !266
  %31 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attr3_leaf_figure_balance(ptr nocapture noundef readonly %state, ptr nocapture noundef readonly %blk1, ptr nocapture noundef readonly %ichdr1, ptr nocapture noundef readonly %blk2, ptr nocapture noundef readonly %ichdr2, ptr nocapture noundef writeonly %countarg, ptr nocapture noundef writeonly %usedbytesarg) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %blk2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %blk2, align 8
  %b_addr2 = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr2, align 4
  %count4 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr1, i32 0, i32 3
  %4 = ptrtoint ptr %count4 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %count4, align 2
  %conv = zext i16 %5 to i32
  %count5 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr2, i32 0, i32 3
  %6 = ptrtoint ptr %count5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %count5, align 2
  %conv6 = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv6, %conv
  %add7 = shl nuw nsw i32 %add, 3
  %usedbytes = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr1, i32 0, i32 4
  %8 = ptrtoint ptr %usedbytes to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %usedbytes, align 4
  %conv8 = zext i16 %9 to i32
  %usedbytes9 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %ichdr2, i32 0, i32 4
  %10 = ptrtoint ptr %usedbytes9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %usedbytes9, align 4
  %conv10 = zext i16 %11 to i32
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 8
  %namelen.i = getelementptr inbounds %struct.xfs_da_args, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %namelen.i, align 8
  %valuelen.i = getelementptr inbounds %struct.xfs_da_args, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %valuelen.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %valuelen.i, align 4
  %add1.i.i = add i32 %15, 2
  %sub.i.i = add i32 %add1.i.i, %17
  %or.i.i = or i32 %sub.i.i, 3
  %add2.i.i.neg = xor i32 %or.i.i, -1
  %add2.i.i = add i32 %or.i.i, 1
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %13, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %shr.i.i = ashr i32 %21, 1
  %shr1.i.i = ashr i32 %21, 2
  %add.i.i = add nsw i32 %shr.i.i, %shr1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i.i, i32 %add.i.i)
  %cmp.i = icmp slt i32 %add2.i.i, %add.i.i
  %sub.i16.i = add i32 %15, 10
  %or.i17.i = or i32 %sub.i16.i, 3
  %add1.i18.i = add i32 %or.i17.i, 1
  %retval.0.i = select i1 %cmp.i, i32 %add2.i.i, i32 %add1.i18.i
  %add11 = add nuw nsw i32 %conv8, 8
  %add12 = add nuw nsw i32 %add11, %add7
  %mul = add nuw nsw i32 %add12, %conv10
  %add13 = add i32 %mul, %retval.0.i
  %div = sdiv i32 %add13, 2
  %add20 = add i32 %retval.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp175.not = icmp eq i32 %add, 0
  br i1 %cmp175.not, label %entry.if.end85_crit_edge, label %for.body.lr.ph

entry.if.end85_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

for.body.lr.ph:                                   ; preds = %entry
  %22 = ptrtoint ptr %blk1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %blk1, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_addr, align 4
  %index17 = getelementptr inbounds %struct.xfs_da_state_blk, ptr %blk1, i32 0, i32 3
  %26 = ptrtoint ptr %index17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index17, align 8
  br label %for.body

for.body:                                         ; preds = %if.end66.for.body_crit_edge, %for.body.lr.ph
  %foundit.0183 = phi i32 [ 0, %for.body.lr.ph ], [ %foundit.1, %if.end66.for.body_crit_edge ]
  %lastdelta.0182 = phi i32 [ %21, %for.body.lr.ph ], [ %29, %if.end66.for.body_crit_edge ]
  %totallen.0181 = phi i32 [ 0, %for.body.lr.ph ], [ %add52, %if.end66.for.body_crit_edge ]
  %index.0180 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end66.for.body_crit_edge ]
  %count.0178 = phi i32 [ 0, %for.body.lr.ph ], [ %inc77, %if.end66.for.body_crit_edge ]
  %leaf1.0176 = phi ptr [ %25, %for.body.lr.ph ], [ %spec.select, %if.end66.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0178, i32 %27)
  %cmp18 = icmp eq i32 %count.0178, %27
  br i1 %cmp18, label %if.then, label %for.body.if.end42_crit_edge

for.body.if.end42_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then:                                          ; preds = %for.body
  %add23 = add i32 %add20, %totallen.0181
  %sub = sub i32 %div, %add23
  %28 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %lastdelta.0182)
  %cmp29 = icmp sgt i32 %28, %lastdelta.0182
  br i1 %cmp29, label %if.then.for.end_crit_edge, label %if.then.if.end42_crit_edge

if.then.if.end42_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end42:                                         ; preds = %if.then.if.end42_crit_edge, %for.body.if.end42_crit_edge
  %totallen.1 = phi i32 [ %totallen.0181, %for.body.if.end42_crit_edge ], [ %add23, %if.then.if.end42_crit_edge ]
  %lastdelta.1 = phi i32 [ %lastdelta.0182, %for.body.if.end42_crit_edge ], [ %28, %if.then.if.end42_crit_edge ]
  %foundit.1 = phi i32 [ %foundit.0183, %for.body.if.end42_crit_edge ], [ 1, %if.then.if.end42_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0178, i32 %conv)
  %cmp45 = icmp eq i32 %count.0178, %conv
  %spec.select = select i1 %cmp45, ptr %3, ptr %leaf1.0176
  %spec.select201 = select i1 %cmp45, i32 0, i32 %index.0180
  %add50 = add i32 %totallen.1, 8
  %call51 = tail call fastcc i32 @xfs_attr_leaf_entsize(ptr noundef %spec.select, i32 noundef %spec.select201)
  %add52 = add i32 %add50, %call51
  %sub53 = sub i32 %div, %add52
  %29 = tail call i32 @llvm.abs.i32(i32 %sub53, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %lastdelta.1)
  %cmp63 = icmp sgt i32 %29, %lastdelta.1
  br i1 %cmp63, label %if.end42.for.end_crit_edge, label %if.end66

if.end42.for.end_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end66:                                         ; preds = %if.end42
  %inc = add i32 %spec.select201, 1
  %inc77 = add nuw nsw i32 %count.0178, 1
  %exitcond.not = icmp eq i32 %inc77, %add
  br i1 %exitcond.not, label %if.end66.for.end_crit_edge, label %if.end66.for.body_crit_edge

if.end66.for.body_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end66.for.end_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end66.for.end_crit_edge, %if.end42.for.end_crit_edge, %if.then.for.end_crit_edge
  %count.0.lcssa = phi i32 [ %add, %if.end66.for.end_crit_edge ], [ %27, %if.then.for.end_crit_edge ], [ %count.0178, %if.end42.for.end_crit_edge ]
  %totallen.2 = phi i32 [ %add52, %if.end66.for.end_crit_edge ], [ %totallen.0181, %if.then.for.end_crit_edge ], [ %totallen.1, %if.end42.for.end_crit_edge ]
  %foundit.2 = phi i32 [ %foundit.1, %if.end66.for.end_crit_edge ], [ %foundit.0183, %if.then.for.end_crit_edge ], [ %foundit.1, %if.end42.for.end_crit_edge ]
  %mul78.neg = mul i32 %count.0.lcssa, -8
  %sub79 = add i32 %totallen.2, %mul78.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %foundit.2)
  %tobool.not = icmp eq i32 %foundit.2, 0
  br i1 %tobool.not, label %for.end.if.end85_crit_edge, label %if.then80

for.end.if.end85_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.then80:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %notlhs = sub i32 -11, %15
  %add1.i18.i172.neg = and i32 %notlhs, -4
  %retval.0.i173.neg192 = select i1 %cmp.i, i32 %add2.i.i.neg, i32 %add1.i18.i172.neg
  %add83.neg = add i32 %retval.0.i173.neg192, -8
  %sub84 = add i32 %add83.neg, %sub79
  br label %if.end85

if.end85:                                         ; preds = %if.then80, %for.end.if.end85_crit_edge, %entry.if.end85_crit_edge
  %foundit.2200 = phi i32 [ %foundit.2, %if.then80 ], [ 0, %for.end.if.end85_crit_edge ], [ 0, %entry.if.end85_crit_edge ]
  %count.0.lcssa199 = phi i32 [ %count.0.lcssa, %if.then80 ], [ %count.0.lcssa, %for.end.if.end85_crit_edge ], [ 0, %entry.if.end85_crit_edge ]
  %totallen.3 = phi i32 [ %sub84, %if.then80 ], [ %sub79, %for.end.if.end85_crit_edge ], [ 0, %entry.if.end85_crit_edge ]
  %30 = ptrtoint ptr %countarg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %count.0.lcssa199, ptr %countarg, align 4
  %31 = ptrtoint ptr %usedbytesarg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %totallen.3, ptr %usedbytesarg, align 4
  ret i32 %foundit.2200
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_leaf_rebalance(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_leaf_toosmall(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_leaf_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_leaf_unbalance(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_leaf_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_leaf_clearflag(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_leaf_setflag(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_leaf_flipflags(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.usub.sat.i16(i16, i16) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !114, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !175, !177, !178, !180, !182, !184, !186, !188, !190, !191, !193, !194, !196, !197, !199, !200, !202, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !234, !236, !237, !239}
!llvm.named.register.sp = !{!240}
!llvm.module.flags = !{!241, !242, !243, !244, !245, !246, !247, !248}
!llvm.ident = !{!249}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 158, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 200, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 420, i32 10}
!7 = !{ptr @xfs_attr3_leaf_buf_ops, !8, !"xfs_attr3_leaf_buf_ops", i1 false, i1 false}
!8 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 419, i32 26}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 660, i32 2}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 738, i32 2}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 741, i32 3}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 770, i32 2}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 826, i32 3}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 827, i32 3}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 882, i32 2}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 921, i32 2}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 933, i32 2}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 956, i32 3}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 958, i32 3}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 1025, i32 2}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 1130, i32 3}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 1131, i32 3}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 1154, i32 3}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 1312, i32 2}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 1374, i32 2}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2104, i32 2}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2105, i32 2}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2106, i32 2}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2111, i32 2}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2112, i32 2}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2127, i32 3}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2128, i32 3}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2215, i32 3}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2483, i32 2}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2484, i32 2}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2489, i32 3}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2490, i32 3}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2497, i32 2}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2498, i32 2}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2759, i32 2}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2764, i32 2}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2775, i32 2}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2776, i32 2}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2777, i32 2}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2785, i32 3}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2829, i32 2}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2900, i32 2}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2904, i32 2}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2905, i32 2}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2925, i32 2}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2926, i32 2}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2927, i32 2}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2930, i32 2}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2931, i32 2}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2937, i32 3}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 113, i32 3}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 114, i32 3}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 129, i32 2}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 138, i32 3}
!111 = distinct !{null, !112, !"__already_done", i1 false, i1 false}
!112 = !{!"../fs/xfs/xfs_trace.h", i32 2030, i32 1}
!113 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!114 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!115 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!116 = distinct !{null, !117, !"__already_done", i1 false, i1 false}
!117 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!118 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../fs/xfs/xfs_trace.h", i32 2028, i32 1}
!121 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!122 = distinct !{null, !123, !"__already_done", i1 false, i1 false}
!123 = !{!"../fs/xfs/xfs_trace.h", i32 2032, i32 1}
!124 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../fs/xfs/xfs_trace.h", i32 2031, i32 1}
!127 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../fs/xfs/xfs_trace.h", i32 2033, i32 1}
!130 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../fs/xfs/xfs_trace.h", i32 2052, i32 1}
!133 = distinct !{null, !132, !"__warned", i1 false, i1 false}
!134 = distinct !{null, !135, !"__already_done", i1 false, i1 false}
!135 = !{!"../fs/xfs/xfs_trace.h", i32 2053, i32 1}
!136 = distinct !{null, !135, !"__warned", i1 false, i1 false}
!137 = distinct !{null, !138, !"__already_done", i1 false, i1 false}
!138 = !{!"../fs/xfs/xfs_trace.h", i32 2039, i32 1}
!139 = distinct !{null, !138, !"__warned", i1 false, i1 false}
!140 = distinct !{null, !141, !"__already_done", i1 false, i1 false}
!141 = !{!"../fs/xfs/xfs_trace.h", i32 2046, i32 1}
!142 = distinct !{null, !141, !"__warned", i1 false, i1 false}
!143 = distinct !{null, !144, !"__already_done", i1 false, i1 false}
!144 = !{!"../fs/xfs/xfs_trace.h", i32 2036, i32 1}
!145 = distinct !{null, !144, !"__warned", i1 false, i1 false}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../fs/xfs/xfs_trace.h", i32 2037, i32 1}
!148 = distinct !{null, !147, !"__warned", i1 false, i1 false}
!149 = distinct !{null, !150, !"__already_done", i1 false, i1 false}
!150 = !{!"../fs/xfs/xfs_trace.h", i32 2035, i32 1}
!151 = distinct !{null, !150, !"__warned", i1 false, i1 false}
!152 = !{ptr @.str.58, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 1454, i32 2}
!154 = !{ptr @.str.59, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 1455, i32 2}
!156 = !{ptr @.str.60, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 1474, i32 2}
!158 = !{ptr @.str.61, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 1475, i32 2}
!160 = !{ptr @.str.62, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 1476, i32 2}
!162 = !{ptr @.str.63, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 1478, i32 2}
!164 = !{ptr @.str.64, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 1479, i32 2}
!166 = !{ptr @.str.65, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 1498, i32 2}
!168 = !{ptr @.str.66, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 1500, i32 2}
!170 = !{ptr @.str.67, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 1539, i32 2}
!172 = distinct !{null, !173, !"__already_done", i1 false, i1 false}
!173 = !{!"../fs/xfs/xfs_trace.h", i32 2038, i32 1}
!174 = distinct !{null, !173, !"__warned", i1 false, i1 false}
!175 = distinct !{null, !176, !"__already_done", i1 false, i1 false}
!176 = !{!"../fs/xfs/xfs_trace.h", i32 2040, i32 1}
!177 = distinct !{null, !176, !"__warned", i1 false, i1 false}
!178 = !{ptr @.str.68, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 1688, i32 2}
!180 = !{ptr @.str.69, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 1689, i32 2}
!182 = !{ptr @.str.70, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 1694, i32 2}
!184 = !{ptr @.str.71, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 1813, i32 3}
!186 = !{ptr @.str.72, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 1843, i32 3}
!188 = distinct !{null, !189, !"__already_done", i1 false, i1 false}
!189 = !{!"../fs/xfs/xfs_trace.h", i32 2054, i32 1}
!190 = distinct !{null, !189, !"__warned", i1 false, i1 false}
!191 = distinct !{null, !192, !"__already_done", i1 false, i1 false}
!192 = !{!"../fs/xfs/xfs_trace.h", i32 2056, i32 1}
!193 = distinct !{null, !192, !"__warned", i1 false, i1 false}
!194 = distinct !{null, !195, !"__already_done", i1 false, i1 false}
!195 = !{!"../fs/xfs/xfs_trace.h", i32 2044, i32 1}
!196 = distinct !{null, !195, !"__warned", i1 false, i1 false}
!197 = distinct !{null, !198, !"__already_done", i1 false, i1 false}
!198 = !{!"../fs/xfs/xfs_trace.h", i32 2055, i32 1}
!199 = distinct !{null, !198, !"__warned", i1 false, i1 false}
!200 = distinct !{null, !201, !"__already_done", i1 false, i1 false}
!201 = !{!"../fs/xfs/xfs_trace.h", i32 2042, i32 1}
!202 = distinct !{null, !201, !"__warned", i1 false, i1 false}
!203 = !{ptr @.str.73, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2541, i32 2}
!205 = !{ptr @.str.74, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2543, i32 2}
!207 = !{ptr @.str.75, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2544, i32 2}
!209 = !{ptr @.str.76, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2545, i32 2}
!211 = !{ptr @.str.77, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2547, i32 2}
!213 = !{ptr @.str.78, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2548, i32 2}
!215 = !{ptr @.str.79, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2551, i32 2}
!217 = !{ptr @.str.80, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2552, i32 2}
!219 = !{ptr @.str.81, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2553, i32 2}
!221 = !{ptr @.str.82, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2575, i32 3}
!223 = !{ptr @.str.83, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2598, i32 4}
!225 = !{ptr @.str.84, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2602, i32 4}
!227 = !{ptr @.str.85, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2611, i32 4}
!229 = !{ptr @.str.86, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../fs/xfs/libxfs/xfs_attr_leaf.c", i32 2623, i32 3}
!231 = distinct !{null, !232, !"__already_done", i1 false, i1 false}
!232 = !{!"../fs/xfs/xfs_trace.h", i32 2049, i32 1}
!233 = distinct !{null, !232, !"__warned", i1 false, i1 false}
!234 = distinct !{null, !235, !"__already_done", i1 false, i1 false}
!235 = !{!"../fs/xfs/xfs_trace.h", i32 2050, i32 1}
!236 = distinct !{null, !235, !"__warned", i1 false, i1 false}
!237 = distinct !{null, !238, !"__already_done", i1 false, i1 false}
!238 = !{!"../fs/xfs/xfs_trace.h", i32 2051, i32 1}
!239 = distinct !{null, !238, !"__warned", i1 false, i1 false}
!240 = !{!"sp"}
!241 = !{i32 1, !"wchar_size", i32 2}
!242 = !{i32 1, !"min_enum_size", i32 4}
!243 = !{i32 8, !"branch-target-enforcement", i32 0}
!244 = !{i32 8, !"sign-return-address", i32 0}
!245 = !{i32 8, !"sign-return-address-all", i32 0}
!246 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!247 = !{i32 7, !"uwtable", i32 1}
!248 = !{i32 7, !"frame-pointer", i32 2}
!249 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!250 = !{!"branch_weights", i32 4000000, i32 4001}
!251 = !{!"branch_weights", i32 2000, i32 1}
!252 = !{!"branch_weights", i32 1, i32 2000}
!253 = !{i64 2166427578}
!254 = !{i64 2166426304}
!255 = !{i64 2166426395}
!256 = !{i64 2166426486}
!257 = !{i64 2166426579}
!258 = !{i64 2166426670}
!259 = !{i64 2166426761}
!260 = !{i64 2166426852}
!261 = !{i64 2166427034}
!262 = !{i64 2148328359, i64 2148328364, i64 2148328377, i64 2148328421, i64 2148328455, i64 2148328476}
!263 = !{i64 2161200961}
!264 = !{i64 2161201168}
!265 = !{i64 2150030452}
!266 = !{i64 2150031488}
!267 = !{i64 2161164077}
!268 = !{i64 2161164278}
!269 = !{i64 2161233853}
!270 = !{i64 2161234060}
!271 = !{i64 2161217407}
!272 = !{i64 2161217614}
!273 = !{!"auto-init"}
!274 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!275 = !{i64 2161254399}
!276 = !{i64 2161254608}
!277 = !{i64 2166460236}
!278 = !{i64 2166460503}
!279 = !{i64 2166460712}
!280 = !{i64 2166438027}
!281 = !{i64 2166438118}
!282 = !{i64 2166438209}
!283 = !{i64 2166438300}
!284 = !{i64 2166438481}
!285 = !{i64 2166439438}
!286 = !{i64 2166439529}
!287 = !{i64 2161575940}
!288 = !{i64 2161576149}
!289 = !{i64 2161592557}
!290 = !{i64 2161592770}
!291 = !{i64 2161466445}
!292 = !{i64 2161466654}
!293 = !{i64 2161287369}
!294 = !{i64 2161287582}
!295 = !{i64 2161304094}
!296 = !{i64 2161304307}
!297 = !{i64 2161270860}
!298 = !{i64 2161271065}
!299 = !{i64 2161647204}
!300 = !{i64 2161647419}
!301 = !{i64 2161428787}
!302 = !{i64 2161428998}
!303 = !{i64 2161626271}
!304 = !{i64 2161626488}
!305 = !{i64 2161395430}
!306 = !{i64 2161395641}
!307 = !{i64 2161521488}
!308 = !{i64 2161521705}
!309 = !{i64 2161538321}
!310 = !{i64 2161538534}
!311 = !{i64 2161555124}
!312 = !{i64 2161555341}
!313 = !{i64 2166425569}
!314 = !{i64 2166425716}
!315 = !{i64 2166425895}
!316 = !{i64 2166425986}
!317 = !{i64 2166426110}
!318 = !{i64 2166426201}
!319 = !{i64 2161341659}
!320 = !{i64 2161341870}
!321 = !{i64 2161324919}
!322 = !{i64 2161325134}
!323 = !{i64 2161358330}
!324 = !{i64 2161358543}
!325 = !{i64 2161609360}
!326 = !{i64 2161609577}
