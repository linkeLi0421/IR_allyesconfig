; ModuleID = '/llk/IR_all_yes/fs/nfs/filelayout/filelayout.c_pt.bc'
source_filename = "../fs/nfs/filelayout/filelayout.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pnfs_layoutdriver_type = type { %struct.list_head, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nfs_pageio_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pnfs_commit_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_call_ops = type { ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.143 }
%struct.atomic_t = type { i32 }
%union.anon.143 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.nfs4_deviceid_node = type { %struct.hlist_node, %struct.hlist_node, ptr, ptr, i32, i32, %struct.nfs4_deviceid, %struct.callback_head, %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%struct.nfs4_deviceid = type { [16 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.nfs4_filelayout = type { %struct.pnfs_layout_hdr, %struct.pnfs_ds_commit_info }
%struct.pnfs_layout_hdr = type { %struct.refcount_struct, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.nfs4_stateid_struct, i32, i32, i32, i64, ptr, ptr, %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfs4_stateid_struct = type { %union.anon.131, i32 }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { i32, [12 x i8] }
%struct.pnfs_ds_commit_info = type { %struct.list_head, i32, i32, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.nfs4_layoutget_res = type { %struct.nfs4_sequence_res, i32, i32, %struct.pnfs_layout_range, i32, %struct.nfs4_stateid_struct, ptr }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%struct.pnfs_layout_range = type { i32, i64, i64 }
%struct.nfs4_layoutdriver_data = type { ptr, i32, i32 }
%struct.nfs4_filelayout_segment = type { %struct.pnfs_layout_segment, i32, i32, i32, i32, i64, %struct.nfs4_deviceid, ptr, i32, ptr }
%struct.pnfs_layout_segment = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnfs_layout_range, %struct.refcount_struct, i32, i32, ptr }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.144, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.145, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.146, ptr, %struct.address_space, %struct.list_head, %union.anon.147, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.144 = type { i32 }
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
%union.anon.145 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.146 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.147 = type { ptr }
%struct.nfs_pgio_header = type { ptr, ptr, %struct.list_head, ptr, %struct.nfs_writeverf, i32, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rpc_task, %struct.nfs_fattr, %struct.nfs_pgio_args, %struct.nfs_pgio_res, i32, ptr, i64, %struct.nfs_page_array, ptr, i32, i32 }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_write_verifier = type { [8 x i8] }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.123, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.123 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.128, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.128 = type { %struct.anon.130 }
%struct.anon.130 = type { i64 }
%struct.nfs_fsid = type { i64, i64 }
%struct.nfs_pgio_args = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, %struct.nfs4_stateid_struct, i64, i32, i32, ptr, %union.anon.133 }
%struct.nfs4_sequence_args = type { ptr, i8 }
%union.anon.133 = type { %struct.anon.134 }
%struct.anon.134 = type { ptr, [3 x i32], i32 }
%struct.nfs_pgio_res = type { %struct.nfs4_sequence_res, ptr, i64, i32, %union.anon.135 }
%union.anon.135 = type { %struct.anon.136 }
%struct.anon.136 = type { i32, i32 }
%struct.nfs_page_array = type { ptr, i32, [8 x ptr] }
%struct.nfs4_pnfs_ds = type { %struct.list_head, ptr, %struct.list_head, ptr, %struct.refcount_struct, i32 }
%struct.nfs4_file_layout_dsaddr = type { %struct.nfs4_deviceid_node, i32, ptr, i32, [0 x ptr] }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.__kernel_sockaddr_storage = type { %union.anon.121 }
%union.anon.121 = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.nfs_page = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, %struct.kref, i32, %struct.nfs_write_verifier, ptr, ptr, i16 }
%struct.kref = type { %struct.refcount_struct }
%struct.nfs_commit_data = type { %struct.rpc_task, ptr, ptr, %struct.nfs_fattr, %struct.nfs_writeverf, %struct.list_head, %struct.list_head, ptr, %struct.nfs_commitargs, %struct.nfs_commitres, ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, i32 }
%struct.nfs_commitargs = type { %struct.nfs4_sequence_args, ptr, i64, i32, ptr }
%struct.nfs_commitres = type { %struct.nfs4_sequence_res, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfs4_session = type { %struct.nfs4_sessionid, i32, i32, i32, i32, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, ptr }
%struct.nfs4_sessionid = type { [16 x i8] }
%struct.nfs4_channel_attrs = type { i32, i32, i32, i32, i32 }
%struct.nfs4_slot_table = type { ptr, ptr, [32 x i32], %struct.spinlock, %struct.rpc_wait_queue, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, ptr, ptr, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, ptr, %union.anon.126, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.126 = type { %struct.work_struct }
%struct.nfs_pageio_descriptor = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, [1 x %struct.nfs_pgio_mirror], ptr, i32, i16, i8 }
%struct.nfs_pgio_mirror = type { %struct.list_head, i32, i32, i32, i32, i8 }
%struct.nfs_lock_context = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.atomic_t, %struct.callback_head }
%struct.nfs_open_context = type { %struct.nfs_lock_context, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.callback_head }

@__UNIQUE_ID_file697 = internal constant [71 x i8] c"nfs_layout_nfsv41_files.file=fs/nfs/filelayout/nfs_layout_nfsv41_files\00", section ".modinfo", align 1
@__UNIQUE_ID_license698 = internal constant [36 x i8] c"nfs_layout_nfsv41_files.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author699 = internal constant [68 x i8] c"nfs_layout_nfsv41_files.author=Dean Hildebrand <dhildebz@umich.edu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description700 = internal constant [65 x i8] c"nfs_layout_nfsv41_files.description=The NFSv4 file layout driver\00", section ".modinfo", align 1
@nfs4filelayout_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s: NFSv4 File Layout Driver Unregistering...\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfs4filelayout_exit\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fs/nfs/filelayout/filelayout.c\00", [33 x i8] zeroinitializer }, align 32
@nfs4filelayout_exit._entry_ptr = internal global ptr @nfs4filelayout_exit._entry, section ".printk_index", align 4
@filelayout_type = internal global { %struct.pnfs_layoutdriver_type, [48 x i8] } { %struct.pnfs_layoutdriver_type { %struct.list_head zeroinitializer, i32 1, ptr @.str.3, ptr null, i32 8, i32 0, i32 4096, ptr null, ptr null, ptr @filelayout_alloc_layout_hdr, ptr @filelayout_free_layout_hdr, ptr @filelayout_alloc_lseg, ptr @filelayout_free_lseg, ptr null, ptr null, ptr @filelayout_pg_read_ops, ptr @filelayout_pg_write_ops, ptr @filelayout_get_ds_info, ptr @pnfs_nfs_generic_sync, ptr @filelayout_read_pagelist, ptr @filelayout_write_pagelist, ptr @filelayout_free_deviceid_node, ptr @filelayout_alloc_deviceid_node, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias706 = internal constant [48 x i8] c"nfs_layout_nfsv41_files.alias=nfs-layouttype4-1\00", section ".modinfo", align 1
@__initcall__kmod_nfs_layout_nfsv41_files__707_1144_nfs4filelayout_init6 = internal global ptr @nfs4filelayout_init, section ".initcall6.init", align 4
@__exitcall_nfs4filelayout_exit = internal global ptr @nfs4filelayout_exit, section ".exitcall.exit", align 4
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"LAYOUT_NFSV4_1_FILES\00", [43 x i8] zeroinitializer }, align 32
@filelayout_pg_read_ops = internal constant { %struct.nfs_pageio_ops, [36 x i8] } { %struct.nfs_pageio_ops { ptr @filelayout_pg_init_read, ptr @filelayout_pg_test, ptr @pnfs_generic_pg_readpages, ptr null, ptr @pnfs_generic_pg_cleanup, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@filelayout_pg_write_ops = internal constant { %struct.nfs_pageio_ops, [36 x i8] } { %struct.nfs_pageio_ops { ptr @filelayout_pg_init_write, ptr @filelayout_pg_test, ptr @pnfs_generic_pg_writepages, ptr null, ptr @pnfs_generic_pg_cleanup, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@filelayout_commit_ops = internal constant { %struct.pnfs_commit_ops, [32 x i8] } { %struct.pnfs_commit_ops { ptr @filelayout_setup_ds_info, ptr @filelayout_release_ds_info, ptr @filelayout_commit_pagelist, ptr @filelayout_mark_request_commit, ptr @pnfs_generic_clear_request_commit, ptr @pnfs_generic_scan_commit_lists, ptr @pnfs_generic_recover_commit_reqs, ptr @pnfs_generic_search_commit_reqs }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@filelayout_initiate_commit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s ino %lu, how %d cl_count %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"filelayout_initiate_commit\00", [37 x i8] zeroinitializer }, align 32
@filelayout_initiate_commit._entry_ptr = internal global ptr @filelayout_initiate_commit._entry, section ".printk_index", align 4
@filelayout_commit_call_ops = internal constant { %struct.rpc_call_ops, [16 x i8] } { %struct.rpc_call_ops { ptr @filelayout_commit_prepare, ptr @pnfs_generic_write_commit_done, ptr @filelayout_commit_count_stats, ptr @pnfs_generic_commit_release }, [16 x i8] zeroinitializer }, align 32
@__tracepoint_nfs4_pnfs_commit_ds = external dso_local global %struct.tracepoint, align 4
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fs/nfs/filelayout/../nfs4trace.h\00", [63 x i8] zeroinitializer }, align 32
@trace_nfs4_pnfs_commit_ds.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@filelayout_async_handle_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s ERROR %d, Reset session. Exchangeid flags 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"filelayout_async_handle_error\00", [34 x i8] zeroinitializer }, align 32
@filelayout_async_handle_error._entry_ptr = internal global ptr @filelayout_async_handle_error._entry, section ".printk_index", align 4
@filelayout_async_handle_error._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s Invalid layout error %d\0A\00", [36 x i8] zeroinitializer }, align 32
@filelayout_async_handle_error._entry_ptr.13 = internal global ptr @filelayout_async_handle_error._entry.11, section ".printk_index", align 4
@filelayout_async_handle_error._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s DS connection error %d\0A\00", [37 x i8] zeroinitializer }, align 32
@filelayout_async_handle_error._entry_ptr.16 = internal global ptr @filelayout_async_handle_error._entry.14, section ".printk_index", align 4
@filelayout_async_handle_error._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s Retry through MDS. Error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@filelayout_async_handle_error._entry_ptr.19 = internal global ptr @filelayout_async_handle_error._entry.17, section ".printk_index", align 4
@filelayout_alloc_lseg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"--> %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"filelayout_alloc_lseg\00", [42 x i8] zeroinitializer }, align 32
@filelayout_alloc_lseg._entry_ptr = internal global ptr @filelayout_alloc_lseg._entry, section ".printk_index", align 4
@filelayout_decode_layout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: set_layout_map Begin\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"filelayout_decode_layout\00", [39 x i8] zeroinitializer }, align 32
@filelayout_decode_layout._entry_ptr = internal global ptr @filelayout_decode_layout._entry, section ".printk_index", align 4
@filelayout_decode_layout._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: nfl_util 0x%X num_fh %u fsi %u po %llu\0A\00", [52 x i8] zeroinitializer }, align 32
@filelayout_decode_layout._entry_ptr.26 = internal global ptr @filelayout_decode_layout._entry.24, section ".printk_index", align 4
@filelayout_decode_layout._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013NFS: Too big fh %d received %d\0A\00", [62 x i8] zeroinitializer }, align 32
@filelayout_decode_layout._entry_ptr.29 = internal global ptr @filelayout_decode_layout._entry.27, section ".printk_index", align 4
@filelayout_decode_layout._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.2, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DEBUG: %s: fh len %d\0A\00", [42 x i8] zeroinitializer }, align 32
@filelayout_decode_layout._entry_ptr.32 = internal global ptr @filelayout_decode_layout._entry.30, section ".printk_index", align 4
@filelayout_check_layout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.34, ptr @.str.2, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"filelayout_check_layout\00", [40 x i8] zeroinitializer }, align 32
@filelayout_check_layout._entry_ptr = internal global ptr @filelayout_check_layout._entry, section ".printk_index", align 4
@filelayout_check_layout._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s Only whole file layouts supported. Use MDS i/o\0A\00", [45 x i8] zeroinitializer }, align 32
@filelayout_check_layout._entry_ptr.37 = internal global ptr @filelayout_check_layout._entry.35, section ".printk_index", align 4
@filelayout_check_layout._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.2, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s pattern_offset %lld too large\0A\00", [62 x i8] zeroinitializer }, align 32
@filelayout_check_layout._entry_ptr.40 = internal global ptr @filelayout_check_layout._entry.38, section ".printk_index", align 4
@filelayout_check_layout._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str.2, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s Invalid stripe unit (%u)\0A\00", [35 x i8] zeroinitializer }, align 32
@filelayout_check_layout._entry_ptr.43 = internal global ptr @filelayout_check_layout._entry.41, section ".printk_index", align 4
@filelayout_check_layout._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.34, ptr @.str.2, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"--> %s returns %d\0A\00", [45 x i8] zeroinitializer }, align 32
@filelayout_check_layout._entry_ptr.46 = internal global ptr @filelayout_check_layout._entry.44, section ".printk_index", align 4
@filelayout_free_lseg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.47, ptr @.str.2, i32 746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"filelayout_free_lseg\00", [43 x i8] zeroinitializer }, align 32
@filelayout_free_lseg._entry_ptr = internal global ptr @filelayout_free_lseg._entry, section ".printk_index", align 4
@filelayout_check_deviceid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s Bad first_stripe_index %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"filelayout_check_deviceid\00", [38 x i8] zeroinitializer }, align 32
@filelayout_check_deviceid._entry_ptr = internal global ptr @filelayout_check_deviceid._entry, section ".printk_index", align 4
@filelayout_check_deviceid._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s num_fh %u not valid for given packing\0A\00", [54 x i8] zeroinitializer }, align 32
@filelayout_check_deviceid._entry_ptr.52 = internal global ptr @filelayout_check_deviceid._entry.50, section ".printk_index", align 4
@filelayout_pg_test.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@filelayout_read_pagelist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"--> %s ino %lu pgbase %u req %zu@%llu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"filelayout_read_pagelist\00", [39 x i8] zeroinitializer }, align 32
@filelayout_read_pagelist._entry_ptr = internal global ptr @filelayout_read_pagelist._entry, section ".printk_index", align 4
@filelayout_read_pagelist._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s USE DS: %s cl_count %d\0A\00", [37 x i8] zeroinitializer }, align 32
@filelayout_read_pagelist._entry_ptr.57 = internal global ptr @filelayout_read_pagelist._entry.55, section ".printk_index", align 4
@filelayout_read_call_ops = internal constant { %struct.rpc_call_ops, [16 x i8] } { %struct.rpc_call_ops { ptr @filelayout_read_prepare, ptr @filelayout_read_call_done, ptr @filelayout_read_count_stats, ptr @pnfs_generic_rw_release }, [16 x i8] zeroinitializer }, align 32
@filelayout_read_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s task %u reset io to MDS\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"filelayout_read_prepare\00", [40 x i8] zeroinitializer }, align 32
@filelayout_read_prepare._entry_ptr = internal global ptr @filelayout_read_prepare._entry, section ".printk_index", align 4
@filelayout_reset_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s Reset task %5u for i/o through MDS (req %s/%llu, %u bytes @ offset %llu)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"filelayout_reset_read\00", [42 x i8] zeroinitializer }, align 32
@filelayout_reset_read._entry_ptr = internal global ptr @filelayout_reset_read._entry, section ".printk_index", align 4
@__tracepoint_nfs4_pnfs_read = external dso_local global %struct.tracepoint, align 4
@trace_nfs4_pnfs_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@filelayout_write_pagelist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s ino %lu sync %d req %zu@%llu DS: %s cl_count %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"filelayout_write_pagelist\00", [38 x i8] zeroinitializer }, align 32
@filelayout_write_pagelist._entry_ptr = internal global ptr @filelayout_write_pagelist._entry, section ".printk_index", align 4
@filelayout_write_call_ops = internal constant { %struct.rpc_call_ops, [16 x i8] } { %struct.rpc_call_ops { ptr @filelayout_write_prepare, ptr @filelayout_write_call_done, ptr @filelayout_write_count_stats, ptr @pnfs_generic_rw_release }, [16 x i8] zeroinitializer }, align 32
@__tracepoint_nfs4_pnfs_write = external dso_local global %struct.tracepoint, align 4
@trace_nfs4_pnfs_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@filelayout_reset_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.64, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"filelayout_reset_write\00", [41 x i8] zeroinitializer }, align 32
@filelayout_reset_write._entry_ptr = internal global ptr @filelayout_reset_write._entry, section ".printk_index", align 4
@filelayout_set_layoutcommit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s inode %lu pls_end_pos %lu\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"filelayout_set_layoutcommit\00", [36 x i8] zeroinitializer }, align 32
@filelayout_set_layoutcommit._entry_ptr = internal global ptr @filelayout_set_layoutcommit._entry, section ".printk_index", align 4
@filelayout_write_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.67, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"filelayout_write_prepare\00", [39 x i8] zeroinitializer }, align 32
@filelayout_write_prepare._entry_ptr = internal global ptr @filelayout_write_prepare._entry, section ".printk_index", align 4
@nfs4filelayout_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 1131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s: NFSv4 File Layout Driver Registering...\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfs4filelayout_init\00", [44 x i8] zeroinitializer }, align 32
@nfs4filelayout_init._entry_ptr = internal global ptr @nfs4filelayout_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 4294955295, i64 4294967285]
@__sancov_gen_cov_switch_values.73 = internal global [26 x i64] [i64 24, i64 32, i64 4294957213, i64 4294957216, i64 4294957218, i64 4294957219, i64 4294957220, i64 4294957228, i64 4294957233, i64 4294957241, i64 4294957243, i64 4294957244, i64 4294957282, i64 4294957283, i64 4294957288, i64 4294966775, i64 4294967180, i64 4294967183, i64 4294967184, i64 4294967185, i64 4294967186, i64 4294967195, i64 4294967264, i64 4294967275, i64 4294967283, i64 4294967291]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 4294955295, i64 4294967285]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 4294955295, i64 4294967285]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1137, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"filelayout_type\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1108, i32 38 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1110, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant [23 x i8] c"filelayout_pg_read_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 906, i32 36 }
@___asan_gen_.99 = private unnamed_addr constant [24 x i8] c"filelayout_pg_write_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 913, i32 36 }
@___asan_gen_.102 = private unnamed_addr constant [22 x i8] c"filelayout_commit_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1097, i32 37 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 995, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [27 x i8] c"filelayout_commit_call_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 440, i32 34 }
@___asan_gen_.121 = private unnamed_addr constant [36 x i8] c"../fs/nfs/filelayout/../nfs4trace.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1681, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 108, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 145, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 164, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 184, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 193, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 771, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 660, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 692, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 720, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 729, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 604, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 609, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 615, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 621, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 628, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 746, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 560, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 569, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 457, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 472, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [25 x i8] c"filelayout_read_call_ops\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 426, i32 34 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 275, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 111, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 515, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant [26 x i8] c"filelayout_write_call_ops\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 433, i32 34 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 94, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 242, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 373, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.316 = private constant [34 x i8] c"../fs/nfs/filelayout/filelayout.c\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1130, i32 2 }
@llvm.compiler.used = appending global [116 x ptr] [ptr @__UNIQUE_ID_alias706, ptr @__UNIQUE_ID_author699, ptr @__UNIQUE_ID_description700, ptr @__UNIQUE_ID_file697, ptr @__UNIQUE_ID_license698, ptr @__exitcall_nfs4filelayout_exit, ptr @__initcall__kmod_nfs_layout_nfsv41_files__707_1144_nfs4filelayout_init6, ptr @filelayout_alloc_lseg._entry, ptr @filelayout_alloc_lseg._entry_ptr, ptr @filelayout_async_handle_error._entry, ptr @filelayout_async_handle_error._entry.11, ptr @filelayout_async_handle_error._entry.14, ptr @filelayout_async_handle_error._entry.17, ptr @filelayout_async_handle_error._entry_ptr, ptr @filelayout_async_handle_error._entry_ptr.13, ptr @filelayout_async_handle_error._entry_ptr.16, ptr @filelayout_async_handle_error._entry_ptr.19, ptr @filelayout_check_deviceid._entry, ptr @filelayout_check_deviceid._entry.50, ptr @filelayout_check_deviceid._entry_ptr, ptr @filelayout_check_deviceid._entry_ptr.52, ptr @filelayout_check_layout._entry, ptr @filelayout_check_layout._entry.35, ptr @filelayout_check_layout._entry.38, ptr @filelayout_check_layout._entry.41, ptr @filelayout_check_layout._entry.44, ptr @filelayout_check_layout._entry_ptr, ptr @filelayout_check_layout._entry_ptr.37, ptr @filelayout_check_layout._entry_ptr.40, ptr @filelayout_check_layout._entry_ptr.43, ptr @filelayout_check_layout._entry_ptr.46, ptr @filelayout_decode_layout._entry, ptr @filelayout_decode_layout._entry.24, ptr @filelayout_decode_layout._entry.27, ptr @filelayout_decode_layout._entry.30, ptr @filelayout_decode_layout._entry_ptr, ptr @filelayout_decode_layout._entry_ptr.26, ptr @filelayout_decode_layout._entry_ptr.29, ptr @filelayout_decode_layout._entry_ptr.32, ptr @filelayout_free_lseg._entry, ptr @filelayout_free_lseg._entry_ptr, ptr @filelayout_initiate_commit._entry, ptr @filelayout_initiate_commit._entry_ptr, ptr @filelayout_read_pagelist._entry, ptr @filelayout_read_pagelist._entry.55, ptr @filelayout_read_pagelist._entry_ptr, ptr @filelayout_read_pagelist._entry_ptr.57, ptr @filelayout_read_prepare._entry, ptr @filelayout_read_prepare._entry_ptr, ptr @filelayout_reset_read._entry, ptr @filelayout_reset_read._entry_ptr, ptr @filelayout_reset_write._entry, ptr @filelayout_reset_write._entry_ptr, ptr @filelayout_set_layoutcommit._entry, ptr @filelayout_set_layoutcommit._entry_ptr, ptr @filelayout_write_pagelist._entry, ptr @filelayout_write_pagelist._entry_ptr, ptr @filelayout_write_prepare._entry, ptr @filelayout_write_prepare._entry_ptr, ptr @nfs4filelayout_exit, ptr @nfs4filelayout_exit._entry, ptr @nfs4filelayout_exit._entry_ptr, ptr @nfs4filelayout_init._entry, ptr @nfs4filelayout_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @filelayout_type, ptr @.str.3, ptr @filelayout_pg_read_ops, ptr @filelayout_pg_write_ops, ptr @filelayout_commit_ops, ptr @.str.4, ptr @.str.5, ptr @filelayout_commit_call_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @filelayout_read_call_ops, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @filelayout_write_call_ops, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4filelayout_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_type to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_pg_read_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_pg_write_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_commit_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_initiate_commit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_commit_call_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_async_handle_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_async_handle_error._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_async_handle_error._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_async_handle_error._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_alloc_lseg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_decode_layout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_decode_layout._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_decode_layout._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_decode_layout._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_check_layout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_check_layout._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_check_layout._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_check_layout._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_check_layout._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_free_lseg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_check_deviceid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_check_deviceid._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_read_pagelist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_read_pagelist._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_read_call_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_read_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_reset_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_write_pagelist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_write_call_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_reset_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_set_layoutcommit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filelayout_write_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4filelayout_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @filelayout_test_devid_unavailable(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %node, i32 0, i32 4
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef %node) #12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %2 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %call1, %lor.rhs ]
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nfs4filelayout_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #15
  tail call void @pnfs_unregister_layoutdriver(ptr noundef nonnull @filelayout_type) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_unregister_layoutdriver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs4filelayout_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #15
  %call1 = tail call i32 @pnfs_register_layoutdriver(ptr noundef nonnull @filelayout_type) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @filelayout_alloc_layout_hdr(ptr nocapture noundef readnone %inode, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp_flags, 256
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !182

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %entry
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and6.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 8
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 136) #16
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %commit_info = getelementptr inbounds %struct.nfs4_filelayout, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %commit_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %commit_info, ptr %commit_info, align 8
  %prev.i.i = getelementptr inbounds %struct.nfs4_filelayout, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %commit_info, ptr %prev.i.i, align 4
  %ops = getelementptr inbounds %struct.nfs4_filelayout, ptr %call7.i.i, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @filelayout_commit_ops, ptr %ops, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @filelayout_free_layout_hdr(ptr noundef %lo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %lo, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %plh_rcu = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %lo, i32 0, i32 16
  tail call void @kvfree_call_rcu(ptr noundef %plh_rcu, ptr noundef nonnull inttoptr (i32 104 to ptr)) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @filelayout_alloc_lseg(ptr nocapture noundef readnone %layoutid, ptr nocapture noundef readonly %lgr, i32 noundef %gfp_flags) #0 align 64 {
entry:
  %stream.i = alloca %struct.xdr_stream, align 4
  %buf.i = alloca %struct.xdr_buf, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %0 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !182

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #15
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %or.i = or i32 %gfp_flags, 256
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %do.end5.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !182

do.end5.kzalloc.exit_crit_edge:                   ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %do.end5
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and6.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %do.end5.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %do.end5.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 7
  %1 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef %or.i, i32 noundef 120) #16
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end9

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %kzalloc.exit
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %stream.i) #12
  %3 = call ptr @memset(ptr %stream.i, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %buf.i) #12
  %4 = call ptr @memset(ptr %buf.i, i32 255, i32 44)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %5 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end9.do.end5.i_crit_edge, label %do.end.i, !prof !182

