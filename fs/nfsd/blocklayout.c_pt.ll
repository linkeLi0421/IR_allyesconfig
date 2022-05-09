; ModuleID = '/llk/IR_all_yes/fs/nfsd/blocklayout.c_pt.bc'
source_filename = "../fs/nfsd/blocklayout.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nfsd4_layout_ops = type { i32, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
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
%struct.nfsd4_getdeviceinfo = type { %struct.nfsd4_deviceid, i32, i32, i32, ptr }
%struct.nfsd4_deviceid = type { i64, i32, i32 }
%struct.pnfs_block_deviceaddr = type { i32, [0 x %struct.pnfs_block_volume] }
%struct.pnfs_block_volume = type { i32, %union.anon.162 }
%union.anon.162 = type { %struct.anon.164 }
%struct.anon.164 = type { i32, i32, i32, [256 x i8], i64 }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.anon.163 = type { i64, i32, [128 x i8] }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.nfsd4_layoutget = type { i64, i32, i32, i32, %struct.stateid_t, %struct.nfsd4_layout_seg, ptr }
%struct.stateid_t = type { i32, %struct.stateid_opaque_t }
%struct.stateid_opaque_t = type { %struct.clientid_t, i32 }
%struct.clientid_t = type { i32, i32 }
%struct.nfsd4_layout_seg = type { i32, i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.123, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.124, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.125, ptr, %struct.address_space, %struct.list_head, %union.anon.126, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.123 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.124 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.125 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.126 = type { ptr }
%struct.pnfs_block_extent = type { %struct.nfsd4_deviceid, i64, i64, i64, i32 }
%struct.nfsd4_layoutcommit = type { %struct.stateid_t, %struct.nfsd4_layout_seg, i32, i32, i64, %struct.timespec64, i32, i32, ptr, i32, i64 }
%struct.nfs4_client = type { %struct.list_head, %struct.rb_node, ptr, %struct.list_head, %struct.idr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.xdr_netobj, %struct.nfs4_verifier, i64, %struct.__kernel_sockaddr_storage, i8, %struct.svc_cred, %struct.clientid_t, %struct.nfs4_verifier, i32, %struct.xdr_netobj, %struct.xdr_netobj, %struct.timespec64, %struct.nfs4_cb_conn, i32, ptr, ptr, i32, i32, %struct.nfsd4_callback, ptr, %struct.spinlock, %struct.list_head, %struct.nfsd4_clid_slot, i32, %struct.atomic_t, %struct.nfsdfs_client, %struct.nfs4_op_map, ptr, ptr, i32, %struct.rpc_wait_queue, ptr, %struct.list_head, %struct.spinlock, %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon.138 }
%union.anon.138 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.xdr_netobj = type { i32, ptr }
%struct.nfs4_cb_conn = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, i32, i32, i32, ptr }
%struct.nfsd4_callback = type { ptr, %struct.rpc_message, ptr, %struct.work_struct, i32, i32, i8, i8 }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.nfsd4_clid_slot = type { i32, i32, %struct.nfsd4_create_session }
%struct.nfsd4_create_session = type { %struct.clientid_t, %struct.nfs4_sessionid, i32, i32, %struct.nfsd4_channel_attrs, %struct.nfsd4_channel_attrs, i32, %struct.nfsd4_cb_sec }
%struct.nfs4_sessionid = type { [16 x i8] }
%struct.nfsd4_channel_attrs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfsd4_cb_sec = type { i32, %struct.kuid_t, %struct.kgid_t }
%struct.nfsdfs_client = type { %struct.kref, ptr }
%struct.nfs4_op_map = type { %union.anon.141 }
%union.anon.141 = type { [3 x i32] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pr_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.nfs4_stid = type { %struct.refcount_struct, %struct.list_head, i8, %struct.stateid_t, %struct.spinlock, ptr, ptr, ptr }
%struct.nfs4_layout_stateid = type { %struct.nfs4_stid, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, i32, ptr, %struct.nfsd4_callback, %struct.stateid_t, i8, %struct.mutex }
%struct.nfsd_file = type { %struct.hlist_node, %struct.list_head, %struct.callback_head, ptr, ptr, ptr, i32, ptr, i32, %struct.refcount_struct, i8, ptr }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }

