; ModuleID = '/llk/IR_all_yes/fs/nfs/blocklayout/blocklayout.c_pt.bc'
source_filename = "../fs/nfs/blocklayout/blocklayout.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pnfs_layoutdriver_type = type { %struct.list_head, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nfs_pageio_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, ptr, ptr, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.rb_root = type { ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.123 }
%union.anon.123 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.pnfs_block_layout = type { %struct.pnfs_layout_hdr, %struct.rb_root, %struct.rb_root, %struct.spinlock, i8, i64 }
%struct.pnfs_layout_hdr = type { %struct.refcount_struct, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.nfs4_stateid_struct, i32, i32, i32, i64, ptr, ptr, %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfs4_stateid_struct = type { %union.anon.133, i32 }
%union.anon.133 = type { %struct.anon.134 }
%struct.anon.134 = type { i32, [12 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.nfs4_deviceid = type { [16 x i8] }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.nfs4_layoutget_res = type { %struct.nfs4_sequence_res, i32, i32, %struct.pnfs_layout_range, i32, %struct.nfs4_stateid_struct, ptr }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%struct.pnfs_layout_range = type { i32, i64, i64 }
%struct.nfs4_layoutdriver_data = type { ptr, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.146, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.147, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.148, ptr, %struct.address_space, %struct.list_head, %union.anon.149, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.146 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.147 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.148 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.149 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nfs4_deviceid_node = type { %struct.hlist_node, %struct.hlist_node, ptr, ptr, i32, i32, %struct.nfs4_deviceid, %struct.callback_head, %struct.atomic_t }
%struct.pnfs_block_extent = type { %union.anon.167, ptr, i64, i64, i64, i32, i32 }
%union.anon.167 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.pnfs_layout_segment = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnfs_layout_range, %struct.refcount_struct, i32, i32, ptr }
%struct.pnfs_block_dev_map = type { i64, i64, i64, ptr }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.nfs_pgio_header = type { ptr, ptr, %struct.list_head, ptr, %struct.nfs_writeverf, i32, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rpc_task, %struct.nfs_fattr, %struct.nfs_pgio_args, %struct.nfs_pgio_res, i32, ptr, i64, %struct.nfs_page_array, ptr, i32, i32 }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_write_verifier = type { [8 x i8] }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.125, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.125 = type { %struct.work_struct }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.130, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.130 = type { %struct.anon.132 }
%struct.anon.132 = type { i64 }
%struct.nfs_pgio_args = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, %struct.nfs4_stateid_struct, i64, i32, i32, ptr, %union.anon.135 }
%struct.nfs4_sequence_args = type { ptr, i8 }
%union.anon.135 = type { %struct.anon.136 }
%struct.anon.136 = type { ptr, [3 x i32], i32 }
%struct.nfs_pgio_res = type { %struct.nfs4_sequence_res, ptr, i64, i32, %union.anon.137 }
%union.anon.137 = type { %struct.anon.138 }
%struct.anon.138 = type { i32, i32 }
%struct.nfs_page_array = type { ptr, i32, [8 x ptr] }
%struct.parallel_io = type { %struct.kref, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nfs4_layoutcommit_data = type { %struct.rpc_task, %struct.nfs_fattr, %struct.list_head, ptr, ptr, %struct.nfs4_layoutcommit_args, %struct.nfs4_layoutcommit_res }
%struct.nfs4_layoutcommit_args = type { %struct.nfs4_sequence_args, %struct.nfs4_stateid_struct, i64, ptr, ptr, i32, ptr, ptr, ptr }
%struct.nfs4_layoutcommit_res = type { %struct.nfs4_sequence_res, ptr, ptr, i32 }
%struct.nfs_pageio_descriptor = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, [1 x %struct.nfs_pgio_mirror], ptr, i32, i16, i8 }
%struct.nfs_pgio_mirror = type { %struct.list_head, i32, i32, i32, i32, i8 }
%struct.nfs_page = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, %struct.kref, i32, %struct.nfs_write_verifier, ptr, ptr, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.85, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.85 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.pnfs_block_dev = type { %struct.nfs4_deviceid_node, i64, i64, i32, ptr, i64, ptr, i64, i64, i8, ptr }

@__UNIQUE_ID_file509 = internal constant [60 x i8] c"blocklayoutdriver.file=fs/nfs/blocklayout/blocklayoutdriver\00", section ".modinfo", align 1
@__UNIQUE_ID_license510 = internal constant [30 x i8] c"blocklayoutdriver.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author511 = internal constant [62 x i8] c"blocklayoutdriver.author=Andy Adamson <andros@citi.umich.edu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description512 = internal constant [67 x i8] c"blocklayoutdriver.description=The NFSv4.1 pNFS Block layout driver\00", section ".modinfo", align 1
@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs4blocklayout_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: NFSv4 Block Layout Driver Unregistering...\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfs4blocklayout_exit\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fs/nfs/blocklayout/blocklayout.c\00", [63 x i8] zeroinitializer }, align 32
@nfs4blocklayout_exit._entry_ptr = internal global ptr @nfs4blocklayout_exit._entry, section ".printk_index", align 4
@scsilayout_type = internal global { %struct.pnfs_layoutdriver_type, [48 x i8] } { %struct.pnfs_layoutdriver_type { %struct.list_head zeroinitializer, i32 5, ptr @.str.3, ptr null, i32 7, i32 0, i32 0, ptr @bl_set_layoutdriver, ptr null, ptr @sl_alloc_layout_hdr, ptr @bl_free_layout_hdr, ptr @bl_alloc_lseg, ptr @bl_free_lseg, ptr null, ptr @bl_return_range, ptr @bl_pg_read_ops, ptr @bl_pg_write_ops, ptr null, ptr @pnfs_generic_sync, ptr @bl_read_pagelist, ptr @bl_write_pagelist, ptr @bl_free_deviceid_node, ptr @bl_alloc_deviceid_node, ptr null, ptr @bl_cleanup_layoutcommit, ptr @bl_prepare_layoutcommit, ptr null }, [48 x i8] zeroinitializer }, align 32
@blocklayout_type = internal global { %struct.pnfs_layoutdriver_type, [48 x i8] } { %struct.pnfs_layoutdriver_type { %struct.list_head zeroinitializer, i32 3, ptr @.str.60, ptr null, i32 7, i32 0, i32 0, ptr @bl_set_layoutdriver, ptr null, ptr @bl_alloc_layout_hdr, ptr @bl_free_layout_hdr, ptr @bl_alloc_lseg, ptr @bl_free_lseg, ptr null, ptr @bl_return_range, ptr @bl_pg_read_ops, ptr @bl_pg_write_ops, ptr null, ptr @pnfs_generic_sync, ptr @bl_read_pagelist, ptr @bl_write_pagelist, ptr @bl_free_deviceid_node, ptr @bl_alloc_deviceid_node, ptr null, ptr @bl_cleanup_layoutcommit, ptr @bl_prepare_layoutcommit, ptr null }, [48 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias514 = internal constant [42 x i8] c"blocklayoutdriver.alias=nfs-layouttype4-3\00", section ".modinfo", align 1
@__UNIQUE_ID_alias515 = internal constant [42 x i8] c"blocklayoutdriver.alias=nfs-layouttype4-5\00", section ".modinfo", align 1
@__initcall__kmod_blocklayoutdriver__516_1047_nfs4blocklayout_init6 = internal global ptr @nfs4blocklayout_init, section ".initcall6.init", align 4
@__exitcall_nfs4blocklayout_exit = internal global ptr @nfs4blocklayout_exit, section ".exitcall.exit", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LAYOUT_SCSI\00", [20 x i8] zeroinitializer }, align 32
@bl_pg_read_ops = internal constant { %struct.nfs_pageio_ops, [36 x i8] } { %struct.nfs_pageio_ops { ptr @bl_pg_init_read, ptr @bl_pg_test_read, ptr @pnfs_generic_pg_readpages, ptr null, ptr @pnfs_generic_pg_cleanup, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bl_pg_write_ops = internal constant { %struct.nfs_pageio_ops, [36 x i8] } { %struct.nfs_pageio_ops { ptr @bl_pg_init_write, ptr @bl_pg_test_write, ptr @pnfs_generic_pg_writepages, ptr null, ptr @pnfs_generic_pg_cleanup, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bl_set_layoutdriver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s enter\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bl_set_layoutdriver\00", [44 x i8] zeroinitializer }, align 32
@bl_set_layoutdriver._entry_ptr = internal global ptr @bl_set_layoutdriver._entry, section ".printk_index", align 4
@bl_set_layoutdriver._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s Server did not return blksize\0A\00", [62 x i8] zeroinitializer }, align 32
@bl_set_layoutdriver._entry_ptr.8 = internal global ptr @bl_set_layoutdriver._entry.6, section ".printk_index", align 4
@bl_set_layoutdriver._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: pNFS blksize %d not supported.\0A\00", [58 x i8] zeroinitializer }, align 32
@bl_set_layoutdriver._entry_ptr.11 = internal global ptr @bl_set_layoutdriver._entry.9, section ".printk_index", align 4
@__bl_alloc_layout_hdr._entry = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.12, ptr @.str.2, i32 482, ptr null, ptr null }, align 1
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__bl_alloc_layout_hdr\00", [42 x i8] zeroinitializer }, align 32
@__bl_alloc_layout_hdr._entry_ptr = internal global ptr @__bl_alloc_layout_hdr._entry, section ".printk_index", align 4
@__bl_alloc_layout_hdr.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&bl->bl_ext_lock\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bl_free_layout_hdr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.14, ptr @.str.2, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bl_free_layout_hdr\00", [45 x i8] zeroinitializer }, align 32
@bl_free_layout_hdr._entry_ptr = internal global ptr @bl_free_layout_hdr._entry, section ".printk_index", align 4
@bl_alloc_lseg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"---> %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bl_alloc_lseg\00", [18 x i8] zeroinitializer }, align 32
@bl_alloc_lseg._entry_ptr = internal global ptr @bl_alloc_lseg._entry, section ".printk_index", align 4
@bl_alloc_lseg._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: number of extents %d\0A\00", [38 x i8] zeroinitializer }, align 32
@bl_alloc_lseg._entry_ptr.19 = internal global ptr @bl_alloc_lseg._entry.17, section ".printk_index", align 4
@bl_alloc_lseg._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s Final length mismatch\0A\00", [38 x i8] zeroinitializer }, align 32
@bl_alloc_lseg._entry_ptr.22 = internal global ptr @bl_alloc_lseg._entry.20, section ".printk_index", align 4
@bl_alloc_lseg._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.2, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s Final uncovered COW extent\0A\00", [33 x i8] zeroinitializer }, align 32
@bl_alloc_lseg._entry_ptr.25 = internal global ptr @bl_alloc_lseg._entry.23, section ".printk_index", align 4
@bl_alloc_lseg._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.2, i32 746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s returns %d\0A\00", [17 x i8] zeroinitializer }, align 32
@bl_alloc_lseg._entry_ptr.28 = internal global ptr @bl_alloc_lseg._entry.26, section ".printk_index", align 4
@bl_alloc_extent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: extent verification failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bl_alloc_extent\00", [16 x i8] zeroinitializer }, align 32
@bl_alloc_extent._entry_ptr = internal global ptr @bl_alloc_extent._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@decode_sector_number._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014NFS: %s: sector not aligned\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"decode_sector_number\00", [43 x i8] zeroinitializer }, align 32
@decode_sector_number._entry_ptr = internal global ptr @decode_sector_number._entry, section ".printk_index", align 4
@bl_free_lseg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.34, ptr @.str.2, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bl_free_lseg\00", [19 x i8] zeroinitializer }, align 32
@bl_free_lseg._entry_ptr = internal global ptr @bl_free_lseg._entry, section ".printk_index", align 4
@bl_return_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: offset %lld not block size aligned\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bl_return_range\00", [16 x i8] zeroinitializer }, align 32
@bl_return_range._entry_ptr = internal global ptr @bl_return_range._entry, section ".printk_index", align 4
@bl_return_range._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: length %lld not block size aligned\0A\00", [56 x i8] zeroinitializer }, align 32
@bl_return_range._entry_ptr.39 = internal global ptr @bl_return_range._entry.37, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@bl_read_pagelist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s enter nr_pages %u offset %lld count %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bl_read_pagelist\00", [47 x i8] zeroinitializer }, align 32
@bl_read_pagelist._entry_ptr = internal global ptr @bl_read_pagelist._entry, section ".printk_index", align 4
@bl_read_pagelist._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s Zeroing page for hole\0A\00", [38 x i8] zeroinitializer }, align 32
@bl_read_pagelist._entry_ptr.47 = internal global ptr @bl_read_pagelist._entry.45, section ".printk_index", align 4
@bl_end_par_io_read.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&hdr->task.u.tk_work)\00", [56 x i8] zeroinitializer }, align 32
@bl_read_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.49, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bl_read_cleanup\00", [16 x i8] zeroinitializer }, align 32
@bl_read_cleanup._entry_ptr = internal global ptr @bl_read_cleanup._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@bl_submit_bio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s submitting %s bio %u@%llu\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bl_submit_bio\00", [18 x i8] zeroinitializer }, align 32
@bl_submit_bio._entry_ptr = internal global ptr @bl_submit_bio._entry, section ".printk_index", align 4
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@do_add_page_to_bio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: npg %d rw %d isect %llu offset %u len %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"do_add_page_to_bio\00", [45 x i8] zeroinitializer }, align 32
@do_add_page_to_bio._entry_ptr = internal global ptr @do_add_page_to_bio._entry, section ".printk_index", align 4
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@destroy_parallel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.56, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"destroy_parallel\00", [47 x i8] zeroinitializer }, align 32
@destroy_parallel._entry_ptr = internal global ptr @destroy_parallel._entry, section ".printk_index", align 4
@__const.bl_write_pagelist.map = private unnamed_addr constant { i64, i64, i64, ptr, [4 x i8] } { i64 -1, i64 0, i64 0, ptr null, [4 x i8] zeroinitializer }, align 8
@bl_write_pagelist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s enter, %zu@%lld\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bl_write_pagelist\00", [46 x i8] zeroinitializer }, align 32
@bl_write_pagelist._entry_ptr = internal global ptr @bl_write_pagelist._entry, section ".printk_index", align 4
@bl_end_par_io_write.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bl_write_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.59, ptr @.str.2, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bl_write_cleanup\00", [47 x i8] zeroinitializer }, align 32
@bl_write_cleanup._entry_ptr = internal global ptr @bl_write_cleanup._entry, section ".printk_index", align 4
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LAYOUT_BLOCK_VOLUME\00", [44 x i8] zeroinitializer }, align 32
@nfs4blocklayout_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 1011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: NFSv4 Block Layout Driver Registering...\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfs4blocklayout_init\00", [43 x i8] zeroinitializer }, align 32
@nfs4blocklayout_init._entry_ptr = internal global ptr @nfs4blocklayout_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1036, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [16 x i8] c"scsilayout_type\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 982, i32 38 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"blocklayout_type\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 958, i32 38 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 984, i32 13 }
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"bl_pg_read_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 944, i32 36 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"bl_pg_write_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 951, i32 36 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 803, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 806, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 810, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 482, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 489, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 469, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 682, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 703, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 717, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 723, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 746, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 648, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 573, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 509, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 768, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 775, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 695, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 723, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 265, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 304, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 243, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 231, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 109, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 150, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 94, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 409, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 388, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 365, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 960, i32 13 }
@___asan_gen_.285 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.292 = private constant [36 x i8] c"../fs/nfs/blocklayout/blocklayout.c\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1011, i32 2 }
@llvm.compiler.used = appending global [111 x ptr] [ptr @__UNIQUE_ID_alias514, ptr @__UNIQUE_ID_alias515, ptr @__UNIQUE_ID_author511, ptr @__UNIQUE_ID_description512, ptr @__UNIQUE_ID_file509, ptr @__UNIQUE_ID_license510, ptr @__bl_alloc_layout_hdr._entry, ptr @__bl_alloc_layout_hdr._entry_ptr, ptr @__exitcall_nfs4blocklayout_exit, ptr @__initcall__kmod_blocklayoutdriver__516_1047_nfs4blocklayout_init6, ptr @bl_alloc_extent._entry, ptr @bl_alloc_extent._entry_ptr, ptr @bl_alloc_lseg._entry, ptr @bl_alloc_lseg._entry.17, ptr @bl_alloc_lseg._entry.20, ptr @bl_alloc_lseg._entry.23, ptr @bl_alloc_lseg._entry.26, ptr @bl_alloc_lseg._entry_ptr, ptr @bl_alloc_lseg._entry_ptr.19, ptr @bl_alloc_lseg._entry_ptr.22, ptr @bl_alloc_lseg._entry_ptr.25, ptr @bl_alloc_lseg._entry_ptr.28, ptr @bl_free_layout_hdr._entry, ptr @bl_free_layout_hdr._entry_ptr, ptr @bl_free_lseg._entry, ptr @bl_free_lseg._entry_ptr, ptr @bl_read_cleanup._entry, ptr @bl_read_cleanup._entry_ptr, ptr @bl_read_pagelist._entry, ptr @bl_read_pagelist._entry.45, ptr @bl_read_pagelist._entry_ptr, ptr @bl_read_pagelist._entry_ptr.47, ptr @bl_return_range._entry, ptr @bl_return_range._entry.37, ptr @bl_return_range._entry_ptr, ptr @bl_return_range._entry_ptr.39, ptr @bl_set_layoutdriver._entry, ptr @bl_set_layoutdriver._entry.6, ptr @bl_set_layoutdriver._entry.9, ptr @bl_set_layoutdriver._entry_ptr, ptr @bl_set_layoutdriver._entry_ptr.11, ptr @bl_set_layoutdriver._entry_ptr.8, ptr @bl_submit_bio._entry, ptr @bl_submit_bio._entry_ptr, ptr @bl_write_cleanup._entry, ptr @bl_write_cleanup._entry_ptr, ptr @bl_write_pagelist._entry, ptr @bl_write_pagelist._entry_ptr, ptr @decode_sector_number._entry, ptr @decode_sector_number._entry_ptr, ptr @destroy_parallel._entry, ptr @destroy_parallel._entry_ptr, ptr @do_add_page_to_bio._entry, ptr @do_add_page_to_bio._entry_ptr, ptr @nfs4blocklayout_exit, ptr @nfs4blocklayout_exit._entry, ptr @nfs4blocklayout_exit._entry_ptr, ptr @nfs4blocklayout_init._entry, ptr @nfs4blocklayout_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @scsilayout_type, ptr @blocklayout_type, ptr @.str.3, ptr @bl_pg_read_ops, ptr @bl_pg_write_ops, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @bl_end_par_io_read.__key, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @bl_end_par_io_write.__key, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4blocklayout_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsilayout_type to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blocklayout_type to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_pg_read_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_pg_write_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_set_layoutdriver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_set_layoutdriver._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_set_layoutdriver._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_free_layout_hdr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_alloc_lseg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_alloc_lseg._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_alloc_lseg._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_alloc_lseg._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_alloc_lseg._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_alloc_extent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_sector_number._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_free_lseg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_return_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_return_range._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_read_pagelist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_read_pagelist._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_end_par_io_read.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_read_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_submit_bio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_add_page_to_bio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @destroy_parallel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_write_pagelist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_end_par_io_write.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_write_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4blocklayout_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nfs4blocklayout_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %0 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end, !prof !168

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  tail call void @pnfs_unregister_layoutdriver(ptr noundef nonnull @scsilayout_type) #11
  tail call void @pnfs_unregister_layoutdriver(ptr noundef nonnull @blocklayout_type) #11
  tail call void @bl_cleanup_pipefs() #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_unregister_layoutdriver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bl_cleanup_pipefs() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs4blocklayout_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %0 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !168

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %call6 = tail call i32 @bl_init_pipefs() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end5.cleanup_crit_edge

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %do.end5
  %call10 = tail call i32 @pnfs_register_layoutdriver(ptr noundef nonnull @blocklayout_type) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.out_cleanup_pipe_crit_edge

if.end9.out_cleanup_pipe_crit_edge:               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_cleanup_pipe

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @pnfs_register_layoutdriver(ptr noundef nonnull @scsilayout_type) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %out_unregister_block

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out_unregister_block:                             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pnfs_unregister_layoutdriver(ptr noundef nonnull @blocklayout_type) #11
  br label %out_cleanup_pipe

out_cleanup_pipe:                                 ; preds = %out_unregister_block, %if.end9.out_cleanup_pipe_crit_edge
  %ret.0 = phi i32 [ %call10, %if.end9.out_cleanup_pipe_crit_edge ], [ %call14, %out_unregister_block ]
  tail call void @bl_cleanup_pipefs() #11
  br label %cleanup

cleanup:                                          ; preds = %out_cleanup_pipe, %if.end13.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13.cleanup_crit_edge ], [ %call6, %do.end5.cleanup_crit_edge ], [ %ret.0, %out_cleanup_pipe ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bl_set_layoutdriver(ptr nocapture noundef readonly %server, ptr nocapture noundef readnone %fh) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %0 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end, !prof !168

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %pnfs_blksize = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 39
  %1 = ptrtoint ptr %pnfs_blksize to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pnfs_blksize, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %do.body6, label %if.end22

do.body6:                                         ; preds = %do.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %3 = load i32, ptr @nfs_debug, align 4
  %and7 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body6.return_crit_edge, label %do.end17, !prof !168

do.body6.return_crit_edge:                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end17:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5) #14
  br label %return

