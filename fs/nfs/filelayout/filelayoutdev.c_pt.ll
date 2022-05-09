; ModuleID = '/llk/IR_all_yes/fs/nfs/filelayout/filelayoutdev.c_pt.bc'
source_filename = "../fs/nfs/filelayout/filelayoutdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.142 }
%union.anon.142 = type { ptr }
%struct.nfs4_deviceid_node = type { %struct.hlist_node, %struct.hlist_node, ptr, ptr, i32, i32, %struct.nfs4_deviceid, %struct.callback_head, %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%struct.nfs4_deviceid = type { [16 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nfs4_file_layout_dsaddr = type { %struct.nfs4_deviceid_node, i32, ptr, i32, [0 x ptr] }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pnfs_device = type { %struct.nfs4_deviceid, i32, i32, i32, ptr, i32, i32, i8 }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.121 }
%union.anon.121 = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nfs4_pnfs_ds_addr = type { %struct.__kernel_sockaddr_storage, i32, %struct.list_head, ptr, ptr, i32 }
%struct.nfs4_filelayout_segment = type { %struct.pnfs_layout_segment, i32, i32, i32, i32, i64, %struct.nfs4_deviceid, ptr, i32, ptr }
%struct.pnfs_layout_segment = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnfs_layout_range, %struct.refcount_struct, i32, i32, ptr }
%struct.pnfs_layout_range = type { i32, i64, i64 }
%struct.pnfs_layout_hdr = type { %struct.refcount_struct, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.nfs4_stateid_struct, i32, i32, i32, i64, ptr, ptr, %struct.callback_head }
%struct.nfs4_stateid_struct = type { %union.anon.131, i32 }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { i32, [12 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.144, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.145, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.146, ptr, %struct.address_space, %struct.list_head, %union.anon.147, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.144 = type { i32 }
%struct.timespec64 = type { i64, i32 }
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
%struct.nfs4_pnfs_ds = type { %struct.list_head, ptr, %struct.list_head, ptr, %struct.refcount_struct, i32 }

@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs4_fl_alloc_deviceid_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s stripe count  %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nfs4_fl_alloc_deviceid_node\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fs/nfs/filelayout/filelayoutdev.c\00", [62 x i8] zeroinitializer }, align 32
@nfs4_fl_alloc_deviceid_node._entry_ptr = internal global ptr @nfs4_fl_alloc_deviceid_node._entry, section ".printk_index", align 4
@nfs4_fl_alloc_deviceid_node._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014NFS: %s: stripe count %d greater than supported maximum %d\0A\00", [34 x i8] zeroinitializer }, align 32
@nfs4_fl_alloc_deviceid_node._entry_ptr.5 = internal global ptr @nfs4_fl_alloc_deviceid_node._entry.3, section ".printk_index", align 4
@nfs4_fl_alloc_deviceid_node._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s ds_num %u\0A\00", [18 x i8] zeroinitializer }, align 32
@nfs4_fl_alloc_deviceid_node._entry_ptr.8 = internal global ptr @nfs4_fl_alloc_deviceid_node._entry.6, section ".printk_index", align 4
@nfs4_fl_alloc_deviceid_node._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014NFS: %s: multipath count %d greater than supported maximum %d\0A\00", [63 x i8] zeroinitializer }, align 32
@nfs4_fl_alloc_deviceid_node._entry_ptr.11 = internal global ptr @nfs4_fl_alloc_deviceid_node._entry.9, section ".printk_index", align 4
@nfs4_fl_alloc_deviceid_node._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014NFS: %s: stripe index %u >= num ds %u\0A\00", [55 x i8] zeroinitializer }, align 32
@nfs4_fl_alloc_deviceid_node._entry_ptr.14 = internal global ptr @nfs4_fl_alloc_deviceid_node._entry.12, section ".printk_index", align 4
@nfs4_fl_alloc_deviceid_node._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: no suitable DS addresses found\0A\00", [60 x i8] zeroinitializer }, align 32
@nfs4_fl_alloc_deviceid_node._entry_ptr.17 = internal global ptr @nfs4_fl_alloc_deviceid_node._entry.15, section ".printk_index", align 4
@nfs4_fl_alloc_deviceid_node._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s ERROR: returning NULL\0A\00", [38 x i8] zeroinitializer }, align 32
@nfs4_fl_alloc_deviceid_node._entry_ptr.20 = internal global ptr @nfs4_fl_alloc_deviceid_node._entry.18, section ".printk_index", align 4
@nfs4_fl_prepare_ds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013NFS: %s: No data server for offset index %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfs4_fl_prepare_ds\00", [45 x i8] zeroinitializer }, align 32
@nfs4_fl_prepare_ds._entry_ptr = internal global ptr @nfs4_fl_prepare_ds._entry, section ".printk_index", align 4
@dataserver_timeo = internal global { i32, [28 x i8] } { i32 600, [28 x i8] zeroinitializer }, align 32
@dataserver_retrans = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_str_dataserver_retrans = internal constant [43 x i8] c"nfs_layout_nfsv41_files.dataserver_retrans\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_dataserver_retrans = internal constant %struct.kernel_param { ptr @__param_str_dataserver_retrans, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.142 { ptr @dataserver_retrans } }, section "__param", align 4
@__UNIQUE_ID_dataserver_retranstype495 = internal constant [57 x i8] c"nfs_layout_nfsv41_files.parmtype=dataserver_retrans:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dataserver_retrans496 = internal constant [152 x i8] c"nfs_layout_nfsv41_files.parm=dataserver_retrans:The  number of times the NFSv4.1 client retries a request before it attempts further  recovery  action.\00", section ".modinfo", align 1
@__param_str_dataserver_timeo = internal constant [41 x i8] c"nfs_layout_nfsv41_files.dataserver_timeo\00", align 1
@__param_dataserver_timeo = internal constant %struct.kernel_param { ptr @__param_str_dataserver_timeo, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.142 { ptr @dataserver_timeo } }, section "__param", align 4
@__UNIQUE_ID_dataserver_timeotype497 = internal constant [55 x i8] c"nfs_layout_nfsv41_files.parmtype=dataserver_timeo:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dataserver_timeo498 = internal constant [175 x i8] c"nfs_layout_nfsv41_files.parm=dataserver_timeo:The time (in tenths of a second) the NFSv4.1  client  waits for a response from a  data server before it retries an NFS request.\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 93, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 95, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 124, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 126, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 134, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 167, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 207, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 270, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"dataserver_timeo\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 41, i32 21 }
@___asan_gen_.84 = private unnamed_addr constant [19 x i8] c"dataserver_retrans\00", align 1
@___asan_gen_.85 = private constant [37 x i8] c"../fs/nfs/filelayout/filelayoutdev.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 42, i32 21 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_dataserver_retrans496, ptr @__UNIQUE_ID_dataserver_retranstype495, ptr @__UNIQUE_ID_dataserver_timeo498, ptr @__UNIQUE_ID_dataserver_timeotype497, ptr @__param_dataserver_retrans, ptr @__param_dataserver_timeo, ptr @nfs4_fl_alloc_deviceid_node._entry, ptr @nfs4_fl_alloc_deviceid_node._entry.12, ptr @nfs4_fl_alloc_deviceid_node._entry.15, ptr @nfs4_fl_alloc_deviceid_node._entry.18, ptr @nfs4_fl_alloc_deviceid_node._entry.3, ptr @nfs4_fl_alloc_deviceid_node._entry.6, ptr @nfs4_fl_alloc_deviceid_node._entry.9, ptr @nfs4_fl_alloc_deviceid_node._entry_ptr, ptr @nfs4_fl_alloc_deviceid_node._entry_ptr.11, ptr @nfs4_fl_alloc_deviceid_node._entry_ptr.14, ptr @nfs4_fl_alloc_deviceid_node._entry_ptr.17, ptr @nfs4_fl_alloc_deviceid_node._entry_ptr.20, ptr @nfs4_fl_alloc_deviceid_node._entry_ptr.5, ptr @nfs4_fl_alloc_deviceid_node._entry_ptr.8, ptr @nfs4_fl_prepare_ds._entry, ptr @nfs4_fl_prepare_ds._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @dataserver_timeo, ptr @dataserver_retrans], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_fl_alloc_deviceid_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_fl_alloc_deviceid_node._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_fl_alloc_deviceid_node._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_fl_alloc_deviceid_node._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_fl_alloc_deviceid_node._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_fl_alloc_deviceid_node._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_fl_alloc_deviceid_node._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_fl_prepare_ds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dataserver_timeo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dataserver_retrans to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_fl_free_deviceid(ptr noundef %dsaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %deviceid = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %dsaddr, i32 0, i32 6
  tail call void @nfs4_print_deviceid(ptr noundef %deviceid) #8
  %ds_num = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %dsaddr, i32 0, i32 3
  %0 = ptrtoint ptr %ds_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ds_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp16.not = icmp eq i32 %1, 0
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nfs4_file_layout_dsaddr, ptr %dsaddr, i32 0, i32 4, i32 %i.017
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp1.not = icmp eq ptr %3, null
  br i1 %cmp1.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nfs4_pnfs_ds_put(ptr noundef nonnull %3) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.017, 1
  %4 = ptrtoint ptr %ds_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ds_num, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %stripe_indices = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %dsaddr, i32 0, i32 2
  %6 = ptrtoint ptr %stripe_indices to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stripe_indices, align 4
  tail call void @kfree(ptr noundef %7) #8
  %tobool.not = icmp eq ptr %dsaddr, null
  br i1 %tobool.not, label %for.end.if.end5_crit_edge, label %do.end

for.end.if.end5_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %rcu = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %dsaddr, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 48 to ptr)) #8
  br label %if.end5

if.end5:                                          ; preds = %do.end, %for.end.if.end5_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_print_deviceid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_pnfs_ds_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs4_fl_alloc_deviceid_node(ptr noundef %server, ptr noundef %pdev, i32 noundef %gfp_flags) local_unnamed_addr #0 align 64 {
entry:
  %stream = alloca %struct.xdr_stream, align 4
  %buf = alloca %struct.xdr_buf, align 4
  %dsaddrs = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %stream) #8
  %0 = call ptr @memset(ptr %stream, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %buf) #8
  %1 = call ptr @memset(ptr %buf, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dsaddrs) #8
  %2 = ptrtoint ptr %dsaddrs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %dsaddrs, align 4, !annotation !63
  %3 = getelementptr inbounds %struct.list_head, ptr %dsaddrs, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !63
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %gfp_flags, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %entry.do.body194_crit_edge, label %if.end