@bl_layout_ops = dso_local constant { %struct.nfsd4_layout_ops, [32 x i8] } { %struct.nfsd4_layout_ops { i32 6, i8 0, ptr @nfsd4_block_proc_getdeviceinfo, ptr @nfsd4_block_encode_getdeviceinfo, ptr @nfsd4_block_proc_layoutget, ptr @nfsd4_block_encode_layoutget, ptr @nfsd4_block_proc_layoutcommit, ptr null }, [32 x i8] zeroinitializer }, align 32
@scsi_layout_ops = dso_local constant { %struct.nfsd4_layout_ops, [32 x i8] } { %struct.nfsd4_layout_ops { i32 6, i8 0, ptr @nfsd4_scsi_proc_getdeviceinfo, ptr @nfsd4_block_encode_getdeviceinfo, ptr @nfsd4_block_proc_layoutget, ptr @nfsd4_block_encode_layoutget, ptr @nfsd4_scsi_proc_layoutcommit, ptr @nfsd4_scsi_fence_client }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfsd_debug = external dso_local local_unnamed_addr global i32, align 4
@nfsd4_block_proc_layoutget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pnfsd: I/O misaligned\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfsd4_block_proc_layoutget\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/nfsd/blocklayout.c\00", [42 x i8] zeroinitializer }, align 32
@nfsd4_block_proc_layoutget._entry_ptr = internal global ptr @nfsd4_block_proc_layoutget._entry, section ".printk_index", align 4
@nfsd4_block_proc_layoutget._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pnfsd: extent smaller than minlength\0A\00", [58 x i8] zeroinitializer }, align 32
@nfsd4_block_proc_layoutget._entry_ptr.5 = internal global ptr @nfsd4_block_proc_layoutget._entry.3, section ".printk_index", align 4
@nfsd4_block_proc_layoutget._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pnfsd: no soup for you!\0A\00", [39 x i8] zeroinitializer }, align 32
@nfsd4_block_proc_layoutget._entry_ptr.8 = internal global ptr @nfsd4_block_proc_layoutget._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pnfsd: filesystem returned %d extent\0A\00", [58 x i8] zeroinitializer }, align 32
@nfsd4_block_proc_layoutget._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GET: 0x%llx:0x%llx %d\0A\00", [41 x i8] zeroinitializer }, align 32
@nfsd4_block_proc_layoutget._entry_ptr.12 = internal global ptr @nfsd4_block_proc_layoutget._entry.10, section ".printk_index", align 4
@nfsd4_block_get_device_info_scsi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013pNFS: device %s does not support PRs.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nfsd4_block_get_device_info_scsi\00", [63 x i8] zeroinitializer }, align 32
@nfsd4_block_get_device_info_scsi._entry_ptr = internal global ptr @nfsd4_block_get_device_info_scsi._entry, section ".printk_index", align 4
@nfsd4_block_get_device_info_scsi._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013pNFS: failed to register key for device %s.\0A\00", [49 x i8] zeroinitializer }, align 32
@nfsd4_block_get_device_info_scsi._entry_ptr.17 = internal global ptr @nfsd4_block_get_device_info_scsi._entry.15, section ".printk_index", align 4
@nfsd4_block_get_device_info_scsi._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013pNFS: failed to reserve device %s.\0A\00", [58 x i8] zeroinitializer }, align 32
@nfsd4_block_get_device_info_scsi._entry_ptr.20 = internal global ptr @nfsd4_block_get_device_info_scsi._entry.18, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967290]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 2, i64 3]
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"bl_layout_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 190, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"scsi_layout_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 338, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 33, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 57, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 75, i32 5 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 92, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 105, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 276, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 283, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [25 x i8] c"../fs/nfsd/blocklayout.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 291, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @nfsd4_block_get_device_info_scsi._entry, ptr @nfsd4_block_get_device_info_scsi._entry.15, ptr @nfsd4_block_get_device_info_scsi._entry.18, ptr @nfsd4_block_get_device_info_scsi._entry_ptr, ptr @nfsd4_block_get_device_info_scsi._entry_ptr.17, ptr @nfsd4_block_get_device_info_scsi._entry_ptr.20, ptr @nfsd4_block_proc_layoutget._entry, ptr @nfsd4_block_proc_layoutget._entry.10, ptr @nfsd4_block_proc_layoutget._entry.3, ptr @nfsd4_block_proc_layoutget._entry.6, ptr @nfsd4_block_proc_layoutget._entry_ptr, ptr @nfsd4_block_proc_layoutget._entry_ptr.12, ptr @nfsd4_block_proc_layoutget._entry_ptr.5, ptr @nfsd4_block_proc_layoutget._entry_ptr.8, ptr @bl_layout_ops, ptr @scsi_layout_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_layout_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_layout_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_block_proc_layoutget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_block_proc_layoutget._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_block_proc_layoutget._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_block_proc_layoutget._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_block_get_device_info_scsi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_block_get_device_info_scsi._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_block_get_device_info_scsi._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_block_proc_getdeviceinfo(ptr noundef %sb, ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %clp, ptr nocapture noundef writeonly %gdp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %0 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_bdev, align 4
  %bd_partno.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %bd_partno.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bd_partno.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 296) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.nfsd4_block_get_device_info_simple.exit_crit_edge, label %if.end.i