if.end22:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %2)
  %cmp24 = icmp ugt i32 %2, 4096
  br i1 %cmp24, label %do.end27, label %if.end22.return_crit_edge

if.end22.return_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, i32 noundef %2) #14
  br label %return

return:                                           ; preds = %do.end27, %if.end22.return_crit_edge, %do.end17, %do.body6.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end27 ], [ -22, %do.body6.return_crit_edge ], [ -22, %do.end17 ], [ 0, %if.end22.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sl_alloc_layout_hdr(ptr nocapture noundef readnone %inode, i32 noundef %gfp_flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %0 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end5.i_crit_edge, label %do.end.i, !prof !168

entry.do.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12) #14
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %entry.do.end5.i_crit_edge
  %or.i.i = or i32 %gfp_flags, 256
  %and.i.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i19.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i19.i.i.i, label %do.end5.i.kzalloc.exit.i_crit_edge, label %if.end.i.i.i.i, !prof !168

do.end5.i.kzalloc.exit.i_crit_edge:               ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit.i

if.end.i.i.i.i:                                   ; preds = %do.end5.i
  %and2.i.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.end.i.i.i.i.kzalloc.exit.i_crit_edge

if.end.i.i.i.i.kzalloc.exit.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and6.i.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  br label %kzalloc.exit.i

kzalloc.exit.i:                                   ; preds = %if.end5.i.i.i.i, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge, %do.end5.i.kzalloc.exit.i_crit_edge
  %retval.0.i20.i.i.i = phi i32 [ 0, %do.end5.i.kzalloc.exit.i_crit_edge ], [ 3, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge ], [ %..i.i.i.i, %if.end5.i.i.i.i ]
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i.i, i32 8
  %1 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef %or.i.i, i32 noundef 176) #15
  %tobool7.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not.i, label %kzalloc.exit.i.__bl_alloc_layout_hdr.exit_crit_edge, label %if.end9.i

kzalloc.exit.i.__bl_alloc_layout_hdr.exit_crit_edge: ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__bl_alloc_layout_hdr.exit

if.end9.i:                                        ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %bl_ext_rw.i = getelementptr inbounds %struct.pnfs_block_layout, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %bl_ext_rw.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %bl_ext_rw.i, align 8
  %bl_ext_ro.i = getelementptr inbounds %struct.pnfs_block_layout, ptr %call7.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %bl_ext_ro.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bl_ext_ro.i, align 4
  %bl_ext_lock.i = getelementptr inbounds %struct.pnfs_block_layout, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %bl_ext_lock.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @__bl_alloc_layout_hdr.__key, i16 noundef signext 3) #11
  %bl_scsi_layout.i = getelementptr inbounds %struct.pnfs_block_layout, ptr %call7.i.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %bl_scsi_layout.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %bl_scsi_layout.i, align 4
  br label %__bl_alloc_layout_hdr.exit

__bl_alloc_layout_hdr.exit:                       ; preds = %if.end9.i, %kzalloc.exit.i.__bl_alloc_layout_hdr.exit_crit_edge
  ret ptr %call7.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bl_free_layout_hdr(ptr noundef %lo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %0 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !168

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %call7 = tail call i32 @ext_tree_remove(ptr noundef %lo, i1 noundef zeroext true, i64 noundef 0, i64 noundef 9223372036854775807) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.end6.if.end30_crit_edge, label %do.end24, !prof !168

do.end6.if.end30_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

do.end24:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 472, i32 noundef 9, ptr noundef null) #11
  br label %if.end30

if.end30:                                         ; preds = %do.end24, %do.end6.if.end30_crit_edge
  %tobool39.not = icmp eq ptr %lo, null
  br i1 %tobool39.not, label %if.end30.if.end44_crit_edge, label %do.end43

if.end30.if.end44_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

do.end43:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %plh_rcu = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %lo, i32 0, i32 16
  tail call void @kvfree_call_rcu(ptr noundef %plh_rcu, ptr noundef nonnull inttoptr (i32 104 to ptr)) #11
  br label %if.end44

if.end44:                                         ; preds = %do.end43, %if.end30.if.end44_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bl_alloc_lseg(ptr noundef %lo, ptr nocapture noundef readonly %lgr, i32 noundef %gfp_mask) #3 align 64 {
entry:
  %id.i = alloca %struct.nfs4_deviceid, align 1
  %buf = alloca %struct.xdr_buf, align 4
  %xdr = alloca %struct.xdr_stream, align 4
  %extents = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %range = getelementptr inbounds %struct.nfs4_layoutget_res, ptr %lgr, i32 0, i32 3
  %0 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %range, align 8
  %offset = getelementptr inbounds %struct.nfs4_layoutget_res, ptr %lgr, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset, align 8
  %shr = lshr i64 %3, 9
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %buf) #11
  %4 = call ptr @memset(ptr %buf, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %xdr) #11
  %5 = call ptr @memset(ptr %xdr, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %extents) #11
  %6 = getelementptr inbounds %struct.list_head, ptr %extents, i32 0, i32 1
  %7 = ptrtoint ptr %extents to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %extents, ptr %extents, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %extents, ptr %6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %9 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.end, !prof !168

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #14
  br label %do.end13

do.end13:                                         ; preds = %do.end, %entry.do.end13_crit_edge
  %or.i = or i32 %gfp_mask, 256
  %and.i.i.i = and i32 %gfp_mask, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %do.end13.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !168

do.end13.kzalloc.exit_crit_edge:                  ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %do.end13
  %and2.i.i.i = and i32 %gfp_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and6.i.i.i = and i32 %gfp_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %do.end13.kzalloc.exit_crit_edge
  %retval.0.i20.i.i = phi i32 [ 0, %do.end13.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i, i32 7
  %10 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef %or.i, i32 noundef 64) #15
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end18

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %kzalloc.exit
  %call38.i.i.i = call ptr @__alloc_pages(i32 noundef %gfp_mask, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool20.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool20.not, label %if.end18.do.body121_crit_edge, label %if.end22

if.end18.do.body121_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body121

if.end22:                                         ; preds = %if.end18
  %layoutp = getelementptr inbounds %struct.nfs4_layoutget_res, ptr %lgr, i32 0, i32 6
  %12 = ptrtoint ptr %layoutp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %layoutp, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %len = getelementptr inbounds %struct.nfs4_layoutdriver_data, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  call void @xdr_init_decode_pages(ptr noundef nonnull %xdr, ptr noundef nonnull %buf, ptr noundef %15, i32 noundef %17) #11
  %call.i = call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #11
  %scratch.i.i = getelementptr inbounds %struct.xdr_stream, ptr %xdr, i32 0, i32 4
  %18 = ptrtoint ptr %scratch.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %scratch.i.i, align 4
  %iov_len.i.i = getelementptr inbounds %struct.xdr_stream, ptr %xdr, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4096, ptr %iov_len.i.i, align 4
  %call24 = call ptr @xdr_inline_decode(ptr noundef nonnull %xdr, i32 noundef 4) #11
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end22.out_free_scratch_crit_edge, label %if.end35, !prof !169

if.end22.out_free_scratch_crit_edge:              ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_scratch

if.end35:                                         ; preds = %if.end22
  %20 = ptrtoint ptr %call24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call24, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %22 = load i32, ptr @nfs_debug, align 4
  %and38 = and i32 %22, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end35.do.end54_crit_edge, label %do.end49, !prof !168

if.end35.do.end54_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end54

do.end49:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef %21) #14
  br label %do.end54

do.end54:                                         ; preds = %do.end49, %if.end35.do.end54_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp248.not = icmp eq i32 %21, 0
  br i1 %cmp248.not, label %do.end54.for.end_crit_edge, label %for.body.lr.ph

do.end54.for.end_crit_edge:                       ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end54
  %plh_inode.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %lo, i32 0, i32 15
  %plh_lc_cred.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %lo, i32 0, i32 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i78.i = icmp eq i32 %1, 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0258 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %lv.sroa.18.0254 = phi i64 [ %shr, %for.body.lr.ph ], [ %lv.sroa.18.1, %for.inc.for.body_crit_edge ]
  %lv.sroa.5182.0253 = phi i64 [ %shr, %for.body.lr.ph ], [ %lv.sroa.5182.1, %for.inc.for.body_crit_edge ]
  %lv.sroa.14.0249 = phi i64 [ %shr, %for.body.lr.ph ], [ %lv.sroa.14.1, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %id.i) #11
  %23 = call ptr @memset(ptr %id.i, i32 255, i32 16)
  %call.i177 = call ptr @xdr_inline_decode(ptr noundef nonnull %xdr, i32 noundef 44) #11
  %tobool.not.i = icmp eq ptr %call.i177, null
  br i1 %tobool.not.i, label %for.body.bl_alloc_extent.exit.thread198_crit_edge, label %if.end.i