entry.do.body194_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body194

if.end:                                           ; preds = %entry
  %pages = getelementptr inbounds %struct.pnfs_device, ptr %pdev, i32 0, i32 4
  %5 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pages, align 4
  %pglen = getelementptr inbounds %struct.pnfs_device, ptr %pdev, i32 0, i32 6
  %7 = ptrtoint ptr %pglen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pglen, align 4
  call void @xdr_init_decode_pages(ptr noundef nonnull %stream, ptr noundef nonnull %buf, ptr noundef %6, i32 noundef %8) #8
  %call.i = call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #8
  %scratch.i.i = getelementptr inbounds %struct.xdr_stream, ptr %stream, i32 0, i32 4
  %9 = ptrtoint ptr %scratch.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %scratch.i.i, align 4
  %iov_len.i.i = getelementptr inbounds %struct.xdr_stream, ptr %stream, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4096, ptr %iov_len.i.i, align 4
  %call1 = call ptr @xdr_inline_decode(ptr noundef nonnull %stream, i32 noundef 4) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.out_err_free_scratch_crit_edge, label %if.end7, !prof !64

if.end.out_err_free_scratch_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err_free_scratch

if.end7:                                          ; preds = %if.end
  %11 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %13 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end7.do.end21_crit_edge, label %do.end, !prof !65