if.end.nfsd4_block_get_device_info_simple.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfsd4_block_get_device_info_simple.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %gd_device.i = getelementptr inbounds %struct.nfsd4_getdeviceinfo, ptr %gdp, i32 0, i32 4
  %5 = ptrtoint ptr %gd_device.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i.i, ptr %gd_device.i, align 4
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %call7.i.i.i, align 8
  %volumes.i = getelementptr inbounds %struct.pnfs_block_deviceaddr, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %volumes.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %volumes.i, align 8
  %8 = getelementptr inbounds %struct.pnfs_block_deviceaddr, ptr %call7.i.i.i, i32 2
  %sig_len.i = getelementptr inbounds %struct.pnfs_block_deviceaddr, ptr %call7.i.i.i, i32 3
  %9 = ptrtoint ptr %sig_len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 128, ptr %sig_len.i, align 8
  %s_export_op.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 9
  %10 = ptrtoint ptr %s_export_op.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_export_op.i, align 16
  %get_uuid.i = getelementptr inbounds %struct.export_operations, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %get_uuid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_uuid.i, align 4
  %sig.i = getelementptr inbounds %struct.anon.163, ptr %8, i32 0, i32 2
  %call2.i = tail call i32 %13(ptr noundef %sb, ptr noundef %sig.i, ptr noundef %sig_len.i, ptr noundef %8) #6
  br label %nfsd4_block_get_device_info_simple.exit

nfsd4_block_get_device_info_simple.exit:          ; preds = %if.end.i, %if.end.nfsd4_block_get_device_info_simple.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ -12, %if.end.nfsd4_block_get_device_info_simple.exit_crit_edge ]
  %call2 = tail call i32 @nfserrno(i32 noundef %retval.0.i) #6
  br label %return

return:                                           ; preds = %nfsd4_block_get_device_info_simple.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %nfsd4_block_get_device_info_simple.exit ], [ 22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_block_encode_getdeviceinfo(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_block_proc_layoutget(ptr noundef %inode, ptr noundef %fhp, ptr nocapture noundef %args) #0 align 64 {
entry:
  %iomap = alloca %struct.iomap, align 8
  %device_generation = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lg_seg = getelementptr inbounds %struct.nfsd4_layoutget, ptr %args, i32 0, i32 5
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %2 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %3 to i32
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %iomap) #6
  %4 = call ptr @memset(ptr %iomap, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device_generation) #6
  %5 = ptrtoint ptr %device_generation to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %device_generation, align 4
  %offset = getelementptr inbounds %struct.nfsd4_layoutget, ptr %args, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %offset, align 8
  %notmask = shl nsw i32 -1, %conv.i
  %sub = xor i32 %notmask, -1
  %conv = zext i32 %sub to i64
  %and = and i64 %7, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %8 = load i32, ptr @nfsd_debug, align 4
  %and1 = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %do.body.out_layoutunavailable_crit_edge, label %do.end

do.body.out_layoutunavailable_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_layoutunavailable

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %out_layoutunavailable

if.end8:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 48) #9
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end8.out_error_crit_edge, label %if.end12

if.end8.out_error_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_error

if.end12:                                         ; preds = %if.end8
  %lg_content = getelementptr inbounds %struct.nfsd4_layoutget, ptr %args, i32 0, i32 6
  %10 = ptrtoint ptr %lg_content to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %lg_content, align 8
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %s_export_op to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_export_op, align 16
  %map_blocks = getelementptr inbounds %struct.export_operations, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %map_blocks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map_blocks, align 4
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %offset, align 8
  %length = getelementptr inbounds %struct.nfsd4_layoutget, ptr %args, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %length, align 8
  %19 = ptrtoint ptr %lg_seg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lg_seg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp = icmp ne i32 %20, 1
  %call15 = call i32 %14(ptr noundef %inode, i64 noundef %16, i64 noundef %18, ptr noundef nonnull %iomap, i1 noundef zeroext %cmp, ptr noundef nonnull %device_generation) #6
  %21 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call15, label %if.end12.out_error_crit_edge [
    i32 0, label %if.end22
    i32 -6, label %if.end12.out_layoutunavailable_crit_edge
  ]

if.end12.out_layoutunavailable_crit_edge:         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_layoutunavailable

if.end12.out_error_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_error

if.end22:                                         ; preds = %if.end12
  %length23 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 2
  %22 = ptrtoint ptr %length23 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %length23, align 8
  %24 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %args, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %25)
  %cmp24 = icmp ult i64 %23, %25
  br i1 %cmp24, label %do.body27, label %if.end39

do.body27:                                        ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %26 = load i32, ptr @nfsd_debug, align 4
  %and28 = and i32 %26, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body27.out_layoutunavailable_crit_edge, label %do.end33

do.body27.out_layoutunavailable_crit_edge:        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_layoutunavailable

do.end33:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %out_layoutunavailable