for.body.bl_alloc_extent.exit.thread198_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %bl_alloc_extent.exit.thread198

if.end.i:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3392, i32 noundef 48) #15
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.bl_alloc_extent.exit.thread198_crit_edge, label %if.end4.i

if.end.i.bl_alloc_extent.exit.thread198_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bl_alloc_extent.exit.thread198

if.end4.i:                                        ; preds = %if.end.i
  %25 = call ptr @memcpy(ptr %id.i, ptr %call.i177, i32 16)
  %add.ptr.i = getelementptr i32, ptr %call.i177, i32 4
  %26 = ptrtoint ptr %plh_inode.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %plh_inode.i, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 33
  %30 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %32 = ptrtoint ptr %plh_lc_cred.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %plh_lc_cred.i, align 8
  %call23.i.i = call ptr @nfs4_find_get_deviceid(ptr noundef %31, ptr noundef nonnull %id.i, ptr noundef %33, i32 noundef %gfp_mask) #11
  %tobool.not24.i.i = icmp eq ptr %call23.i.i, null
  br i1 %tobool.not24.i.i, label %if.end4.i.bl_find_get_deviceid.exit.thread.i_crit_edge, label %if.end4.i.if.end.i.i_crit_edge

if.end4.i.if.end.i.i_crit_edge:                   ; preds = %if.end4.i
  br label %if.end.i.i

if.end4.i.bl_find_get_deviceid.exit.thread.i_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bl_find_get_deviceid.exit.thread.i

if.end.i.i:                                       ; preds = %if.then10.i.i.if.end.i.i_crit_edge, %if.end4.i.if.end.i.i_crit_edge
  %call25.i.i = phi ptr [ %call.i.i, %if.then10.i.i.if.end.i.i_crit_edge ], [ %call23.i.i, %if.end4.i.if.end.i.i_crit_edge ]
  %flags.i.i = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %call25.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags.i.i, align 4
  %36 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.i = icmp eq i32 %36, 0
  br i1 %cmp.i.i, label %bl_find_get_deviceid.exit.i, label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %timestamp_unavailable.i.i = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %call25.i.i, i32 0, i32 5
  %38 = ptrtoint ptr %timestamp_unavailable.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %timestamp_unavailable.i.i, align 4
  %sub.neg.i.i = sub i32 12000, %37
  %sub5.i.i = add i32 %sub.neg.i.i, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub5.i.i)
  %cmp6.i.i = icmp sgt i32 %sub5.i.i, -1
  %sub8.i.i = sub i32 %37, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub8.i.i)
  %cmp9.i.i = icmp sgt i32 %sub8.i.i, -1
  %or.cond.i.i = select i1 %cmp6.i.i, i1 %cmp9.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end4.i.i.bl_find_get_deviceid.exit.thread.i_crit_edge, label %if.then10.i.i

if.end4.i.i.bl_find_get_deviceid.exit.thread.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bl_find_get_deviceid.exit.thread.i

if.then10.i.i:                                    ; preds = %if.end4.i.i
  %ld.i.i = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %call25.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %ld.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ld.i.i, align 4
  %nfs_client.i.i = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %call25.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %nfs_client.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nfs_client.i.i, align 4
  call void @nfs4_delete_deviceid(ptr noundef %41, ptr noundef %43, ptr noundef nonnull %id.i) #11
  %call.i.i = call ptr @nfs4_find_get_deviceid(ptr noundef %31, ptr noundef nonnull %id.i, ptr noundef %33, i32 noundef %gfp_mask) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then10.i.i.bl_find_get_deviceid.exit.thread.i_crit_edge, label %if.then10.i.i.if.end.i.i_crit_edge

if.then10.i.i.if.end.i.i_crit_edge:               ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then10.i.i.bl_find_get_deviceid.exit.thread.i_crit_edge: ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bl_find_get_deviceid.exit.thread.i

bl_find_get_deviceid.exit.thread.i:               ; preds = %if.then10.i.i.bl_find_get_deviceid.exit.thread.i_crit_edge, %if.end4.i.i.bl_find_get_deviceid.exit.thread.i_crit_edge, %if.end4.i.bl_find_get_deviceid.exit.thread.i_crit_edge
  %be_device86.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %be_device86.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 -19 to ptr), ptr %be_device86.i, align 4
  br label %process_extents.loopexit

bl_find_get_deviceid.exit.i:                      ; preds = %if.end.i.i
  %be_device.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %be_device.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call25.i.i, ptr %be_device.i, align 4
  %cmp.i56.i = icmp ugt ptr %call25.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i56.i, label %bl_find_get_deviceid.exit.i.process_extents.loopexit_crit_edge, label %if.end12.i

bl_find_get_deviceid.exit.i.process_extents.loopexit_crit_edge: ; preds = %bl_find_get_deviceid.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %process_extents.loopexit

if.end12.i:                                       ; preds = %bl_find_get_deviceid.exit.i
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %47 = load i64, ptr %add.ptr.i, align 1
  %and.i.i = and i64 %47, 511
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i57.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i57.i, label %if.end15.i, label %decode_sector_number.exit.thread.i

decode_sector_number.exit.thread.i:               ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #14
  br label %bl_alloc_extent.exit.thread204

if.end15.i:                                       ; preds = %if.end12.i
  %be_f_offset.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i.i, i32 0, i32 2
  %add.ptr.i.i.i = getelementptr i32, ptr %call.i177, i32 6
  %shr.i.i = lshr i64 %47, 9
  %48 = ptrtoint ptr %be_f_offset.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %shr.i.i, ptr %be_f_offset.i, align 8
  %49 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %add.ptr.i.i.i, align 1
  %and.i61.i = and i64 %50, 511
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i61.i)
  %tobool.not.i62.i = icmp eq i64 %and.i61.i, 0
  br i1 %tobool.not.i62.i, label %if.end19.i, label %decode_sector_number.exit68.thread.i

decode_sector_number.exit68.thread.i:             ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i63.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #14
  br label %bl_alloc_extent.exit.thread204

if.end19.i:                                       ; preds = %if.end15.i
  %be_length.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i.i, i32 0, i32 3
  %add.ptr.i.i60.i = getelementptr i32, ptr %call.i177, i32 8
  %shr.i65.i = lshr i64 %50, 9
  %51 = ptrtoint ptr %be_length.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %shr.i65.i, ptr %be_length.i, align 8
  %52 = ptrtoint ptr %add.ptr.i.i60.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %53 = load i64, ptr %add.ptr.i.i60.i, align 1
  %and.i70.i = and i64 %53, 511
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i70.i)
  %tobool.not.i71.i = icmp eq i64 %and.i70.i, 0
  br i1 %tobool.not.i71.i, label %if.end23.i, label %decode_sector_number.exit77.thread.i

decode_sector_number.exit77.thread.i:             ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #14
  br label %bl_alloc_extent.exit.thread204

if.end23.i:                                       ; preds = %if.end19.i
  %add.ptr.i.i69.i = getelementptr i32, ptr %call.i177, i32 10
  %be_v_offset.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i.i, i32 0, i32 4
  %shr.i74.i = lshr i64 %53, 9
  %54 = ptrtoint ptr %be_v_offset.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %shr.i74.i, ptr %be_v_offset.i, align 8
  %55 = ptrtoint ptr %add.ptr.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i.i69.i, align 4
  %be_state.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i.i, i32 0, i32 5
  %57 = ptrtoint ptr %be_state.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %be_state.i, align 8
  br i1 %cmp.i78.i, label %if.then.i.i, label %if.end9.i.i

if.then.i.i:                                      ; preds = %if.end23.i
  %58 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values)
  switch i32 %56, label %if.end.i79.i [
    i32 0, label %if.then.i.i.do.body.i_crit_edge
    i32 2, label %if.then.i.i.do.body.i_crit_edge351
  ]

if.then.i.i.do.body.i_crit_edge351:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.then.i.i.do.body.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end.i79.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i, i64 %lv.sroa.5182.0253)
  %cmp5.not.i.i = icmp eq i64 %shr.i.i, %lv.sroa.5182.0253
  br i1 %cmp5.not.i.i, label %if.end7.i.i, label %if.end.i79.i.do.body.i_crit_edge

if.end.i79.i.do.body.i_crit_edge:                 ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end7.i.i:                                      ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i = add nuw nsw i64 %shr.i65.i, %lv.sroa.5182.0253
  br label %if.end37.i

if.end9.i.i:                                      ; preds = %if.end23.i
  %59 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %56, label %if.end9.i.i.do.body.i_crit_edge [
    i32 0, label %if.then12.i.i
    i32 2, label %if.then28.i.i
    i32 1, label %if.then40.i.i
  ]

if.end9.i.i.do.body.i_crit_edge:                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.then12.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i, i64 %lv.sroa.5182.0253)
  %cmp15.not.i.i = icmp ne i64 %shr.i.i, %lv.sroa.5182.0253
  call void @__sanitizer_cov_trace_cmp8(i64 %lv.sroa.18.0254, i64 %shr.i.i)
  %cmp19.i.i = icmp ugt i64 %lv.sroa.18.0254, %shr.i.i
  %or.cond = select i1 %cmp15.not.i.i, i1 true, i1 %cmp19.i.i
  br i1 %or.cond, label %if.then12.i.i.do.body.i_crit_edge, label %if.end21.i.i

if.then12.i.i.do.body.i_crit_edge:                ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end21.i.i:                                     ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add24.i.i = add nuw nsw i64 %shr.i65.i, %lv.sroa.5182.0253
  br label %if.end37.i

if.then28.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i, i64 %lv.sroa.5182.0253)
  %cmp31.not.i.i = icmp eq i64 %shr.i.i, %lv.sroa.5182.0253
  br i1 %cmp31.not.i.i, label %if.end33.i.i, label %if.then28.i.i.do.body.i_crit_edge

if.then28.i.i.do.body.i_crit_edge:                ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end33.i.i:                                     ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add36.i.i = add nuw nsw i64 %shr.i65.i, %lv.sroa.5182.0253
  br label %if.end37.i

if.then40.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i, i64 %lv.sroa.5182.0253)
  %cmp43.i.i = icmp ugt i64 %shr.i.i, %lv.sroa.5182.0253
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i, i64 %lv.sroa.14.0249)
  %cmp48.i.i = icmp ult i64 %shr.i.i, %lv.sroa.14.0249
  %or.cond211 = select i1 %cmp43.i.i, i1 true, i1 %cmp48.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i, i64 %lv.sroa.18.0254)
  %cmp53.i.i = icmp ult i64 %shr.i.i, %lv.sroa.18.0254
  %or.cond212 = select i1 %or.cond211, i1 true, i1 %cmp53.i.i
  br i1 %or.cond212, label %if.then40.i.i.do.body.i_crit_edge, label %if.end55.i.i

if.then40.i.i.do.body.i_crit_edge:                ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end55.i.i:                                     ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add58.i.i = add i64 %shr.i65.i, %lv.sroa.14.0249
  %add62.i.i = add nuw nsw i64 %shr.i65.i, %shr.i.i
  br label %if.end37.i

do.body.i:                                        ; preds = %if.then40.i.i.do.body.i_crit_edge, %if.then28.i.i.do.body.i_crit_edge, %if.then12.i.i.do.body.i_crit_edge, %if.end9.i.i.do.body.i_crit_edge, %if.end.i79.i.do.body.i_crit_edge, %if.then.i.i.do.body.i_crit_edge, %if.then.i.i.do.body.i_crit_edge351
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %60 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %60, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool28.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool28.not.i, label %do.body.i.bl_alloc_extent.exit.thread204_crit_edge, label %do.end.i, !prof !168

do.body.i.bl_alloc_extent.exit.thread204_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bl_alloc_extent.exit.thread204

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #14
  br label %bl_alloc_extent.exit.thread204

if.end37.i:                                       ; preds = %if.end55.i.i, %if.end33.i.i, %if.end21.i.i, %if.end7.i.i
  %lv.sroa.14.1 = phi i64 [ %lv.sroa.14.0249, %if.end7.i.i ], [ %add58.i.i, %if.end55.i.i ], [ %lv.sroa.14.0249, %if.end33.i.i ], [ %add24.i.i, %if.end21.i.i ]
  %lv.sroa.5182.1 = phi i64 [ %add.i.i, %if.end7.i.i ], [ %lv.sroa.5182.0253, %if.end55.i.i ], [ %add36.i.i, %if.end33.i.i ], [ %add24.i.i, %if.end21.i.i ]
  %lv.sroa.18.1 = phi i64 [ %lv.sroa.18.0254, %if.end7.i.i ], [ %add62.i.i, %if.end55.i.i ], [ %lv.sroa.18.0254, %if.end33.i.i ], [ %lv.sroa.18.0254, %if.end21.i.i ]
  %61 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %6, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %62, ptr noundef nonnull %extents) #11
  br i1 %call.i.i.i, label %if.end.i.i.i178, label %if.end37.i.for.inc_crit_edge

if.end37.i.for.inc_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i.i.i178:                                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i.i.i, ptr %6, align 4
  %64 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %extents, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev3.i.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %call7.i.i.i, ptr %62, align 4
  br label %for.inc

bl_alloc_extent.exit.thread204:                   ; preds = %do.end.i, %do.body.i.bl_alloc_extent.exit.thread204_crit_edge, %decode_sector_number.exit77.thread.i, %decode_sector_number.exit68.thread.i, %decode_sector_number.exit.thread.i
  %be_device.i293 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %be_device.i293 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %be_device.i293, align 4
  %call39.i = call zeroext i1 @nfs4_put_deviceid_node(ptr noundef %68) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %id.i) #11
  br label %process_extents

bl_alloc_extent.exit.thread198:                   ; preds = %if.end.i.bl_alloc_extent.exit.thread198_crit_edge, %for.body.bl_alloc_extent.exit.thread198_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end.i.bl_alloc_extent.exit.thread198_crit_edge ], [ -5, %for.body.bl_alloc_extent.exit.thread198_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %id.i) #11
  br label %process_extents