if.end7.do.end21_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %12) #11
  br label %do.end21

do.end21:                                         ; preds = %do.end, %if.end7.do.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %12)
  %cmp = icmp ugt i32 %12, 4096
  br i1 %cmp, label %do.end25, label %if.end28

do.end25:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %12, i32 noundef 4096) #11
  br label %out_err_free_scratch

if.end28:                                         ; preds = %do.end21
  %or.i = or i32 %gfp_flags, 256
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef %or.i) #12
  %tobool30.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool30.not, label %if.end28.out_err_free_scratch_crit_edge, label %if.end32

if.end28.out_err_free_scratch_crit_edge:          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err_free_scratch

if.end32:                                         ; preds = %if.end28
  %shl = shl nuw nsw i32 %12, 2
  %call33 = call ptr @xdr_inline_decode(ptr noundef nonnull %stream, i32 noundef %shl) #8
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.end32.out_err_free_stripe_indices_crit_edge, label %for.cond.preheader, !prof !64

if.end32.out_err_free_stripe_indices_crit_edge:   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err_free_stripe_indices

for.cond.preheader:                               ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp45314.not = icmp eq i32 %12, 0
  br i1 %cmp45314.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0318 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %indexp.0317 = phi ptr [ %incdec.ptr55, %for.body.for.body_crit_edge ], [ %call8.i.i, %for.cond.preheader.for.body_crit_edge ]
  %p.0316 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %call33, %for.cond.preheader.for.body_crit_edge ]
  %max_stripe_index.0315 = phi i32 [ %17, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %p.0316, i32 1
  %14 = ptrtoint ptr %p.0316 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %p.0316, align 4
  %conv = trunc i32 %15 to i8
  %16 = ptrtoint ptr %indexp.0317 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %indexp.0317, align 1
  %conv48 = and i32 %max_stripe_index.0315, 255
  %conv49 = and i32 %15, 255
  %17 = call i32 @llvm.umax.i32(i32 %conv49, i32 %conv48)
  %incdec.ptr55 = getelementptr i8, ptr %indexp.0317, i32 1
  %inc = add nuw i32 %i.0318, 1
  %exitcond.not = icmp eq i32 %inc, %12
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %max_stripe_index.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %17, %for.body.for.end_crit_edge ]
  %call56 = call ptr @xdr_inline_decode(ptr noundef nonnull %stream, i32 noundef 4) #8
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %for.end.out_err_free_stripe_indices_crit_edge, label %if.end67, !prof !64

for.end.out_err_free_stripe_indices_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err_free_stripe_indices

if.end67:                                         ; preds = %for.end
  %18 = ptrtoint ptr %call56 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call56, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %20 = load i32, ptr @nfs_debug, align 4
  %and70 = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end67.do.end86_crit_edge, label %do.end81, !prof !65

if.end67.do.end86_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end86

do.end81:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef %19) #11
  br label %do.end86

do.end86:                                         ; preds = %do.end81, %if.end67.do.end86_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %19)
  %cmp87 = icmp ugt i32 %19, 256
  br i1 %cmp87, label %do.end92, label %if.end95

do.end92:                                         ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #10
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef %19, i32 noundef 256) #11
  br label %out_err_free_stripe_indices