if.end9.do.end5.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end5.i

do.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #15
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %if.end9.do.end5.i_crit_edge
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef %gfp_flags, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %tobool7.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool7.not.i, label %filelayout_decode_layout.exit.thread, label %if.end9.i

filelayout_decode_layout.exit.thread:             ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %buf.i) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %stream.i) #12
  br label %if.then13

if.end9.i:                                        ; preds = %do.end5.i
  %layoutp.i = getelementptr inbounds %struct.nfs4_layoutget_res, ptr %lgr, i32 0, i32 6
  %6 = ptrtoint ptr %layoutp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %layoutp.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %len.i = getelementptr inbounds %struct.nfs4_layoutdriver_data, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  call void @xdr_init_decode_pages(ptr noundef nonnull %stream.i, ptr noundef nonnull %buf.i, ptr noundef %9, i32 noundef %11) #12
  %call.i.i = call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i) #12
  %scratch.i.i.i = getelementptr inbounds %struct.xdr_stream, ptr %stream.i, i32 0, i32 4
  %12 = ptrtoint ptr %scratch.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %scratch.i.i.i, align 4
  %iov_len.i.i.i = getelementptr inbounds %struct.xdr_stream, ptr %stream.i, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %iov_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4096, ptr %iov_len.i.i.i, align 4
  %call11.i = call ptr @xdr_inline_decode(ptr noundef nonnull %stream.i, i32 noundef 36) #12
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %if.end9.i.filelayout_decode_layout.exit.thread51_crit_edge, label %if.end22.i, !prof !183

if.end9.i.filelayout_decode_layout.exit.thread51_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %filelayout_decode_layout.exit.thread51

if.end22.i:                                       ; preds = %if.end9.i
  %deviceid.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %call7.i.i, i32 0, i32 6
  %14 = call ptr @memcpy(ptr %deviceid.i, ptr %call11.i, i32 16)
  %add.ptr.i = getelementptr i32, ptr %call11.i, i32 4
  call void @nfs4_print_deviceid(ptr noundef %deviceid.i) #12
  %incdec.ptr.i = getelementptr i32, ptr %call11.i, i32 5
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i, align 4
  %and25.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end22.i.if.end28.i_crit_edge, label %if.then27.i

if.end22.i.if.end28.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.then27.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  %commit_through_mds.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %commit_through_mds.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %commit_through_mds.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then27.i, %if.end22.i.if.end28.i_crit_edge
  %and29.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  %spec.select15.i = select i1 %tobool30.not.i, i32 1, i32 2
  %18 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select15.i, ptr %18, align 8
  %and34.i = and i32 %16, -64
  %stripe_unit.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %stripe_unit.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and34.i, ptr %stripe_unit.i, align 8
  %incdec.ptr35.i = getelementptr i32, ptr %call11.i, i32 6
  %21 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %incdec.ptr.i, align 4
  %first_stripe_index.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %call7.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %first_stripe_index.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %first_stripe_index.i, align 4
  %pattern_offset.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %incdec.ptr35.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %incdec.ptr35.i, align 1
  %26 = ptrtoint ptr %pattern_offset.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %pattern_offset.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %call11.i, i32 8
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i, align 4
  %num_fh.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %call7.i.i, i32 0, i32 8
  %29 = ptrtoint ptr %num_fh.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %num_fh.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %30 = load i32, ptr @nfs_debug, align 4
  %and41.i = and i32 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.end28.i.do.end60.i_crit_edge, label %do.end52.i, !prof !182

if.end28.i.do.end60.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i

do.end52.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  %call57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef %16, i32 noundef %28, i32 noundef %22, i64 noundef %25) #15
  %31 = ptrtoint ptr %num_fh.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr.i = load i32, ptr %num_fh.i, align 4
  br label %do.end60.i

do.end60.i:                                       ; preds = %do.end52.i, %if.end28.i.do.end60.i_crit_edge
  %32 = phi i32 [ %.pr.i, %do.end52.i ], [ %28, %if.end28.i.do.end60.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %32)
  %cmp.i = icmp ugt i32 %32, 4096
  br i1 %cmp.i, label %do.end60.i.filelayout_decode_layout.exit.thread51_crit_edge, label %if.end63.i

do.end60.i.filelayout_decode_layout.exit.thread51_crit_edge: ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %filelayout_decode_layout.exit.thread51

if.end63.i:                                       ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp65.not.i = icmp eq i32 %32, 0
  br i1 %cmp65.not.i, label %if.end63.i.if.end73.i_crit_edge, label %if.end7.i.i.i

if.end63.i.if.end73.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73.i

if.end7.i.i.i:                                    ; preds = %if.end63.i
  %33 = shl nuw nsw i32 %32, 2
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef %or.i) #17
  %fh_array.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %call7.i.i, i32 0, i32 9
  %34 = ptrtoint ptr %fh_array.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call8.i.i.i, ptr %fh_array.i, align 8
  %tobool70.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool70.not.i, label %if.end7.i.i.i.filelayout_decode_layout.exit.thread51_crit_edge, label %if.end7.i.i.i.if.end73.i_crit_edge

if.end7.i.i.i.if.end73.i_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73.i

if.end7.i.i.i.filelayout_decode_layout.exit.thread51_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %filelayout_decode_layout.exit.thread51

if.end73.i:                                       ; preds = %if.end7.i.i.i.if.end73.i_crit_edge, %if.end63.i.if.end73.i_crit_edge
  %35 = ptrtoint ptr %num_fh.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_fh.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp756.not.i = icmp eq i32 %36, 0
  br i1 %cmp756.not.i, label %if.end73.i.lor.lhs.false_crit_edge, label %for.body.lr.ph.i

if.end73.i.lor.lhs.false_crit_edge:               ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.body.lr.ph.i:                                 ; preds = %if.end73.i
  %and2.i.i.i26 = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i26)
  %tobool3.not.i.i.i27 = icmp eq i32 %and2.i.i.i26, 0
  %and6.i.i.i28 = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i28)
  %tobool7.not.i.i.i29 = icmp eq i32 %and6.i.i.i28, 0
  %..i.i.i30 = select i1 %tobool7.not.i.i.i29, i32 1, i32 2
  %fh_array77.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %call7.i.i, i32 0, i32 9
  %spec.select.i = select i1 %tobool3.not.i.i.i27, i32 %..i.i.i30, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %cmp.i19.i.i, label %for.body.i.kmalloc.exit.i_crit_edge, label %if.end.i20.i.i31, !prof !182

for.body.i.kmalloc.exit.i_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kmalloc.exit.i

if.end.i20.i.i31:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kmalloc.exit.i