for.inc:                                          ; preds = %if.end.i.i.i178, %if.end37.i.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %id.i) #11
  %inc = add nuw i32 %i.0258, 1
  %exitcond.not = icmp eq i32 %inc, %21
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end54.for.end_crit_edge
  %lv.sroa.5182.0.lcssa = phi i64 [ %shr, %do.end54.for.end_crit_edge ], [ %lv.sroa.5182.1, %for.inc.for.end_crit_edge ]
  %lv.sroa.18.0.lcssa = phi i64 [ %shr, %do.end54.for.end_crit_edge ], [ %lv.sroa.18.1, %for.inc.for.end_crit_edge ]
  %status.0.lcssa = phi i32 [ -5, %do.end54.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %69 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %offset, align 8
  %length = getelementptr inbounds %struct.nfs4_layoutget_res, ptr %lgr, i32 0, i32 3, i32 2
  %71 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %length, align 8
  %add = add i64 %72, %70
  %shl = shl i64 %lv.sroa.5182.0.lcssa, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %shl)
  %cmp63.not = icmp eq i64 %add, %shl
  br i1 %cmp63.not, label %if.end83, label %do.body65

do.body65:                                        ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %73 = load i32, ptr @nfs_debug, align 4
  %and66 = and i32 %73, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %do.body65.process_extents_crit_edge, label %do.end77, !prof !168

do.body65.process_extents_crit_edge:              ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #13
  br label %process_extents

do.end77:                                         ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #13
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.16) #14
  br label %process_extents

if.end83:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp8(i64 %lv.sroa.5182.0.lcssa, i64 %lv.sroa.18.0.lcssa)
  %cmp86 = icmp ult i64 %lv.sroa.5182.0.lcssa, %lv.sroa.18.0.lcssa
  br i1 %cmp86, label %do.body88, label %if.end83.process_extents_crit_edge

if.end83.process_extents_crit_edge:               ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %process_extents

do.body88:                                        ; preds = %if.end83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %74 = load i32, ptr @nfs_debug, align 4
  %and89 = and i32 %74, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %do.body88.process_extents_crit_edge, label %do.end100, !prof !168

do.body88.process_extents_crit_edge:              ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #13
  br label %process_extents

do.end100:                                        ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #13
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.16) #14
  br label %process_extents

process_extents.loopexit:                         ; preds = %bl_find_get_deviceid.exit.i.process_extents.loopexit_crit_edge, %bl_find_get_deviceid.exit.thread.i
  %retval.0.i88.i = phi ptr [ inttoptr (i32 -19 to ptr), %bl_find_get_deviceid.exit.thread.i ], [ %call25.i.i, %bl_find_get_deviceid.exit.i.process_extents.loopexit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %id.i) #11
  %75 = ptrtoint ptr %retval.0.i88.i to i32
  br label %process_extents

process_extents:                                  ; preds = %process_extents.loopexit, %do.end100, %do.body88.process_extents_crit_edge, %if.end83.process_extents_crit_edge, %do.end77, %do.body65.process_extents_crit_edge, %bl_alloc_extent.exit.thread198, %bl_alloc_extent.exit.thread204
  %status.1 = phi i32 [ %status.0.lcssa, %if.end83.process_extents_crit_edge ], [ -5, %do.end77 ], [ -5, %do.body65.process_extents_crit_edge ], [ -5, %do.end100 ], [ -5, %do.body88.process_extents_crit_edge ], [ %retval.0.i.ph, %bl_alloc_extent.exit.thread198 ], [ -5, %bl_alloc_extent.exit.thread204 ], [ %75, %process_extents.loopexit ]
  %76 = ptrtoint ptr %extents to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %extents, align 4
  %cmp.i.not261 = icmp eq ptr %77, %extents
  br i1 %cmp.i.not261, label %process_extents.out_free_scratch_crit_edge, label %process_extents.while.body_crit_edge

process_extents.while.body_crit_edge:             ; preds = %process_extents
  br label %while.body

process_extents.out_free_scratch_crit_edge:       ; preds = %process_extents
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_scratch

while.body:                                       ; preds = %if.end120.while.body_crit_edge, %process_extents.while.body_crit_edge
  %78 = phi ptr [ %90, %if.end120.while.body_crit_edge ], [ %77, %process_extents.while.body_crit_edge ]
  %status.2262 = phi i32 [ %status.3210, %if.end120.while.body_crit_edge ], [ %status.1, %process_extents.while.body_crit_edge ]
  %call.i.i179 = call zeroext i1 @__list_del_entry_valid(ptr noundef %78) #11
  br i1 %call.i.i179, label %if.end.i.i181, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i181:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i180 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i180 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i180, align 4
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %78, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev1.i.i.i, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %82, ptr %80, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i181, %while.body.list_del.exit_crit_edge
  %85 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 256 to ptr), ptr %78, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2262)
  %tobool113.not = icmp eq i32 %status.2262, 0
  br i1 %tobool113.not, label %if.end116, label %list_del.exit.if.then118_crit_edge

list_del.exit.if.then118_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then118

if.end116:                                        ; preds = %list_del.exit
  %call115 = call i32 @ext_tree_insert(ptr noundef %lo, ptr noundef %78) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool117.not = icmp eq i32 %call115, 0
  br i1 %tobool117.not, label %if.end116.if.end120_crit_edge, label %if.end116.if.then118_crit_edge

if.end116.if.then118_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then118

if.end116.if.end120_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end120

if.then118:                                       ; preds = %if.end116.if.then118_crit_edge, %list_del.exit.if.then118_crit_edge
  %status.3209 = phi i32 [ %call115, %if.end116.if.then118_crit_edge ], [ %status.2262, %list_del.exit.if.then118_crit_edge ]
  %be_device = getelementptr inbounds %struct.pnfs_block_extent, ptr %78, i32 0, i32 1
  %87 = ptrtoint ptr %be_device to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %be_device, align 4
  %call119 = call zeroext i1 @nfs4_put_deviceid_node(ptr noundef %88) #11
  call void @kfree(ptr noundef %78) #11
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %if.end116.if.end120_crit_edge
  %status.3210 = phi i32 [ %status.3209, %if.then118 ], [ 0, %if.end116.if.end120_crit_edge ]
  %89 = ptrtoint ptr %extents to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile ptr, ptr %extents, align 4
  %cmp.i.not = icmp eq ptr %90, %extents
  br i1 %cmp.i.not, label %if.end120.out_free_scratch_crit_edge, label %if.end120.while.body_crit_edge

if.end120.while.body_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end120.out_free_scratch_crit_edge:             ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_scratch

out_free_scratch:                                 ; preds = %if.end120.out_free_scratch_crit_edge, %process_extents.out_free_scratch_crit_edge, %if.end22.out_free_scratch_crit_edge
  %status.4 = phi i32 [ -5, %if.end22.out_free_scratch_crit_edge ], [ %status.1, %process_extents.out_free_scratch_crit_edge ], [ %status.3210, %if.end120.out_free_scratch_crit_edge ]
  call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #11
  br label %do.body121

do.body121:                                       ; preds = %out_free_scratch, %if.end18.do.body121_crit_edge
  %status.5 = phi i32 [ %status.4, %out_free_scratch ], [ -12, %if.end18.do.body121_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %91 = load i32, ptr @nfs_debug, align 4
  %and122 = and i32 %91, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %do.body121.do.end138_crit_edge, label %do.end133, !prof !168

do.body121.do.end138_crit_edge:                   ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end138

do.end133:                                        ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #13
  %call135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.16, i32 noundef %status.5) #14
  br label %do.end138

do.end138:                                        ; preds = %do.end133, %do.body121.do.end138_crit_edge
  %92 = zext i32 %status.5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %status.5, label %sw.default [
    i32 -19, label %sw.bb
    i32 0, label %do.end138.cleanup_crit_edge
  ]

do.end138.cleanup_crit_edge:                      ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #13
  %pls_flags = getelementptr inbounds %struct.pnfs_layout_segment, ptr %call7.i.i, i32 0, i32 6
  call void @_set_bit(i32 noundef 4, ptr noundef %pls_flags) #11
  br label %cleanup

sw.default:                                       ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %93 = inttoptr i32 %status.5 to ptr
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb, %do.end138.cleanup_crit_edge, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %93, %sw.default ], [ %call7.i.i, %do.end138.cleanup_crit_edge ], [ %call7.i.i, %sw.bb ], [ inttoptr (i32 -12 to ptr), %kzalloc.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %extents) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xdr) #11
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %buf) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bl_free_lseg(ptr noundef %lseg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %0 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end, !prof !168

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.34) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  tail call void @kfree(ptr noundef %lseg) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bl_return_range(ptr noundef %lo, ptr nocapture noundef readonly %range) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %offset1 = getelementptr inbounds %struct.pnfs_layout_range, ptr %range, i32 0, i32 1
  %0 = ptrtoint ptr %offset1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %offset1, align 8
  %shr = lshr i64 %1, 9
  %rem = and i64 %1, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem)
  %tobool.not = icmp eq i64 %rem, 0
  br i1 %tobool.not, label %if.end12, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %2 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %do.end, !prof !168

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i64 noundef %1) #14
  br label %cleanup

if.end12:                                         ; preds = %entry
  %length = getelementptr inbounds %struct.pnfs_layout_range, ptr %range, i32 0, i32 2
  %3 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %4)
  %cmp.not = icmp eq i64 %4, -1
  br i1 %cmp.not, label %if.end12.if.end40_crit_edge, label %if.then13

if.end12.if.end40_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then13:                                        ; preds = %if.end12
  %rem15 = and i64 %4, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem15)
  %tobool16.not = icmp eq i64 %rem15, 0
  br i1 %tobool16.not, label %if.end37, label %do.body18

do.body18:                                        ; preds = %if.then13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %5 = load i32, ptr @nfs_debug, align 4
  %and19 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body18.cleanup_crit_edge, label %do.end30, !prof !168

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end30:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i64 noundef %4) #14
  br label %cleanup

if.end37:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %shr39 = lshr i64 %4, 9
  %add = add nuw nsw i64 %shr39, %shr
  br label %if.end40

if.end40:                                         ; preds = %if.end37, %if.end12.if.end40_crit_edge
  %end.0 = phi i64 [ %add, %if.end37 ], [ -4096, %if.end12.if.end40_crit_edge ]
  %6 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %range, align 8
  %and41 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42 = icmp ne i32 %and41, 0
  %call43 = tail call i32 @ext_tree_remove(ptr noundef %lo, i1 noundef zeroext %tobool42, i64 noundef %shr, i64 noundef %end.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end30, %do.body18.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_generic_sync(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bl_read_pagelist(ptr noundef %header) #3 align 64 {
entry:
  %map = alloca %struct.pnfs_block_dev_map, align 8
  %be = alloca %struct.pnfs_block_extent, align 8
  %pg_len = alloca i32, align 4
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lseg = getelementptr inbounds %struct.nfs_pgio_header, ptr %header, i32 0, i32 6
  %0 = ptrtoint ptr %lseg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lseg, align 4
  %pls_layout.i = getelementptr inbounds %struct.pnfs_layout_segment, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pls_layout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pls_layout.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %map) #11
  %4 = call ptr @memcpy(ptr %map, ptr @__const.bl_write_pagelist.map, i32 32)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %be) #11
  %5 = call ptr @memset(ptr %be, i32 255, i32 48)
  %offset = getelementptr inbounds %struct.nfs_pgio_header, ptr %header, i32 0, i32 20, i32 5
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %offset, align 8
  %count = getelementptr inbounds %struct.nfs_pgio_header, ptr %header, i32 0, i32 20, i32 6
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 8
  %pgbase = getelementptr inbounds %struct.nfs_pgio_header, ptr %header, i32 0, i32 20, i32 7
  %10 = ptrtoint ptr %pgbase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pgbase, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pg_len) #11
  %pages4 = getelementptr inbounds %struct.nfs_pgio_header, ptr %header, i32 0, i32 20, i32 8
  %12 = ptrtoint ptr %pages4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pages4, align 8
  %shr = lshr i32 %11, 12
  %dreq = getelementptr inbounds %struct.nfs_pgio_header, ptr %header, i32 0, i32 13
  %14 = ptrtoint ptr %dreq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dreq, align 4
  %cmp.not = icmp eq ptr %15, null
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #11
  %16 = call ptr @memset(ptr %plug, i32 255, i32 24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %17 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.end, !prof !168

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %npages = getelementptr inbounds %struct.nfs_pgio_header, ptr %header, i32 0, i32 25, i32 1
  %18 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %npages, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %19, i64 noundef %7, i32 noundef %9) #14
  br label %do.end14

do.end14:                                         ; preds = %do.end, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3136, i32 noundef 12) #15
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %do.end14.cleanup_crit_edge, label %if.end18

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %do.end14
  %data1.i = getelementptr inbounds %struct.parallel_io, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %data1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %header, ptr %data1.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #11
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1, ptr %call7.i.i, align 8
  %pnfs_callback = getelementptr inbounds %struct.parallel_io, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %pnfs_callback to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @bl_end_par_io_read, ptr %pnfs_callback, align 4
  call void @blk_start_plug(ptr noundef nonnull %plug) #11
  %shr19 = ashr i64 %7, 9
  %npages21 = getelementptr inbounds %struct.nfs_pgio_header, ptr %header, i32 0, i32 25, i32 1
  %24 = ptrtoint ptr %npages21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %npages21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %25)
  %cmp22189 = icmp ult i32 %shr, %25
  br i1 %cmp22189, label %for.body.lr.ph, label %if.end18.for.end_crit_edge

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end18
  %be_length = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 3
  %be_f_offset = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 2
  %be_state.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 5
  %be_tag.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end89.for.body_crit_edge, %for.body.lr.ph
  %i.0200 = phi i32 [ %shr, %for.body.lr.ph ], [ %inc, %if.end89.for.body_crit_edge ]
  %pg_offset.0198 = phi i32 [ %11, %for.body.lr.ph ], [ 0, %if.end89.for.body_crit_edge ]
  %bytes_left.0196 = phi i32 [ %9, %for.body.lr.ph ], [ %sub97, %if.end89.for.body_crit_edge ]
  %extent_length.0195 = phi i64 [ 0, %for.body.lr.ph ], [ %sub94, %if.end89.for.body_crit_edge ]
  %isect.0191 = phi i64 [ %shr19, %for.body.lr.ph ], [ %add91, %if.end89.for.body_crit_edge ]
  %bio.0190 = phi ptr [ null, %for.body.lr.ph ], [ %bio.2, %if.end89.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %extent_length.0195)
  %cmp23 = icmp eq i64 %extent_length.0195, 0
  br i1 %cmp23, label %if.then24, label %for.body.if.end30_crit_edge

for.body.if.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then24:                                        ; preds = %for.body
  call fastcc void @bl_submit_bio(ptr noundef %bio.0190)
  %call26 = call zeroext i1 @ext_tree_lookup(ptr noundef %3, i64 noundef %isect.0191, ptr noundef nonnull %be, i1 noundef zeroext false) #11
  br i1 %call26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %pnfs_error = getelementptr inbounds %struct.nfs_pgio_header, ptr %header, i32 0, i32 14
  %26 = ptrtoint ptr %pnfs_error to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -5, ptr %pnfs_error, align 8
  br label %out