if.end95:                                         ; preds = %do.end86
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %max_stripe_index.0.lcssa)
  %cmp97.not = icmp ugt i32 %19, %max_stripe_index.0.lcssa
  br i1 %cmp97.not, label %if.end8.i.i, label %do.end102

do.end102:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  %call105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef %max_stripe_index.0.lcssa, i32 noundef %19) #11
  br label %out_err_free_stripe_indices

if.end8.i.i:                                      ; preds = %if.end95
  %21 = shl nuw nsw i32 %19, 2
  %spec.select.i311 = add nuw nsw i32 %21, 72
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i311, i32 noundef %or.i) #12
  %tobool109.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool109.not, label %if.end8.i.i.out_err_free_stripe_indices_crit_edge, label %if.end111

if.end8.i.i.out_err_free_stripe_indices_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err_free_stripe_indices

if.end111:                                        ; preds = %if.end8.i.i
  %stripe_count = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %call9.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %stripe_count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %12, ptr %stripe_count, align 4
  %stripe_indices112 = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %call9.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %stripe_indices112 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call8.i.i, ptr %stripe_indices112, align 64
  %ds_num = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %call9.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %ds_num to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %19, ptr %ds_num, align 4
  call void @nfs4_init_deviceid_node(ptr noundef nonnull %call9.i.i, ptr noundef %server, ptr noundef %pdev) #8
  %25 = ptrtoint ptr %dsaddrs to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %dsaddrs, ptr %dsaddrs, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dsaddrs, ptr %3, align 4
  %27 = ptrtoint ptr %ds_num to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ds_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp115322.not = icmp eq i32 %28, 0
  br i1 %cmp115322.not, label %if.end111.for.end180_crit_edge, label %if.end111.for.body117_crit_edge

if.end111.for.body117_crit_edge:                  ; preds = %if.end111
  br label %for.body117

if.end111.for.end180_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end180

for.body117:                                      ; preds = %for.inc178.for.body117_crit_edge, %if.end111.for.body117_crit_edge
  %i.1323 = phi i32 [ %inc179, %for.inc178.for.body117_crit_edge ], [ 0, %if.end111.for.body117_crit_edge ]
  %call118 = call ptr @xdr_inline_decode(ptr noundef nonnull %stream, i32 noundef 4) #8
  %tobool119.not = icmp eq ptr %call118, null
  br i1 %tobool119.not, label %for.body117.out_err_free_deviceid_crit_edge, label %if.end129, !prof !64

for.body117.out_err_free_deviceid_crit_edge:      ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err_free_deviceid

if.end129:                                        ; preds = %for.body117
  %29 = ptrtoint ptr %call118 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp132319.not = icmp eq i32 %30, 0
  br i1 %cmp132319.not, label %if.end129.for.end141_crit_edge, label %if.end129.for.body134_crit_edge

if.end129.for.body134_crit_edge:                  ; preds = %if.end129
  br label %for.body134

if.end129.for.end141_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end141

for.body134:                                      ; preds = %for.inc139.for.body134_crit_edge, %if.end129.for.body134_crit_edge
  %j.0320 = phi i32 [ %inc140, %for.inc139.for.body134_crit_edge ], [ 0, %if.end129.for.body134_crit_edge ]
  %31 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %server, align 8
  %cl_net = getelementptr inbounds %struct.nfs_client, ptr %32, i32 0, i32 44
  %33 = ptrtoint ptr %cl_net to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cl_net, align 8
  %call135 = call ptr @nfs4_decode_mp_ds_addr(ptr noundef %34, ptr noundef nonnull %stream, i32 noundef %gfp_flags) #8
  %tobool136.not = icmp eq ptr %call135, null
  br i1 %tobool136.not, label %for.body134.for.inc139_crit_edge, label %if.then137

for.body134.for.inc139_crit_edge:                 ; preds = %for.body134
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc139

if.then137:                                       ; preds = %for.body134
  %da_node = getelementptr inbounds %struct.nfs4_pnfs_ds_addr, ptr %call135, i32 0, i32 2
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %da_node, ptr noundef %36, ptr noundef nonnull %dsaddrs) #8
  br i1 %call.i.i, label %if.end.i.i290, label %if.then137.for.inc139_crit_edge

if.then137.for.inc139_crit_edge:                  ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc139

if.end.i.i290:                                    ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %da_node, ptr %3, align 4
  %38 = ptrtoint ptr %da_node to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dsaddrs, ptr %da_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.nfs4_pnfs_ds_addr, ptr %call135, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %da_node, ptr %36, align 4
  br label %for.inc139

for.inc139:                                       ; preds = %if.end.i.i290, %if.then137.for.inc139_crit_edge, %for.body134.for.inc139_crit_edge
  %inc140 = add nuw i32 %j.0320, 1
  %exitcond326.not = icmp eq i32 %inc140, %30
  br i1 %exitcond326.not, label %for.inc139.for.end141_crit_edge, label %for.inc139.for.body134_crit_edge

for.inc139.for.body134_crit_edge:                 ; preds = %for.inc139
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body134

for.inc139.for.end141_crit_edge:                  ; preds = %for.inc139
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end141