kmalloc.exit.i:                                   ; preds = %if.end.i20.i.i31, %for.body.i.kmalloc.exit.i_crit_edge
  %retval.0.i21.i.i32 = phi i32 [ 0, %for.body.i.kmalloc.exit.i_crit_edge ], [ %spec.select.i, %if.end.i20.i.i31 ]
  %arrayidx6.i.i33 = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i32, i32 8
  %37 = ptrtoint ptr %arrayidx6.i.i33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx6.i.i33, align 4
  %call7.i.i34 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef %gfp_flags, i32 noundef 130) #16
  %39 = ptrtoint ptr %fh_array77.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fh_array77.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %40, i32 %i.07.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i34, ptr %arrayidx.i, align 4
  %42 = load ptr, ptr %fh_array77.i, align 8
  %arrayidx79.i = getelementptr ptr, ptr %42, i32 %i.07.i
  %43 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx79.i, align 4
  %tobool80.not.i = icmp eq ptr %44, null
  br i1 %tobool80.not.i, label %kmalloc.exit.i.filelayout_decode_layout.exit.thread51_crit_edge, label %if.end82.i

kmalloc.exit.i.filelayout_decode_layout.exit.thread51_crit_edge: ; preds = %kmalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %filelayout_decode_layout.exit.thread51

if.end82.i:                                       ; preds = %kmalloc.exit.i
  %call83.i = call ptr @xdr_inline_decode(ptr noundef nonnull %stream.i, i32 noundef 4) #12
  %tobool84.not.i = icmp eq ptr %call83.i, null
  br i1 %tobool84.not.i, label %if.end82.i.filelayout_decode_layout.exit.thread51_crit_edge, label %if.end94.i, !prof !183

if.end82.i.filelayout_decode_layout.exit.thread51_crit_edge: ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %filelayout_decode_layout.exit.thread51

if.end94.i:                                       ; preds = %if.end82.i
  %45 = ptrtoint ptr %call83.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call83.i, align 4
  %conv.i = trunc i32 %46 to i16
  %47 = ptrtoint ptr %fh_array77.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fh_array77.i, align 8
  %arrayidx98.i = getelementptr ptr, ptr %48, i32 %i.07.i
  %49 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx98.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i, ptr %50, align 2
  %52 = load ptr, ptr %fh_array77.i, align 8
  %arrayidx100.i = getelementptr ptr, ptr %52, i32 %i.07.i
  %53 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx100.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %54, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %56)
  %cmp103.i = icmp ugt i16 %56, 128
  %conv102.le.i = zext i16 %56 to i32
  br i1 %cmp103.i, label %do.end108.i, label %if.end115.i

do.end108.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv102.le.i.le = zext i16 %56 to i32
  %call114.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %i.07.i, i32 noundef %conv102.le.i.le) #15
  br label %filelayout_decode_layout.exit.thread51

if.end115.i:                                      ; preds = %if.end94.i
  %call120.i = call ptr @xdr_inline_decode(ptr noundef nonnull %stream.i, i32 noundef %conv102.le.i) #12
  %tobool121.not.i = icmp eq ptr %call120.i, null
  br i1 %tobool121.not.i, label %if.end115.i.filelayout_decode_layout.exit.thread51_crit_edge, label %if.end131.i, !prof !183

if.end115.i.filelayout_decode_layout.exit.thread51_crit_edge: ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %filelayout_decode_layout.exit.thread51

if.end131.i:                                      ; preds = %if.end115.i
  %57 = ptrtoint ptr %fh_array77.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fh_array77.i, align 8
  %arrayidx133.i = getelementptr ptr, ptr %58, i32 %i.07.i
  %59 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx133.i, align 4
  %data.i = getelementptr inbounds %struct.nfs_fh, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %60, align 2
  %conv137.i = zext i16 %62 to i32
  %63 = call ptr @memcpy(ptr %data.i, ptr %call120.i, i32 %conv137.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %64 = load i32, ptr @nfs_debug, align 4
  %and139.i = and i32 %64, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139.i)
  %tobool140.not.i = icmp eq i32 %and139.i, 0
  br i1 %tobool140.not.i, label %if.end131.i.for.inc.i_crit_edge, label %do.end150.i, !prof !182

if.end131.i.for.inc.i_crit_edge:                  ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

do.end150.i:                                      ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %fh_array77.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fh_array77.i, align 8
  %arrayidx153.i = getelementptr ptr, ptr %66, i32 %i.07.i
  %67 = ptrtoint ptr %arrayidx153.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx153.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %68, align 2
  %conv155.i = zext i16 %70 to i32
  %call156.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.23, i32 noundef %conv155.i) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end150.i, %if.end131.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.07.i, 1
  %71 = ptrtoint ptr %num_fh.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_fh.i, align 4
  %cmp75.i = icmp ult i32 %inc.i, %72
  br i1 %cmp75.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.lor.lhs.false_crit_edge

for.inc.i.lor.lhs.false_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

filelayout_decode_layout.exit.thread51:           ; preds = %if.end115.i.filelayout_decode_layout.exit.thread51_crit_edge, %do.end108.i, %if.end82.i.filelayout_decode_layout.exit.thread51_crit_edge, %kmalloc.exit.i.filelayout_decode_layout.exit.thread51_crit_edge, %if.end7.i.i.i.filelayout_decode_layout.exit.thread51_crit_edge, %do.end60.i.filelayout_decode_layout.exit.thread51_crit_edge, %if.end9.i.filelayout_decode_layout.exit.thread51_crit_edge
  call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %buf.i) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %stream.i) #12
  br label %if.then13

lor.lhs.false:                                    ; preds = %for.inc.i.lor.lhs.false_crit_edge, %if.end73.i.lor.lhs.false_crit_edge
  call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %buf.i) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %stream.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %73 = load i32, ptr @nfs_debug, align 4
  %and.i35 = and i32 %73, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i35)
  %tobool.not.i36 = icmp eq i32 %and.i35, 0
  br i1 %tobool.not.i36, label %lor.lhs.false.do.end5.i39_crit_edge, label %do.end.i38, !prof !182

lor.lhs.false.do.end5.i39_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end5.i39

do.end.i38:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %call.i37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.34) #15
  br label %do.end5.i39

do.end5.i39:                                      ; preds = %do.end.i38, %lor.lhs.false.do.end5.i39_crit_edge
  %offset.i = getelementptr inbounds %struct.nfs4_layoutget_res, ptr %lgr, i32 0, i32 3, i32 1
  %74 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %offset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %75)
  %cmp.not.i = icmp eq i64 %75, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %do.end5.i39.do.body9.i_crit_edge

do.end5.i39.do.body9.i_crit_edge:                 ; preds = %do.end5.i39
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body9.i

lor.lhs.false.i:                                  ; preds = %do.end5.i39
  %length.i = getelementptr inbounds %struct.nfs4_layoutget_res, ptr %lgr, i32 0, i32 3, i32 2
  %76 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %77)
  %cmp7.not.i = icmp eq i64 %77, -1
  br i1 %cmp7.not.i, label %if.end27.i, label %lor.lhs.false.i.do.body9.i_crit_edge

lor.lhs.false.i.do.body9.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body9.i

do.body9.i:                                       ; preds = %lor.lhs.false.i.do.body9.i_crit_edge, %do.end5.i39.do.body9.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %78 = load i32, ptr @nfs_debug, align 4
  %and10.i = and i32 %78, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %do.body9.i.do.body74.i_crit_edge, label %do.end21.i, !prof !182

do.body9.i.do.body74.i_crit_edge:                 ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body74.i

do.end21.i:                                       ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #14
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34) #15
  br label %do.body74.i

if.end27.i:                                       ; preds = %lor.lhs.false.i
  %79 = ptrtoint ptr %pattern_offset.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %pattern_offset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %80)
  %cmp30.not.i = icmp eq i64 %80, 0
  br i1 %cmp30.not.i, label %if.end51.i, label %do.body32.i

do.body32.i:                                      ; preds = %if.end27.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %81 = load i32, ptr @nfs_debug, align 4
  %and33.i = and i32 %81, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %do.body32.i.do.body74.i_crit_edge, label %do.end44.i, !prof !182

do.body32.i.do.body74.i_crit_edge:                ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body74.i

do.end44.i:                                       ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #14
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.34, i64 noundef %80) #15
  br label %do.body74.i

if.end51.i:                                       ; preds = %if.end27.i
  %82 = ptrtoint ptr %stripe_unit.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %stripe_unit.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool52.not.i = icmp eq i32 %83, 0
  br i1 %tobool52.not.i, label %do.body54.i, label %if.end51.i.do.body74.i_crit_edge

if.end51.i.do.body74.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body74.i

do.body54.i:                                      ; preds = %if.end51.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %84 = load i32, ptr @nfs_debug, align 4
  %and55.i = and i32 %84, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %do.body54.i.do.body74.i_crit_edge, label %do.end66.i, !prof !182

do.body54.i.do.body74.i_crit_edge:                ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body74.i

do.end66.i:                                       ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #14
  %call69.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.34, i32 noundef 0) #15
  br label %do.body74.i

do.body74.i:                                      ; preds = %do.end66.i, %do.body54.i.do.body74.i_crit_edge, %if.end51.i.do.body74.i_crit_edge, %do.end44.i, %do.body32.i.do.body74.i_crit_edge, %do.end21.i, %do.body9.i.do.body74.i_crit_edge
  %tobool12.not = phi i1 [ false, %do.end66.i ], [ false, %do.body54.i.do.body74.i_crit_edge ], [ true, %if.end51.i.do.body74.i_crit_edge ], [ false, %do.end44.i ], [ false, %do.body32.i.do.body74.i_crit_edge ], [ false, %do.end21.i ], [ false, %do.body9.i.do.body74.i_crit_edge ]
  %status.0.i = phi i32 [ -22, %do.end66.i ], [ -22, %do.body54.i.do.body74.i_crit_edge ], [ 0, %if.end51.i.do.body74.i_crit_edge ], [ -22, %do.end44.i ], [ -22, %do.body32.i.do.body74.i_crit_edge ], [ -22, %do.end21.i ], [ -22, %do.body9.i.do.body74.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %85 = load i32, ptr @nfs_debug, align 4
  %and75.i = and i32 %85, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  br i1 %tobool76.not.i, label %do.body74.i.filelayout_check_layout.exit_crit_edge, label %do.end86.i, !prof !182

do.body74.i.filelayout_check_layout.exit_crit_edge: ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %filelayout_check_layout.exit

do.end86.i:                                       ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #14
  %call88.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.34, i32 noundef %status.0.i) #15
  br label %filelayout_check_layout.exit

filelayout_check_layout.exit:                     ; preds = %do.end86.i, %do.body74.i.filelayout_check_layout.exit_crit_edge
  br i1 %tobool12.not, label %filelayout_check_layout.exit.cleanup_crit_edge, label %filelayout_check_layout.exit.if.then13_crit_edge

filelayout_check_layout.exit.if.then13_crit_edge: ; preds = %filelayout_check_layout.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

filelayout_check_layout.exit.cleanup_crit_edge:   ; preds = %filelayout_check_layout.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then13:                                        ; preds = %filelayout_check_layout.exit.if.then13_crit_edge, %filelayout_decode_layout.exit.thread51, %filelayout_decode_layout.exit.thread
  %fh_array.i42 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %call7.i.i, i32 0, i32 9
  %86 = ptrtoint ptr %fh_array.i42 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %fh_array.i42, align 8
  %tobool.not.i43 = icmp eq ptr %87, null
  br i1 %tobool.not.i43, label %if.then13._filelayout_free_lseg.exit_crit_edge, label %for.cond.preheader.i

if.then13._filelayout_free_lseg.exit_crit_edge:   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %_filelayout_free_lseg.exit

for.cond.preheader.i:                             ; preds = %if.then13
  %num_fh.i44 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %call7.i.i, i32 0, i32 8
  %88 = ptrtoint ptr %num_fh.i44 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_fh.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp16.not.i = icmp eq i32 %89, 0
  br i1 %cmp16.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i46_crit_edge

for.cond.preheader.i.for.body.i46_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i46

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i46:                                     ; preds = %if.end.i.for.body.i46_crit_edge, %for.cond.preheader.i.for.body.i46_crit_edge
  %i.017.i = phi i32 [ %inc.i47, %if.end.i.for.body.i46_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i46_crit_edge ]
  %90 = ptrtoint ptr %fh_array.i42 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %fh_array.i42, align 8
  %arrayidx.i45 = getelementptr ptr, ptr %91, i32 %i.017.i
  %92 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i45, align 4
  %tobool2.not.i = icmp eq ptr %93, null
  br i1 %tobool2.not.i, label %for.body.i46.for.end.i_crit_edge, label %if.end.i

for.body.i46.for.end.i_crit_edge:                 ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i46
  call void @kfree(ptr noundef nonnull %93) #12
  %inc.i47 = add nuw i32 %i.017.i, 1
  %94 = ptrtoint ptr %num_fh.i44 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %num_fh.i44, align 4
  %cmp.i48 = icmp ult i32 %inc.i47, %95
  br i1 %cmp.i48, label %if.end.i.for.body.i46_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end.i.for.body.i46_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i46

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %for.body.i46.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %96 = ptrtoint ptr %fh_array.i42 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %fh_array.i42, align 8
  call void @kfree(ptr noundef %97) #12
  br label %_filelayout_free_lseg.exit

_filelayout_free_lseg.exit:                       ; preds = %for.end.i, %if.then13._filelayout_free_lseg.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %_filelayout_free_lseg.exit, %filelayout_check_layout.exit.cleanup_crit_edge, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %_filelayout_free_lseg.exit ], [ null, %kzalloc.exit.cleanup_crit_edge ], [ %call7.i.i, %filelayout_check_layout.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @filelayout_free_lseg(ptr noundef %lseg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %0 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !182

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.47) #15
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %dsaddr = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %lseg, i32 0, i32 7
  %1 = ptrtoint ptr %dsaddr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dsaddr, align 8
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %do.end6.if.end9_crit_edge, label %if.then7

do.end6.if.end9_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nfs4_fl_put_deviceid(ptr noundef nonnull %2) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.end6.if.end9_crit_edge
  %pls_range = getelementptr inbounds %struct.pnfs_layout_segment, ptr %lseg, i32 0, i32 3
  %3 = ptrtoint ptr %pls_range to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pls_range, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp10 = icmp eq i32 %4, 2
  br i1 %cmp10, label %if.then11, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %pls_layout = getelementptr inbounds %struct.pnfs_layout_segment, ptr %lseg, i32 0, i32 7
  %5 = ptrtoint ptr %pls_layout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pls_layout, align 4
  %plh_inode = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %plh_inode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %plh_inode, align 4
  %i_lock = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #12
  %commit_info = getelementptr inbounds %struct.nfs4_filelayout, ptr %6, i32 0, i32 1
  tail call void @pnfs_generic_ds_cinfo_release_lseg(ptr noundef %commit_info, ptr noundef %lseg) #12
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  %fh_array.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %lseg, i32 0, i32 9
  %9 = ptrtoint ptr %fh_array.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fh_array.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end14._filelayout_free_lseg.exit_crit_edge, label %for.cond.preheader.i

if.end14._filelayout_free_lseg.exit_crit_edge:    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %_filelayout_free_lseg.exit

for.cond.preheader.i:                             ; preds = %if.end14
  %num_fh.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %lseg, i32 0, i32 8
  %11 = ptrtoint ptr %num_fh.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_fh.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp16.not.i = icmp eq i32 %12, 0
  br i1 %cmp16.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %fh_array.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fh_array.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %14, i32 %i.017.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %16, null
  br i1 %tobool2.not.i, label %for.body.i.for.end.i_crit_edge, label %if.end.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  tail call void @kfree(ptr noundef nonnull %16) #12
  %inc.i = add nuw i32 %i.017.i, 1
  %17 = ptrtoint ptr %num_fh.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_fh.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %18
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %19 = ptrtoint ptr %fh_array.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fh_array.i, align 8
  tail call void @kfree(ptr noundef %20) #12
  br label %_filelayout_free_lseg.exit

_filelayout_free_lseg.exit:                       ; preds = %for.end.i, %if.end14._filelayout_free_lseg.exit_crit_edge
  tail call void @kfree(ptr noundef %lseg) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @filelayout_get_ds_info(ptr nocapture noundef readonly %inode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %layout1 = getelementptr i8, ptr %inode, i32 -32
  %0 = ptrtoint ptr %layout1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layout1, align 8
  %cmp = icmp eq ptr %1, null
  %commit_info = getelementptr inbounds %struct.nfs4_filelayout, ptr %1, i32 0, i32 1
  %spec.select = select i1 %cmp, ptr null, ptr %commit_info
  ret ptr %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_nfs_generic_sync(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @filelayout_read_pagelist(ptr noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lseg1 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 6
  %0 = ptrtoint ptr %lseg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lseg1, align 4
  %offset2 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 5
  %2 = ptrtoint ptr %offset2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset2, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %4 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !182

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdr, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_ino, align 8
  %pgbase = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 7
  %9 = ptrtoint ptr %pgbase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pgbase, align 4
  %count = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 6
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef %8, i32 noundef %10, i32 noundef %12, i64 noundef %3) #15
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %call10 = tail call i32 @nfs4_fl_calc_j_index(ptr noundef %1, i64 noundef %3) #12
  %call11 = tail call i32 @nfs4_fl_calc_ds_index(ptr noundef %1, i32 noundef %call10) #12
  %call12 = tail call ptr @nfs4_fl_prepare_ds(ptr noundef %1, i32 noundef %call11) #12
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.end9.cleanup_crit_edge, label %if.end15

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %do.end9
  %ds_clp = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %call12, i32 0, i32 3
  %13 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ds_clp, align 4
  %15 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hdr, align 8
  %call17 = tail call ptr @nfs4_find_or_create_ds_client(ptr noundef %14, ptr noundef %16) #12
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end15.cleanup_crit_edge, label %do.body21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body21:                                        ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %17 = load i32, ptr @nfs_debug, align 4
  %and22 = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body21.do.end40_crit_edge, label %do.end33, !prof !182

do.body21.do.end40_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end40

do.end33:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #14
  %ds_remotestr = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %call12, i32 0, i32 1
  %18 = ptrtoint ptr %ds_remotestr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ds_remotestr, align 4
  %20 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ds_clp, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %21, i32 noundef 4) #12
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54, ptr noundef %19, i32 noundef %23) #15
  br label %do.end40

do.end40:                                         ; preds = %do.end33, %do.body21.do.end40_crit_edge
  %24 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ds_clp, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %25, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %25, i32 1, i32 3, i32 1) #12
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #12, !srcloc !184
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %do.end40.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !183