if.end39:                                         ; preds = %if.end22
  %type = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %type, align 8
  %29 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %28, label %if.end39.do.end88_crit_edge [
    i16 2, label %sw.bb
    i16 3, label %sw.bb47
    i16 0, label %sw.bb73thread-pre-split
  ]

if.end39.do.end88_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end88

sw.bb:                                            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %lg_seg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lg_seg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp42 = icmp eq i32 %31, 1
  %spec.select = zext i1 %cmp42 to i32
  %32 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.select, ptr %32, align 8
  %34 = ptrtoint ptr %iomap to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %iomap, align 8
  %soff = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %soff to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %soff, align 8
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end39
  %37 = ptrtoint ptr %lg_seg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lg_seg, align 8
  %and49 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %sw.bb47.sw.bb73_crit_edge, label %if.then51

sw.bb47.sw.bb73_crit_edge:                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb73

if.then51:                                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %cmp53 = icmp eq i64 %25, 0
  br i1 %cmp53, label %do.body56, label %if.end68

do.body56:                                        ; preds = %if.then51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %39 = load i32, ptr @nfsd_debug, align 4
  %and57 = and i32 %39, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.body56.out_layoutunavailable_crit_edge, label %do.end62

do.body56.out_layoutunavailable_crit_edge:        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_layoutunavailable

do.end62:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #8
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  br label %out_layoutunavailable

if.end68:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  %es69 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i, i32 0, i32 4
  %40 = ptrtoint ptr %es69 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %es69, align 8
  %41 = ptrtoint ptr %iomap to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %iomap, align 8
  %soff71 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %soff71 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %soff71, align 8
  br label %sw.epilog

sw.bb73thread-pre-split:                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %lg_seg to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr = load i32, ptr %lg_seg, align 8
  br label %sw.bb73

sw.bb73:                                          ; preds = %sw.bb73thread-pre-split, %sw.bb47.sw.bb73_crit_edge
  %45 = phi i32 [ %.pr, %sw.bb73thread-pre-split ], [ %38, %sw.bb47.sw.bb73_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp75 = icmp eq i32 %45, 1
  br i1 %cmp75, label %if.then77, label %sw.bb73.do.end88_crit_edge

sw.bb73.do.end88_crit_edge:                       ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end88

if.then77:                                        ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #8
  %es78 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i, i32 0, i32 4
  %46 = ptrtoint ptr %es78 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3, ptr %es78, align 8
  br label %sw.epilog

do.end88:                                         ; preds = %sw.bb73.do.end88_crit_edge, %if.end39.do.end88_crit_edge
  %conv90 = zext i16 %28 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 92, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %conv90) #6
  br label %out_layoutunavailable

sw.epilog:                                        ; preds = %if.then77, %if.end68, %sw.bb
  %47 = ptrtoint ptr %device_generation to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %device_generation, align 4
  %call104 = call i32 @nfsd4_set_deviceid(ptr noundef nonnull %call7.i.i, ptr noundef %fhp, i32 noundef %48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %sw.epilog.out_error_crit_edge

sw.epilog.out_error_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_error

if.end107:                                        ; preds = %sw.epilog
  %offset108 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 1
  %49 = ptrtoint ptr %offset108 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %offset108, align 8
  %foff = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %foff to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %foff, align 8
  %52 = ptrtoint ptr %length23 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %length23, align 8
  %len = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i, i32 0, i32 2
  %54 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %len, align 8
  %55 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %50, ptr %offset, align 8
  %56 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %53, ptr %length, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %57 = load i32, ptr @nfsd_debug, align 4
  %and115 = and i32 %57, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.end107.cleanup_crit_edge, label %do.end120

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end120:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  %es124 = getelementptr inbounds %struct.pnfs_block_extent, ptr %call7.i.i, i32 0, i32 4
  %58 = ptrtoint ptr %es124 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %es124, align 8
  %call125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i64 noundef %50, i64 noundef %53, i32 noundef %59) #10
  br label %cleanup

out_error:                                        ; preds = %sw.epilog.out_error_crit_edge, %if.end12.out_error_crit_edge, %if.end8.out_error_crit_edge
  %error.0 = phi i32 [ %call104, %sw.epilog.out_error_crit_edge ], [ -12, %if.end8.out_error_crit_edge ], [ %call15, %if.end12.out_error_crit_edge ]
  %length129 = getelementptr inbounds %struct.nfsd4_layoutget, ptr %args, i32 0, i32 5, i32 2
  %60 = ptrtoint ptr %length129 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 0, ptr %length129, align 8
  %call130 = call i32 @nfserrno(i32 noundef %error.0) #6
  br label %cleanup