if.end28:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %be_length to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %be_length, align 8
  %29 = ptrtoint ptr %be_f_offset to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %be_f_offset, align 8
  %sub.neg = sub i64 %28, %isect.0191
  %sub29 = add i64 %sub.neg, %30
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %for.body.if.end30_crit_edge
  %bio.1 = phi ptr [ null, %if.end28 ], [ %bio.0190, %for.body.if.end30_crit_edge ]
  %extent_length.1 = phi i64 [ %sub29, %if.end28 ], [ %extent_length.0195, %for.body.if.end30_crit_edge ]
  br i1 %cmp.not, label %do.body38, label %if.then32

if.then32:                                        ; preds = %if.end30
  %add = add i32 %pg_offset.0198, %bytes_left.0196
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp33 = icmp ugt i32 %add, 4096
  br i1 %cmp33, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  %sub35 = sub i32 4096, %pg_offset.0198
  %31 = ptrtoint ptr %pg_len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub35, ptr %pg_len, align 4
  br label %if.end56

if.else:                                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %pg_len to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %bytes_left.0196, ptr %pg_len, align 4
  br label %if.end56

do.body38:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pg_offset.0198)
  %cmp39.not = icmp eq i32 %pg_offset.0198, 0
  br i1 %cmp39.not, label %do.end55, label %do.body47, !prof !168

do.body47:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/blocklayout/blocklayout.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 297, 0\0A.popsection", ""() #11, !srcloc !170
  unreachable

do.end55:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %pg_len to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4096, ptr %pg_len, align 4
  br label %if.end56

if.end56:                                         ; preds = %do.end55, %if.else, %if.then34
  %34 = ptrtoint ptr %be_state.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %be_state.i, align 8
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %35, label %if.end56.if.else78_crit_edge [
    i32 3, label %if.end56.if.then58_crit_edge
    i32 2, label %is_hole.exit
  ]

if.end56.if.then58_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58

if.end56.if.else78_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else78

is_hole.exit:                                     ; preds = %if.end56
  %37 = ptrtoint ptr %be_tag.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %be_tag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i179 = icmp eq i32 %38, 0
  br i1 %tobool.not.i179, label %is_hole.exit.if.then58_crit_edge, label %is_hole.exit.if.else78_crit_edge

is_hole.exit.if.else78_crit_edge:                 ; preds = %is_hole.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else78

is_hole.exit.if.then58_crit_edge:                 ; preds = %is_hole.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58

if.then58:                                        ; preds = %is_hole.exit.if.then58_crit_edge, %if.end56.if.then58_crit_edge
  call fastcc void @bl_submit_bio(ptr noundef %bio.1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %39 = load i32, ptr @nfs_debug, align 4
  %and61 = and i32 %39, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.then58.do.end77_crit_edge, label %do.end72, !prof !168

if.then58.do.end77_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end77

do.end72:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44) #14
  br label %do.end77

do.end77:                                         ; preds = %do.end72, %if.then58.do.end77_crit_edge
  %arrayidx = getelementptr ptr, ptr %13, i32 %i.0200
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %42 = ptrtoint ptr %pg_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pg_len, align 4
  call void @zero_user_segments(ptr noundef %41, i32 noundef %pg_offset.0198, i32 noundef %43, i32 noundef 0, i32 noundef 0) #11
  %44 = ptrtoint ptr %map to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 -1, ptr %map, align 8
  br label %if.end89

if.else78:                                        ; preds = %is_hole.exit.if.else78_crit_edge, %if.end56.if.else78_crit_edge
  %45 = ptrtoint ptr %npages21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %npages21, align 4
  %sub81 = sub i32 %46, %i.0200
  %arrayidx82 = getelementptr ptr, ptr %13, i32 %i.0200
  %47 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx82, align 4
  %call83 = call fastcc ptr @do_add_page_to_bio(ptr noundef %bio.1, i32 noundef %sub81, i32 noundef 0, i64 noundef %isect.0191, ptr noundef %48, ptr noundef nonnull %map, ptr noundef nonnull %be, ptr noundef nonnull @bl_end_io_read, ptr noundef nonnull %call7.i.i, i32 noundef %pg_offset.0198, ptr noundef nonnull %pg_len)
  %cmp.i = icmp ugt ptr %call83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then85, label %if.else78.if.end89_crit_edge

if.else78.if.end89_crit_edge:                     ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.then85:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %call83 to i32
  %pnfs_error87 = getelementptr inbounds %struct.nfs_pgio_header, ptr %header, i32 0, i32 14
  %50 = ptrtoint ptr %pnfs_error87 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %pnfs_error87, align 8
  br label %out

if.end89:                                         ; preds = %if.else78.if.end89_crit_edge, %do.end77
  %bio.2 = phi ptr [ null, %do.end77 ], [ %call83, %if.else78.if.end89_crit_edge ]
  %51 = ptrtoint ptr %pg_len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pg_len, align 4
  %shr90 = lshr i32 %52, 9
  %conv = zext i32 %shr90 to i64
  %add91 = add i64 %isect.0191, %conv
  %sub94 = sub i64 %extent_length.1, %conv
  %sub97 = sub i32 %bytes_left.0196, %52
  %inc = add nuw i32 %i.0200, 1
  %53 = ptrtoint ptr %npages21 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %npages21, align 4
  %cmp22 = icmp ult i32 %inc, %54
  br i1 %cmp22, label %if.end89.for.body_crit_edge, label %if.end89.for.end_crit_edge

if.end89.for.end_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end89.for.body_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end89.for.end_crit_edge, %if.end18.for.end_crit_edge
  %bio.0.lcssa = phi ptr [ null, %if.end18.for.end_crit_edge ], [ %bio.2, %if.end89.for.end_crit_edge ]
  %isect.0.lcssa = phi i64 [ %shr19, %if.end18.for.end_crit_edge ], [ %add91, %if.end89.for.end_crit_edge ]
  %shl = shl i64 %isect.0.lcssa, 9
  %55 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %header, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %56, i32 0, i32 14
  %57 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %58)
  %cmp98.not = icmp ult i64 %shl, %58
  br i1 %cmp98.not, label %if.else108, label %if.then100

if.then100:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %eof = getelementptr inbounds %struct.nfs_pgio_header, ptr %header, i32 0, i32 21, i32 4, i32 0, i32 1
  %59 = ptrtoint ptr %eof to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %eof, align 4
  %60 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %i_size, align 8
  %62 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %offset, align 8
  %sub105 = sub i64 %61, %63
  %count107 = getelementptr inbounds %struct.nfs_pgio_header, ptr %header, i32 0, i32 21, i32 2
  %64 = ptrtoint ptr %count107 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %sub105, ptr %count107, align 8
  br label %out

if.else108:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %offset, align 8
  %sub112 = sub i64 %shl, %66
  %count114 = getelementptr inbounds %struct.nfs_pgio_header, ptr %header, i32 0, i32 21, i32 2
  %67 = ptrtoint ptr %count114 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %sub112, ptr %count114, align 8
  br label %out

out:                                              ; preds = %if.else108, %if.then100, %if.then85, %if.then27
  %bio.3 = phi ptr [ null, %if.then85 ], [ null, %if.then27 ], [ %bio.0.lcssa, %if.then100 ], [ %bio.0.lcssa, %if.else108 ]
  call fastcc void @bl_submit_bio(ptr noundef %bio.3)
  call void @blk_finish_plug(ptr noundef nonnull %plug) #11
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !171
  call void @llvm.prefetch.p0(ptr nonnull %call7.i.i, i32 1, i32 3, i32 1) #11
  %68 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7.i.i, ptr nonnull %call7.i.i, i32 1, ptr nonnull elementtype(i32) %call7.i.i) #11, !srcloc !172
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !168

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef nonnull %call7.i.i, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %out
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !173
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %69 = load i32, ptr @nfs_debug, align 4
  %and.i.i.i = and i32 %69, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.destroy_parallel.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !168

if.then.i.i.destroy_parallel.exit.i.i_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %destroy_parallel.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.56) #14
  br label %destroy_parallel.exit.i.i

destroy_parallel.exit.i.i:                        ; preds = %do.end.i.i.i, %if.then.i.i.destroy_parallel.exit.i.i_crit_edge
  %70 = ptrtoint ptr %pnfs_callback to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pnfs_callback, align 4
  %72 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data1.i, align 8
  call void %71(ptr noundef %73) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %destroy_parallel.exit.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %do.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %destroy_parallel.exit.i.i ], [ 1, %do.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pg_len) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %be) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %map) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bl_write_pagelist(ptr noundef %header, i32 noundef %sync) #3 align 64 {
entry:
  %map = alloca %struct.pnfs_block_dev_map, align 8
  %be = alloca %struct.pnfs_block_extent, align 8
  %pg_len = alloca i32, align 4
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lseg = getelementptr inbounds %struct.nfs_pgio_header, ptr %header, i32 0, i32 6
  %0 = ptrtoint ptr %lseg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lseg, align 4
  %pls_layout.i = getelementptr inbounds %struct.pnfs_layout_segment, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pls_layout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pls_layout.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %map) #11
  %4 = call ptr @memcpy(ptr %map, ptr @__const.bl_write_pagelist.map, i32 32)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %be) #11
  %5 = call ptr @memset(ptr %be, i32 255, i32 48)
  %offset1 = getelementptr inbounds %struct.nfs_pgio_header, ptr %header, i32 0, i32 20, i32 5
  %6 = ptrtoint ptr %offset1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %offset1, align 8
  %count3 = getelementptr inbounds %struct.nfs_pgio_header, ptr %header, i32 0, i32 20, i32 6
  %8 = ptrtoint ptr %count3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count3, align 8
  %pages5 = getelementptr inbounds %struct.nfs_pgio_header, ptr %header, i32 0, i32 20, i32 8
  %10 = ptrtoint ptr %pages5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pages5, align 8
  %pgbase = getelementptr inbounds %struct.nfs_pgio_header, ptr %header, i32 0, i32 20, i32 7
  %12 = ptrtoint ptr %pgbase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pgbase, align 4
  %shr = lshr i32 %13, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pg_len) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #11
  %14 = call ptr @memset(ptr %plug, i32 255, i32 24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %15 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end, !prof !168

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef %9, i64 noundef %7) #14
  br label %do.end12

do.end12:                                         ; preds = %do.end, %entry.do.end12_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3136, i32 noundef 12) #15
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %do.end12.cleanup_crit_edge, label %if.end16

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %do.end12
  %data1.i = getelementptr inbounds %struct.parallel_io, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %data1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %header, ptr %data1.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #11
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %call7.i.i, align 8
  %pnfs_callback = getelementptr inbounds %struct.parallel_io, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %pnfs_callback to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @bl_end_par_io_write, ptr %pnfs_callback, align 4
  call void @blk_start_plug(ptr noundef nonnull %plug) #11
  %npages = getelementptr inbounds %struct.nfs_pgio_header, ptr %header, i32 0, i32 25, i32 1
  %20 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %npages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %21)
  %cmp92 = icmp ult i32 %shr, %21
  br i1 %cmp92, label %for.body.lr.ph, label %if.end16.for.end_crit_edge

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end16
  %and17 = ashr i64 %7, 9
  %shr18 = and i64 %and17, -8
  %be_length = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 3
  %be_f_offset = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end35.for.body_crit_edge, %for.body.lr.ph
  %i.097 = phi i32 [ %shr, %for.body.lr.ph ], [ %inc, %if.end35.for.body_crit_edge ]
  %extent_length.096 = phi i64 [ 0, %for.body.lr.ph ], [ %sub42, %if.end35.for.body_crit_edge ]
  %isect.094 = phi i64 [ %shr18, %for.body.lr.ph ], [ %add39, %if.end35.for.body_crit_edge ]
  %bio.093 = phi ptr [ null, %for.body.lr.ph ], [ %call30, %if.end35.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %extent_length.096)
  %cmp19 = icmp eq i64 %extent_length.096, 0
  br i1 %cmp19, label %if.then20, label %for.body.if.end26_crit_edge

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then20:                                        ; preds = %for.body
  call fastcc void @bl_submit_bio(ptr noundef %bio.093)
  %call22 = call zeroext i1 @ext_tree_lookup(ptr noundef %3, i64 noundef %isect.094, ptr noundef nonnull %be, i1 noundef zeroext true) #11
  br i1 %call22, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %pnfs_error = getelementptr inbounds %struct.nfs_pgio_header, ptr %header, i32 0, i32 14
  %22 = ptrtoint ptr %pnfs_error to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -22, ptr %pnfs_error, align 8
  br label %out

if.end24:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %be_length to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %be_length, align 8
  %25 = ptrtoint ptr %be_f_offset to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %be_f_offset, align 8
  %sub.neg = sub i64 %24, %isect.094
  %sub25 = add i64 %sub.neg, %26
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %for.body.if.end26_crit_edge
  %bio.1 = phi ptr [ null, %if.end24 ], [ %bio.093, %for.body.if.end26_crit_edge ]
  %extent_length.1 = phi i64 [ %sub25, %if.end24 ], [ %extent_length.096, %for.body.if.end26_crit_edge ]
  %27 = ptrtoint ptr %pg_len to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4096, ptr %pg_len, align 4
  %28 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %npages, align 4
  %sub29 = sub i32 %29, %i.097
  %arrayidx = getelementptr ptr, ptr %11, i32 %i.097
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %call30 = call fastcc ptr @do_add_page_to_bio(ptr noundef %bio.1, i32 noundef %sub29, i32 noundef 1, i64 noundef %isect.094, ptr noundef %31, ptr noundef nonnull %map, ptr noundef nonnull %be, ptr noundef nonnull @bl_end_io_write, ptr noundef nonnull %call7.i.i, i32 noundef 0, ptr noundef nonnull %pg_len)
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %call30 to i32
  %pnfs_error34 = getelementptr inbounds %struct.nfs_pgio_header, ptr %header, i32 0, i32 14
  %33 = ptrtoint ptr %pnfs_error34 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %pnfs_error34, align 8
  br label %out

if.end35:                                         ; preds = %if.end26
  %34 = ptrtoint ptr %pg_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pg_len, align 4
  %shr37 = lshr i32 %35, 9
  %conv38 = zext i32 %shr37 to i64
  %add39 = add i64 %isect.094, %conv38
  %sub42 = sub i64 %extent_length.1, %conv38
  %inc = add nuw i32 %i.097, 1
  %36 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %npages, align 4
  %cmp = icmp ult i32 %inc, %37
  br i1 %cmp, label %if.end35.for.body_crit_edge, label %if.end35.for.end_crit_edge

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end35.for.end_crit_edge, %if.end16.for.end_crit_edge
  %bio.0.lcssa = phi ptr [ null, %if.end16.for.end_crit_edge ], [ %call30, %if.end35.for.end_crit_edge ]
  %38 = ptrtoint ptr %count3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count3, align 8
  %conv45 = zext i32 %39 to i64
  %count46 = getelementptr inbounds %struct.nfs_pgio_header, ptr %header, i32 0, i32 21, i32 2
  %40 = ptrtoint ptr %count46 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv45, ptr %count46, align 8
  br label %out