do.end40.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %do.end40
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %27 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !182

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %do.end40.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %do.end40.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %25, i32 noundef %.sink.i.i.i) #12
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %28 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ds_clp, align 4
  %ds_clp44 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 26
  %30 = ptrtoint ptr %ds_clp44 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %ds_clp44, align 8
  %ds_commit_idx = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 27
  %31 = ptrtoint ptr %ds_commit_idx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call11, ptr %ds_commit_idx, align 4
  %call45 = tail call ptr @nfs4_fl_select_ds_fh(ptr noundef %1, i32 noundef %call10) #12
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %refcount_inc.exit.if.end50_crit_edge, label %if.then47

refcount_inc.exit.if.end50_crit_edge:             ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then47:                                        ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %fh49 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 1
  %32 = ptrtoint ptr %fh49 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call45, ptr %fh49, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %refcount_inc.exit.if.end50_crit_edge
  %stripe_type.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %stripe_type.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stripe_type.i, align 8
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %34, label %do.body.i [
    i32 1, label %if.end50.filelayout_get_dserver_offset.exit_crit_edge
    i32 2, label %sw.bb1.i
  ]

if.end50.filelayout_get_dserver_offset.exit_crit_edge: ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %filelayout_get_dserver_offset.exit

sw.bb1.i:                                         ; preds = %if.end50
  %stripe_unit.i.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %stripe_unit.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %stripe_unit.i.i, align 8
  %dsaddr.i.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %1, i32 0, i32 7
  %38 = ptrtoint ptr %dsaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dsaddr.i.i, align 8
  %stripe_count.i.i = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %stripe_count.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %stripe_count.i.i, align 4
  %mul.i.i = mul i32 %41, %37
  %pattern_offset.i.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %1, i32 0, i32 5
  %42 = ptrtoint ptr %pattern_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %pattern_offset.i.i, align 8
  %sub.i.i = sub i64 %3, %43
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i)
  %cmp164.i.i.i.i = icmp ult i64 %sub.i.i, 4294967296
  br i1 %cmp164.i.i.i.i, label %if.then168.i.i.i.i, label %if.else174.i.i.i.i, !prof !182

if.then168.i.i.i.i:                               ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i.i.i = trunc i64 %sub.i.i to i32
  %div172.i.i.i.i = udiv i32 %conv169.i.i.i.i, %mul.i.i
  %conv173.i.i.i.i = zext i32 %div172.i.i.i.i to i64
  br label %if.else162.i.i.i

if.else174.i.i.i.i:                               ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul.i.i, i64 %sub.i.i) #18, !srcloc !185
  %asmresult1.i.i.i.i.i = extractvalue { i64, i64 } %44, 1
  br label %if.else162.i.i.i

if.else162.i.i.i:                                 ; preds = %if.else174.i.i.i.i, %if.then168.i.i.i.i
  %dividend.addr.0.i.i.i.i = phi i64 [ %conv173.i.i.i.i, %if.then168.i.i.i.i ], [ %asmresult1.i.i.i.i.i, %if.else174.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i)
  %cmp164.i.i.i = icmp ult i64 %sub.i.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !182

if.then168.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i.i = trunc i64 %sub.i.i to i32
  %rem170.i.i.i = urem i32 %conv169.i.i.i, %37
  br label %filelayout_get_dense_offset.exit.i

if.else174.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %37, i64 %sub.i.i) #18, !srcloc !185
  %asmresult.i261.i.i.i = extractvalue { i64, i64 } %45, 0
  %shr.i.i12.i.i = lshr i64 %asmresult.i261.i.i.i, 32
  %conv.i.i.i.i = trunc i64 %shr.i.i12.i.i to i32
  br label %filelayout_get_dense_offset.exit.i

filelayout_get_dense_offset.exit.i:               ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %__rem.0.i.i.i = phi i32 [ %rem170.i.i.i, %if.then168.i.i.i ], [ %conv.i.i.i.i, %if.else174.i.i.i ]
  %conv.i.i = zext i32 %37 to i64
  %mul4.i.i = mul i64 %dividend.addr.0.i.i.i.i, %conv.i.i
  %conv5.i.i = zext i32 %__rem.0.i.i.i to i64
  %add.i.i = add i64 %mul4.i.i, %conv5.i.i
  br label %filelayout_get_dserver_offset.exit

do.body.i:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/filelayout/filelayout.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 86, 0\0A.popsection", ""() #12, !srcloc !186
  unreachable

filelayout_get_dserver_offset.exit:               ; preds = %filelayout_get_dense_offset.exit.i, %if.end50.filelayout_get_dserver_offset.exit_crit_edge
  %retval.0.i = phi i64 [ %add.i.i, %filelayout_get_dense_offset.exit.i ], [ %3, %if.end50.filelayout_get_dserver_offset.exit_crit_edge ]
  %46 = ptrtoint ptr %offset2 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %retval.0.i, ptr %offset2, align 8
  %mds_offset = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 24
  %47 = ptrtoint ptr %mds_offset to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %3, ptr %mds_offset, align 8
  %cred = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 1
  %48 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cred, align 4
  %50 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hdr, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 33
  %54 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %rpc_ops.i = getelementptr inbounds %struct.nfs_client, ptr %57, i32 0, i32 12
  %58 = ptrtoint ptr %rpc_ops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rpc_ops.i, align 4
  %call56 = tail call i32 @nfs_initiate_pgio(ptr noundef %call17, ptr noundef %hdr, ptr noundef %49, ptr noundef %59, ptr noundef nonnull @filelayout_read_call_ops, i32 noundef 0, i32 noundef 1024) #12
  br label %cleanup

cleanup:                                          ; preds = %filelayout_get_dserver_offset.exit, %if.end15.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %filelayout_get_dserver_offset.exit ], [ 1, %do.end9.cleanup_crit_edge ], [ 1, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @filelayout_write_pagelist(ptr noundef %hdr, i32 noundef %sync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lseg1 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 6
  %0 = ptrtoint ptr %lseg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lseg1, align 4
  %offset2 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 5
  %2 = ptrtoint ptr %offset2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset2, align 8
  %call = tail call i32 @nfs4_fl_calc_j_index(ptr noundef %1, i64 noundef %3) #12
  %call3 = tail call i32 @nfs4_fl_calc_ds_index(ptr noundef %1, i32 noundef %call) #12
  %call4 = tail call ptr @nfs4_fl_prepare_ds(ptr noundef %1, i32 noundef %call3) #12
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ds_clp = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %call4, i32 0, i32 3
  %4 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ds_clp, align 4
  %6 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdr, align 8
  %call5 = tail call ptr @nfs4_find_or_create_ds_client(ptr noundef %5, ptr noundef %7) #12
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %8 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.body.do.end21_crit_edge, label %do.end, !prof !182

do.body.do.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end21

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdr, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino, align 8
  %count = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 6
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count, align 8
  %ds_remotestr = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %call4, i32 0, i32 1
  %15 = ptrtoint ptr %ds_remotestr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ds_remotestr, align 4
  %17 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ds_clp, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %18, i32 noundef 4) #12
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, i32 noundef %12, i32 noundef %sync, i32 noundef %14, i64 noundef %3, ptr noundef %16, i32 noundef %20) #15
  br label %do.end21

do.end21:                                         ; preds = %do.end, %do.body.do.end21_crit_edge
  %pgio_done_cb = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 23
  %21 = ptrtoint ptr %pgio_done_cb to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @filelayout_write_done_cb, ptr %pgio_done_cb, align 4
  %22 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ds_clp, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %23, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %23, i32 1, i32 3, i32 1) #12
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #12, !srcloc !184
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %do.end21.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !183

do.end21.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %do.end21
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %25 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !182

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %do.end21.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %do.end21.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %23, i32 noundef %.sink.i.i.i) #12
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %26 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ds_clp, align 4
  %ds_clp25 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 26
  %28 = ptrtoint ptr %ds_clp25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %ds_clp25, align 8
  %ds_commit_idx = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 27
  %29 = ptrtoint ptr %ds_commit_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call3, ptr %ds_commit_idx, align 4
  %call26 = tail call ptr @nfs4_fl_select_ds_fh(ptr noundef %1, i32 noundef %call) #12
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %refcount_inc.exit.if.end31_crit_edge, label %if.then28

refcount_inc.exit.if.end31_crit_edge:             ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then28:                                        ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %fh30 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 1
  %30 = ptrtoint ptr %fh30 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call26, ptr %fh30, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %refcount_inc.exit.if.end31_crit_edge
  %stripe_type.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %stripe_type.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stripe_type.i, align 8
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %32, label %do.body.i [
    i32 1, label %if.end31.filelayout_get_dserver_offset.exit_crit_edge
    i32 2, label %sw.bb1.i
  ]

if.end31.filelayout_get_dserver_offset.exit_crit_edge: ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %filelayout_get_dserver_offset.exit

sw.bb1.i:                                         ; preds = %if.end31
  %stripe_unit.i.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %stripe_unit.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %stripe_unit.i.i, align 8
  %dsaddr.i.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %1, i32 0, i32 7
  %36 = ptrtoint ptr %dsaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dsaddr.i.i, align 8
  %stripe_count.i.i = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %stripe_count.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %stripe_count.i.i, align 4
  %mul.i.i = mul i32 %39, %35
  %pattern_offset.i.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %pattern_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %pattern_offset.i.i, align 8
  %sub.i.i = sub i64 %3, %41
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i)
  %cmp164.i.i.i.i = icmp ult i64 %sub.i.i, 4294967296
  br i1 %cmp164.i.i.i.i, label %if.then168.i.i.i.i, label %if.else174.i.i.i.i, !prof !182

if.then168.i.i.i.i:                               ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i.i.i = trunc i64 %sub.i.i to i32
  %div172.i.i.i.i = udiv i32 %conv169.i.i.i.i, %mul.i.i
  %conv173.i.i.i.i = zext i32 %div172.i.i.i.i to i64
  br label %if.else162.i.i.i

if.else174.i.i.i.i:                               ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #14
  %42 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul.i.i, i64 %sub.i.i) #18, !srcloc !185
  %asmresult1.i.i.i.i.i = extractvalue { i64, i64 } %42, 1
  br label %if.else162.i.i.i

if.else162.i.i.i:                                 ; preds = %if.else174.i.i.i.i, %if.then168.i.i.i.i
  %dividend.addr.0.i.i.i.i = phi i64 [ %conv173.i.i.i.i, %if.then168.i.i.i.i ], [ %asmresult1.i.i.i.i.i, %if.else174.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i)
  %cmp164.i.i.i = icmp ult i64 %sub.i.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !182

if.then168.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i.i = trunc i64 %sub.i.i to i32
  %rem170.i.i.i = urem i32 %conv169.i.i.i, %35
  br label %filelayout_get_dense_offset.exit.i

if.else174.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %43 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %35, i64 %sub.i.i) #18, !srcloc !185
  %asmresult.i261.i.i.i = extractvalue { i64, i64 } %43, 0
  %shr.i.i12.i.i = lshr i64 %asmresult.i261.i.i.i, 32
  %conv.i.i.i.i = trunc i64 %shr.i.i12.i.i to i32
  br label %filelayout_get_dense_offset.exit.i

filelayout_get_dense_offset.exit.i:               ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %__rem.0.i.i.i = phi i32 [ %rem170.i.i.i, %if.then168.i.i.i ], [ %conv.i.i.i.i, %if.else174.i.i.i ]
  %conv.i.i = zext i32 %35 to i64
  %mul4.i.i = mul i64 %dividend.addr.0.i.i.i.i, %conv.i.i
  %conv5.i.i = zext i32 %__rem.0.i.i.i to i64
  %add.i.i = add i64 %mul4.i.i, %conv5.i.i
  br label %filelayout_get_dserver_offset.exit

do.body.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/filelayout/filelayout.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 86, 0\0A.popsection", ""() #12, !srcloc !186
  unreachable

filelayout_get_dserver_offset.exit:               ; preds = %filelayout_get_dense_offset.exit.i, %if.end31.filelayout_get_dserver_offset.exit_crit_edge
  %retval.0.i = phi i64 [ %add.i.i, %filelayout_get_dense_offset.exit.i ], [ %3, %if.end31.filelayout_get_dserver_offset.exit_crit_edge ]
  %44 = ptrtoint ptr %offset2 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %retval.0.i, ptr %offset2, align 8
  %cred = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 1
  %45 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cred, align 4
  %47 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hdr, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 33
  %51 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %rpc_ops.i = getelementptr inbounds %struct.nfs_client, ptr %54, i32 0, i32 12
  %55 = ptrtoint ptr %rpc_ops.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rpc_ops.i, align 4
  %call37 = tail call i32 @nfs_initiate_pgio(ptr noundef %call5, ptr noundef %hdr, ptr noundef %46, ptr noundef %56, ptr noundef nonnull @filelayout_write_call_ops, i32 noundef %sync, i32 noundef 1024) #12
  br label %cleanup