out_layoutunavailable:                            ; preds = %do.end88, %do.end62, %do.body56.out_layoutunavailable_crit_edge, %do.end33, %do.body27.out_layoutunavailable_crit_edge, %if.end12.out_layoutunavailable_crit_edge, %do.end, %do.body.out_layoutunavailable_crit_edge
  %length131 = getelementptr inbounds %struct.nfsd4_layoutget, ptr %args, i32 0, i32 5, i32 2
  %61 = ptrtoint ptr %length131 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 0, ptr %length131, align 8
  br label %cleanup

cleanup:                                          ; preds = %out_layoutunavailable, %out_error, %do.end120, %if.end107.cleanup_crit_edge
  %retval.0 = phi i32 [ 10059, %out_layoutunavailable ], [ %call130, %out_error ], [ 0, %do.end120 ], [ 0, %if.end107.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device_generation) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %iomap) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_block_encode_layoutget(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_block_proc_layoutcommit(ptr noundef %inode, ptr nocapture noundef %lcp) #0 align 64 {
entry:
  %iomaps = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iomaps) #6
  %0 = ptrtoint ptr %iomaps to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iomaps, align 4, !annotation !48
  %lc_up_layout = getelementptr inbounds %struct.nfsd4_layoutcommit, ptr %lcp, i32 0, i32 8
  %1 = ptrtoint ptr %lc_up_layout to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lc_up_layout, align 8
  %lc_up_len = getelementptr inbounds %struct.nfsd4_layoutcommit, ptr %lcp, i32 0, i32 7
  %3 = ptrtoint ptr %lc_up_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lc_up_len, align 4
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %5 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %6 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %call1 = call i32 @nfsd4_block_decode_layoutupdate(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %iomaps, i32 noundef %shl.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = call i32 @nfserrno(i32 noundef %call1) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %iomaps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iomaps, align 4
  %call3 = call fastcc i32 @nfsd4_block_commit_blocks(ptr noundef %inode, ptr noundef %lcp, ptr noundef %8, i32 noundef %call1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call3, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iomaps) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_scsi_proc_getdeviceinfo(ptr noundef %sb, ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readonly %clp, ptr nocapture noundef writeonly %gdp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %0 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_bdev, align 4
  %bd_partno.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %bd_partno.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bd_partno.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 296) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.nfsd4_block_get_device_info_scsi.exit_crit_edge, label %if.end.i

if.end.nfsd4_block_get_device_info_scsi.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfsd4_block_get_device_info_scsi.exit

if.end.i:                                         ; preds = %if.end
  %gd_device.i = getelementptr inbounds %struct.nfsd4_getdeviceinfo, ptr %gdp, i32 0, i32 4
  %5 = ptrtoint ptr %gd_device.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i.i, ptr %gd_device.i, align 4
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %call7.i.i.i, align 8
  %volumes.i = getelementptr inbounds %struct.pnfs_block_deviceaddr, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %volumes.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %volumes.i, align 8
  %cl_clientid.i.i = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 15
  %8 = ptrtoint ptr %cl_clientid.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cl_clientid.i.i, align 4
  %conv.i.i = zext i32 %9 to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %cl_id.i.i = getelementptr inbounds %struct.nfs4_client, ptr %clp, i32 0, i32 15, i32 1
  %10 = ptrtoint ptr %cl_id.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cl_id.i.i, align 4
  %conv2.i.i = zext i32 %11 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %pr_key.i = getelementptr inbounds %struct.pnfs_block_deviceaddr, ptr %call7.i.i.i, i32 36
  %12 = ptrtoint ptr %pr_key.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %or.i.i, ptr %pr_key.i, align 8
  %13 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_bdev, align 4
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %14, i32 0, i32 17
  %15 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bd_disk.i, align 8
  %fops.i.i = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 8
  %designator.i.i = getelementptr inbounds %struct.pnfs_block_volume, ptr %volumes.i, i32 0, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %fops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fops.i.i, align 8
  %get_unique_id.i.i = getelementptr inbounds %struct.block_device_operations, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %get_unique_id.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_unique_id.i.i, align 4
  %call.i.i = tail call i32 %20(ptr noundef %16, ptr noundef %designator.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp1.i.i, label %if.end.i.if.end4.i_crit_edge, label %for.cond.i.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

for.cond.i.i:                                     ; preds = %if.end.i
  %21 = ptrtoint ptr %fops.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fops.i.i, align 8
  %get_unique_id.1.i.i = getelementptr inbounds %struct.block_device_operations, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %get_unique_id.1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get_unique_id.1.i.i, align 4
  %call.1.i.i = tail call i32 %24(ptr noundef %16, ptr noundef %designator.i.i, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i)
  %cmp1.1.i.i = icmp sgt i32 %call.1.i.i, 0
  br i1 %cmp1.1.i.i, label %for.cond.i.i.if.end4.i_crit_edge, label %for.cond.i.i.out_free_dev.i_crit_edge

for.cond.i.i.out_free_dev.i_crit_edge:            ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_dev.i

for.cond.i.i.if.end4.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %for.cond.i.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %.lcssa.i.i = phi i32 [ 2, %if.end.i.if.end4.i_crit_edge ], [ 3, %for.cond.i.i.if.end4.i_crit_edge ]
  %call.lcssa.i.i = phi i32 [ %call.i.i, %if.end.i.if.end4.i_crit_edge ], [ %call.1.i.i, %for.cond.i.i.if.end4.i_crit_edge ]
  %25 = getelementptr inbounds %struct.pnfs_block_deviceaddr, ptr %call7.i.i.i, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %25, align 8
  %designator_type.i.i = getelementptr inbounds %struct.pnfs_block_volume, ptr %volumes.i, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %designator_type.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.lcssa.i.i, ptr %designator_type.i.i, align 4
  %designator_len.i.i = getelementptr inbounds %struct.pnfs_block_deviceaddr, ptr %call7.i.i.i, i32 3
  %28 = ptrtoint ptr %designator_len.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call.lcssa.i.i, ptr %designator_len.i.i, align 8
  %29 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_bdev, align 4
  %bd_disk6.i = getelementptr inbounds %struct.block_device, ptr %30, i32 0, i32 17
  %31 = ptrtoint ptr %bd_disk6.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bd_disk6.i, align 8
  %fops.i = getelementptr inbounds %struct.gendisk, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fops.i, align 8
  %pr_ops.i = getelementptr inbounds %struct.block_device_operations, ptr %34, i32 0, i32 15
  %35 = ptrtoint ptr %pr_ops.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pr_ops.i, align 4
  %tobool7.not.i = icmp eq ptr %36, null
  br i1 %tobool7.not.i, label %if.end4.i.out_free_dev.sink.split.i_crit_edge, label %if.end10.i

if.end4.i.out_free_dev.sink.split.i_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_dev.sink.split.i

if.end10.i:                                       ; preds = %if.end4.i
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %call12.i = tail call i32 %38(ptr noundef %30, i64 noundef 0, i64 noundef 72057594037927936, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end22.i, label %if.end10.i.out_free_dev.sink.split.i_crit_edge

if.end10.i.out_free_dev.sink.split.i_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_dev.sink.split.i

if.end22.i:                                       ; preds = %if.end10.i
  %pr_reserve.i = getelementptr inbounds %struct.pr_ops, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %pr_reserve.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pr_reserve.i, align 4
  %41 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_bdev, align 4
  %call24.i = tail call i32 %40(ptr noundef %42, i64 noundef 72057594037927936, i32 noundef 4, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end22.i.nfsd4_block_get_device_info_scsi.exit_crit_edge, label %if.end22.i.out_free_dev.sink.split.i_crit_edge

if.end22.i.out_free_dev.sink.split.i_crit_edge:   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_dev.sink.split.i

if.end22.i.nfsd4_block_get_device_info_scsi.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfsd4_block_get_device_info_scsi.exit

out_free_dev.sink.split.i:                        ; preds = %if.end22.i.out_free_dev.sink.split.i_crit_edge, %if.end10.i.out_free_dev.sink.split.i_crit_edge, %if.end4.i.out_free_dev.sink.split.i_crit_edge
  %.str.19.sink.i = phi ptr [ @.str.13, %if.end4.i.out_free_dev.sink.split.i_crit_edge ], [ @.str.16, %if.end10.i.out_free_dev.sink.split.i_crit_edge ], [ @.str.19, %if.end22.i.out_free_dev.sink.split.i_crit_edge ]
  %ret.0.ph.i = phi i32 [ -22, %if.end4.i.out_free_dev.sink.split.i_crit_edge ], [ %call12.i, %if.end10.i.out_free_dev.sink.split.i_crit_edge ], [ %call24.i, %if.end22.i.out_free_dev.sink.split.i_crit_edge ]
  %s_id31.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.19.sink.i, ptr noundef %s_id31.i) #10
  br label %out_free_dev.i

out_free_dev.i:                                   ; preds = %out_free_dev.sink.split.i, %for.cond.i.i.out_free_dev.i_crit_edge
  %ret.0.i = phi i32 [ -22, %for.cond.i.i.out_free_dev.i_crit_edge ], [ %ret.0.ph.i, %out_free_dev.sink.split.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %nfsd4_block_get_device_info_scsi.exit

nfsd4_block_get_device_info_scsi.exit:            ; preds = %out_free_dev.i, %if.end22.i.nfsd4_block_get_device_info_scsi.exit_crit_edge, %if.end.nfsd4_block_get_device_info_scsi.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %out_free_dev.i ], [ -12, %if.end.nfsd4_block_get_device_info_scsi.exit_crit_edge ], [ 0, %if.end22.i.nfsd4_block_get_device_info_scsi.exit_crit_edge ]
  %call2 = tail call i32 @nfserrno(i32 noundef %retval.0.i) #6
  br label %return

return:                                           ; preds = %nfsd4_block_get_device_info_scsi.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %nfsd4_block_get_device_info_scsi.exit ], [ 22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsd4_scsi_proc_layoutcommit(ptr noundef %inode, ptr nocapture noundef %lcp) #0 align 64 {
entry:
  %iomaps = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iomaps) #6
  %0 = ptrtoint ptr %iomaps to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iomaps, align 4, !annotation !48
  %lc_up_layout = getelementptr inbounds %struct.nfsd4_layoutcommit, ptr %lcp, i32 0, i32 8
  %1 = ptrtoint ptr %lc_up_layout to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lc_up_layout, align 8
  %lc_up_len = getelementptr inbounds %struct.nfsd4_layoutcommit, ptr %lcp, i32 0, i32 7
  %3 = ptrtoint ptr %lc_up_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lc_up_len, align 4
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %5 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %6 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %call1 = call i32 @nfsd4_scsi_decode_layoutupdate(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %iomaps, i32 noundef %shl.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = call i32 @nfserrno(i32 noundef %call1) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %iomaps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iomaps, align 4
  %call3 = call fastcc i32 @nfsd4_block_commit_blocks(ptr noundef %inode, ptr noundef %lcp, ptr noundef %8, i32 noundef %call1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call3, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iomaps) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfsd4_scsi_fence_client(ptr nocapture noundef readonly %ls) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_client = getelementptr inbounds %struct.nfs4_stid, ptr %ls, i32 0, i32 5
  %0 = ptrtoint ptr %sc_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_client, align 4
  %ls_file = getelementptr inbounds %struct.nfs4_layout_stateid, ptr %ls, i32 0, i32 6
  %2 = ptrtoint ptr %ls_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ls_file, align 4
  %nf_file = getelementptr inbounds %struct.nfsd_file, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %nf_file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nf_file, align 4
  %f_path = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_path, align 8
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mnt_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 26
  %10 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bd_disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fops, align 8
  %pr_ops = getelementptr inbounds %struct.block_device_operations, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %pr_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pr_ops, align 4
  %pr_preempt = getelementptr inbounds %struct.pr_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %pr_preempt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pr_preempt, align 4
  %cl_clientid.i = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 15
  %20 = ptrtoint ptr %cl_clientid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cl_clientid.i, align 4
  %conv.i = zext i32 %21 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %cl_id.i = getelementptr inbounds %struct.nfs4_client, ptr %1, i32 0, i32 15, i32 1
  %22 = ptrtoint ptr %cl_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cl_id.i, align 4
  %conv2.i = zext i32 %23 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %call1 = tail call i32 %19(ptr noundef %11, i64 noundef 72057594037927936, i64 noundef %or.i, i32 noundef 0, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfserrno(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_set_deviceid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_block_decode_layoutupdate(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfsd4_block_commit_blocks(ptr noundef %inode, ptr nocapture noundef %lcp, ptr noundef %iomaps, i32 noundef %nr_iomaps) unnamed_addr #0 align 64 {
entry:
  %iattr = alloca %struct.iattr, align 8
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lc_last_wr = getelementptr inbounds %struct.nfsd4_layoutcommit, ptr %lcp, i32 0, i32 4
  %0 = ptrtoint ptr %lc_last_wr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %lc_last_wr, align 8
  %add = add i64 %1, 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %iattr) #6
  %2 = call ptr @memset(ptr %iattr, i32 0, i32 80)
  %lc_mtime = getelementptr inbounds %struct.nfsd4_layoutcommit, ptr %lcp, i32 0, i32 5
  %tv_nsec = getelementptr inbounds %struct.nfsd4_layoutcommit, ptr %lcp, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tv_nsec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %4)
  %cmp = icmp eq i32 %4, 1073741823
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %5 = ptrtoint ptr %lc_mtime to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %lc_mtime, align 8
  %7 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_mtime, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp.i = icmp slt i64 %6, %8
  br i1 %cmp.i, label %lor.lhs.false.if.then_crit_edge, label %if.end.i

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.i:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp4.i = icmp sgt i64 %6, %8
  br i1 %cmp4.i, label %if.end.i.if.end_crit_edge, label %timespec64_compare.exit

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

timespec64_compare.exit:                          ; preds = %if.end.i
  %9 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tv_nsec, align 8
  %tv_nsec7.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %11 = ptrtoint ptr %tv_nsec7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tv_nsec7.i, align 8
  %sub.i = sub i32 %10, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp2 = icmp slt i32 %sub.i, 0
  br i1 %cmp2, label %timespec64_compare.exit.if.then_crit_edge, label %timespec64_compare.exit.if.end_crit_edge

timespec64_compare.exit.if.end_crit_edge:         ; preds = %timespec64_compare.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

timespec64_compare.exit.if.then_crit_edge:        ; preds = %timespec64_compare.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %timespec64_compare.exit.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #6
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #6
  %13 = call ptr @memcpy(ptr %lc_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %timespec64_compare.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %14 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iattr, align 8
  %or = or i32 %15, 112
  store i32 %or, ptr %iattr, align 8
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 5
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 7
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 6
  %16 = call ptr @memcpy(ptr %ia_mtime, ptr %lc_mtime, i32 16)
  %17 = call ptr @memcpy(ptr %ia_ctime, ptr %lc_mtime, i32 16)
  %18 = call ptr @memcpy(ptr %ia_atime, ptr %lc_mtime, i32 16)
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.end
  %19 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !49
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @trace_hardirqs_off() #6
  %20 = call ptr @llvm.returnaddress(i32 0) #6
  %21 = ptrtoint ptr %20 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %21) #6
  call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %21) #6
  call void @trace_hardirqs_on() #6
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = call ptr @llvm.returnaddress(i32 0) #6
  %23 = ptrtoint ptr %22 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %23) #6
  call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %23) #6
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %24 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !50
  %and.i.i.i.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !51

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @warn_bogus_irq_restore() #6
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #6, !srcloc !52
  %25 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !53
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !54
  %27 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %28, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %26, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %28, %do.end.i.while.end.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !55
  %29 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %i_size18.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !56
  %31 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %32, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %30)
  %cmp6 = icmp sgt i64 %add, %30
  br i1 %cmp6, label %if.then7, label %i_size_read.exit.if.end10_crit_edge