out:                                              ; preds = %for.end, %if.then32, %if.then23
  %bio.2 = phi ptr [ null, %if.then32 ], [ null, %if.then23 ], [ %bio.0.lcssa, %for.end ]
  call fastcc void @bl_submit_bio(ptr noundef %bio.2)
  call void @blk_finish_plug(ptr noundef nonnull %plug) #11
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !171
  call void @llvm.prefetch.p0(ptr nonnull %call7.i.i, i32 1, i32 3, i32 1) #11
  %41 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7.i.i, ptr nonnull %call7.i.i, i32 1, ptr nonnull elementtype(i32) %call7.i.i) #11, !srcloc !172
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !168

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef nonnull %call7.i.i, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %out
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !173
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %42 = load i32, ptr @nfs_debug, align 4
  %and.i.i.i = and i32 %42, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.destroy_parallel.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !168

if.then.i.i.destroy_parallel.exit.i.i_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %destroy_parallel.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.56) #14
  br label %destroy_parallel.exit.i.i

destroy_parallel.exit.i.i:                        ; preds = %do.end.i.i.i, %if.then.i.i.destroy_parallel.exit.i.i_crit_edge
  %43 = ptrtoint ptr %pnfs_callback to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pnfs_callback, align 4
  %45 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data1.i, align 8
  call void %44(ptr noundef %46) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %destroy_parallel.exit.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %do.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %destroy_parallel.exit.i.i ], [ 1, %do.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pg_len) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %be) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %map) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bl_free_deviceid_node(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bl_alloc_deviceid_node(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bl_cleanup_layoutcommit(ptr noundef %lcdata) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.nfs4_layoutcommit_data, ptr %lcdata, i32 0, i32 5
  %status = getelementptr inbounds %struct.nfs4_layoutcommit_data, ptr %lcdata, i32 0, i32 6, i32 3
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 8
  tail call void @ext_tree_mark_committed(ptr noundef %args, i32 noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bl_prepare_layoutcommit(ptr noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ext_tree_prepare_commit(ptr noundef %arg) #11
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext_tree_remove(ptr noundef, i1 noundef zeroext, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_decode_pages(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext_tree_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4_put_deviceid_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_find_get_deviceid(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_delete_deviceid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bl_pg_init_read(ptr noundef %pgio, ptr noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pg_dreq.i = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 9
  %0 = ptrtoint ptr %pg_dreq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pg_dreq.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %wb_offset.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 4
  %2 = ptrtoint ptr %wb_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wb_offset.i, align 4
  %and.i = and i32 %3, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %if.end3.i, label %if.end.i.if.end7.sink.split_crit_edge

if.end.i.if.end7.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.sink.split

if.end3.i:                                        ; preds = %if.end.i
  %wb_bytes.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 6
  %4 = ptrtoint ptr %wb_bytes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wb_bytes.i, align 4
  %and5.i = and i32 %5, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 0
  br i1 %cmp6.i, label %if.end3.i.if.end_crit_edge, label %if.end3.i.if.end7.sink.split_crit_edge

if.end3.i.if.end7.sink.split_crit_edge:           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.sink.split

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %if.end3.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @pnfs_generic_pg_init_read(ptr noundef %pgio, ptr noundef %req) #11
  %pg_lseg = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 7
  %6 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pg_lseg, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %pls_flags = getelementptr inbounds %struct.pnfs_layout_segment, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %pls_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %pls_flags, align 4
  %10 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end7_crit_edge, label %if.then4

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %pgio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pgio, align 4
  tail call void @pnfs_error_mark_layout_for_return(ptr noundef %12, ptr noundef nonnull %7) #11
  %13 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pg_lseg, align 4
  tail call void @pnfs_set_lo_fail(ptr noundef %14) #11
  br label %if.end7.sink.split

if.end7.sink.split:                               ; preds = %if.then4, %if.end3.i.if.end7.sink.split_crit_edge, %if.end.i.if.end7.sink.split_crit_edge
  tail call void @nfs_pageio_reset_read_mds(ptr noundef %pgio) #11
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bl_pg_test_read(ptr noundef %pgio, ptr noundef %prev, ptr noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pg_dreq.i = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 9
  %0 = ptrtoint ptr %pg_dreq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pg_dreq.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %wb_offset.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 4
  %2 = ptrtoint ptr %wb_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wb_offset.i, align 4
  %and.i = and i32 %3, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %if.end3.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end3.i:                                        ; preds = %if.end.i
  %wb_bytes.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 6
  %4 = ptrtoint ptr %wb_bytes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wb_bytes.i, align 4
  %and5.i = and i32 %5, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 0
  br i1 %cmp6.i, label %if.end3.i.if.end_crit_edge, label %if.end3.i.return_crit_edge

if.end3.i.return_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %if.end3.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call i32 @pnfs_generic_pg_test(ptr noundef %pgio, ptr noundef %prev, ptr noundef %req) #11
  br label %return

return:                                           ; preds = %if.end, %if.end3.i.return_crit_edge, %if.end.i.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %if.end.i.return_crit_edge ], [ 0, %if.end3.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_generic_pg_readpages(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_pg_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_pageio_reset_read_mds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_pg_init_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_error_mark_layout_for_return(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_set_lo_fail(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !174
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %1 = tail call ptr @llvm.returnaddress(i32 0) #11
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %3 = tail call ptr @llvm.returnaddress(i32 0) #11
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #11
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !175
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !169

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #11, !srcloc !176
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !177
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !178
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !179
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !180
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_generic_pg_test(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bl_pg_init_write(ptr noundef %pgio, ptr noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pg_dreq.i = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 9
  %0 = ptrtoint ptr %pg_dreq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pg_dreq.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.if.then1_crit_edge, label %if.end.i

entry.if.then1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then1

if.end.i:                                         ; preds = %entry
  %wb_offset.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 4
  %2 = ptrtoint ptr %wb_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wb_offset.i, align 4
  %and.i = and i32 %3, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %if.end3.i, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end3.i:                                        ; preds = %if.end.i
  %wb_bytes.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 6
  %4 = ptrtoint ptr %wb_bytes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wb_bytes.i, align 4
  %and5.i = and i32 %5, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 0
  br i1 %cmp6.i, label %if.end3.i.if.end_crit_edge, label %if.end8.i

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end8.i:                                        ; preds = %if.end3.i
  %wb_index.i.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %wb_index.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wb_index.i.i, align 4
  %conv.i.i = zext i32 %7 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %conv1.i.i = zext i32 %3 to i64
  %conv.i = zext i32 %5 to i64
  %add.i.i = add nuw nsw i64 %conv.i, %conv1.i.i
  %add.i = add nuw nsw i64 %add.i.i, %shl.i.i
  %8 = ptrtoint ptr %pgio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pgio, align 4
  %call10.i = tail call fastcc i64 @i_size_read(ptr noundef %9) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call10.i)
  %cmp11.i = icmp eq i64 %add.i, %call10.i
  br i1 %cmp11.i, label %if.end8.i.if.end_crit_edge, label %if.end8.i.cleanup.sink.split_crit_edge

if.end8.i.cleanup.sink.split_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end8.i.if.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %if.end8.i.if.end_crit_edge, %if.end3.i.if.end_crit_edge
  %10 = ptrtoint ptr %pg_dreq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %pg_dreq.i, align 4
  %cmp = icmp eq ptr %.pr, null
  br i1 %cmp, label %if.end.if.then1_crit_edge, label %if.else

if.end.if.then1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then1

if.then1:                                         ; preds = %if.end.if.then1_crit_edge, %entry.if.then1_crit_edge
  %11 = ptrtoint ptr %pgio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pgio, align 4
  %wb_index = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 3
  %13 = ptrtoint ptr %wb_index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wb_index, align 4
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 9
  %15 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_mapping.i, align 8
  %call.i = tail call fastcc i64 @i_size_read(ptr noundef %12) #11
  %sub.i = add i64 %call.i, 4095
  %div.i = sdiv i64 %sub.i, 4096
  %conv.i28 = trunc i64 %div.i to i32
  %17 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_mapping.i, align 8
  %nrpages.i = getelementptr inbounds %struct.address_space, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %nrpages.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nrpages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv.i28)
  %cmp.not.i = icmp eq i32 %20, %conv.i28
  br i1 %cmp.not.i, label %if.then1.if.end.i29_crit_edge, label %if.then.i

if.then1.if.end.i29_crit_edge:                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i29

if.then.i:                                        ; preds = %if.then1
  %21 = tail call i32 @llvm.read_register.i32(metadata !158) #11
  %and.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !181
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %if.then.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 696, ptr noundef nonnull @.str.41) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.i.rcu_read_lock.exit.i_crit_edge
  %add3.i = add i32 %14, 1
  %call4.i = tail call i32 @page_cache_next_miss(ptr noundef %16, i32 noundef %add3.i, i32 noundef -1) #11
  %call.i20.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i20.i, label %rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i23.i

rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i23.i:                              ; preds = %rcu_read_lock.exit.i
  %call1.i21.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21.i)
  %tobool.not.i22.i = icmp eq i32 %call1.i21.i, 0
  br i1 %tobool.not.i22.i, label %land.lhs.true.i23.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i25.i

land.lhs.true.i23.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i25.i:                             ; preds = %land.lhs.true.i23.i
  %.b4.i24.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24.i, label %land.lhs.true2.i25.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i26.i

land.lhs.true2.i25.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i26.i:                                    ; preds = %land.lhs.true2.i25.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 724, ptr noundef nonnull @.str.42) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i26.i, %land.lhs.true2.i25.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i23.i.rcu_read_unlock.exit.i_crit_edge, %rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  %25 = tail call i32 @llvm.read_register.i32(metadata !158) #11
  %and.i.i.i.i.i27.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i27.i to ptr
  %preempt_count.i.i.i.i28.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i28.i, align 4
  %sub.i.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i28.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %if.end.i29

if.end.i29:                                       ; preds = %rcu_read_unlock.exit.i, %if.then1.if.end.i29_crit_edge
  %end.0.i = phi i32 [ %call4.i, %rcu_read_unlock.exit.i ], [ %conv.i28, %if.then1.if.end.i29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %end.0.i)
  %tobool.not.i = icmp eq i32 %end.0.i, 0
  br i1 %tobool.not.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = tail call fastcc i64 @i_size_read(ptr noundef %12) #11
  %shl.i = shl i32 %14, 12
  %conv7.i = zext i32 %shl.i to i64
  %sub8.i = sub i64 %call6.i, %conv7.i
  br label %if.end5

if.else.i:                                        ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #13
  %sub9.i = sub i32 %end.0.i, %14
  %shl10.i = shl i32 %sub9.i, 12
  %conv11.i = zext i32 %shl10.i to i64
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 @nfs_dreq_bytes_left(ptr noundef nonnull %.pr) #11
  %conv = sext i32 %call4 to i64
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.else.i, %if.then5.i
  %wb_size.0 = phi i64 [ %conv, %if.else ], [ %conv11.i, %if.else.i ], [ %sub8.i, %if.then5.i ]
  tail call void @pnfs_generic_pg_init_write(ptr noundef %pgio, ptr noundef %req, i64 noundef %wb_size.0) #11
  %pg_lseg = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 7
  %29 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pg_lseg, align 4
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %land.lhs.true

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end5
  %pls_flags = getelementptr inbounds %struct.pnfs_layout_segment, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %pls_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %pls_flags, align 4
  %33 = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool8.not = icmp eq i32 %33, 0
  br i1 %tobool8.not, label %land.lhs.true.cleanup_crit_edge, label %if.then9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %pgio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pgio, align 4
  tail call void @pnfs_error_mark_layout_for_return(ptr noundef %35, ptr noundef nonnull %30) #11
  %36 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pg_lseg, align 4
  tail call void @pnfs_set_lo_fail(ptr noundef %37) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then9, %if.end8.i.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  tail call void @nfs_pageio_reset_write_mds(ptr noundef %pgio) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %if.end5.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bl_pg_test_write(ptr noundef %pgio, ptr noundef %prev, ptr noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pg_dreq.i = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 9
  %0 = ptrtoint ptr %pg_dreq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pg_dreq.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %wb_offset.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 4
  %2 = ptrtoint ptr %wb_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wb_offset.i, align 4
  %and.i = and i32 %3, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %if.end3.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end3.i:                                        ; preds = %if.end.i
  %wb_bytes.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 6
  %4 = ptrtoint ptr %wb_bytes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wb_bytes.i, align 4
  %and5.i = and i32 %5, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 0
  br i1 %cmp6.i, label %if.end3.i.if.end_crit_edge, label %if.end8.i

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end8.i:                                        ; preds = %if.end3.i
  %wb_index.i.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %wb_index.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wb_index.i.i, align 4
  %conv.i.i = zext i32 %7 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %conv1.i.i = zext i32 %3 to i64
  %conv.i = zext i32 %5 to i64
  %add.i.i = add nuw nsw i64 %conv.i, %conv1.i.i
  %add.i = add nuw nsw i64 %add.i.i, %shl.i.i
  %8 = ptrtoint ptr %pgio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pgio, align 4
  %call10.i = tail call fastcc i64 @i_size_read(ptr noundef %9) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call10.i)
  %cmp11.i = icmp eq i64 %add.i, %call10.i
  br i1 %cmp11.i, label %if.end8.i.if.end_crit_edge, label %if.end8.i.return_crit_edge

if.end8.i.return_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end8.i.if.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %if.end8.i.if.end_crit_edge, %if.end3.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call i32 @pnfs_generic_pg_test(ptr noundef %pgio, ptr noundef %prev, ptr noundef %req) #11
  br label %return

return:                                           ; preds = %if.end, %if.end8.i.return_crit_edge, %if.end.i.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %if.end.i.return_crit_edge ], [ 0, %if.end8.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_generic_pg_writepages(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_pageio_reset_write_mds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_dreq_bytes_left(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_pg_init_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @page_cache_next_miss(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bl_end_par_io_read(ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pnfs_error = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 14
  %0 = ptrtoint ptr %pnfs_error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pnfs_error, align 8
  %tk_status = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 18, i32 1
  %2 = ptrtoint ptr %tk_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tk_status, align 4
  %u = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 18, i32 8
  tail call void @__init_work(ptr noundef %u, i32 noundef 0) #11
  %3 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %u, align 4
  %lockdep_map = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 18, i32 8, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.48, ptr noundef nonnull @bl_end_par_io_read.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry9 = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 18, i32 8, i32 0, i32 1
  %4 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 18, i32 8, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 18, i32 8, i32 0, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @bl_read_cleanup, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %u) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bl_submit_bio(ptr noundef %bio) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bio, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then:                                          ; preds = %entry
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #11, !srcloc !183
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !169

if.then.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_parallel.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !168

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_parallel.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_parallel.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %.sink.i.i.i.i.i) #11
  br label %get_parallel.exit

get_parallel.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_parallel.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %4 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %get_parallel.exit.do.end8_crit_edge, label %do.end, !prof !168

get_parallel.exit.do.end8_crit_edge:              ; preds = %get_parallel.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

do.end:                                           ; preds = %get_parallel.exit
  call void @__sanitizer_cov_trace_pc() #13
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %5 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bi_opf, align 8
  %and6 = and i32 %6, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp = icmp eq i32 %and6, 0
  %cond = select i1 %cmp, ptr @.str.52, ptr @.str.53
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bi_size, align 8
  %9 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %bi_iter, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef nonnull %cond, i32 noundef %8, i64 noundef %10) #14
  br label %do.end8

do.end8:                                          ; preds = %do.end, %get_parallel.exit.do.end8_crit_edge
  tail call void @submit_bio(ptr noundef nonnull %bio) #11
  br label %if.end9

if.end9:                                          ; preds = %do.end8, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ext_tree_lookup(ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @do_add_page_to_bio(ptr noundef %bio, i32 noundef %npg, i32 noundef %rw, i64 noundef %isect, ptr noundef %page, ptr noundef %map, ptr nocapture noundef readonly %be, ptr noundef %end_io, ptr noundef %par, i32 noundef %offset, ptr nocapture noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %be_device = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 1
  %0 = ptrtoint ptr %be_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %be_device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %2 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !168

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef %npg, i32 noundef %rw, i64 noundef %isect, i32 noundef %offset, i32 noundef %4) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %be_v_offset = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 4
  %5 = ptrtoint ptr %be_v_offset to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %be_v_offset, align 8
  %add = add i64 %6, %isect
  %be_f_offset = getelementptr inbounds %struct.pnfs_block_extent, ptr %be, i32 0, i32 2
  %7 = ptrtoint ptr %be_f_offset to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %be_f_offset, align 8
  %sub = sub i64 %add, %8
  %shl = shl i64 %sub, 9
  %9 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %map, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %shl)
  %cmp.not.i = icmp ugt i64 %10, %shl
  br i1 %cmp.not.i, label %do.end6.if.then8_crit_edge, label %offset_in_map.exit

do.end6.if.then8_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

offset_in_map.exit:                               ; preds = %do.end6
  %len.i = getelementptr inbounds %struct.pnfs_block_dev_map, ptr %map, i32 0, i32 1
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %len.i, align 8
  %add.i = add i64 %12, %10
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %shl)
  %cmp2.i = icmp ugt i64 %add.i, %shl
  br i1 %cmp2.i, label %offset_in_map.exit.if.end16_crit_edge, label %offset_in_map.exit.if.then8_crit_edge

offset_in_map.exit.if.then8_crit_edge:            ; preds = %offset_in_map.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

offset_in_map.exit.if.end16_crit_edge:            ; preds = %offset_in_map.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then8:                                         ; preds = %offset_in_map.exit.if.then8_crit_edge, %do.end6.if.then8_crit_edge
  %map9 = getelementptr inbounds %struct.pnfs_block_dev, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %map9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map9, align 4
  %call10 = tail call zeroext i1 %14(ptr noundef %1, i64 noundef %shl, ptr noundef %map) #11
  br i1 %call10, label %lor.lhs.false, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then8
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %map, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %shl)
  %cmp.not.i82 = icmp ugt i64 %16, %shl
  br i1 %cmp.not.i82, label %lor.lhs.false.cleanup_crit_edge, label %offset_in_map.exit87

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

offset_in_map.exit87:                             ; preds = %lor.lhs.false
  %len.i83 = getelementptr inbounds %struct.pnfs_block_dev_map, ptr %map, i32 0, i32 1
  %17 = ptrtoint ptr %len.i83 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %len.i83, align 8
  %add.i84 = add i64 %18, %16
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i84, i64 %shl)
  %cmp2.i85 = icmp ugt i64 %add.i84, %shl
  br i1 %cmp2.i85, label %if.end14, label %offset_in_map.exit87.cleanup_crit_edge

offset_in_map.exit87.cleanup_crit_edge:           ; preds = %offset_in_map.exit87
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %offset_in_map.exit87
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @bl_submit_bio(ptr noundef %bio)
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %offset_in_map.exit.if.end16_crit_edge
  %bio.addr.0 = phi ptr [ %bio, %offset_in_map.exit.if.end16_crit_edge ], [ null, %if.end14 ]
  %disk_offset = getelementptr inbounds %struct.pnfs_block_dev_map, ptr %map, i32 0, i32 2
  %19 = ptrtoint ptr %disk_offset to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %disk_offset, align 8
  %add17 = add i64 %20, %shl
  %21 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %map, align 8
  %sub18 = sub i64 %add17, %22
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %conv = sext i32 %24 to i64
  %add19 = add i64 %sub18, %conv
  %len21 = getelementptr inbounds %struct.pnfs_block_dev_map, ptr %map, i32 0, i32 1
  %25 = ptrtoint ptr %len21 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %len21, align 8
  %add22 = add i64 %26, %22
  call void @__sanitizer_cov_trace_cmp8(i64 %add19, i64 %add22)
  %cmp.not = icmp ult i64 %add19, %add22
  br i1 %cmp.not, label %if.end16.if.end30_crit_edge, label %if.then24

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %sub28 = sub i64 %add22, %sub18
  %conv29 = trunc i64 %sub28 to i32
  %27 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv29, ptr %len, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %if.end16.if.end30_crit_edge
  %bdev = getelementptr inbounds %struct.pnfs_block_dev_map, ptr %map, i32 0, i32 3
  %28 = tail call i32 @llvm.umin.i32(i32 %npg, i32 256) #11
  %conv.i = trunc i32 %28 to i16
  %shr = lshr i64 %sub18, 9
  br label %retry

retry:                                            ; preds = %if.then42, %if.end30
  %bio.addr.1 = phi ptr [ %bio.addr.0, %if.end30 ], [ null, %if.then42 ]
  %tobool31.not = icmp eq ptr %bio.addr.1, null
  br i1 %tobool31.not, label %if.then32, label %retry.if.end38_crit_edge

retry.if.end38_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then32:                                        ; preds = %retry
  %29 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bdev, align 8
  %call.i.i = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext %conv.i, ptr noundef nonnull @fs_bio_set) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then32.cleanup_crit_edge, label %if.then.i

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.then32
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 8
  %31 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %shr, ptr %bi_iter.i, align 8
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %33, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %35, %30
  br i1 %cmp.not.i.i, label %if.then.i.if.end37_crit_edge, label %if.then.i.i

if.then.i.if.end37_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i8.i.i = and i16 %33, -2177
  %36 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then.i.i, %if.then.i.if.end37_crit_edge
  %37 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %30, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef nonnull %call.i.i) #11
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 10
  %38 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %end_io, ptr %bi_end_io.i, align 8
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 11
  %39 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %par, ptr %bi_private.i, align 4
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %rw, ptr %bi_opf.i, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %retry.if.end38_crit_edge
  %bio.addr.2 = phi ptr [ %bio.addr.1, %retry.if.end38_crit_edge ], [ %call.i.i, %if.end37 ]
  %41 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len, align 4
  %call39 = tail call i32 @bio_add_page(ptr noundef nonnull %bio.addr.2, ptr noundef %page, i32 noundef %42, i32 noundef %offset) #11
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  %cmp40 = icmp slt i32 %call39, %44
  br i1 %cmp40, label %if.then42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @bl_submit_bio(ptr noundef nonnull %bio.addr.2)
  br label %retry

cleanup:                                          ; preds = %if.end38.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %offset_in_map.exit87.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then8.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %offset_in_map.exit87.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.then8.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then32.cleanup_crit_edge ], [ %bio.addr.2, %if.end38.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bl_end_io_read(ptr noundef %bio) #3 align 64 {
entry:
  %be.i = alloca %struct.pnfs_block_extent, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %2 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.parallel_io, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %pnfs_error = getelementptr inbounds %struct.nfs_pgio_header, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %pnfs_error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pnfs_error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %pnfs_error to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -5, ptr %pnfs_error, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %lseg = getelementptr inbounds %struct.nfs_pgio_header, ptr %5, i32 0, i32 6
  %9 = ptrtoint ptr %lseg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lseg, align 4
  tail call void @pnfs_set_lo_fail(ptr noundef %10) #11
  %11 = ptrtoint ptr %lseg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lseg, align 4
  %pls_layout.i.i = getelementptr inbounds %struct.pnfs_layout_segment, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %pls_layout.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pls_layout.i.i, align 4
  %count.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %5, i32 0, i32 20, i32 6
  %15 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count.i, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %be.i) #11
  %17 = call ptr @memset(ptr %be.i, i32 255, i32 48)
  %offset.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %5, i32 0, i32 20, i32 5
  %18 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %offset.i, align 8
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 511
  %conv4.i = add i32 %21, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4.i)
  %cmp.not35.i = icmp eq i32 %conv4.i, 0
  br i1 %cmp.not35.i, label %if.end.bl_mark_devices_unavailable.exit_crit_edge, label %while.body.lr.ph.i

if.end.bl_mark_devices_unavailable.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %bl_mark_devices_unavailable.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %shr.i = lshr i64 %19, 9
  %be_length.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.i, i32 0, i32 3
  %be_f_offset.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.i, i32 0, i32 2
  %be_device.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.i, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %isect.037.i = phi i64 [ %shr.i, %while.body.lr.ph.i ], [ %add9.i, %if.end.i.while.body.i_crit_edge ]
  %bytes_left.036.i = phi i32 [ %conv4.i, %while.body.lr.ph.i ], [ %conv18.i, %if.end.i.while.body.i_crit_edge ]
  %call6.i = call zeroext i1 @ext_tree_lookup(ptr noundef %14, i64 noundef %isect.037.i, ptr noundef nonnull %be.i, i1 noundef zeroext false) #11
  br i1 %call6.i, label %if.end.i, label %while.body.i.bl_mark_devices_unavailable.exit_crit_edge

while.body.i.bl_mark_devices_unavailable.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bl_mark_devices_unavailable.exit

if.end.i:                                         ; preds = %while.body.i
  %22 = ptrtoint ptr %be_length.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %be_length.i, align 8
  %24 = ptrtoint ptr %be_f_offset.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %be_f_offset.i, align 8
  %sub7.neg.i = sub i64 %23, %isect.037.i
  %sub8.i = add i64 %sub7.neg.i, %25
  %26 = ptrtoint ptr %be_device.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %be_device.i, align 4
  call void @nfs4_mark_deviceid_unavailable(ptr noundef %27) #11
  %add9.i = add i64 %25, %23
  %conv10.i = zext i32 %bytes_left.036.i to i64
  %shl11.i = shl i64 %sub8.i, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %shl11.i, i64 %conv10.i)
  %cmp12.i = icmp uge i64 %shl11.i, %conv10.i
  %28 = trunc i64 %shl11.i to i32
  %conv18.i = sub i32 %bytes_left.036.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv18.i)
  %cmp.not38.i = icmp eq i32 %conv18.i, 0
  %cmp.not.i = select i1 %cmp12.i, i1 true, i1 %cmp.not38.i
  br i1 %cmp.not.i, label %if.end.i.bl_mark_devices_unavailable.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end.i.bl_mark_devices_unavailable.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bl_mark_devices_unavailable.exit

bl_mark_devices_unavailable.exit:                 ; preds = %if.end.i.bl_mark_devices_unavailable.exit_crit_edge, %while.body.i.bl_mark_devices_unavailable.exit_crit_edge, %if.end.bl_mark_devices_unavailable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %be.i) #11
  br label %if.end4