cleanup:                                          ; preds = %filelayout_get_dserver_offset.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %filelayout_get_dserver_offset.exit ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @filelayout_free_deviceid_node(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nfs4_fl_free_deviceid(ptr noundef %d) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @filelayout_alloc_deviceid_node(ptr noundef %server, ptr noundef %pdev, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfs4_fl_alloc_deviceid_node(ptr noundef %server, ptr noundef %pdev, i32 noundef %gfp_flags) #12
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @filelayout_setup_ds_info(ptr noundef %fl_cinfo, ptr noundef %lseg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pls_layout = getelementptr inbounds %struct.pnfs_layout_segment, ptr %lseg, i32 0, i32 7
  %0 = ptrtoint ptr %pls_layout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pls_layout, align 4
  %plh_inode = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %plh_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plh_inode, align 4
  %stripe_type = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %lseg, i32 0, i32 1
  %4 = ptrtoint ptr %stripe_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stripe_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %dsaddr = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %lseg, i32 0, i32 7
  %6 = ptrtoint ptr %dsaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dsaddr, align 8
  %ds_num = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %7, i32 0, i32 3
  %stripe_count = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %7, i32 0, i32 1
  %cond.in = select i1 %cmp, ptr %ds_num, ptr %stripe_count
  %8 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond = load i32, ptr %cond.in, align 4
  %call2 = tail call ptr @pnfs_alloc_commit_array(i32 noundef %cond, i32 noundef 3072) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then:                                          ; preds = %entry
  %i_lock = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #12
  %call3 = tail call ptr @pnfs_add_commit_array(ptr noundef %fl_cinfo, ptr noundef nonnull %call2, ptr noundef %lseg) #12
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #12
  %cmp5.not = icmp eq ptr %call3, %call2
  br i1 %cmp5.not, label %if.then.if.end7_crit_edge, label %if.then6

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pnfs_free_commit_array(ptr noundef nonnull %call2) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @filelayout_release_ds_info(ptr noundef %fl_cinfo, ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #12
  tail call void @pnfs_generic_ds_cinfo_destroy(ptr noundef %fl_cinfo) #12
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @filelayout_commit_pagelist(ptr noundef %inode, ptr noundef %mds_pages, i32 noundef %how, ptr noundef %cinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pnfs_generic_commit_pagelist(ptr noundef %inode, ptr noundef %mds_pages, i32 noundef %how, ptr noundef %cinfo, ptr noundef nonnull @filelayout_initiate_commit) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @filelayout_mark_request_commit(ptr noundef %req, ptr noundef %lseg, ptr noundef %cinfo, i32 noundef %ds_commit_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %commit_through_mds = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %lseg, i32 0, i32 2
  %0 = ptrtoint ptr %commit_through_mds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %commit_through_mds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nfs_request_add_commit_list(ptr noundef %req, ptr noundef %cinfo) #12
  br label %if.end

if.else:                                          ; preds = %entry
  %wb_index.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %wb_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wb_index.i, align 4
  %conv.i = zext i32 %3 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %wb_offset.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %wb_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wb_offset.i, align 4
  %conv1.i = zext i32 %5 to i64
  %add.i = add nuw nsw i64 %shl.i, %conv1.i
  %call2 = tail call i32 @nfs4_fl_calc_j_index(ptr noundef %lseg, i64 noundef %add.i) #12
  %stripe_type.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %lseg, i32 0, i32 1
  %6 = ptrtoint ptr %stripe_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stripe_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.select_bucket_index.exit_crit_edge

if.else.select_bucket_index.exit_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %select_bucket_index.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @nfs4_fl_calc_ds_index(ptr noundef %lseg, i32 noundef %call2) #12
  br label %select_bucket_index.exit

select_bucket_index.exit:                         ; preds = %if.then.i, %if.else.select_bucket_index.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call2, %if.else.select_bucket_index.exit_crit_edge ]
  tail call void @pnfs_layout_mark_request_commit(ptr noundef %req, ptr noundef %lseg, ptr noundef %cinfo, i32 noundef %retval.0.i) #12
  br label %if.end

if.end:                                           ; preds = %select_bucket_index.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_clear_request_commit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_generic_scan_commit_lists(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_recover_commit_reqs(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pnfs_generic_search_commit_reqs(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pnfs_alloc_commit_array(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pnfs_add_commit_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_free_commit_array(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_ds_cinfo_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_generic_commit_pagelist(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @filelayout_initiate_commit(ptr noundef %data, i32 noundef %how) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lseg1 = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 11
  %0 = ptrtoint ptr %lseg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lseg1, align 4
  %ds_commit_index = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 13
  %2 = ptrtoint ptr %ds_commit_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ds_commit_index, align 4
  %stripe_type.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %stripe_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stripe_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  br i1 %cmp.i, label %entry.calc_ds_index_from_commit.exit_crit_edge, label %if.else.i

entry.calc_ds_index_from_commit.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %calc_ds_index_from_commit.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call i32 @nfs4_fl_calc_ds_index(ptr noundef %1, i32 noundef %3) #12
  br label %calc_ds_index_from_commit.exit

calc_ds_index_from_commit.exit:                   ; preds = %if.else.i, %entry.calc_ds_index_from_commit.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.else.i ], [ %3, %entry.calc_ds_index_from_commit.exit_crit_edge ]
  %call2 = tail call ptr @nfs4_fl_prepare_ds(ptr noundef %1, i32 noundef %retval.0.i) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %calc_ds_index_from_commit.exit.out_err_crit_edge, label %if.end

calc_ds_index_from_commit.exit.out_err_crit_edge: ; preds = %calc_ds_index_from_commit.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_err

if.end:                                           ; preds = %calc_ds_index_from_commit.exit
  %ds_clp = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %call2, i32 0, i32 3
  %6 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ds_clp, align 4
  %inode = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inode, align 8
  %call3 = tail call ptr @nfs4_find_or_create_ds_client(ptr noundef %7, ptr noundef %9) #12
  %cmp.i56 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i56, label %if.end.out_err_crit_edge, label %do.body

if.end.out_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_err

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %10 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body.do.end18_crit_edge, label %do.end, !prof !182

do.body.do.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %inode, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino, align 8
  %15 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ds_clp, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %16, i32 noundef 4) #12
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %14, i32 noundef %how, i32 noundef %18) #15
  br label %do.end18

do.end18:                                         ; preds = %do.end, %do.body.do.end18_crit_edge
  %commit_done_cb = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 17
  %19 = ptrtoint ptr %commit_done_cb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @filelayout_commit_done_cb, ptr %commit_done_cb, align 8
  %20 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ds_clp, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %21, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %21, i32 1, i32 3, i32 1) #12
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #12, !srcloc !184
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %do.end18.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !183

do.end18.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %do.end18
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %23 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !182

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %do.end18.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %do.end18.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %21, i32 noundef %.sink.i.i.i) #12
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %24 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ds_clp, align 4
  %ds_clp22 = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 12
  %26 = ptrtoint ptr %ds_clp22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %ds_clp22, align 8
  %27 = ptrtoint ptr %ds_commit_index to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ds_commit_index, align 4
  %29 = ptrtoint ptr %stripe_type.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stripe_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i58 = icmp eq i32 %30, 1
  br i1 %cmp.i58, label %if.then.i, label %refcount_inc.exit.select_ds_fh_from_commit.exit_crit_edge

refcount_inc.exit.select_ds_fh_from_commit.exit_crit_edge: ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %select_ds_fh_from_commit.exit

if.then.i:                                        ; preds = %refcount_inc.exit
  %num_fh.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %num_fh.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_fh.i, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %32, label %if.end7.fold.split.i [
    i32 1, label %if.then.i.select_ds_fh_from_commit.exit_crit_edge
    i32 0, label %if.then.i.if.end28_crit_edge
  ]

if.then.i.if.end28_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then.i.select_ds_fh_from_commit.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %select_ds_fh_from_commit.exit

if.end7.fold.split.i:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %select_ds_fh_from_commit.exit

select_ds_fh_from_commit.exit:                    ; preds = %if.end7.fold.split.i, %if.then.i.select_ds_fh_from_commit.exit_crit_edge, %refcount_inc.exit.select_ds_fh_from_commit.exit_crit_edge
  %i.addr.0.i = phi i32 [ %28, %refcount_inc.exit.select_ds_fh_from_commit.exit_crit_edge ], [ 0, %if.then.i.select_ds_fh_from_commit.exit_crit_edge ], [ %28, %if.end7.fold.split.i ]
  %fh_array.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %1, i32 0, i32 9
  %34 = ptrtoint ptr %fh_array.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fh_array.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %35, i32 %i.addr.0.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %tobool25.not = icmp eq ptr %37, null
  br i1 %tobool25.not, label %select_ds_fh_from_commit.exit.if.end28_crit_edge, label %if.then26

select_ds_fh_from_commit.exit.if.end28_crit_edge: ; preds = %select_ds_fh_from_commit.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then26:                                        ; preds = %select_ds_fh_from_commit.exit
  call void @__sanitizer_cov_trace_pc() #14
  %fh27 = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 8, i32 1
  %38 = ptrtoint ptr %fh27 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %fh27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %select_ds_fh_from_commit.exit.if.end28_crit_edge, %if.then.i.if.end28_crit_edge
  %39 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %inode, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 33
  %43 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %rpc_ops.i = getelementptr inbounds %struct.nfs_client, ptr %46, i32 0, i32 12
  %47 = ptrtoint ptr %rpc_ops.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rpc_ops.i, align 4
  %call31 = tail call i32 @nfs_initiate_commit(ptr noundef %call3, ptr noundef %data, ptr noundef %48, ptr noundef nonnull @filelayout_commit_call_ops, i32 noundef %how, i32 noundef 1024) #12
  br label %cleanup

out_err:                                          ; preds = %if.end.out_err_crit_edge, %calc_ds_index_from_commit.exit.out_err_crit_edge
  tail call void @pnfs_generic_prepare_to_resend_writes(ptr noundef %data) #12
  tail call void @pnfs_generic_commit_release(ptr noundef %data) #12
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.end28
  %retval.0 = phi i32 [ -11, %out_err ], [ %call31, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_fl_prepare_ds(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_find_or_create_ds_client(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @filelayout_commit_done_cb(ptr noundef %task, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %0 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tk_status, align 4
  tail call fastcc void @trace_nfs4_pnfs_commit_ds(ptr noundef %data, i32 noundef %1)
  %ds_clp = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 12
  %2 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds_clp, align 8
  %lseg = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 11
  %4 = ptrtoint ptr %lseg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lseg, align 4
  %call = tail call fastcc i32 @filelayout_async_handle_error(ptr noundef %task, ptr noundef %3, ptr noundef %5)
  %6 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %call, label %sw.epilog [
    i32 -12001, label %sw.bb
    i32 -11, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pnfs_generic_prepare_to_resend_writes(ptr noundef %data) #12
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 @rpc_restart_call_prepare(ptr noundef %task) #12
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %inode = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %inode, align 8
  %9 = ptrtoint ptr %lseg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lseg, align 4
  %lwb = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 14
  %11 = ptrtoint ptr %lwb to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %lwb, align 8
  tail call void @pnfs_set_layoutcommit(ptr noundef %8, ptr noundef %10, i64 noundef %12) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -11, %sw.bb1 ], [ -11, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_initiate_commit(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_prepare_to_resend_writes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_commit_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_fl_calc_ds_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_pnfs_commit_ds(ptr noundef %data, i32 noundef %error) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_pnfs_commit_ds, i32 0, i32 1), ptr blockaddress(@trace_nfs4_pnfs_commit_ds, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !187

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !172) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !182

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !172) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !188
  %call42 = tail call i32 @__traceiter_nfs4_pnfs_commit_ds(ptr noundef null, ptr noundef %data, i32 noundef %error) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !189
  %13 = tail call i32 @llvm.read_register.i32(metadata !172) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !172) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !182

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !172) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !190
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_pnfs_commit_ds, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_pnfs_commit_ds, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs4_pnfs_commit_ds.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfs4_pnfs_commit_ds.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1681, ptr noundef nonnull @.str.7) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !191
  %31 = tail call i32 @llvm.read_register.i32(metadata !172) #12
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
define internal fastcc i32 @filelayout_async_handle_error(ptr noundef %task, ptr nocapture noundef readonly %clp, ptr noundef %lseg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pls_layout = getelementptr inbounds %struct.pnfs_layout_segment, ptr %lseg, i32 0, i32 7
  %0 = ptrtoint ptr %pls_layout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pls_layout, align 4
  %plh_inode = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %plh_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plh_inode, align 4
  %dsaddr.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %lseg, i32 0, i32 7
  %4 = ptrtoint ptr %dsaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsaddr.i, align 8
  %cl_session = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 36
  %6 = ptrtoint ptr %cl_session to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cl_session, align 4
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %8 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tk_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp = icmp sgt i32 %9, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %9, label %if.end.do.body56_crit_edge [
    i32 -10052, label %if.end.do.body_crit_edge
    i32 -10053, label %if.end.do.body_crit_edge1
    i32 -10077, label %if.end.do.body_crit_edge2
    i32 -10078, label %if.end.do.body_crit_edge3
    i32 -10055, label %if.end.do.body_crit_edge4
    i32 -10076, label %if.end.do.body_crit_edge5
    i32 -10063, label %if.end.do.body_crit_edge6
    i32 -10008, label %if.end.sw.bb13_crit_edge
    i32 -10013, label %if.end.sw.bb13_crit_edge7
    i32 -10068, label %if.end.sw.epilog_crit_edge
    i32 -13, label %if.end.do.body15_crit_edge
    i32 -10080, label %if.end.do.body15_crit_edge8
    i32 -116, label %if.end.do.body15_crit_edge9
    i32 -521, label %if.end.do.body15_crit_edge10
    i32 -21, label %if.end.do.body15_crit_edge11
    i32 -10014, label %if.end.do.body15_crit_edge12
    i32 -10083, label %if.end.do.body15_crit_edge13
    i32 -111, label %if.end.do.body36_crit_edge
    i32 -112, label %if.end.do.body36_crit_edge14
    i32 -113, label %if.end.do.body36_crit_edge15
    i32 -101, label %if.end.do.body36_crit_edge16
    i32 -5, label %if.end.do.body36_crit_edge17
    i32 -110, label %if.end.do.body36_crit_edge18
    i32 -32, label %if.end.do.body36_crit_edge19
  ]

if.end.do.body36_crit_edge19:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body36

if.end.do.body36_crit_edge18:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body36

if.end.do.body36_crit_edge17:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body36

if.end.do.body36_crit_edge16:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body36

if.end.do.body36_crit_edge15:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body36

if.end.do.body36_crit_edge14:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body36

if.end.do.body36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body36

if.end.do.body15_crit_edge13:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body15

if.end.do.body15_crit_edge12:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body15

if.end.do.body15_crit_edge11:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body15

if.end.do.body15_crit_edge10:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body15

if.end.do.body15_crit_edge9:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body15

if.end.do.body15_crit_edge8:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body15

if.end.do.body15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body15

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.sw.bb13_crit_edge7:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13

if.end.sw.bb13_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13

if.end.do.body_crit_edge6:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.do.body_crit_edge5:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.do.body_crit_edge4:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.do.body_crit_edge3:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.do.body_crit_edge2:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.do.body_crit_edge1:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.do.body56_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body56

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.end.do.body_crit_edge1, %if.end.do.body_crit_edge2, %if.end.do.body_crit_edge3, %if.end.do.body_crit_edge4, %if.end.do.body_crit_edge5, %if.end.do.body_crit_edge6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %11 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end10_crit_edge, label %do.end, !prof !182

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %cl_exchange_flags = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 35
  %12 = ptrtoint ptr %cl_exchange_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cl_exchange_flags, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %9, i32 noundef %13) #15
  br label %do.end10

do.end10:                                         ; preds = %do.end, %do.body.do.end10_crit_edge
  %14 = ptrtoint ptr %cl_session to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cl_session, align 4
  %16 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tk_status, align 4
  tail call void @nfs4_schedule_session_recovery(ptr noundef %15, i32 noundef %17) #12
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end.sw.bb13_crit_edge, %if.end.sw.bb13_crit_edge7
  tail call void @rpc_delay(ptr noundef %task, i32 noundef 1500) #12
  br label %sw.epilog

do.body15:                                        ; preds = %if.end.do.body15_crit_edge, %if.end.do.body15_crit_edge8, %if.end.do.body15_crit_edge9, %if.end.do.body15_crit_edge10, %if.end.do.body15_crit_edge11, %if.end.do.body15_crit_edge12, %if.end.do.body15_crit_edge13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %18 = load i32, ptr @nfs_debug, align 4
  %and16 = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body15.do.end33_crit_edge, label %do.end27, !prof !182

do.body15.do.end33_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33

do.end27:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef %9) #15
  br label %do.end33

do.end33:                                         ; preds = %do.end27, %do.body15.do.end33_crit_edge
  %add.ptr.i = getelementptr i8, ptr %3, i32 -448
  tail call void @pnfs_destroy_layout(ptr noundef %add.ptr.i) #12
  br label %do.body56.sink.split

do.body36:                                        ; preds = %if.end.do.body36_crit_edge, %if.end.do.body36_crit_edge14, %if.end.do.body36_crit_edge15, %if.end.do.body36_crit_edge16, %if.end.do.body36_crit_edge17, %if.end.do.body36_crit_edge18, %if.end.do.body36_crit_edge19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %19 = load i32, ptr @nfs_debug, align 4
  %and37 = and i32 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.body36.do.end54_crit_edge, label %do.end48, !prof !182

do.body36.do.end54_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end54

do.end48:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #14
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.10, i32 noundef %9) #15
  br label %do.end54

do.end54:                                         ; preds = %do.end48, %do.body36.do.end54_crit_edge
  tail call void @nfs4_mark_deviceid_unavailable(ptr noundef %5) #12
  tail call void @pnfs_error_mark_layout_for_return(ptr noundef %3, ptr noundef %lseg) #12
  tail call void @pnfs_set_lo_fail(ptr noundef %lseg) #12
  br label %do.body56.sink.split

do.body56.sink.split:                             ; preds = %do.end54, %do.end33
  %slot_tbl_waitq = getelementptr inbounds %struct.nfs4_session, ptr %7, i32 0, i32 6, i32 4
  tail call void @rpc_wake_up(ptr noundef %slot_tbl_waitq) #12
  br label %do.body56

do.body56:                                        ; preds = %do.body56.sink.split, %if.end.do.body56_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %20 = load i32, ptr @nfs_debug, align 4
  %and57 = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.body56.cleanup_crit_edge, label %do.end68, !prof !182

do.body56.cleanup_crit_edge:                      ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end68:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tk_status, align 4
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.10, i32 noundef %22) #15
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb13, %do.end10, %if.end.sw.epilog_crit_edge
  %23 = ptrtoint ptr %tk_status to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %tk_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end68, %do.body56.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ -12001, %do.end68 ], [ -12001, %do.body56.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_restart_call_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_set_layoutcommit(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_pnfs_commit_ds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_schedule_session_recovery(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_destroy_layout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_mark_deviceid_unavailable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_error_mark_layout_for_return(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_set_lo_fail(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @filelayout_commit_prepare(ptr noundef %task, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ds_clp = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 12
  %0 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds_clp, align 8
  %args = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 8
  %res = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 9
  %call = tail call i32 @nfs4_setup_sequence(ptr noundef %1, ptr noundef %args, ptr noundef %res, ptr noundef %task) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_write_commit_done(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @filelayout_commit_count_stats(ptr noundef %task, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %inode = getelementptr inbounds %struct.nfs_commit_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %client = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %cl_metrics = getelementptr inbounds %struct.rpc_clnt, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %cl_metrics to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cl_metrics, align 4
  tail call void @rpc_count_iostats(ptr noundef %task, ptr noundef %9) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_setup_sequence(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_count_iostats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_request_add_commit_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_fl_calc_j_index(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_layout_mark_request_commit(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_decode_pages(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_print_deviceid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_fl_put_deviceid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_ds_cinfo_release_lseg(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @filelayout_pg_init_read(ptr noundef %pgio, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pnfs_generic_pg_check_layout(ptr noundef %pgio) #12
  %pg_lseg = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 7
  %0 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pg_lseg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %pgio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pgio, align 4
  %wb_lock_context.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %wb_lock_context.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wb_lock_context.i, align 4
  %open_context.i = getelementptr inbounds %struct.nfs_lock_context, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %open_context.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %open_context.i, align 4
  %call1 = tail call fastcc ptr @fl_pnfs_update_layout(ptr noundef %3, ptr noundef %7, i32 noundef 1, i32 noundef 3264)
  %8 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1, ptr %pg_lseg, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %call1 to i32
  %pg_error = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 4
  %10 = ptrtoint ptr %pg_error to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pg_error, align 4
  %11 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pg_lseg, align 4
  br label %if.end12

if.end9:                                          ; preds = %if.then
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.then11, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nfs_pageio_reset_read_mds(ptr noundef %pgio) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge, %if.then5, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @filelayout_pg_test(ptr noundef %pgio, ptr noundef %prev, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pg_lseg = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 7
  %0 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pg_lseg, align 4
  %offset = getelementptr inbounds %struct.pnfs_layout_segment, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset, align 8
  %stripe_unit2 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %stripe_unit2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stripe_unit2, align 8
  %call3 = tail call i32 @pnfs_generic_pg_test(ptr noundef %pgio, ptr noundef %prev, ptr noundef %req) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq ptr %prev, null
  br i1 %tobool4.not, label %if.end.if.end418_crit_edge, label %if.then5

if.end.if.end418_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end418

if.then5:                                         ; preds = %if.end
  %wb_index.i = getelementptr inbounds %struct.nfs_page, ptr %prev, i32 0, i32 3
  %6 = ptrtoint ptr %wb_index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wb_index.i, align 4
  %conv.i = zext i32 %7 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %wb_offset.i = getelementptr inbounds %struct.nfs_page, ptr %prev, i32 0, i32 4
  %8 = ptrtoint ptr %wb_offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wb_offset.i, align 4
  %conv1.i = zext i32 %9 to i64
  %add.i = sub i64 %conv1.i, %3
  %sub = add i64 %add.i, %shl.i
  %wb_index.i667 = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 3
  %10 = ptrtoint ptr %wb_index.i667 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wb_index.i667, align 4
  %conv.i668 = zext i32 %11 to i64
  %shl.i669 = shl nuw nsw i64 %conv.i668, 12
  %wb_offset.i670 = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 4
  %12 = ptrtoint ptr %wb_offset.i670 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wb_offset.i670, align 4
  %conv1.i671 = zext i32 %13 to i64
  %add.i672 = sub i64 %conv1.i671, %3
  %sub8 = add i64 %add.i672, %shl.i669
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp177 = icmp ult i64 %sub, 4294967296
  br i1 %cmp177, label %if.then181, label %if.else187, !prof !182

if.then181:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %conv182 = trunc i64 %sub to i32
  %div185 = udiv i32 %conv182, %5
  %conv186 = zext i32 %div185 to i64
  br label %if.else392

if.else187:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %5, i64 %sub) #18, !srcloc !185
  %asmresult1.i = extractvalue { i64, i64 } %14, 1
  br label %if.else392

if.else392:                                       ; preds = %if.else187, %if.then181
  %p_stripe.0 = phi i64 [ %conv186, %if.then181 ], [ %asmresult1.i, %if.else187 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub8)
  %cmp394 = icmp ult i64 %sub8, 4294967296
  br i1 %cmp394, label %if.then402, label %if.else408, !prof !182

if.then402:                                       ; preds = %if.else392
  call void @__sanitizer_cov_trace_pc() #14
  %conv403 = trunc i64 %sub8 to i32
  %div406 = udiv i32 %conv403, %5
  %conv407 = zext i32 %div406 to i64
  br label %if.end412

if.else408:                                       ; preds = %if.else392
  call void @__sanitizer_cov_trace_pc() #14
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %5, i64 %sub8) #18, !srcloc !185
  %asmresult1.i701 = extractvalue { i64, i64 } %15, 1
  br label %if.end412

if.end412:                                        ; preds = %if.else408, %if.then402
  %r_stripe.0 = phi i64 [ %conv407, %if.then402 ], [ %asmresult1.i701, %if.else408 ]
  call void @__sanitizer_cov_trace_cmp8(i64 %p_stripe.0, i64 %r_stripe.0)
  %cmp414.not = icmp eq i64 %p_stripe.0, %r_stripe.0
  br i1 %cmp414.not, label %if.end412.if.end418_crit_edge, label %if.end412.cleanup_crit_edge

if.end412.cleanup_crit_edge:                      ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end412.if.end418_crit_edge:                    ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end418

if.end418:                                        ; preds = %if.end412.if.end418_crit_edge, %if.end.if.end418_crit_edge
  %wb_index.i704 = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 3
  %16 = ptrtoint ptr %wb_index.i704 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wb_index.i704, align 4
  %conv.i705 = zext i32 %17 to i64
  %shl.i706 = shl nuw nsw i64 %conv.i705, 12
  %wb_offset.i707 = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 4
  %18 = ptrtoint ptr %wb_offset.i707 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wb_offset.i707, align 4
  %conv1.i708 = zext i32 %19 to i64
  %add.i709 = sub i64 %conv1.i708, %3
  %sub420 = add i64 %add.i709, %shl.i706
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub420)
  %cmp164.i = icmp ult i64 %sub420, 4294967296
  br i1 %cmp164.i, label %if.end462.thread, label %if.else174.i, !prof !182

if.end462.thread:                                 ; preds = %if.end418
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i = trunc i64 %sub420 to i32
  %rem170.i = urem i32 %conv169.i, %5
  br label %if.end473

if.else174.i:                                     ; preds = %if.end418
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %5, i64 %sub420) #18, !srcloc !185
  %asmresult.i261.i = extractvalue { i64, i64 } %20, 0
  %shr.i.i = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i.i)
  %cmp422 = icmp ult i32 %5, %conv.i.i
  br i1 %cmp422, label %land.rhs, label %if.else174.i.if.end462_crit_edge

if.else174.i.if.end462_crit_edge:                 ; preds = %if.else174.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end462

land.rhs:                                         ; preds = %if.else174.i
  %.b664 = load i1, ptr @filelayout_pg_test.__already_done, align 1
  br i1 %.b664, label %land.rhs.if.end462_crit_edge, label %if.then439, !prof !182

land.rhs.if.end462_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end462

if.then439:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @filelayout_pg_test.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 820, i32 noundef 9, ptr noundef null) #12
  br label %if.end462

if.end462:                                        ; preds = %if.then439, %land.rhs.if.end462_crit_edge, %if.else174.i.if.end462_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i.i)
  %cmp470.not = icmp ugt i32 %5, %conv.i.i
  br i1 %cmp470.not, label %if.end462.if.end473_crit_edge, label %if.end462.cleanup_crit_edge

if.end462.cleanup_crit_edge:                      ; preds = %if.end462
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end462.if.end473_crit_edge:                    ; preds = %if.end462
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end473

if.end473:                                        ; preds = %if.end462.if.end473_crit_edge, %if.end462.thread
  %__rem.0.i778781 = phi i32 [ %rem170.i, %if.end462.thread ], [ %conv.i.i, %if.end462.if.end473_crit_edge ]
  %sub474 = sub i32 %5, %__rem.0.i778781
  %21 = tail call i32 @llvm.umin.i32(i32 %sub474, i32 %call3)
  br label %cleanup

cleanup:                                          ; preds = %if.end473, %if.end462.cleanup_crit_edge, %if.end412.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %if.end473 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end412.cleanup_crit_edge ], [ 0, %if.end462.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_generic_pg_readpages(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_pg_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_pg_check_layout(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fl_pnfs_update_layout(ptr noundef %ino, ptr noundef %ctx, i32 noundef %iomode, i32 noundef %gfp_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pnfs_update_layout(ptr noundef %ino, ptr noundef %ctx, i64 noundef 0, i64 noundef -1, i32 noundef %iomode, i1 noundef zeroext false, i32 noundef %gfp_flags) #12
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %dsaddr1.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %dsaddr1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsaddr1.i, align 8
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %if.end.i, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end.i:                                         ; preds = %if.end
  %layout = getelementptr i8, ptr %ino, i32 -32
  %2 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %layout, align 8
  %plh_inode.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %plh_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plh_inode.i, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %deviceid.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %call, i32 0, i32 6
  %plh_lc_cred.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %3, i32 0, i32 14
  %10 = ptrtoint ptr %plh_lc_cred.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %plh_lc_cred.i, align 8
  %call2.i = tail call ptr @nfs4_find_get_deviceid(ptr noundef %9, ptr noundef %deviceid.i, ptr noundef %11, i32 noundef %gfp_flags) #12
  %cmp3.i = icmp eq ptr %call2.i, null
  br i1 %cmp3.i, label %if.end.i.if.then6_crit_edge, label %if.end5.i

if.end.i.if.then6_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

if.end5.i:                                        ; preds = %if.end.i
  %flags.i.i.i = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %call2.i, i32 0, i32 4
  %12 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags.i.i.i, align 4
  %and1.i.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %filelayout_test_devid_unavailable.exit.i, label %if.end5.i.filelayout_check_deviceid.exit.thread8_crit_edge

if.end5.i.filelayout_check_deviceid.exit.thread8_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %filelayout_check_deviceid.exit.thread8

filelayout_test_devid_unavailable.exit.i:         ; preds = %if.end5.i
  %call1.i.i = tail call zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef nonnull %call2.i) #12
  br i1 %call1.i.i, label %filelayout_test_devid_unavailable.exit.i.filelayout_check_deviceid.exit.thread8_crit_edge, label %if.end8.i

filelayout_test_devid_unavailable.exit.i.filelayout_check_deviceid.exit.thread8_crit_edge: ; preds = %filelayout_test_devid_unavailable.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %filelayout_check_deviceid.exit.thread8

if.end8.i:                                        ; preds = %filelayout_test_devid_unavailable.exit.i
  %first_stripe_index.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %call, i32 0, i32 4
  %14 = ptrtoint ptr %first_stripe_index.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %first_stripe_index.i, align 4
  %stripe_count.i = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %call2.i, i32 0, i32 1
  %16 = ptrtoint ptr %stripe_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stripe_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp9.not.i = icmp ult i32 %15, %17
  br i1 %cmp9.not.i, label %if.end21.i, label %do.body.i

do.body.i:                                        ; preds = %if.end8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %18 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i1 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i1, label %do.body.i.filelayout_check_deviceid.exit.thread8_crit_edge, label %do.end.i, !prof !182

do.body.i.filelayout_check_deviceid.exit.thread8_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %filelayout_check_deviceid.exit.thread8

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, i32 noundef %15) #15
  br label %filelayout_check_deviceid.exit.thread8

if.end21.i:                                       ; preds = %if.end8.i
  %stripe_type.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %call, i32 0, i32 1
  %19 = ptrtoint ptr %stripe_type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stripe_type.i, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %20, label %if.end21.i.if.end53.i_crit_edge [
    i32 1, label %land.lhs.true.i
    i32 2, label %land.lhs.true29.i
  ]

if.end21.i.if.end53.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.i

land.lhs.true.i:                                  ; preds = %if.end21.i
  %num_fh.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %call, i32 0, i32 8
  %22 = ptrtoint ptr %num_fh.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_fh.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp23.i = icmp ugt i32 %23, 1
  br i1 %cmp23.i, label %land.lhs.true24.i, label %land.lhs.true.i.if.end53.i_crit_edge

land.lhs.true.i.if.end53.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.i

land.lhs.true24.i:                                ; preds = %land.lhs.true.i
  %ds_num.i = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %call2.i, i32 0, i32 3
  %24 = ptrtoint ptr %ds_num.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ds_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp26.not.i = icmp eq i32 %23, %25
  br i1 %cmp26.not.i, label %land.lhs.true24.i.if.end53.i_crit_edge, label %land.lhs.true24.i.do.body34.i_crit_edge

land.lhs.true24.i.do.body34.i_crit_edge:          ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body34.i

land.lhs.true24.i.if.end53.i_crit_edge:           ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.i

land.lhs.true29.i:                                ; preds = %if.end21.i
  %num_fh30.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %call, i32 0, i32 8
  %26 = ptrtoint ptr %num_fh30.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_fh30.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %17)
  %cmp32.not.i = icmp eq i32 %27, %17
  br i1 %cmp32.not.i, label %land.lhs.true29.i.if.end53.i_crit_edge, label %land.lhs.true29.i.do.body34.i_crit_edge

land.lhs.true29.i.do.body34.i_crit_edge:          ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body34.i

land.lhs.true29.i.if.end53.i_crit_edge:           ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.i

do.body34.i:                                      ; preds = %land.lhs.true29.i.do.body34.i_crit_edge, %land.lhs.true24.i.do.body34.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %28 = load i32, ptr @nfs_debug, align 4
  %and35.i = and i32 %28, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %do.body34.i.filelayout_check_deviceid.exit.thread8_crit_edge, label %do.end46.i, !prof !182

do.body34.i.filelayout_check_deviceid.exit.thread8_crit_edge: ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %filelayout_check_deviceid.exit.thread8

do.end46.i:                                       ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #14
  %num_fh48.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %call, i32 0, i32 8
  %29 = ptrtoint ptr %num_fh48.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_fh48.i, align 4
  %call49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, i32 noundef %30) #15
  br label %filelayout_check_deviceid.exit.thread8

if.end53.i:                                       ; preds = %land.lhs.true29.i.if.end53.i_crit_edge, %land.lhs.true24.i.if.end53.i_crit_edge, %land.lhs.true.i.if.end53.i_crit_edge, %if.end21.i.if.end53.i_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dsaddr1.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !192
  %31 = ptrtoint ptr %call2.i to i32
  tail call void @llvm.prefetch.p0(ptr %dsaddr1.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end53.i
  %32 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %dsaddr1.i, i32 0, i32 %31) #12, !srcloc !193
  %asmresult.i.i = extractvalue { i32, i32 } %32, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %32, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i.i)
  %cmp74.not.i = icmp eq i32 %asmresult1.i.i, 0
  br i1 %cmp74.not.i, label %__cmpxchg.exit.i.out_crit_edge, label %filelayout_check_deviceid.exit

__cmpxchg.exit.i.out_crit_edge:                   ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

filelayout_check_deviceid.exit.thread8:           ; preds = %do.end46.i, %do.body34.i.filelayout_check_deviceid.exit.thread8_crit_edge, %do.end.i, %do.body.i.filelayout_check_deviceid.exit.thread8_crit_edge, %filelayout_test_devid_unavailable.exit.i.filelayout_check_deviceid.exit.thread8_crit_edge, %if.end5.i.filelayout_check_deviceid.exit.thread8_crit_edge
  tail call void @nfs4_fl_put_deviceid(ptr noundef nonnull %call2.i) #12
  br label %if.then6

filelayout_check_deviceid.exit:                   ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nfs4_fl_put_deviceid(ptr noundef nonnull %call2.i) #12
  br label %out

if.then6:                                         ; preds = %filelayout_check_deviceid.exit.thread8, %if.end.i.if.then6_crit_edge
  tail call void @pnfs_put_lseg(ptr noundef nonnull %call) #12
  br label %out

out:                                              ; preds = %if.then6, %filelayout_check_deviceid.exit, %__cmpxchg.exit.i.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %lseg.0 = phi ptr [ %call, %entry.out_crit_edge ], [ null, %if.then6 ], [ %call, %filelayout_check_deviceid.exit ], [ %call, %if.end.out_crit_edge ], [ %call, %__cmpxchg.exit.i.out_crit_edge ]
  ret ptr %lseg.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_pageio_reset_read_mds(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pnfs_update_layout(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_put_lseg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_find_get_deviceid(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_generic_pg_test(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @filelayout_pg_init_write(ptr noundef %pgio, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pnfs_generic_pg_check_layout(ptr noundef %pgio) #12
  %pg_lseg = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 7
  %0 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pg_lseg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %pgio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pgio, align 4
  %wb_lock_context.i = getelementptr inbounds %struct.nfs_page, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %wb_lock_context.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wb_lock_context.i, align 4
  %open_context.i = getelementptr inbounds %struct.nfs_lock_context, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %open_context.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %open_context.i, align 4
  %call1 = tail call fastcc ptr @fl_pnfs_update_layout(ptr noundef %3, ptr noundef %7, i32 noundef 2, i32 noundef 3136)
  %8 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1, ptr %pg_lseg, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %call1 to i32
  %pg_error = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %pgio, i32 0, i32 4
  %10 = ptrtoint ptr %pg_error to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pg_error, align 4
  %11 = ptrtoint ptr %pg_lseg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pg_lseg, align 4
  br label %if.end12

if.end9:                                          ; preds = %if.then
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.then11, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nfs_pageio_reset_write_mds(ptr noundef %pgio) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge, %if.then5, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_generic_pg_writepages(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_pageio_reset_write_mds(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_fl_select_ds_fh(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_initiate_pgio(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @filelayout_read_prepare(ptr noundef %task, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20
  %context = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %flags = getelementptr inbounds %struct.nfs_open_context, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge, !prof !182

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %lseg = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 6
  %5 = ptrtoint ptr %lseg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lseg, align 4
  %dsaddr.i.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %dsaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dsaddr.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i.i.i, align 4
  %and1.i.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %filelayout_reset_to_mds.exit, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

filelayout_reset_to_mds.exit:                     ; preds = %if.end
  %call1.i.i = tail call zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef %8) #12
  br i1 %call1.i.i, label %filelayout_reset_to_mds.exit.do.body_crit_edge, label %if.end18

filelayout_reset_to_mds.exit.do.body_crit_edge:   ; preds = %filelayout_reset_to_mds.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %filelayout_reset_to_mds.exit.do.body_crit_edge, %if.end.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %11 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.do.end17_crit_edge, label %do.end, !prof !182

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %tk_pid = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 22
  %12 = ptrtoint ptr %tk_pid to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tk_pid, align 8
  %conv = zext i16 %13 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef %conv) #15
  br label %do.end17

do.end17:                                         ; preds = %do.end, %do.body.do.end17_crit_edge
  %flags.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 17
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %do.end17.cleanup.sink.split_crit_edge

do.end17.cleanup.sink.split_crit_edge:            ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

do.body.i:                                        ; preds = %do.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %14 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %do.body.i.do.end13.i_crit_edge, label %do.end.i, !prof !182

do.body.i.do.end13.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %tk_pid.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 18, i32 22
  %15 = ptrtoint ptr %tk_pid.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tk_pid.i, align 8
  %conv.i = zext i16 %16 to i32
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i, align 4
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 39
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 -448
  %21 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr.i.i.i, align 8
  %count.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20, i32 6
  %23 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count.i, align 8
  %offset.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20, i32 5
  %25 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %offset.i, align 8
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef %conv.i, ptr noundef %s_id.i, i64 noundef %22, i32 noundef %24, i64 noundef %26) #15
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i, %do.body.i.do.end13.i_crit_edge
  %call14.i = tail call i32 @pnfs_read_done_resend_to_mds(ptr noundef %data) #12
  %tk_status.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %tk_status.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call14.i, ptr %tk_status.i, align 4
  br label %cleanup.sink.split

if.end18:                                         ; preds = %filelayout_reset_to_mds.exit
  %pgio_done_cb = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 23
  %28 = ptrtoint ptr %pgio_done_cb to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @filelayout_read_done_cb, ptr %pgio_done_cb, align 4
  %ds_clp = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 26
  %29 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ds_clp, align 8
  %res = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 21
  %call20 = tail call i32 @nfs4_setup_sequence(ptr noundef %30, ptr noundef %args, ptr noundef %res, ptr noundef %task) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %stateid = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20, i32 4
  %31 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %context, align 4
  %lock_context = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20, i32 3
  %33 = ptrtoint ptr %lock_context to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lock_context, align 8
  %call28 = tail call i32 @nfs4_set_rw_stateid(ptr noundef %stateid, ptr noundef %32, ptr noundef %34, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call28)
  %cmp = icmp eq i32 %call28, -5
  br i1 %cmp, label %if.end23.cleanup.sink.split_crit_edge, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23.cleanup.sink.split_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end23.cleanup.sink.split_crit_edge, %do.end13.i, %do.end17.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ -5, %entry.cleanup.sink.split_crit_edge ], [ 0, %do.end17.cleanup.sink.split_crit_edge ], [ 0, %do.end13.i ], [ -5, %if.end23.cleanup.sink.split_crit_edge ]
  tail call void @rpc_exit(ptr noundef %task, i32 noundef %.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end23.cleanup_crit_edge, %if.end18.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @filelayout_read_call_done(ptr noundef %task, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 17
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %3 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tk_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %res = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 21
  %call1 = tail call i32 @nfs41_sequence_done(ptr noundef %task, ptr noundef %res) #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mds_ops = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 8
  %5 = ptrtoint ptr %mds_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mds_ops, align 8
  %rpc_call_done = getelementptr inbounds %struct.rpc_call_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %rpc_call_done to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rpc_call_done, align 4
  tail call void %8(ptr noundef %task, ptr noundef %data) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @filelayout_read_count_stats(ptr noundef %task, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %client = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %cl_metrics = getelementptr inbounds %struct.rpc_clnt, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %cl_metrics to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cl_metrics, align 4
  tail call void @rpc_count_iostats(ptr noundef %task, ptr noundef %9) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_rw_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_exit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @filelayout_read_done_cb(ptr noundef %task, ptr noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %0 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tk_status, align 4
  tail call fastcc void @trace_nfs4_pnfs_read(ptr noundef %hdr, i32 noundef %1)
  %ds_clp = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 26
  %2 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds_clp, align 8
  %lseg = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 6
  %4 = ptrtoint ptr %lseg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lseg, align 4
  %call = tail call fastcc i32 @filelayout_async_handle_error(ptr noundef %task, ptr noundef %3, ptr noundef %5)
  %6 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 -12001, label %sw.bb
    i32 -11, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %flags.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 17
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %sw.bb.filelayout_reset_read.exit_crit_edge

sw.bb.filelayout_reset_read.exit_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %filelayout_reset_read.exit

do.body.i:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %7 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %do.body.i.do.end13.i_crit_edge, label %do.end.i, !prof !182

do.body.i.do.end13.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %tk_pid.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 18, i32 22
  %8 = ptrtoint ptr %tk_pid.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tk_pid.i, align 8
  %conv.i = zext i16 %9 to i32
  %10 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdr, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i, align 4
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 39
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 -448
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr.i.i.i, align 8
  %count.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 6
  %16 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count.i, align 8
  %offset.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 5
  %18 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %offset.i, align 8
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef %conv.i, ptr noundef %s_id.i, i64 noundef %15, i32 noundef %17, i64 noundef %19) #15
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i, %do.body.i.do.end13.i_crit_edge
  %call14.i = tail call i32 @pnfs_read_done_resend_to_mds(ptr noundef %hdr) #12
  %tk_status.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %tk_status.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call14.i, ptr %tk_status.i, align 4
  br label %filelayout_reset_read.exit

filelayout_reset_read.exit:                       ; preds = %do.end13.i, %sw.bb.filelayout_reset_read.exit_crit_edge
  %21 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tk_status, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 @rpc_restart_call_prepare(ptr noundef %task) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %filelayout_reset_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %sw.bb2 ], [ %22, %filelayout_reset_read.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_set_rw_stateid(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_read_done_resend_to_mds(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_pnfs_read(ptr noundef %hdr, i32 noundef %error) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_pnfs_read, i32 0, i32 1), ptr blockaddress(@trace_nfs4_pnfs_read, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !187

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !172) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !182

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !172) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !195
  %call42 = tail call i32 @__traceiter_nfs4_pnfs_read(ptr noundef null, ptr noundef %hdr, i32 noundef %error) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !196
  %13 = tail call i32 @llvm.read_register.i32(metadata !172) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !172) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !182

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !172) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !190
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_pnfs_read, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_pnfs_read, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs4_pnfs_read.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfs4_pnfs_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1544, ptr noundef nonnull @.str.7) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !191
  %31 = tail call i32 @llvm.read_register.i32(metadata !172) #12
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
declare dso_local i32 @__traceiter_nfs4_pnfs_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs41_sequence_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @filelayout_write_done_cb(ptr noundef %task, ptr noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %0 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tk_status, align 4
  tail call fastcc void @trace_nfs4_pnfs_write(ptr noundef %hdr, i32 noundef %1)
  %ds_clp = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 26
  %2 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds_clp, align 8
  %lseg = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 6
  %4 = ptrtoint ptr %lseg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lseg, align 4
  %call = tail call fastcc i32 @filelayout_async_handle_error(ptr noundef %task, ptr noundef %3, ptr noundef %5)
  %6 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %call, label %sw.epilog [
    i32 -12001, label %sw.bb
    i32 -11, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %flags.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 17
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %sw.bb.filelayout_reset_write.exit_crit_edge

sw.bb.filelayout_reset_write.exit_crit_edge:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %filelayout_reset_write.exit

do.body.i:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %7 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %do.body.i.do.end13.i_crit_edge, label %do.end.i, !prof !182

do.body.i.do.end13.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %tk_pid.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 18, i32 22
  %8 = ptrtoint ptr %tk_pid.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tk_pid.i, align 8
  %conv.i = zext i16 %9 to i32
  %10 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdr, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i, align 4
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 39
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 -448
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr.i.i.i, align 8
  %count.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 6
  %16 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count.i, align 8
  %offset.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 20, i32 5
  %18 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %offset.i, align 8
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.64, i32 noundef %conv.i, ptr noundef %s_id.i, i64 noundef %15, i32 noundef %17, i64 noundef %19) #15
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i, %do.body.i.do.end13.i_crit_edge
  %call14.i = tail call i32 @pnfs_write_done_resend_to_mds(ptr noundef %hdr) #12
  %tk_status.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %tk_status.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call14.i, ptr %tk_status.i, align 4
  br label %filelayout_reset_write.exit

filelayout_reset_write.exit:                      ; preds = %do.end13.i, %sw.bb.filelayout_reset_write.exit_crit_edge
  %21 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tk_status, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 @rpc_restart_call_prepare(ptr noundef %task) #12
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %23 = ptrtoint ptr %lseg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lseg, align 4
  %commit_through_mds.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %commit_through_mds.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %commit_through_mds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i16 = icmp eq i32 %26, 0
  br i1 %tobool.not.i16, label %lor.lhs.false.i, label %sw.epilog.filelayout_set_layoutcommit.exit_crit_edge

sw.epilog.filelayout_set_layoutcommit.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %filelayout_set_layoutcommit.exit

lor.lhs.false.i:                                  ; preds = %sw.epilog
  %27 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 21, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %committed.i = getelementptr inbounds %struct.nfs_writeverf, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %committed.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %committed.i, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %31, label %lor.lhs.false.i.if.end7.i_crit_edge [
    i32 2, label %lor.lhs.false.i.filelayout_set_layoutcommit.exit_crit_edge
    i32 1, label %if.then5.i
  ]

lor.lhs.false.i.filelayout_set_layoutcommit.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %filelayout_set_layoutcommit.exit

lor.lhs.false.i.if.end7.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then5.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %mds_offset.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 24
  %33 = ptrtoint ptr %mds_offset.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %mds_offset.i, align 8
  %count.i17 = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 21, i32 2
  %35 = ptrtoint ptr %count.i17 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %count.i17, align 8
  %add.i = add i64 %36, %34
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %lor.lhs.false.i.if.end7.i_crit_edge
  %end_offs.0.i = phi i64 [ %add.i, %if.then5.i ], [ 0, %lor.lhs.false.i.if.end7.i_crit_edge ]
  %37 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hdr, align 8
  tail call void @pnfs_set_layoutcommit(ptr noundef %38, ptr noundef %24, i64 noundef %end_offs.0.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %39 = load i32, ptr @nfs_debug, align 4
  %and.i18 = and i32 %39, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18)
  %tobool9.not.i = icmp eq i32 %and.i18, 0
  br i1 %tobool9.not.i, label %if.end7.i.filelayout_set_layoutcommit.exit_crit_edge, label %do.end.i20, !prof !182

if.end7.i.filelayout_set_layoutcommit.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %filelayout_set_layoutcommit.exit

do.end.i20:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hdr, align 8
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i_ino.i, align 8
  %layout.i = getelementptr i8, ptr %41, i32 -32
  %44 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %layout.i, align 8
  %plh_lwb.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %45, i32 0, i32 13
  %46 = ptrtoint ptr %plh_lwb.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %plh_lwb.i, align 8
  %conv.i19 = trunc i64 %47 to i32
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef %43, i32 noundef %conv.i19) #15
  br label %filelayout_set_layoutcommit.exit

filelayout_set_layoutcommit.exit:                 ; preds = %do.end.i20, %if.end7.i.filelayout_set_layoutcommit.exit_crit_edge, %lor.lhs.false.i.filelayout_set_layoutcommit.exit_crit_edge, %sw.epilog.filelayout_set_layoutcommit.exit_crit_edge
  %fattr = getelementptr inbounds %struct.nfs_pgio_header, ptr %hdr, i32 0, i32 19
  %48 = ptrtoint ptr %fattr to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %fattr, align 8
  %49 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tk_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp = icmp sgt i32 %50, -1
  br i1 %cmp, label %if.then, label %filelayout_set_layoutcommit.exit.cleanup_crit_edge

filelayout_set_layoutcommit.exit.cleanup_crit_edge: ; preds = %filelayout_set_layoutcommit.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %filelayout_set_layoutcommit.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nfs_writeback_update_inode(ptr noundef %hdr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %filelayout_set_layoutcommit.exit.cleanup_crit_edge, %sw.bb2, %filelayout_reset_write.exit
  %retval.0 = phi i32 [ -11, %sw.bb2 ], [ %22, %filelayout_reset_write.exit ], [ 0, %if.then ], [ 0, %filelayout_set_layoutcommit.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_pnfs_write(ptr noundef %hdr, i32 noundef %error) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_pnfs_write, i32 0, i32 1), ptr blockaddress(@trace_nfs4_pnfs_write, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !187

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !172) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !182

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !172) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !197
  %call42 = tail call i32 @__traceiter_nfs4_pnfs_write(ptr noundef null, ptr noundef %hdr, i32 noundef %error) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !198
  %13 = tail call i32 @llvm.read_register.i32(metadata !172) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !172) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !182

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !172) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !190
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_pnfs_write, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_pnfs_write, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs4_pnfs_write.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_nfs4_pnfs_write.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1619, ptr noundef nonnull @.str.7) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !191
  %31 = tail call i32 @llvm.read_register.i32(metadata !172) #12
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
declare dso_local void @nfs_writeback_update_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_pnfs_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_write_done_resend_to_mds(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @filelayout_write_prepare(ptr noundef %task, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20
  %context = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %flags = getelementptr inbounds %struct.nfs_open_context, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge, !prof !182

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %lseg = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 6
  %5 = ptrtoint ptr %lseg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lseg, align 4
  %dsaddr.i.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %dsaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dsaddr.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i.i.i, align 4
  %and1.i.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %filelayout_reset_to_mds.exit, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

filelayout_reset_to_mds.exit:                     ; preds = %if.end
  %call1.i.i = tail call zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef %8) #12
  br i1 %call1.i.i, label %filelayout_reset_to_mds.exit.do.body_crit_edge, label %if.end18

filelayout_reset_to_mds.exit.do.body_crit_edge:   ; preds = %filelayout_reset_to_mds.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %filelayout_reset_to_mds.exit.do.body_crit_edge, %if.end.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %11 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.do.end17_crit_edge, label %do.end, !prof !182

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %tk_pid = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 22
  %12 = ptrtoint ptr %tk_pid to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tk_pid, align 8
  %conv = zext i16 %13 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.67, i32 noundef %conv) #15
  br label %do.end17

do.end17:                                         ; preds = %do.end, %do.body.do.end17_crit_edge
  %flags.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 17
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %do.end17.cleanup.sink.split_crit_edge

do.end17.cleanup.sink.split_crit_edge:            ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

do.body.i:                                        ; preds = %do.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %14 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %do.body.i.do.end13.i_crit_edge, label %do.end.i, !prof !182

do.body.i.do.end13.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %tk_pid.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 18, i32 22
  %15 = ptrtoint ptr %tk_pid.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tk_pid.i, align 8
  %conv.i = zext i16 %16 to i32
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i, align 4
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 39
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 -448
  %21 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr.i.i.i, align 8
  %count.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20, i32 6
  %23 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count.i, align 8
  %offset.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20, i32 5
  %25 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %offset.i, align 8
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.64, i32 noundef %conv.i, ptr noundef %s_id.i, i64 noundef %22, i32 noundef %24, i64 noundef %26) #15
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i, %do.body.i.do.end13.i_crit_edge
  %call14.i = tail call i32 @pnfs_write_done_resend_to_mds(ptr noundef %data) #12
  %tk_status.i = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %tk_status.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call14.i, ptr %tk_status.i, align 4
  br label %cleanup.sink.split

if.end18:                                         ; preds = %filelayout_reset_to_mds.exit
  %ds_clp = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 26
  %28 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ds_clp, align 8
  %res = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 21
  %call20 = tail call i32 @nfs4_setup_sequence(ptr noundef %29, ptr noundef %args, ptr noundef %res, ptr noundef %task) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %stateid = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20, i32 4
  %30 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %context, align 4
  %lock_context = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 20, i32 3
  %32 = ptrtoint ptr %lock_context to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lock_context, align 8
  %call28 = tail call i32 @nfs4_set_rw_stateid(ptr noundef %stateid, ptr noundef %31, ptr noundef %33, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call28)
  %cmp = icmp eq i32 %call28, -5
  br i1 %cmp, label %if.end23.cleanup.sink.split_crit_edge, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23.cleanup.sink.split_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end23.cleanup.sink.split_crit_edge, %do.end13.i, %do.end17.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ -5, %entry.cleanup.sink.split_crit_edge ], [ 0, %do.end17.cleanup.sink.split_crit_edge ], [ 0, %do.end13.i ], [ -5, %if.end23.cleanup.sink.split_crit_edge ]
  tail call void @rpc_exit(ptr noundef %task, i32 noundef %.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end23.cleanup_crit_edge, %if.end18.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @filelayout_write_call_done(ptr noundef %task, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 17
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %3 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tk_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %res = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 21
  %call1 = tail call i32 @nfs41_sequence_done(ptr noundef %task, ptr noundef %res) #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mds_ops = getelementptr inbounds %struct.nfs_pgio_header, ptr %data, i32 0, i32 8
  %5 = ptrtoint ptr %mds_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mds_ops, align 8
  %rpc_call_done = getelementptr inbounds %struct.rpc_call_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %rpc_call_done to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rpc_call_done, align 4
  tail call void %8(ptr noundef %task, ptr noundef %data) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @filelayout_write_count_stats(ptr noundef %task, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %client = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %cl_metrics = getelementptr inbounds %struct.rpc_clnt, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %cl_metrics to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cl_metrics, align 4
  tail call void @rpc_count_iostats(ptr noundef %task, ptr noundef %9) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_fl_free_deviceid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_fl_alloc_deviceid_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_register_layoutdriver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !109, !110, !111, !112, !114, !115, !116, !118, !120, !122, !123, !124, !125, !127, !128, !129, !131, !133, !134, !135, !136, !138, !139, !140, !141, !143, !144, !146, !147, !148, !149, !151, !152, !154, !155, !156, !158, !159, !160, !161, !163, !165, !166, !167, !169, !170, !171}
!llvm.named.register.sp = !{!172}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !{ptr @__UNIQUE_ID_file697, !1, !"__UNIQUE_ID_file697", i1 false, i1 false}
!1 = !{!"../fs/nfs/filelayout/filelayout.c", i32 47, i32 1}
!2 = !{ptr @__UNIQUE_ID_license698, !1, !"__UNIQUE_ID_license698", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author699, !4, !"__UNIQUE_ID_author699", i1 false, i1 false}
!4 = !{!"../fs/nfs/filelayout/filelayout.c", i32 48, i32 1}
!5 = !{ptr @__UNIQUE_ID_description700, !6, !"__UNIQUE_ID_description700", i1 false, i1 false}
!6 = !{!"../fs/nfs/filelayout/filelayout.c", i32 49, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/nfs/filelayout/filelayout.c", i32 1137, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nfs4filelayout_exit._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @nfs4filelayout_exit._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias706, !14, !"__UNIQUE_ID_alias706", i1 false, i1 false}
!14 = !{!"../fs/nfs/filelayout/filelayout.c", i32 1142, i32 1}
!15 = !{ptr @__initcall__kmod_nfs_layout_nfsv41_files__707_1144_nfs4filelayout_init6, !16, !"__initcall__kmod_nfs_layout_nfsv41_files__707_1144_nfs4filelayout_init6", i1 false, i1 false}
!16 = !{!"../fs/nfs/filelayout/filelayout.c", i32 1144, i32 1}
!17 = !{ptr @__exitcall_nfs4filelayout_exit, !18, !"__exitcall_nfs4filelayout_exit", i1 false, i1 false}
!18 = !{!"../fs/nfs/filelayout/filelayout.c", i32 1145, i32 1}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/nfs/filelayout/filelayout.c", i32 1110, i32 12}
!21 = !{ptr @filelayout_type, !22, !"filelayout_type", i1 false, i1 false}
!22 = !{!"../fs/nfs/filelayout/filelayout.c", i32 1108, i32 38}
!23 = !{ptr @filelayout_commit_ops, !24, !"filelayout_commit_ops", i1 false, i1 false}
!24 = !{!"../fs/nfs/filelayout/filelayout.c", i32 1097, i32 37}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/nfs/filelayout/filelayout.c", i32 995, i32 2}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @filelayout_initiate_commit._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @filelayout_initiate_commit._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../fs/nfs/filelayout/../nfs4trace.h", i32 1681, i32 1}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!34 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!37 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/nfs/filelayout/filelayout.c", i32 145, i32 3}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @filelayout_async_handle_error._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @filelayout_async_handle_error._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/nfs/filelayout/filelayout.c", i32 164, i32 3}
!45 = !{ptr @filelayout_async_handle_error._entry.11, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @filelayout_async_handle_error._entry_ptr.13, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/nfs/filelayout/filelayout.c", i32 184, i32 3}
!49 = !{ptr @filelayout_async_handle_error._entry.14, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @filelayout_async_handle_error._entry_ptr.16, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/nfs/filelayout/filelayout.c", i32 193, i32 3}
!53 = !{ptr @filelayout_async_handle_error._entry.17, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @filelayout_async_handle_error._entry_ptr.19, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @filelayout_commit_call_ops, !56, !"filelayout_commit_call_ops", i1 false, i1 false}
!56 = !{!"../fs/nfs/filelayout/filelayout.c", i32 440, i32 34}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/nfs/filelayout/filelayout.c", i32 771, i32 2}
!59 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @filelayout_alloc_lseg._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @filelayout_alloc_lseg._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/nfs/filelayout/filelayout.c", i32 660, i32 2}
!64 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @filelayout_decode_layout._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @filelayout_decode_layout._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/nfs/filelayout/filelayout.c", i32 692, i32 2}
!69 = !{ptr @filelayout_decode_layout._entry.24, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @filelayout_decode_layout._entry_ptr.26, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/nfs/filelayout/filelayout.c", i32 720, i32 4}
!73 = !{ptr @filelayout_decode_layout._entry.27, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @filelayout_decode_layout._entry_ptr.29, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/nfs/filelayout/filelayout.c", i32 729, i32 3}
!77 = !{ptr @filelayout_decode_layout._entry.30, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @filelayout_decode_layout._entry_ptr.32, !76, !"_entry_ptr", i1 false, i1 false}
!79 = distinct !{null, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/nfs/filelayout/filelayout.c", i32 604, i32 2}
!83 = !{ptr @filelayout_check_layout._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @filelayout_check_layout._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/nfs/filelayout/filelayout.c", i32 609, i32 3}
!87 = !{ptr @filelayout_check_layout._entry.35, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @filelayout_check_layout._entry_ptr.37, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/nfs/filelayout/filelayout.c", i32 615, i32 3}
!91 = !{ptr @filelayout_check_layout._entry.38, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @filelayout_check_layout._entry_ptr.40, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/nfs/filelayout/filelayout.c", i32 621, i32 3}
!95 = !{ptr @filelayout_check_layout._entry.41, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @filelayout_check_layout._entry_ptr.43, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/nfs/filelayout/filelayout.c", i32 628, i32 2}
!99 = !{ptr @filelayout_check_layout._entry.44, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @filelayout_check_layout._entry_ptr.46, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/nfs/filelayout/filelayout.c", i32 746, i32 2}
!103 = !{ptr @filelayout_free_lseg._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @filelayout_free_lseg._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @filelayout_pg_read_ops, !106, !"filelayout_pg_read_ops", i1 false, i1 false}
!106 = !{!"../fs/nfs/filelayout/filelayout.c", i32 906, i32 36}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/nfs/filelayout/filelayout.c", i32 560, i32 3}
!109 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @filelayout_check_deviceid._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @filelayout_check_deviceid._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/nfs/filelayout/filelayout.c", i32 569, i32 3}
!114 = !{ptr @filelayout_check_deviceid._entry.50, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @filelayout_check_deviceid._entry_ptr.52, !113, !"_entry_ptr", i1 false, i1 false}
!116 = distinct !{null, !117, !"__already_done", i1 false, i1 false}
!117 = !{!"../fs/nfs/filelayout/filelayout.c", i32 820, i32 2}
!118 = !{ptr @filelayout_pg_write_ops, !119, !"filelayout_pg_write_ops", i1 false, i1 false}
!119 = !{!"../fs/nfs/filelayout/filelayout.c", i32 913, i32 36}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/nfs/filelayout/filelayout.c", i32 457, i32 2}
!122 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @filelayout_read_pagelist._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @filelayout_read_pagelist._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/nfs/filelayout/filelayout.c", i32 472, i32 2}
!127 = !{ptr @filelayout_read_pagelist._entry.55, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @filelayout_read_pagelist._entry_ptr.57, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @filelayout_read_call_ops, !130, !"filelayout_read_call_ops", i1 false, i1 false}
!130 = !{!"../fs/nfs/filelayout/filelayout.c", i32 426, i32 34}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/nfs/filelayout/filelayout.c", i32 275, i32 3}
!133 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @filelayout_read_prepare._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @filelayout_read_prepare._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/nfs/filelayout/filelayout.c", i32 111, i32 3}
!138 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @filelayout_reset_read._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @filelayout_reset_read._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = distinct !{null, !142, !"__already_done", i1 false, i1 false}
!142 = !{!"../fs/nfs/filelayout/../nfs4trace.h", i32 1544, i32 1}
!143 = distinct !{null, !142, !"__warned", i1 false, i1 false}
!144 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/nfs/filelayout/filelayout.c", i32 515, i32 2}
!146 = !{ptr @.str.63, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @filelayout_write_pagelist._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @filelayout_write_pagelist._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = distinct !{null, !150, !"__already_done", i1 false, i1 false}
!150 = !{!"../fs/nfs/filelayout/../nfs4trace.h", i32 1619, i32 1}
!151 = distinct !{null, !150, !"__warned", i1 false, i1 false}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/nfs/filelayout/filelayout.c", i32 94, i32 3}
!154 = !{ptr @filelayout_reset_write._entry, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @filelayout_reset_write._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.65, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/nfs/filelayout/filelayout.c", i32 242, i32 2}
!158 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @filelayout_set_layoutcommit._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @filelayout_set_layoutcommit._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @filelayout_write_call_ops, !162, !"filelayout_write_call_ops", i1 false, i1 false}
!162 = !{!"../fs/nfs/filelayout/filelayout.c", i32 433, i32 34}
!163 = !{ptr @.str.67, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/nfs/filelayout/filelayout.c", i32 373, i32 3}
!165 = !{ptr @filelayout_write_prepare._entry, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @filelayout_write_prepare._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.68, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/nfs/filelayout/filelayout.c", i32 1130, i32 2}
!169 = !{ptr @.str.69, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @nfs4filelayout_init._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @nfs4filelayout_init._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{!"sp"}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 1, !"min_enum_size", i32 4}
!175 = !{i32 8, !"branch-target-enforcement", i32 0}
!176 = !{i32 8, !"sign-return-address", i32 0}
!177 = !{i32 8, !"sign-return-address-all", i32 0}
!178 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!182 = !{!"branch_weights", i32 2000, i32 1}
!183 = !{!"branch_weights", i32 1, i32 2000}
!184 = !{i64 2148323946, i64 2148323978, i64 2148324007, i64 2148324041, i64 2148324072, i64 2148324095}
!185 = !{i64 2148712950, i64 2148713230, i64 2148713564, i64 2148713898}
!186 = !{i64 2159773657, i64 2159774151, i64 2159773694, i64 2159773750, i64 2159773784, i64 2159773808, i64 2159773849, i64 2159773870, i64 2159773898, i64 2159773932}
!187 = !{i64 2148804231, i64 2148804236, i64 2148804249, i64 2148804293, i64 2148804327, i64 2148804348}
!188 = !{i64 2159224636}
!189 = !{i64 2159224859}
!190 = !{i64 2149407276}
!191 = !{i64 2149408312}
!192 = !{i64 2159807162}
!193 = !{i64 831908, i64 831929, i64 831952, i64 831971, i64 831990}
!194 = !{i64 2159807578}
!195 = !{i64 2159154144}
!196 = !{i64 2159154355}
!197 = !{i64 2159187177}
!198 = !{i64 2159187390}