i_size_read.exit.if.end10_crit_edge:              ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then7:                                         ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iattr, align 8
  %or9 = or i32 %34, 8
  store i32 %or9, ptr %iattr, align 8
  %ia_size = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 4
  %35 = ptrtoint ptr %ia_size to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %add, ptr %ia_size, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %i_size_read.exit.if.end10_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %36 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb, align 4
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %s_export_op to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_export_op, align 16
  %commit_blocks = getelementptr inbounds %struct.export_operations, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %commit_blocks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %commit_blocks, align 4
  %call11 = call i32 %41(ptr noundef %inode, ptr noundef %iomaps, i32 noundef %nr_iomaps, ptr noundef nonnull %iattr) #6
  call void @kfree(ptr noundef %iomaps) #6
  %call12 = call i32 @nfserrno(i32 noundef %call11) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %iattr) #6
  ret i32 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsd4_scsi_decode_layoutupdate(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @bl_layout_ops, !1, !"bl_layout_ops", i1 false, i1 false}
!1 = !{!"../fs/nfsd/blocklayout.c", i32 190, i32 31}
!2 = !{ptr @scsi_layout_ops, !3, !"scsi_layout_ops", i1 false, i1 false}
!3 = !{!"../fs/nfsd/blocklayout.c", i32 338, i32 31}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/nfsd/blocklayout.c", i32 33, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nfsd4_block_proc_layoutget._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @nfsd4_block_proc_layoutget._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nfsd/blocklayout.c", i32 57, i32 3}
!12 = !{ptr @nfsd4_block_proc_layoutget._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @nfsd4_block_proc_layoutget._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/nfsd/blocklayout.c", i32 75, i32 5}
!16 = !{ptr @nfsd4_block_proc_layoutget._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @nfsd4_block_proc_layoutget._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/nfsd/blocklayout.c", i32 92, i32 3}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/nfsd/blocklayout.c", i32 105, i32 2}
!22 = !{ptr @nfsd4_block_proc_layoutget._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @nfsd4_block_proc_layoutget._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/nfsd/blocklayout.c", i32 276, i32 3}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @nfsd4_block_get_device_info_scsi._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @nfsd4_block_get_device_info_scsi._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/nfsd/blocklayout.c", i32 283, i32 3}
!31 = !{ptr @nfsd4_block_get_device_info_scsi._entry.15, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @nfsd4_block_get_device_info_scsi._entry_ptr.17, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/nfsd/blocklayout.c", i32 291, i32 3}
!35 = !{ptr @nfsd4_block_get_device_info_scsi._entry.18, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @nfsd4_block_get_device_info_scsi._entry_ptr.20, !34, !"_entry_ptr", i1 false, i1 false}
!37 = distinct !{null, !38, !"designator_types", i1 false, i1 false}
!38 = !{!"../fs/nfsd/blocklayout.c", i32 222, i32 17}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
!49 = !{i64 599948, i64 600009}
!50 = !{i64 602680}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{i64 602965}
!53 = !{i64 2152557229}
!54 = !{i64 2152557071}
!55 = !{i64 2152557399}
!56 = !{i64 2150143213}