if.end4:                                          ; preds = %bl_mark_devices_unavailable.exit, %entry.if.end4_crit_edge
  call void @bio_put(ptr noundef %bio) #11
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !171
  call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #11
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #11, !srcloc !172
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.put_parallel.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !168

if.end5.i.i.i.i.i.put_parallel.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_parallel.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #11
  br label %put_parallel.exit

if.then.i.i:                                      ; preds = %if.end4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !173
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %30 = load i32, ptr @nfs_debug, align 4
  %and.i.i.i = and i32 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.destroy_parallel.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !168

if.then.i.i.destroy_parallel.exit.i.i_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %destroy_parallel.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.56) #14
  br label %destroy_parallel.exit.i.i

destroy_parallel.exit.i.i:                        ; preds = %do.end.i.i.i, %if.then.i.i.destroy_parallel.exit.i.i_crit_edge
  %pnfs_callback.i.i.i = getelementptr inbounds %struct.parallel_io, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %pnfs_callback.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pnfs_callback.i.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.parallel_io, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i.i, align 4
  call void %32(ptr noundef %34) #11
  call void @kfree(ptr noundef %1) #11
  br label %put_parallel.exit

put_parallel.exit:                                ; preds = %destroy_parallel.exit.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.put_parallel.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bl_read_cleanup(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %0 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !168

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.49) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %add.ptr9 = getelementptr i8, ptr %work, i32 -124
  tail call void @pnfs_ld_read_done(ptr noundef %add.ptr9) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_ld_read_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_mark_deviceid_unavailable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bl_end_par_io_write(ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pnfs_error = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 14
  %0 = ptrtoint ptr %pnfs_error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pnfs_error, align 8
  %tk_status = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 18, i32 1
  %2 = ptrtoint ptr %tk_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tk_status, align 4
  %committed = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %committed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %committed, align 4
  %u = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 18, i32 8
  tail call void @__init_work(ptr noundef %u, i32 noundef 0) #11
  %4 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %u, align 4
  %lockdep_map = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 18, i32 8, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.48, ptr noundef nonnull @bl_end_par_io_write.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry9 = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 18, i32 8, i32 0, i32 1
  %5 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 18, i32 8, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 18, i32 8, i32 0, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @bl_write_cleanup, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %u) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bl_end_io_write(ptr noundef %bio) #3 align 64 {
entry:
  %be.i = alloca %struct.pnfs_block_extent, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %data = getelementptr inbounds %struct.parallel_io, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %4 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %entry
  %pnfs_error = getelementptr inbounds %struct.nfs_pgio_header, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %pnfs_error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pnfs_error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %pnfs_error to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -5, ptr %pnfs_error, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %lseg = getelementptr inbounds %struct.nfs_pgio_header, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %lseg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lseg, align 4
  tail call void @pnfs_set_lo_fail(ptr noundef %10) #11
  %11 = ptrtoint ptr %lseg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lseg, align 4
  %pls_layout.i.i = getelementptr inbounds %struct.pnfs_layout_segment, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %pls_layout.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pls_layout.i.i, align 4
  %count.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %3, i32 0, i32 20, i32 6
  %15 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count.i, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %be.i) #11
  %17 = call ptr @memset(ptr %be.i, i32 255, i32 48)
  %offset.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %3, i32 0, i32 20, i32 5
  %18 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %offset.i, align 8
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 511
  %conv4.i = add i32 %21, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4.i)
  %cmp.not35.i = icmp eq i32 %conv4.i, 0
  br i1 %cmp.not35.i, label %if.end.bl_mark_devices_unavailable.exit_crit_edge, label %while.body.lr.ph.i