for.end141:                                       ; preds = %for.inc139.for.end141_crit_edge, %if.end129.for.end141_crit_edge
  %41 = ptrtoint ptr %dsaddrs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %dsaddrs, align 4
  %cmp.i.not = icmp eq ptr %42, %dsaddrs
  br i1 %cmp.i.not, label %do.body145, label %if.end163

do.body145:                                       ; preds = %for.end141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %43 = load i32, ptr @nfs_debug, align 4
  %and146 = and i32 %43, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %do.body145.out_err_free_deviceid_crit_edge, label %do.end157, !prof !65

do.body145.out_err_free_deviceid_crit_edge:       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err_free_deviceid

do.end157:                                        ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #10
  %call159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1) #11
  br label %out_err_free_deviceid

if.end163:                                        ; preds = %for.end141
  %call164 = call ptr @nfs4_pnfs_ds_add(ptr noundef nonnull %dsaddrs, i32 noundef %gfp_flags) #8
  %arrayidx165 = getelementptr %struct.nfs4_file_layout_dsaddr, ptr %call9.i.i, i32 0, i32 4, i32 %i.1323
  %44 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call164, ptr %arrayidx165, align 4
  %tobool168.not = icmp eq ptr %call164, null
  %45 = ptrtoint ptr %dsaddrs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %dsaddrs, align 4
  %cmp.i295.not324 = icmp eq ptr %46, %dsaddrs
  br i1 %tobool168.not, label %while.cond181.preheader, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end163
  br i1 %cmp.i295.not324, label %while.cond.preheader.for.inc178_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.for.inc178_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc178

while.cond181.preheader:                          ; preds = %if.end163
  br i1 %cmp.i295.not324, label %while.cond181.preheader.out_err_free_deviceid_crit_edge, label %while.cond181.preheader.while.body186_crit_edge

while.cond181.preheader.while.body186_crit_edge:  ; preds = %while.cond181.preheader
  br label %while.body186

while.cond181.preheader.out_err_free_deviceid_crit_edge: ; preds = %while.cond181.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err_free_deviceid

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %47 = phi ptr [ %59, %list_del_init.exit.while.body_crit_edge ], [ %46, %while.cond.preheader.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %47, i32 -132
  %call.i.i293 = call zeroext i1 @__list_del_entry_valid(ptr noundef %47) #8
  br i1 %call.i.i293, label %if.end.i.i294, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i294:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i, align 4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %47, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i294, %while.body.list_del_init.exit_crit_edge
  %54 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %47, ptr %47, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %47, ptr %prev.i3.i, align 4
  %da_remotestr = getelementptr i8, ptr %47, i32 8
  %56 = ptrtoint ptr %da_remotestr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %da_remotestr, align 4
  call void @kfree(ptr noundef %57) #8
  call void @kfree(ptr noundef %add.ptr) #8
  %58 = ptrtoint ptr %dsaddrs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %dsaddrs, align 4
  %cmp.i291.not = icmp eq ptr %59, %dsaddrs
  br i1 %cmp.i291.not, label %list_del_init.exit.for.inc178_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

list_del_init.exit.for.inc178_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc178

for.inc178:                                       ; preds = %list_del_init.exit.for.inc178_crit_edge, %while.cond.preheader.for.inc178_crit_edge
  %inc179 = add nuw i32 %i.1323, 1
  %60 = ptrtoint ptr %ds_num to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ds_num, align 4
  %cmp115 = icmp ult i32 %inc179, %61
  br i1 %cmp115, label %for.inc178.for.body117_crit_edge, label %for.inc178.for.end180_crit_edge

for.inc178.for.end180_crit_edge:                  ; preds = %for.inc178
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end180

for.inc178.for.body117_crit_edge:                 ; preds = %for.inc178
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body117

for.end180:                                       ; preds = %for.inc178.for.end180_crit_edge, %if.end111.for.end180_crit_edge
  call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #8
  br label %cleanup212

while.body186:                                    ; preds = %list_del_init.exit302.while.body186_crit_edge, %while.cond181.preheader.while.body186_crit_edge
  %62 = phi ptr [ %74, %list_del_init.exit302.while.body186_crit_edge ], [ %46, %while.cond181.preheader.while.body186_crit_edge ]
  %add.ptr190 = getelementptr i8, ptr %62, i32 -132
  %call.i.i297 = call zeroext i1 @__list_del_entry_valid(ptr noundef %62) #8
  br i1 %call.i.i297, label %if.end.i.i300, label %while.body186.list_del_init.exit302_crit_edge

while.body186.list_del_init.exit302_crit_edge:    ; preds = %while.body186
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit302

if.end.i.i300:                                    ; preds = %while.body186
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i298 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i298 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i298, align 4
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %62, align 4
  %prev1.i.i.i299 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %prev1.i.i.i299 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev1.i.i.i299, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %66, ptr %64, align 4
  br label %list_del_init.exit302

list_del_init.exit302:                            ; preds = %if.end.i.i300, %while.body186.list_del_init.exit302_crit_edge
  %69 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %62, ptr %62, align 4
  %prev.i3.i301 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i3.i301 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %62, ptr %prev.i3.i301, align 4
  %da_remotestr192 = getelementptr i8, ptr %62, i32 8
  %71 = ptrtoint ptr %da_remotestr192 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %da_remotestr192, align 4
  call void @kfree(ptr noundef %72) #8
  call void @kfree(ptr noundef %add.ptr190) #8
  %73 = ptrtoint ptr %dsaddrs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %dsaddrs, align 4
  %cmp.i295.not = icmp eq ptr %74, %dsaddrs
  br i1 %cmp.i295.not, label %list_del_init.exit302.out_err_free_deviceid_crit_edge, label %list_del_init.exit302.while.body186_crit_edge

list_del_init.exit302.while.body186_crit_edge:    ; preds = %list_del_init.exit302
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body186

list_del_init.exit302.out_err_free_deviceid_crit_edge: ; preds = %list_del_init.exit302
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err_free_deviceid

out_err_free_deviceid:                            ; preds = %list_del_init.exit302.out_err_free_deviceid_crit_edge, %while.cond181.preheader.out_err_free_deviceid_crit_edge, %do.end157, %do.body145.out_err_free_deviceid_crit_edge, %for.body117.out_err_free_deviceid_crit_edge
  %deviceid.i = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %call9.i.i, i32 0, i32 6
  call void @nfs4_print_deviceid(ptr noundef %deviceid.i) #8
  %75 = ptrtoint ptr %ds_num to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ds_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp16.not.i = icmp eq i32 %76, 0
  br i1 %cmp16.not.i, label %out_err_free_deviceid.nfs4_fl_free_deviceid.exit_crit_edge, label %out_err_free_deviceid.for.body.i_crit_edge

out_err_free_deviceid.for.body.i_crit_edge:       ; preds = %out_err_free_deviceid
  br label %for.body.i

out_err_free_deviceid.nfs4_fl_free_deviceid.exit_crit_edge: ; preds = %out_err_free_deviceid
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfs4_fl_free_deviceid.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %out_err_free_deviceid.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %out_err_free_deviceid.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nfs4_file_layout_dsaddr, ptr %call9.i.i, i32 0, i32 4, i32 %i.017.i
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i, align 4
  %cmp1.not.i = icmp eq ptr %78, null
  br i1 %cmp1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @nfs4_pnfs_ds_put(ptr noundef nonnull %78) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.017.i, 1
  %79 = ptrtoint ptr %ds_num to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ds_num, align 4
  %cmp.i303 = icmp ult i32 %inc.i, %80
  br i1 %cmp.i303, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.nfs4_fl_free_deviceid.exit_crit_edge

for.inc.i.nfs4_fl_free_deviceid.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfs4_fl_free_deviceid.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

nfs4_fl_free_deviceid.exit:                       ; preds = %for.inc.i.nfs4_fl_free_deviceid.exit_crit_edge, %out_err_free_deviceid.nfs4_fl_free_deviceid.exit_crit_edge
  %81 = ptrtoint ptr %stripe_indices112 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %stripe_indices112, align 64
  call void @kfree(ptr noundef %82) #8
  %rcu.i = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %call9.i.i, i32 0, i32 7
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 48 to ptr)) #8
  br label %out_err_free_scratch