if.end.bl_mark_devices_unavailable.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %bl_mark_devices_unavailable.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %shr.i = lshr i64 %19, 9
  %be_length.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.i, i32 0, i32 3
  %be_f_offset.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.i, i32 0, i32 2
  %be_device.i = getelementptr inbounds %struct.pnfs_block_extent, ptr %be.i, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %isect.037.i = phi i64 [ %shr.i, %while.body.lr.ph.i ], [ %add9.i, %if.end.i.while.body.i_crit_edge ]
  %bytes_left.036.i = phi i32 [ %conv4.i, %while.body.lr.ph.i ], [ %conv18.i, %if.end.i.while.body.i_crit_edge ]
  %call6.i = call zeroext i1 @ext_tree_lookup(ptr noundef %14, i64 noundef %isect.037.i, ptr noundef nonnull %be.i, i1 noundef zeroext true) #11
  br i1 %call6.i, label %if.end.i, label %while.body.i.bl_mark_devices_unavailable.exit_crit_edge

while.body.i.bl_mark_devices_unavailable.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bl_mark_devices_unavailable.exit

if.end.i:                                         ; preds = %while.body.i
  %22 = ptrtoint ptr %be_length.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %be_length.i, align 8
  %24 = ptrtoint ptr %be_f_offset.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %be_f_offset.i, align 8
  %sub7.neg.i = sub i64 %23, %isect.037.i
  %sub8.i = add i64 %sub7.neg.i, %25
  %26 = ptrtoint ptr %be_device.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %be_device.i, align 4
  call void @nfs4_mark_deviceid_unavailable(ptr noundef %27) #11
  %add9.i = add i64 %25, %23
  %conv10.i = zext i32 %bytes_left.036.i to i64
  %shl11.i = shl i64 %sub8.i, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %shl11.i, i64 %conv10.i)
  %cmp12.i = icmp uge i64 %shl11.i, %conv10.i
  %28 = trunc i64 %shl11.i to i32
  %conv18.i = sub i32 %bytes_left.036.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv18.i)
  %cmp.not38.i = icmp eq i32 %conv18.i, 0
  %cmp.not.i = select i1 %cmp12.i, i1 true, i1 %cmp.not38.i
  br i1 %cmp.not.i, label %if.end.i.bl_mark_devices_unavailable.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end.i.bl_mark_devices_unavailable.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bl_mark_devices_unavailable.exit

bl_mark_devices_unavailable.exit:                 ; preds = %if.end.i.bl_mark_devices_unavailable.exit_crit_edge, %while.body.i.bl_mark_devices_unavailable.exit_crit_edge, %if.end.bl_mark_devices_unavailable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %be.i) #11
  br label %if.end4

if.end4:                                          ; preds = %bl_mark_devices_unavailable.exit, %entry.if.end4_crit_edge
  call void @bio_put(ptr noundef %bio) #11
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !171
  call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #11
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #11, !srcloc !172
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.put_parallel.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !168

if.end5.i.i.i.i.i.put_parallel.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_parallel.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #11
  br label %put_parallel.exit

if.then.i.i:                                      ; preds = %if.end4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !173
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %30 = load i32, ptr @nfs_debug, align 4
  %and.i.i.i = and i32 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.destroy_parallel.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !168

if.then.i.i.destroy_parallel.exit.i.i_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %destroy_parallel.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.56) #14
  br label %destroy_parallel.exit.i.i

destroy_parallel.exit.i.i:                        ; preds = %do.end.i.i.i, %if.then.i.i.destroy_parallel.exit.i.i_crit_edge
  %pnfs_callback.i.i.i = getelementptr inbounds %struct.parallel_io, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %pnfs_callback.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pnfs_callback.i.i.i, align 4
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  call void %32(ptr noundef %34) #11
  call void @kfree(ptr noundef %1) #11
  br label %put_parallel.exit

put_parallel.exit:                                ; preds = %destroy_parallel.exit.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.put_parallel.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bl_write_cleanup(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %0 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !168

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.59) #14
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %pnfs_error = getelementptr i8, ptr %work, i32 -52
  %1 = ptrtoint ptr %pnfs_error to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pnfs_error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool10.not = icmp eq i32 %2, 0
  br i1 %tobool10.not, label %if.then19, label %do.end9.if.end36_crit_edge, !prof !168

do.end9.if.end36_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then19:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  %lseg = getelementptr i8, ptr %work, i32 -88
  %3 = ptrtoint ptr %lseg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lseg, align 4
  %pls_layout.i = getelementptr inbounds %struct.pnfs_layout_segment, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %pls_layout.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pls_layout.i, align 4
  %offset = getelementptr i8, ptr %work, i32 356
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %offset, align 8
  %and21 = and i64 %8, -4096
  %count = getelementptr i8, ptr %work, i32 364
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 8
  %conv = zext i32 %10 to i64
  %add = add i64 %8, %conv
  %sub = add i64 %add, 4095
  %and26 = and i64 %sub, -4096
  %shr = lshr exact i64 %and21, 9
  %sub33 = sub i64 %and26, %and21
  %shr34 = lshr exact i64 %sub33, 9
  %call35 = tail call i32 @ext_tree_mark_written(ptr noundef %6, i64 noundef %shr, i64 noundef %shr34, i64 noundef %add) #11
  br label %if.end36

if.end36:                                         ; preds = %if.then19, %do.end9.if.end36_crit_edge
  %add.ptr3 = getelementptr i8, ptr %work, i32 -124
  tail call void @pnfs_ld_write_done(ptr noundef %add.ptr3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext_tree_mark_written(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_ld_write_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext_tree_mark_committed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext_tree_prepare_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bl_alloc_layout_hdr(ptr nocapture noundef readnone %inode, i32 noundef %gfp_flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %0 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end5.i_crit_edge, label %do.end.i, !prof !168

entry.do.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12) #14
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %entry.do.end5.i_crit_edge
  %or.i.i = or i32 %gfp_flags, 256
  %and.i.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i19.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i19.i.i.i, label %do.end5.i.kzalloc.exit.i_crit_edge, label %if.end.i.i.i.i, !prof !168

do.end5.i.kzalloc.exit.i_crit_edge:               ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit.i

if.end.i.i.i.i:                                   ; preds = %do.end5.i
  %and2.i.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.end.i.i.i.i.kzalloc.exit.i_crit_edge

if.end.i.i.i.i.kzalloc.exit.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and6.i.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  br label %kzalloc.exit.i

kzalloc.exit.i:                                   ; preds = %if.end5.i.i.i.i, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge, %do.end5.i.kzalloc.exit.i_crit_edge
  %retval.0.i20.i.i.i = phi i32 [ 0, %do.end5.i.kzalloc.exit.i_crit_edge ], [ 3, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge ], [ %..i.i.i.i, %if.end5.i.i.i.i ]
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i.i, i32 8
  %1 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef %or.i.i, i32 noundef 176) #15
  %tobool7.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not.i, label %kzalloc.exit.i.__bl_alloc_layout_hdr.exit_crit_edge, label %if.end9.i

kzalloc.exit.i.__bl_alloc_layout_hdr.exit_crit_edge: ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__bl_alloc_layout_hdr.exit

if.end9.i:                                        ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %bl_ext_rw.i = getelementptr inbounds %struct.pnfs_block_layout, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %bl_ext_rw.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %bl_ext_rw.i, align 8
  %bl_ext_ro.i = getelementptr inbounds %struct.pnfs_block_layout, ptr %call7.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %bl_ext_ro.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bl_ext_ro.i, align 4
  %bl_ext_lock.i = getelementptr inbounds %struct.pnfs_block_layout, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %bl_ext_lock.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @__bl_alloc_layout_hdr.__key, i16 noundef signext 3) #11
  %bl_scsi_layout.i = getelementptr inbounds %struct.pnfs_block_layout, ptr %call7.i.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %bl_scsi_layout.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %bl_scsi_layout.i, align 4
  br label %__bl_alloc_layout_hdr.exit

__bl_alloc_layout_hdr.exit:                       ; preds = %if.end9.i, %kzalloc.exit.i.__bl_alloc_layout_hdr.exit_crit_edge
  ret ptr %call7.i.i.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @bl_init_pipefs() local_unnamed_addr #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_register_layoutdriver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !99, !101, !102, !103, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !120, !121, !122, !124, !125, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !147, !148, !149, !151, !153, !155, !156, !157}
!llvm.named.register.sp = !{!158}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @__UNIQUE_ID_file509, !1, !"__UNIQUE_ID_file509", i1 false, i1 false}
!1 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 48, i32 1}
!2 = !{ptr @__UNIQUE_ID_license510, !1, !"__UNIQUE_ID_license510", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author511, !4, !"__UNIQUE_ID_author511", i1 false, i1 false}
!4 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 49, i32 1}
!5 = !{ptr @__UNIQUE_ID_description512, !6, !"__UNIQUE_ID_description512", i1 false, i1 false}
!6 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 50, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 1036, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nfs4blocklayout_exit._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @nfs4blocklayout_exit._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias514, !14, !"__UNIQUE_ID_alias514", i1 false, i1 false}
!14 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 1044, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias515, !16, !"__UNIQUE_ID_alias515", i1 false, i1 false}
!16 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 1045, i32 1}
!17 = !{ptr @__initcall__kmod_blocklayoutdriver__516_1047_nfs4blocklayout_init6, !18, !"__initcall__kmod_blocklayoutdriver__516_1047_nfs4blocklayout_init6", i1 false, i1 false}
!18 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 1047, i32 1}
!19 = !{ptr @__exitcall_nfs4blocklayout_exit, !20, !"__exitcall_nfs4blocklayout_exit", i1 false, i1 false}
!20 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 1048, i32 1}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 984, i32 13}
!23 = !{ptr @scsilayout_type, !24, !"scsilayout_type", i1 false, i1 false}
!24 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 982, i32 38}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 803, i32 2}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @bl_set_layoutdriver._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @bl_set_layoutdriver._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 806, i32 3}
!32 = !{ptr @bl_set_layoutdriver._entry.6, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @bl_set_layoutdriver._entry_ptr.8, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 810, i32 3}
!36 = !{ptr @bl_set_layoutdriver._entry.9, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @bl_set_layoutdriver._entry_ptr.11, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 482, i32 2}
!40 = !{ptr @__bl_alloc_layout_hdr._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @__bl_alloc_layout_hdr._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @__bl_alloc_layout_hdr.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 489, i32 2}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 469, i32 2}
!47 = !{ptr @bl_free_layout_hdr._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @bl_free_layout_hdr._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 682, i32 2}
!51 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @bl_alloc_lseg._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @bl_alloc_lseg._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 703, i32 2}
!56 = !{ptr @bl_alloc_lseg._entry.17, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @bl_alloc_lseg._entry_ptr.19, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 717, i32 3}
!60 = !{ptr @bl_alloc_lseg._entry.20, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @bl_alloc_lseg._entry_ptr.22, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 723, i32 3}
!64 = !{ptr @bl_alloc_lseg._entry.23, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @bl_alloc_lseg._entry_ptr.25, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 746, i32 2}
!68 = !{ptr @bl_alloc_lseg._entry.26, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @bl_alloc_lseg._entry_ptr.28, !67, !"_entry_ptr", i1 false, i1 false}
!70 = distinct !{null, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 648, i32 3}
!74 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @bl_alloc_extent._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @bl_alloc_extent._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 573, i32 3}
!79 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @decode_sector_number._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @decode_sector_number._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 509, i32 2}
!84 = !{ptr @bl_free_lseg._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @bl_free_lseg._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 768, i32 3}
!88 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @bl_return_range._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @bl_return_range._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 775, i32 4}
!93 = !{ptr @bl_return_range._entry.37, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @bl_return_range._entry_ptr.39, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @bl_pg_read_ops, !96, !"bl_pg_read_ops", i1 false, i1 false}
!96 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 944, i32 36}
!97 = !{ptr @bl_pg_write_ops, !98, !"bl_pg_write_ops", i1 false, i1 false}
!98 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 951, i32 36}
!99 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!100 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!101 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!103 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!104 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!105 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 265, i32 2}
!108 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @bl_read_pagelist._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @bl_read_pagelist._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 304, i32 4}
!113 = !{ptr @bl_read_pagelist._entry.45, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @bl_read_pagelist._entry_ptr.47, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @bl_end_par_io_read.__key, !116, !"__key", i1 false, i1 false}
!116 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 243, i32 2}
!117 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 231, i32 2}
!120 = !{ptr @bl_read_cleanup._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @bl_read_cleanup._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 109, i32 3}
!124 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @bl_submit_bio._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @bl_submit_bio._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.54, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 150, i32 2}
!131 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @do_add_page_to_bio._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @do_add_page_to_bio._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 94, i32 2}
!136 = !{ptr @destroy_parallel._entry, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @destroy_parallel._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 409, i32 2}
!140 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @bl_write_pagelist._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @bl_write_pagelist._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @bl_end_par_io_write.__key, !144, !"__key", i1 false, i1 false}
!144 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 388, i32 2}
!145 = !{ptr @.str.59, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 365, i32 2}
!147 = !{ptr @bl_write_cleanup._entry, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @bl_write_cleanup._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.60, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 960, i32 13}
!151 = !{ptr @blocklayout_type, !152, !"blocklayout_type", i1 false, i1 false}
!152 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 958, i32 38}
!153 = !{ptr @.str.61, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/nfs/blocklayout/blocklayout.c", i32 1011, i32 2}
!155 = !{ptr @.str.62, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @nfs4blocklayout_init._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @nfs4blocklayout_init._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{!"sp"}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = !{!"branch_weights", i32 2000, i32 1}
!169 = !{!"branch_weights", i32 1, i32 2000}
!170 = !{i64 2157863778, i64 2157864275, i64 2157863815, i64 2157863871, i64 2157863905, i64 2157863929, i64 2157863970, i64 2157863991, i64 2157864019, i64 2157864053}
!171 = !{i64 2148454980}
!172 = !{i64 2148369420, i64 2148369452, i64 2148369481, i64 2148369515, i64 2148369546, i64 2148369569}
!173 = !{i64 2149331094}
!174 = !{i64 769125, i64 769186}
!175 = !{i64 771857}
!176 = !{i64 772142}
!177 = !{i64 2152732491}
!178 = !{i64 2152732333}
!179 = !{i64 2152732661}
!180 = !{i64 2149997251}
!181 = !{i64 2149381584}
!182 = !{i64 2149381850}
!183 = !{i64 2148366955, i64 2148366987, i64 2148367016, i64 2148367050, i64 2148367081, i64 2148367104}