out_err_free_stripe_indices:                      ; preds = %if.end8.i.i.out_err_free_stripe_indices_crit_edge, %do.end102, %do.end92, %for.end.out_err_free_stripe_indices_crit_edge, %if.end32.out_err_free_stripe_indices_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br label %out_err_free_scratch

out_err_free_scratch:                             ; preds = %out_err_free_stripe_indices, %nfs4_fl_free_deviceid.exit, %if.end28.out_err_free_scratch_crit_edge, %do.end25, %if.end.out_err_free_scratch_crit_edge
  call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #8
  br label %do.body194

do.body194:                                       ; preds = %out_err_free_scratch, %entry.do.body194_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %83 = load i32, ptr @nfs_debug, align 4
  %and195 = and i32 %83, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195)
  %tobool196.not = icmp eq i32 %and195, 0
  br i1 %tobool196.not, label %do.body194.cleanup212_crit_edge, label %do.end206, !prof !65

do.body194.cleanup212_crit_edge:                  ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup212

do.end206:                                        ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #10
  %call208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1) #11
  br label %cleanup212

cleanup212:                                       ; preds = %do.end206, %do.body194.cleanup212_crit_edge, %for.end180
  %retval.0 = phi ptr [ %call9.i.i, %for.end180 ], [ null, %do.end206 ], [ null, %do.body194.cleanup212_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dsaddrs) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %stream) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_decode_pages(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_init_deviceid_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_decode_mp_ds_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_pnfs_ds_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_fl_put_deviceid(ptr noundef %dsaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @nfs4_put_deviceid_node(ptr noundef %dsaddr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4_put_deviceid_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_fl_calc_j_index(ptr nocapture noundef readonly %lseg, i64 noundef %offset) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pattern_offset = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %lseg, i32 0, i32 5
  %0 = ptrtoint ptr %pattern_offset to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pattern_offset, align 8
  %sub = sub i64 %offset, %1
  %stripe_unit = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %lseg, i32 0, i32 3
  %2 = ptrtoint ptr %stripe_unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stripe_unit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp167 = icmp ult i64 %sub, 4294967296
  br i1 %cmp167, label %if.then171, label %if.else177, !prof !65

if.then171:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv172 = trunc i64 %sub to i32
  %div175 = udiv i32 %conv172, %3
  %conv176 = zext i32 %div175 to i64
  br label %if.end181

if.else177:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %sub) #13, !srcloc !66
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  br label %if.end181

if.end181:                                        ; preds = %if.else177, %if.then171
  %tmp.0 = phi i64 [ %conv176, %if.then171 ], [ %asmresult1.i, %if.else177 ]
  %first_stripe_index = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %lseg, i32 0, i32 4
  %5 = ptrtoint ptr %first_stripe_index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %first_stripe_index, align 4
  %conv183 = zext i32 %6 to i64
  %add184 = add i64 %tmp.0, %conv183
  %dsaddr = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %lseg, i32 0, i32 7
  %7 = ptrtoint ptr %dsaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dsaddr, align 8
  %stripe_count = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %stripe_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stripe_count, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add184)
  %cmp386 = icmp ult i64 %add184, 4294967296
  br i1 %cmp386, label %if.then394, label %if.else400, !prof !65

if.then394:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #10
  %conv395 = trunc i64 %add184 to i32
  %rem396 = urem i32 %conv395, %10
  br label %if.end404

if.else400:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #10
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %10, i64 %add184) #13, !srcloc !66
  %asmresult.i597 = extractvalue { i64, i64 } %11, 0
  %shr.i599 = lshr i64 %asmresult.i597, 32
  %conv.i600 = trunc i64 %shr.i599 to i32
  br label %if.end404

if.end404:                                        ; preds = %if.else400, %if.then394
  %__rem186.0 = phi i32 [ %rem396, %if.then394 ], [ %conv.i600, %if.else400 ]
  ret i32 %__rem186.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nfs4_fl_calc_ds_index(ptr nocapture noundef readonly %lseg, i32 noundef %j) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dsaddr = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %lseg, i32 0, i32 7
  %0 = ptrtoint ptr %dsaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsaddr, align 8
  %stripe_indices = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %stripe_indices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stripe_indices, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 %j
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @nfs4_fl_select_ds_fh(ptr nocapture noundef readonly %lseg, i32 noundef %j) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stripe_type = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %lseg, i32 0, i32 1
  %0 = ptrtoint ptr %stripe_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stripe_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %entry
  %num_fh = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %lseg, i32 0, i32 8
  %2 = ptrtoint ptr %num_fh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_fh, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.else6 [
    i32 1, label %if.then.if.end10_crit_edge
    i32 0, label %if.then.cleanup_crit_edge
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.else6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dsaddr.i = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %lseg, i32 0, i32 7
  %5 = ptrtoint ptr %dsaddr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dsaddr.i, align 8
  %stripe_indices.i = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %stripe_indices.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stripe_indices.i, align 4
  %arrayidx.i = getelementptr i8, ptr %8, i32 %j
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %10 to i32
  br label %if.end10

if.end10:                                         ; preds = %if.else6, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %i.0 = phi i32 [ %conv.i, %if.else6 ], [ 0, %if.then.if.end10_crit_edge ], [ %j, %entry.if.end10_crit_edge ]
  %fh_array = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %lseg, i32 0, i32 9
  %11 = ptrtoint ptr %fh_array to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fh_array, align 8
  %arrayidx = getelementptr ptr, ptr %12, i32 %i.0
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %14, %if.end10 ], [ null, %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs4_fl_prepare_ds(ptr nocapture noundef readonly %lseg, i32 noundef %ds_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dsaddr1 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %lseg, i32 0, i32 7
  %0 = ptrtoint ptr %dsaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsaddr1, align 8
  %arrayidx = getelementptr %struct.nfs4_file_layout_dsaddr, ptr %1, i32 0, i32 4, i32 %ds_idx
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %pls_layout = getelementptr inbounds %struct.pnfs_layout_segment, ptr %lseg, i32 0, i32 7
  %4 = ptrtoint ptr %pls_layout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pls_layout, align 4
  %plh_inode = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %plh_inode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plh_inode, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i, align 16
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %do.end, label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %ds_idx) #11
  %flags.i = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %1, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #8
  br label %out

do.end8:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !67
  %ds_clp = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ds_clp, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end12, label %do.end8.lor.lhs.false_crit_edge

do.end8.lor.lhs.false_crit_edge:                  ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.end12:                                         ; preds = %do.end8
  %14 = load i32, ptr @dataserver_timeo, align 4
  %15 = load i32, ptr @dataserver_retrans, align 4
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 8
  %cl_minorversion = getelementptr inbounds %struct.nfs_client, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %cl_minorversion to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cl_minorversion, align 8
  %call13 = tail call i32 @nfs4_pnfs_ds_connect(ptr noundef %11, ptr noundef nonnull %3, ptr noundef %1, i32 noundef %14, i32 noundef %15, i32 noundef 4, i32 noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %out_test_devid, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nfs4_mark_deviceid_unavailable(ptr noundef %1) #8
  br label %out

out_test_devid:                                   ; preds = %if.end12
  %20 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load ptr, ptr %ds_clp, align 4
  %cmp18 = icmp eq ptr %.pr, null
  br i1 %cmp18, label %out_test_devid.if.then20_crit_edge, label %out_test_devid.lor.lhs.false_crit_edge

out_test_devid.lor.lhs.false_crit_edge:           ; preds = %out_test_devid
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

out_test_devid.if.then20_crit_edge:               ; preds = %out_test_devid
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

lor.lhs.false:                                    ; preds = %out_test_devid.lor.lhs.false_crit_edge, %do.end8.lor.lhs.false_crit_edge
  %call19 = tail call zeroext i1 @filelayout_test_devid_unavailable(ptr noundef %1) #8
  br i1 %call19, label %lor.lhs.false.if.then20_crit_edge, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %out_test_devid.if.then20_crit_edge
  br label %out

out:                                              ; preds = %if.then20, %lor.lhs.false.out_crit_edge, %if.then15, %do.end
  %ret.0 = phi ptr [ null, %do.end ], [ null, %if.then20 ], [ %3, %lor.lhs.false.out_crit_edge ], [ null, %if.then15 ]
  ret ptr %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_pnfs_ds_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_mark_deviceid_unavailable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @filelayout_test_devid_unavailable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !40, !42, !43, !45, !47, !49, !51, !52}
!llvm.named.register.sp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfs/filelayout/filelayoutdev.c", i32 93, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nfs4_fl_alloc_deviceid_node._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nfs4_fl_alloc_deviceid_node._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nfs/filelayout/filelayoutdev.c", i32 95, i32 3}
!8 = !{ptr @nfs4_fl_alloc_deviceid_node._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @nfs4_fl_alloc_deviceid_node._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nfs/filelayout/filelayoutdev.c", i32 124, i32 2}
!12 = !{ptr @nfs4_fl_alloc_deviceid_node._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @nfs4_fl_alloc_deviceid_node._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/nfs/filelayout/filelayoutdev.c", i32 126, i32 3}
!16 = !{ptr @nfs4_fl_alloc_deviceid_node._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @nfs4_fl_alloc_deviceid_node._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/nfs/filelayout/filelayoutdev.c", i32 134, i32 3}
!20 = !{ptr @nfs4_fl_alloc_deviceid_node._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @nfs4_fl_alloc_deviceid_node._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/nfs/filelayout/filelayoutdev.c", i32 167, i32 4}
!24 = !{ptr @nfs4_fl_alloc_deviceid_node._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @nfs4_fl_alloc_deviceid_node._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/nfs/filelayout/filelayoutdev.c", i32 207, i32 2}
!28 = !{ptr @nfs4_fl_alloc_deviceid_node._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @nfs4_fl_alloc_deviceid_node._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/nfs/filelayout/filelayoutdev.c", i32 270, i32 3}
!32 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @nfs4_fl_prepare_ds._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @nfs4_fl_prepare_ds._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @__param_dataserver_retrans, !36, !"__param_dataserver_retrans", i1 false, i1 false}
!36 = !{!"../fs/nfs/filelayout/filelayoutdev.c", i32 296, i32 1}
!37 = !{ptr @__UNIQUE_ID_dataserver_retranstype495, !36, !"__UNIQUE_ID_dataserver_retranstype495", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_dataserver_retrans496, !39, !"__UNIQUE_ID_dataserver_retrans496", i1 false, i1 false}
!39 = !{!"../fs/nfs/filelayout/filelayoutdev.c", i32 297, i32 1}
!40 = !{ptr @__param_dataserver_timeo, !41, !"__param_dataserver_timeo", i1 false, i1 false}
!41 = !{!"../fs/nfs/filelayout/filelayoutdev.c", i32 300, i32 1}
!42 = !{ptr @__UNIQUE_ID_dataserver_timeotype497, !41, !"__UNIQUE_ID_dataserver_timeotype497", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_dataserver_timeo498, !44, !"__UNIQUE_ID_dataserver_timeo498", i1 false, i1 false}
!44 = !{!"../fs/nfs/filelayout/filelayoutdev.c", i32 301, i32 1}
!45 = distinct !{null, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!47 = !{ptr @dataserver_timeo, !48, !"dataserver_timeo", i1 false, i1 false}
!48 = !{!"../fs/nfs/filelayout/filelayoutdev.c", i32 41, i32 21}
!49 = !{ptr @dataserver_retrans, !50, !"dataserver_retrans", i1 false, i1 false}
!50 = !{!"../fs/nfs/filelayout/filelayoutdev.c", i32 42, i32 21}
!51 = !{ptr @__param_str_dataserver_retrans, !36, !"__param_str_dataserver_retrans", i1 false, i1 false}
!52 = !{ptr @__param_str_dataserver_timeo, !41, !"__param_str_dataserver_timeo", i1 false, i1 false}
!53 = !{!"sp"}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"auto-init"}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{i64 2148689823, i64 2148690103, i64 2148690437, i64 2148690771}
!67 = !{i64 2157676046}
