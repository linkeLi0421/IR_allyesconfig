; ModuleID = '/llk/IR_all_yes/fs/nfs/flexfilelayout/flexfilelayoutdev.c_pt.bc'
source_filename = "../fs/nfs/flexfilelayout/flexfilelayoutdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.142 }
%union.anon.142 = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nfs4_deviceid_node = type { %struct.hlist_node, %struct.hlist_node, ptr, ptr, i32, i32, %struct.nfs4_deviceid, %struct.callback_head, %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%struct.nfs4_deviceid = type { [16 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nfs4_ff_layout_ds = type { %struct.nfs4_deviceid_node, i32, ptr, ptr }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nfs4_pnfs_ds_addr = type { %struct.__kernel_sockaddr_storage, i32, %struct.list_head, ptr, ptr, i32 }
%struct.nfs4_ff_ds_version = type { i32, i32, i32, i32, i8 }
%struct.nfs4_ff_layout_mirror = type { ptr, %struct.list_head, i32, i32, %struct.nfs4_deviceid, ptr, i32, ptr, %struct.nfs4_stateid_struct, ptr, ptr, %struct.refcount_struct, %struct.spinlock, i32, %struct.nfs4_ff_layoutstat, %struct.nfs4_ff_layoutstat, i64, i32 }
%struct.nfs4_stateid_struct = type { %union.anon.131, i32 }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { i32, [12 x i8] }
%struct.nfs4_ff_layoutstat = type { %struct.nfs4_ff_io_stat, %struct.nfs4_ff_busy_timer }
%struct.nfs4_ff_io_stat = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nfs4_ff_busy_timer = type { i64, %struct.atomic_t }
%struct.nfs4_ff_layout_ds_err = type { %struct.list_head, i64, i64, i32, i32, %struct.nfs4_stateid_struct, %struct.nfs4_deviceid }
%struct.pnfs_layout_hdr = type { %struct.refcount_struct, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.nfs4_stateid_struct, i32, i32, i32, i64, ptr, ptr, %struct.callback_head }
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
%struct.nfs4_flexfile_layout = type { %struct.pnfs_layout_hdr, %struct.pnfs_ds_commit_info, %struct.list_head, %struct.list_head, i64 }
%struct.pnfs_ds_commit_info = type { %struct.list_head, i32, i32, ptr }
%struct.pnfs_layout_segment = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnfs_layout_range, %struct.refcount_struct, i32, i32, ptr }
%struct.pnfs_layout_range = type { i32, i64, i64 }
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
%struct.nfs4_ff_layout_segment = type { %struct.pnfs_layout_segment, i64, i32, i32, [0 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.76 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.76 = type { %struct.callback_head }

@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs4_ff_alloc_deviceid_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: multipath ds count %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nfs4_ff_alloc_deviceid_node\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"fs/nfs/flexfilelayout/flexfilelayoutdev.c\00", [54 x i8] zeroinitializer }, align 32
@nfs4_ff_alloc_deviceid_node._entry_ptr = internal global ptr @nfs4_ff_alloc_deviceid_node._entry, section ".printk_index", align 4
@nfs4_ff_alloc_deviceid_node._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: no suitable DS addresses found\0A\00", [60 x i8] zeroinitializer }, align 32
@nfs4_ff_alloc_deviceid_node._entry_ptr.5 = internal global ptr @nfs4_ff_alloc_deviceid_node._entry.3, section ".printk_index", align 4
@nfs4_ff_alloc_deviceid_node._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: version count %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nfs4_ff_alloc_deviceid_node._entry_ptr.8 = internal global ptr @nfs4_ff_alloc_deviceid_node._entry.6, section ".printk_index", align 4
@nfs4_ff_alloc_deviceid_node._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: [%d] unsupported ds version %d-%d\0A\00", [57 x i8] zeroinitializer }, align 32
@nfs4_ff_alloc_deviceid_node._entry_ptr.11 = internal global ptr @nfs4_ff_alloc_deviceid_node._entry.9, section ".printk_index", align 4
@nfs4_ff_alloc_deviceid_node._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: [%d] vers %u minor_ver %u rsize %u wsize %u coupled %d\0A\00", [36 x i8] zeroinitializer }, align 32
@nfs4_ff_alloc_deviceid_node._entry_ptr.14 = internal global ptr @nfs4_ff_alloc_deviceid_node._entry.12, section ".printk_index", align 4
@nfs4_ff_alloc_deviceid_node._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s ERROR: returning %d\0A\00", [40 x i8] zeroinitializer }, align 32
@nfs4_ff_alloc_deviceid_node._entry_ptr.17 = internal global ptr @nfs4_ff_alloc_deviceid_node._entry.15, section ".printk_index", align 4
@dataserver_timeo = internal global { i32, [28 x i8] } { i32 600, [28 x i8] zeroinitializer }, align 32
@dataserver_retrans = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ff_layout_encode_ds_ioerr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: offset %llu length %llu status %d op %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ff_layout_encode_ds_ioerr\00", [38 x i8] zeroinitializer }, align 32
@ff_layout_encode_ds_ioerr._entry_ptr = internal global ptr @ff_layout_encode_ds_ioerr._entry, section ".printk_index", align 4
@__param_str_dataserver_retrans = internal constant [40 x i8] c"nfs_layout_flexfiles.dataserver_retrans\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_dataserver_retrans = internal constant %struct.kernel_param { ptr @__param_str_dataserver_retrans, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.142 { ptr @dataserver_retrans } }, section "__param", align 4
@__UNIQUE_ID_dataserver_retranstype500 = internal constant [54 x i8] c"nfs_layout_flexfiles.parmtype=dataserver_retrans:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dataserver_retrans501 = internal constant [149 x i8] c"nfs_layout_flexfiles.parm=dataserver_retrans:The  number of times the NFSv4.1 client retries a request before it attempts further  recovery  action.\00", section ".modinfo", align 1
@__param_str_dataserver_timeo = internal constant [38 x i8] c"nfs_layout_flexfiles.dataserver_timeo\00", align 1
@__param_dataserver_timeo = internal constant %struct.kernel_param { ptr @__param_str_dataserver_timeo, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.142 { ptr @dataserver_timeo } }, section "__param", align 4
@__UNIQUE_ID_dataserver_timeotype502 = internal constant [52 x i8] c"nfs_layout_flexfiles.parmtype=dataserver_timeo:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dataserver_timeo503 = internal constant [172 x i8] c"nfs_layout_flexfiles.parm=dataserver_timeo:The time (in tenths of a second) the NFSv4.1  client  waits for a response from a  data server before it retries an NFS request.\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ff_layout_get_mirror_cred.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 79, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 89, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 100, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 132, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 139, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 182, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"dataserver_timeo\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 21, i32 21 }
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"dataserver_retrans\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 22, i32 21 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 497, i32 3 }
@___asan_gen_.85 = private constant [45 x i8] c"../fs/nfs/flexfilelayout/flexfilelayoutdev.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 294, i32 10 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 695, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 265, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 723, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_dataserver_retrans501, ptr @__UNIQUE_ID_dataserver_retranstype500, ptr @__UNIQUE_ID_dataserver_timeo503, ptr @__UNIQUE_ID_dataserver_timeotype502, ptr @__param_dataserver_retrans, ptr @__param_dataserver_timeo, ptr @ff_layout_encode_ds_ioerr._entry, ptr @ff_layout_encode_ds_ioerr._entry_ptr, ptr @nfs4_ff_alloc_deviceid_node._entry, ptr @nfs4_ff_alloc_deviceid_node._entry.12, ptr @nfs4_ff_alloc_deviceid_node._entry.15, ptr @nfs4_ff_alloc_deviceid_node._entry.3, ptr @nfs4_ff_alloc_deviceid_node._entry.6, ptr @nfs4_ff_alloc_deviceid_node._entry.9, ptr @nfs4_ff_alloc_deviceid_node._entry_ptr, ptr @nfs4_ff_alloc_deviceid_node._entry_ptr.11, ptr @nfs4_ff_alloc_deviceid_node._entry_ptr.14, ptr @nfs4_ff_alloc_deviceid_node._entry_ptr.17, ptr @nfs4_ff_alloc_deviceid_node._entry_ptr.5, ptr @nfs4_ff_alloc_deviceid_node._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @dataserver_timeo, ptr @dataserver_retrans, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_ff_alloc_deviceid_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_ff_alloc_deviceid_node._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_ff_alloc_deviceid_node._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_ff_alloc_deviceid_node._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_ff_alloc_deviceid_node._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_ff_alloc_deviceid_node._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dataserver_timeo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dataserver_retrans to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_layout_encode_ds_ioerr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_ff_layout_put_deviceid(ptr noundef %mirror_ds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %mirror_ds, null
  %cmp.i = icmp ugt ptr %mirror_ds, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call zeroext i1 @nfs4_put_deviceid_node(ptr noundef nonnull %mirror_ds) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4_put_deviceid_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_ff_layout_free_deviceid(ptr noundef %mirror_ds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %deviceid = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %mirror_ds, i32 0, i32 6
  tail call void @nfs4_print_deviceid(ptr noundef %deviceid) #13
  %ds = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %mirror_ds, i32 0, i32 3
  %0 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds, align 4
  tail call void @nfs4_pnfs_ds_put(ptr noundef %1) #13
  %ds_versions = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %mirror_ds, i32 0, i32 2
  %2 = ptrtoint ptr %ds_versions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds_versions, align 4
  tail call void @kfree(ptr noundef %3) #13
  %tobool.not = icmp eq ptr %mirror_ds, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rcu = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %mirror_ds, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 48 to ptr)) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_print_deviceid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_pnfs_ds_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs4_ff_alloc_deviceid_node(ptr noundef %server, ptr noundef %pdev, i32 noundef %gfp_flags) local_unnamed_addr #0 align 64 {
entry:
  %stream = alloca %struct.xdr_stream, align 4
  %buf = alloca %struct.xdr_buf, align 4
  %dsaddrs = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %stream) #13
  %0 = call ptr @memset(ptr %stream, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %buf) #13
  %1 = call ptr @memset(ptr %buf, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dsaddrs) #13
  %2 = ptrtoint ptr %dsaddrs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %dsaddrs, align 4, !annotation !71
  %3 = getelementptr inbounds %struct.list_head, ptr %dsaddrs, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !71
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %gfp_flags, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %entry.out_err_crit_edge, label %if.end

entry.out_err_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err

if.end:                                           ; preds = %entry
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %if.end.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !72

if.end.kzalloc.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %if.end
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %and6.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %if.end.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %if.end.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp_flags, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 7
  %5 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef %or.i, i32 noundef 72) #16
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %kzalloc.exit.out_scratch_crit_edge, label %if.end4

kzalloc.exit.out_scratch_crit_edge:               ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_scratch

if.end4:                                          ; preds = %kzalloc.exit
  tail call void @nfs4_init_deviceid_node(ptr noundef nonnull %call7.i.i, ptr noundef %server, ptr noundef %pdev) #13
  %7 = ptrtoint ptr %dsaddrs to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %dsaddrs, ptr %dsaddrs, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dsaddrs, ptr %3, align 4
  %pages = getelementptr inbounds %struct.pnfs_device, ptr %pdev, i32 0, i32 4
  %9 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pages, align 4
  %pglen = getelementptr inbounds %struct.pnfs_device, ptr %pdev, i32 0, i32 6
  %11 = ptrtoint ptr %pglen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pglen, align 4
  call void @xdr_init_decode_pages(ptr noundef nonnull %stream, ptr noundef nonnull %buf, ptr noundef %10, i32 noundef %12) #13
  %call.i = call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #13
  %scratch.i.i = getelementptr inbounds %struct.xdr_stream, ptr %stream, i32 0, i32 4
  %13 = ptrtoint ptr %scratch.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %scratch.i.i, align 4
  %iov_len.i.i = getelementptr inbounds %struct.xdr_stream, ptr %stream, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4096, ptr %iov_len.i.i, align 4
  %call5 = call ptr @xdr_inline_decode(ptr noundef nonnull %stream, i32 noundef 4) #13
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.out_err_drain_dsaddrs_crit_edge, label %if.end11, !prof !73

if.end4.out_err_drain_dsaddrs_crit_edge:          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err_drain_dsaddrs

if.end11:                                         ; preds = %if.end4
  %15 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %17 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end11.do.end25_crit_edge, label %do.end, !prof !72

if.end11.do.end25_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end25

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %16) #17
  br label %do.end25

do.end25:                                         ; preds = %do.end, %if.end11.do.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp374.not = icmp eq i32 %16, 0
  br i1 %cmp374.not, label %do.end25.for.end_crit_edge, label %do.end25.for.body_crit_edge

do.end25.for.body_crit_edge:                      ; preds = %do.end25
  br label %for.body

do.end25.for.end_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end25.for.body_crit_edge
  %i.0375 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end25.for.body_crit_edge ]
  %18 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %server, align 8
  %cl_net = getelementptr inbounds %struct.nfs_client, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %cl_net to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cl_net, align 8
  %call26 = call ptr @nfs4_decode_mp_ds_addr(ptr noundef %21, ptr noundef nonnull %stream, i32 noundef %gfp_flags) #13
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %for.body.for.inc_crit_edge, label %if.then28

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then28:                                        ; preds = %for.body
  %da_node = getelementptr inbounds %struct.nfs4_pnfs_ds_addr, ptr %call26, i32 0, i32 2
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %da_node, ptr noundef %23, ptr noundef nonnull %dsaddrs) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then28.for.inc_crit_edge

if.then28.for.inc_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i.i:                                       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %da_node, ptr %3, align 4
  %25 = ptrtoint ptr %da_node to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dsaddrs, ptr %da_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.nfs4_pnfs_ds_addr, ptr %call26, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %da_node, ptr %23, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.then28.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0375, 1
  %exitcond.not = icmp eq i32 %inc, %16
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end25.for.end_crit_edge
  %28 = ptrtoint ptr %dsaddrs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %dsaddrs, align 4
  %cmp.i.not = icmp eq ptr %29, %dsaddrs
  br i1 %cmp.i.not, label %do.body33, label %if.end51

do.body33:                                        ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %30 = load i32, ptr @nfs_debug, align 4
  %and34 = and i32 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body33.out_err_drain_dsaddrs_crit_edge, label %do.end45, !prof !72

do.body33.out_err_drain_dsaddrs_crit_edge:        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err_drain_dsaddrs

do.end45:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #15
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #17
  br label %out_err_drain_dsaddrs

if.end51:                                         ; preds = %for.end
  %call52 = call ptr @xdr_inline_decode(ptr noundef nonnull %stream, i32 noundef 4) #13
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %if.end51.out_err_drain_dsaddrs_crit_edge, label %if.end63, !prof !73

if.end51.out_err_drain_dsaddrs_crit_edge:         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err_drain_dsaddrs

if.end63:                                         ; preds = %if.end51
  %31 = ptrtoint ptr %call52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call52, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %33 = load i32, ptr @nfs_debug, align 4
  %and66 = and i32 %33, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end63.do.end82_crit_edge, label %do.end77, !prof !72

if.end63.do.end82_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end82

do.end77:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef %32) #17
  br label %do.end82

do.end82:                                         ; preds = %do.end77, %if.end63.do.end82_crit_edge
  %34 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %32, i32 20) #13
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %do.end82.out_scratch_crit_edge, label %if.end7.i.i, !prof !73

do.end82.out_scratch_crit_edge:                   ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_scratch

if.end7.i.i:                                      ; preds = %do.end82
  %36 = extractvalue { i32, i1 } %34, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %36, i32 noundef %or.i) #18
  %tobool84.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool84.not, label %if.end7.i.i.out_scratch_crit_edge, label %for.cond87.preheader

if.end7.i.i.out_scratch_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_scratch

for.cond87.preheader:                             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp88376.not = icmp eq i32 %32, 0
  br i1 %cmp88376.not, label %for.cond87.preheader.for.end199_crit_edge, label %for.cond87.preheader.for.body89_crit_edge

for.cond87.preheader.for.body89_crit_edge:        ; preds = %for.cond87.preheader
  br label %for.body89

for.cond87.preheader.for.end199_crit_edge:        ; preds = %for.cond87.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end199

for.body89:                                       ; preds = %for.inc197.for.body89_crit_edge, %for.cond87.preheader.for.body89_crit_edge
  %i.1377 = phi i32 [ %inc198, %for.inc197.for.body89_crit_edge ], [ 0, %for.cond87.preheader.for.body89_crit_edge ]
  %call90 = call ptr @xdr_inline_decode(ptr noundef nonnull %stream, i32 noundef 20) #13
  %tobool91.not = icmp eq ptr %call90, null
  br i1 %tobool91.not, label %for.body89.out_err_drain_dsaddrs_crit_edge, label %if.end101, !prof !73

for.body89.out_err_drain_dsaddrs_crit_edge:       ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err_drain_dsaddrs

if.end101:                                        ; preds = %for.body89
  %incdec.ptr = getelementptr i32, ptr %call90, i32 1
  %37 = ptrtoint ptr %call90 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call90, align 4
  %arrayidx = getelementptr %struct.nfs4_ff_ds_version, ptr %call8.i.i, i32 %i.1377
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx, align 4
  %incdec.ptr103 = getelementptr i32, ptr %call90, i32 2
  %40 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %incdec.ptr, align 4
  %minor_version = getelementptr %struct.nfs4_ff_ds_version, ptr %call8.i.i, i32 %i.1377, i32 1
  %42 = ptrtoint ptr %minor_version to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %minor_version, align 4
  %incdec.ptr106 = getelementptr i32, ptr %call90, i32 3
  %43 = ptrtoint ptr %incdec.ptr103 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %incdec.ptr103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %44)
  %cmp.i341 = icmp ult i32 %44, 1024
  %45 = call i32 @llvm.umin.i32(i32 %44, i32 1048576) #13
  %bsize.addr.0.i = select i1 %cmp.i341, i32 4096, i32 %45
  %46 = call i32 @llvm.ctpop.i32(i32 %bsize.addr.0.i) #13, !range !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %tobool.not.i.i = icmp ult i32 %46, 2
  br i1 %tobool.not.i.i, label %if.end101.nfs_block_size.exit_crit_edge, label %if.end101.land.rhs.i.i_crit_edge

if.end101.land.rhs.i.i_crit_edge:                 ; preds = %if.end101
  br label %land.rhs.i.i

if.end101.nfs_block_size.exit_crit_edge:          ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_block_size.exit

for.cond.i.i:                                     ; preds = %land.rhs.i.i
  %dec.i.i = add nsw i8 %nrbits.01.i.i, -1
  %conv.i.i = zext i8 %dec.i.i to i32
  %tobool2.not.i.i = icmp eq i8 %dec.i.i, 0
  br i1 %tobool2.not.i.i, label %for.cond.i.i.nfs_block_size.exit_crit_edge, label %for.cond.i.i.land.rhs.i.i_crit_edge

for.cond.i.i.land.rhs.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i.i

for.cond.i.i.nfs_block_size.exit_crit_edge:       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_block_size.exit

land.rhs.i.i:                                     ; preds = %for.cond.i.i.land.rhs.i.i_crit_edge, %if.end101.land.rhs.i.i_crit_edge
  %conv2.i.i = phi i32 [ %conv.i.i, %for.cond.i.i.land.rhs.i.i_crit_edge ], [ 31, %if.end101.land.rhs.i.i_crit_edge ]
  %nrbits.01.i.i = phi i8 [ %dec.i.i, %for.cond.i.i.land.rhs.i.i_crit_edge ], [ 31, %if.end101.land.rhs.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %conv2.i.i
  %and4.i.i = and i32 %shl.i.i, %bsize.addr.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %for.cond.i.i, label %land.rhs.i.i.nfs_block_size.exit_crit_edge

land.rhs.i.i.nfs_block_size.exit_crit_edge:       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_block_size.exit

nfs_block_size.exit:                              ; preds = %land.rhs.i.i.nfs_block_size.exit_crit_edge, %for.cond.i.i.nfs_block_size.exit_crit_edge, %if.end101.nfs_block_size.exit_crit_edge
  %bsize.addr.0.i.i = phi i32 [ %bsize.addr.0.i, %if.end101.nfs_block_size.exit_crit_edge ], [ 1, %for.cond.i.i.nfs_block_size.exit_crit_edge ], [ %shl.i.i, %land.rhs.i.i.nfs_block_size.exit_crit_edge ]
  %rsize = getelementptr %struct.nfs4_ff_ds_version, ptr %call8.i.i, i32 %i.1377, i32 2
  %47 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %bsize.addr.0.i.i, ptr %rsize, align 4
  %incdec.ptr110 = getelementptr i32, ptr %call90, i32 4
  %48 = ptrtoint ptr %incdec.ptr106 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %incdec.ptr106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %49)
  %cmp.i342 = icmp ult i32 %49, 1024
  %50 = call i32 @llvm.umin.i32(i32 %49, i32 1048576) #13
  %bsize.addr.0.i343 = select i1 %cmp.i342, i32 4096, i32 %50
  %51 = call i32 @llvm.ctpop.i32(i32 %bsize.addr.0.i343) #13, !range !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %51)
  %tobool.not.i.i344 = icmp ult i32 %51, 2
  br i1 %tobool.not.i.i344, label %nfs_block_size.exit.nfs_block_size.exit356_crit_edge, label %nfs_block_size.exit.land.rhs.i.i354_crit_edge

nfs_block_size.exit.land.rhs.i.i354_crit_edge:    ; preds = %nfs_block_size.exit
  br label %land.rhs.i.i354

nfs_block_size.exit.nfs_block_size.exit356_crit_edge: ; preds = %nfs_block_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_block_size.exit356

for.cond.i.i348:                                  ; preds = %land.rhs.i.i354
  %dec.i.i345 = add nsw i8 %nrbits.01.i.i350, -1
  %conv.i.i346 = zext i8 %dec.i.i345 to i32
  %tobool2.not.i.i347 = icmp eq i8 %dec.i.i345, 0
  br i1 %tobool2.not.i.i347, label %for.cond.i.i348.nfs_block_size.exit356_crit_edge, label %for.cond.i.i348.land.rhs.i.i354_crit_edge

for.cond.i.i348.land.rhs.i.i354_crit_edge:        ; preds = %for.cond.i.i348
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i.i354

for.cond.i.i348.nfs_block_size.exit356_crit_edge: ; preds = %for.cond.i.i348
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_block_size.exit356

land.rhs.i.i354:                                  ; preds = %for.cond.i.i348.land.rhs.i.i354_crit_edge, %nfs_block_size.exit.land.rhs.i.i354_crit_edge
  %conv2.i.i349 = phi i32 [ %conv.i.i346, %for.cond.i.i348.land.rhs.i.i354_crit_edge ], [ 31, %nfs_block_size.exit.land.rhs.i.i354_crit_edge ]
  %nrbits.01.i.i350 = phi i8 [ %dec.i.i345, %for.cond.i.i348.land.rhs.i.i354_crit_edge ], [ 31, %nfs_block_size.exit.land.rhs.i.i354_crit_edge ]
  %shl.i.i351 = shl nuw i32 1, %conv2.i.i349
  %and4.i.i352 = and i32 %shl.i.i351, %bsize.addr.0.i343
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i352)
  %tobool5.not.i.i353 = icmp eq i32 %and4.i.i352, 0
  br i1 %tobool5.not.i.i353, label %for.cond.i.i348, label %land.rhs.i.i354.nfs_block_size.exit356_crit_edge

land.rhs.i.i354.nfs_block_size.exit356_crit_edge: ; preds = %land.rhs.i.i354
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_block_size.exit356

nfs_block_size.exit356:                           ; preds = %land.rhs.i.i354.nfs_block_size.exit356_crit_edge, %for.cond.i.i348.nfs_block_size.exit356_crit_edge, %nfs_block_size.exit.nfs_block_size.exit356_crit_edge
  %bsize.addr.0.i.i355 = phi i32 [ %bsize.addr.0.i343, %nfs_block_size.exit.nfs_block_size.exit356_crit_edge ], [ 1, %for.cond.i.i348.nfs_block_size.exit356_crit_edge ], [ %shl.i.i351, %land.rhs.i.i354.nfs_block_size.exit356_crit_edge ]
  %wsize = getelementptr %struct.nfs4_ff_ds_version, ptr %call8.i.i, i32 %i.1377, i32 3
  %52 = ptrtoint ptr %wsize to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %bsize.addr.0.i.i355, ptr %wsize, align 4
  %53 = ptrtoint ptr %incdec.ptr110 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %incdec.ptr110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool115 = icmp ne i32 %54, 0
  %tightly_coupled = getelementptr %struct.nfs4_ff_ds_version, ptr %call8.i.i, i32 %i.1377, i32 4
  %frombool = zext i1 %tobool115 to i8
  %55 = ptrtoint ptr %tightly_coupled to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %frombool, ptr %tightly_coupled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %bsize.addr.0.i.i)
  %cmp119 = icmp ugt i32 %bsize.addr.0.i.i, 1048576
  br i1 %cmp119, label %if.then120, label %nfs_block_size.exit356.if.end123_crit_edge

nfs_block_size.exit356.if.end123_crit_edge:       ; preds = %nfs_block_size.exit356
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end123

if.then120:                                       ; preds = %nfs_block_size.exit356
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1048576, ptr %rsize, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then120, %nfs_block_size.exit356.if.end123_crit_edge
  %57 = ptrtoint ptr %wsize to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %wsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %58)
  %cmp126 = icmp ugt i32 %58, 1048576
  br i1 %cmp126, label %if.then127, label %if.end123.if.end130_crit_edge

if.end123.if.end130_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end130

if.then127:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #15
  %59 = ptrtoint ptr %wsize to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1048576, ptr %wsize, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then127, %if.end123.if.end130_crit_edge
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values)
  switch i32 %61, label %if.end130.do.body145_crit_edge [
    i32 3, label %land.lhs.true
    i32 4, label %land.lhs.true140
  ]

if.end130.do.body145_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body145

land.lhs.true:                                    ; preds = %if.end130
  %63 = ptrtoint ptr %minor_version to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %minor_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp136 = icmp eq i32 %64, 0
  br i1 %cmp136, label %land.lhs.true.do.body168_crit_edge, label %land.lhs.true.do.body145_crit_edge

land.lhs.true.do.body145_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body145

land.lhs.true.do.body168_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body168

land.lhs.true140:                                 ; preds = %if.end130
  %65 = ptrtoint ptr %minor_version to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %minor_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %66)
  %cmp143 = icmp ult i32 %66, 3
  br i1 %cmp143, label %land.lhs.true140.do.body168_crit_edge, label %land.lhs.true140.do.body145_crit_edge

land.lhs.true140.do.body145_crit_edge:            ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body145

land.lhs.true140.do.body168_crit_edge:            ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body168

do.body145:                                       ; preds = %land.lhs.true140.do.body145_crit_edge, %land.lhs.true.do.body145_crit_edge, %if.end130.do.body145_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %67 = load i32, ptr @nfs_debug, align 4
  %and146 = and i32 %67, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %do.body145.out_err_drain_dsaddrs_crit_edge, label %do.end157, !prof !72

do.body145.out_err_drain_dsaddrs_crit_edge:       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err_drain_dsaddrs

do.end157:                                        ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #15
  %68 = ptrtoint ptr %minor_version to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %minor_version, align 4
  %call163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef %i.1377, i32 noundef %61, i32 noundef %69) #17
  br label %out_err_drain_dsaddrs

do.body168:                                       ; preds = %land.lhs.true140.do.body168_crit_edge, %land.lhs.true.do.body168_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %70 = load i32, ptr @nfs_debug, align 4
  %and169 = and i32 %70, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %do.body168.for.inc197_crit_edge, label %do.end180, !prof !72

do.body168.for.inc197_crit_edge:                  ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc197

do.end180:                                        ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #15
  %71 = ptrtoint ptr %minor_version to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %minor_version, align 4
  %73 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rsize, align 4
  %75 = ptrtoint ptr %wsize to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %wsize, align 4
  %77 = ptrtoint ptr %tightly_coupled to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %tightly_coupled, align 4, !range !75
  %79 = zext i8 %78 to i32
  %call193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef %i.1377, i32 noundef %61, i32 noundef %72, i32 noundef %74, i32 noundef %76, i32 noundef %79) #17
  br label %for.inc197

for.inc197:                                       ; preds = %do.end180, %do.body168.for.inc197_crit_edge
  %inc198 = add nuw i32 %i.1377, 1
  %exitcond386.not = icmp eq i32 %inc198, %32
  br i1 %exitcond386.not, label %for.inc197.for.end199_crit_edge, label %for.inc197.for.body89_crit_edge

for.inc197.for.body89_crit_edge:                  ; preds = %for.inc197
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body89

for.inc197.for.end199_crit_edge:                  ; preds = %for.inc197
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end199

for.end199:                                       ; preds = %for.inc197.for.end199_crit_edge, %for.cond87.preheader.for.end199_crit_edge
  %ds_versions200 = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %call7.i.i, i32 0, i32 2
  %80 = ptrtoint ptr %ds_versions200 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call8.i.i, ptr %ds_versions200, align 8
  %ds_versions_cnt = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %call7.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %ds_versions_cnt to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %32, ptr %ds_versions_cnt, align 4
  %call201 = call ptr @nfs4_pnfs_ds_add(ptr noundef nonnull %dsaddrs, i32 noundef %gfp_flags) #13
  %ds = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %call7.i.i, i32 0, i32 3
  %82 = ptrtoint ptr %ds to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call201, ptr %ds, align 4
  %tobool203.not = icmp eq ptr %call201, null
  br i1 %tobool203.not, label %for.end199.out_err_drain_dsaddrs_crit_edge, label %while.cond.preheader

for.end199.out_err_drain_dsaddrs_crit_edge:       ; preds = %for.end199
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err_drain_dsaddrs

while.cond.preheader:                             ; preds = %for.end199
  %83 = ptrtoint ptr %dsaddrs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %dsaddrs, align 4
  %cmp.i357.not380 = icmp eq ptr %84, %dsaddrs
  br i1 %cmp.i357.not380, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %85 = phi ptr [ %97, %list_del_init.exit.while.body_crit_edge ], [ %84, %while.cond.preheader.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %85, i32 -132
  %call.i.i359 = call zeroext i1 @__list_del_entry_valid(ptr noundef %85) #13
  br i1 %call.i.i359, label %if.end.i.i360, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i360:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev.i.i, align 4
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %85, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %prev1.i.i.i, align 4
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %89, ptr %87, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i360, %while.body.list_del_init.exit_crit_edge
  %92 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %85, ptr %85, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %85, ptr %prev.i3.i, align 4
  %da_remotestr = getelementptr i8, ptr %85, i32 8
  %94 = ptrtoint ptr %da_remotestr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %da_remotestr, align 4
  call void @kfree(ptr noundef %95) #13
  call void @kfree(ptr noundef %add.ptr) #13
  %96 = ptrtoint ptr %dsaddrs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile ptr, ptr %dsaddrs, align 4
  %cmp.i357.not = icmp eq ptr %97, %dsaddrs
  br i1 %cmp.i357.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #13
  br label %cleanup

out_err_drain_dsaddrs:                            ; preds = %for.end199.out_err_drain_dsaddrs_crit_edge, %do.end157, %do.body145.out_err_drain_dsaddrs_crit_edge, %for.body89.out_err_drain_dsaddrs_crit_edge, %if.end51.out_err_drain_dsaddrs_crit_edge, %do.end45, %do.body33.out_err_drain_dsaddrs_crit_edge, %if.end4.out_err_drain_dsaddrs_crit_edge
  %ret.0 = phi i32 [ -12, %if.end4.out_err_drain_dsaddrs_crit_edge ], [ -12, %if.end51.out_err_drain_dsaddrs_crit_edge ], [ -12, %for.end199.out_err_drain_dsaddrs_crit_edge ], [ -123, %do.end45 ], [ -123, %do.body33.out_err_drain_dsaddrs_crit_edge ], [ -93, %do.end157 ], [ -93, %do.body145.out_err_drain_dsaddrs_crit_edge ], [ -12, %for.body89.out_err_drain_dsaddrs_crit_edge ]
  %ds_versions.0 = phi ptr [ null, %if.end4.out_err_drain_dsaddrs_crit_edge ], [ null, %if.end51.out_err_drain_dsaddrs_crit_edge ], [ %call8.i.i, %for.end199.out_err_drain_dsaddrs_crit_edge ], [ null, %do.end45 ], [ null, %do.body33.out_err_drain_dsaddrs_crit_edge ], [ %call8.i.i, %do.end157 ], [ %call8.i.i, %do.body145.out_err_drain_dsaddrs_crit_edge ], [ %call8.i.i, %for.body89.out_err_drain_dsaddrs_crit_edge ]
  %98 = ptrtoint ptr %dsaddrs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile ptr, ptr %dsaddrs, align 4
  %cmp.i361.not381 = icmp eq ptr %99, %dsaddrs
  br i1 %cmp.i361.not381, label %out_err_drain_dsaddrs.while.end224_crit_edge, label %out_err_drain_dsaddrs.while.body217_crit_edge

out_err_drain_dsaddrs.while.body217_crit_edge:    ; preds = %out_err_drain_dsaddrs
  br label %while.body217

out_err_drain_dsaddrs.while.end224_crit_edge:     ; preds = %out_err_drain_dsaddrs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end224

while.body217:                                    ; preds = %list_del_init.exit368.while.body217_crit_edge, %out_err_drain_dsaddrs.while.body217_crit_edge
  %100 = phi ptr [ %112, %list_del_init.exit368.while.body217_crit_edge ], [ %99, %out_err_drain_dsaddrs.while.body217_crit_edge ]
  %add.ptr221 = getelementptr i8, ptr %100, i32 -132
  %call.i.i363 = call zeroext i1 @__list_del_entry_valid(ptr noundef %100) #13
  br i1 %call.i.i363, label %if.end.i.i366, label %while.body217.list_del_init.exit368_crit_edge

while.body217.list_del_init.exit368_crit_edge:    ; preds = %while.body217
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit368

if.end.i.i366:                                    ; preds = %while.body217
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i364 = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %prev.i.i364 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %prev.i.i364, align 4
  %103 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %100, align 4
  %prev1.i.i.i365 = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %prev1.i.i.i365 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %102, ptr %prev1.i.i.i365, align 4
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %104, ptr %102, align 4
  br label %list_del_init.exit368

list_del_init.exit368:                            ; preds = %if.end.i.i366, %while.body217.list_del_init.exit368_crit_edge
  %107 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %100, ptr %100, align 4
  %prev.i3.i367 = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %108 = ptrtoint ptr %prev.i3.i367 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %100, ptr %prev.i3.i367, align 4
  %da_remotestr223 = getelementptr i8, ptr %100, i32 8
  %109 = ptrtoint ptr %da_remotestr223 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %da_remotestr223, align 4
  call void @kfree(ptr noundef %110) #13
  call void @kfree(ptr noundef %add.ptr221) #13
  %111 = ptrtoint ptr %dsaddrs to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile ptr, ptr %dsaddrs, align 4
  %cmp.i361.not = icmp eq ptr %112, %dsaddrs
  br i1 %cmp.i361.not, label %list_del_init.exit368.while.end224_crit_edge, label %list_del_init.exit368.while.body217_crit_edge

list_del_init.exit368.while.body217_crit_edge:    ; preds = %list_del_init.exit368
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body217

list_del_init.exit368.while.end224_crit_edge:     ; preds = %list_del_init.exit368
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end224

while.end224:                                     ; preds = %list_del_init.exit368.while.end224_crit_edge, %out_err_drain_dsaddrs.while.end224_crit_edge
  call void @kfree(ptr noundef %ds_versions.0) #13
  br label %out_scratch

out_scratch:                                      ; preds = %while.end224, %if.end7.i.i.out_scratch_crit_edge, %do.end82.out_scratch_crit_edge, %kzalloc.exit.out_scratch_crit_edge
  %ret.1 = phi i32 [ %ret.0, %while.end224 ], [ -12, %if.end7.i.i.out_scratch_crit_edge ], [ -12, %kzalloc.exit.out_scratch_crit_edge ], [ -12, %do.end82.out_scratch_crit_edge ]
  call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #13
  br label %out_err

out_err:                                          ; preds = %out_scratch, %entry.out_err_crit_edge
  %ret.2 = phi i32 [ %ret.1, %out_scratch ], [ -12, %entry.out_err_crit_edge ]
  %new_ds.0 = phi ptr [ %call7.i.i, %out_scratch ], [ null, %entry.out_err_crit_edge ]
  call void @kfree(ptr noundef %new_ds.0) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %113 = load i32, ptr @nfs_debug, align 4
  %and226 = and i32 %113, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and226)
  %tobool227.not = icmp eq i32 %and226, 0
  br i1 %tobool227.not, label %out_err.cleanup_crit_edge, label %do.end237, !prof !72

out_err.cleanup_crit_edge:                        ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end237:                                        ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #15
  %call239 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef %ret.2) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end237, %out_err.cleanup_crit_edge, %while.end
  %retval.0 = phi ptr [ %call7.i.i, %while.end ], [ null, %do.end237 ], [ null, %out_err.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dsaddrs) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %buf) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %stream) #13
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_init_deviceid_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_decode_pages(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_decode_mp_ds_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_pnfs_ds_add(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ff_layout_track_ds_error(ptr noundef %flo, ptr nocapture noundef readonly %mirror, i64 noundef %offset, i64 noundef %length, i32 noundef %status, i32 noundef %opnum, i32 noundef %gfp_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp = icmp eq i32 %status, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %mirror_ds = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 5
  %0 = ptrtoint ptr %mirror_ds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mirror_ds, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %and.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i19.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i19.i, label %if.end2.kmalloc.exit_crit_edge, label %if.end.i20.i, !prof !72

if.end2.kmalloc.exit_crit_edge:                   ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %kmalloc.exit

if.end.i20.i:                                     ; preds = %if.end2
  %and2.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i20.i.kmalloc.exit_crit_edge

if.end.i20.i.kmalloc.exit_crit_edge:              ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kmalloc.exit

if.end5.i.i:                                      ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #15
  %and6.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %..i.i = select i1 %tobool7.not.i.i, i32 1, i32 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %if.end5.i.i, %if.end.i20.i.kmalloc.exit_crit_edge, %if.end2.kmalloc.exit_crit_edge
  %retval.0.i21.i = phi i32 [ 0, %if.end2.kmalloc.exit_crit_edge ], [ 3, %if.end.i20.i.kmalloc.exit_crit_edge ], [ %..i.i, %if.end5.i.i ]
  %arrayidx6.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i, i32 7
  %2 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx6.i, align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef %gfp_flags, i32 noundef 72) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %kmalloc.exit.cleanup_crit_edge, label %if.end5

kmalloc.exit.cleanup_crit_edge:                   ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %kmalloc.exit
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i, ptr %prev.i, align 4
  %offset6 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %offset6 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %offset, ptr %offset6, align 8
  %length7 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %call7.i, i32 0, i32 2
  %7 = ptrtoint ptr %length7 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %length, ptr %length7, align 8
  %status8 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %call7.i, i32 0, i32 3
  %8 = ptrtoint ptr %status8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %status, ptr %status8, align 8
  %opnum9 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %call7.i, i32 0, i32 4
  %9 = ptrtoint ptr %opnum9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %opnum, ptr %opnum9, align 4
  %stateid = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %call7.i, i32 0, i32 5
  %stateid10 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 8
  %10 = call ptr @memcpy(ptr %stateid, ptr %stateid10, i32 16)
  %type.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i, align 4
  %type2.i = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %call7.i, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %type2.i, align 8
  %deviceid = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %call7.i, i32 0, i32 6
  %14 = ptrtoint ptr %mirror_ds to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mirror_ds, align 4
  %deviceid12 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %15, i32 0, i32 6
  %16 = call ptr @memcpy(ptr %deviceid, ptr %deviceid12, i32 16)
  %plh_inode = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %flo, i32 0, i32 15
  %17 = ptrtoint ptr %plh_inode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %plh_inode, align 4
  %i_lock = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #13
  %error_list.i = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %flo, i32 0, i32 3
  %19 = ptrtoint ptr %error_list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %error_list.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %ff_ds_error_match.exit.i.for.cond.i_crit_edge, %if.end5
  %err.0.i = phi ptr [ %20, %if.end5 ], [ %tmp.0.i, %ff_ds_error_match.exit.i.for.cond.i_crit_edge ]
  %21 = ptrtoint ptr %err.0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %tmp.0.i = load ptr, ptr %err.0.i, align 8
  %cmp.not.i = icmp eq ptr %err.0.i, %error_list.i
  br i1 %cmp.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %opnum.i.i = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %err.0.i, i32 0, i32 4
  %22 = ptrtoint ptr %opnum.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %opnum.i.i, align 4
  %24 = ptrtoint ptr %opnum9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %opnum9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.not.i.i = icmp eq i32 %23, %25
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp4.i.i = icmp ult i32 %23, %25
  br i1 %cmp4.i.i, label %if.then.i.i.ff_ds_error_match.exit.i_crit_edge, label %if.then.i.i.for.end.i_crit_edge

if.then.i.i.for.end.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.then.i.i.ff_ds_error_match.exit.i_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ff_ds_error_match.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %status.i.i = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %err.0.i, i32 0, i32 3
  %26 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %status.i.i, align 8
  %28 = ptrtoint ptr %status8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status8, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp6.not.i.i = icmp eq i32 %27, %29
  br i1 %cmp6.not.i.i, label %if.end12.i.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp10.i.i = icmp slt i32 %27, %29
  br i1 %cmp10.i.i, label %if.then7.i.i.ff_ds_error_match.exit.i_crit_edge, label %if.then7.i.i.for.end.i_crit_edge

if.then7.i.i.for.end.i_crit_edge:                 ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.then7.i.i.ff_ds_error_match.exit.i_crit_edge:  ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ff_ds_error_match.exit.i

if.end12.i.i:                                     ; preds = %if.end.i.i
  %stateid.i.i = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %err.0.i, i32 0, i32 5
  %call.i.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %stateid.i.i, ptr noundef dereferenceable(16) %stateid, i32 noundef 16) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp15.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp15.not.i.i, label %if.end17.i.i, label %if.end12.i.i.ff_ds_error_match.exit.i_crit_edge

if.end12.i.i.ff_ds_error_match.exit.i_crit_edge:  ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ff_ds_error_match.exit.i

if.end17.i.i:                                     ; preds = %if.end12.i.i
  %deviceid.i.i = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %err.0.i, i32 0, i32 6
  %call19.i.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %deviceid.i.i, ptr noundef dereferenceable(16) %deviceid, i32 noundef 16) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %cmp20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %cmp20.not.i.i, label %if.end22.i.i, label %if.end17.i.i.ff_ds_error_match.exit.i_crit_edge

if.end17.i.i.ff_ds_error_match.exit.i_crit_edge:  ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ff_ds_error_match.exit.i

if.end22.i.i:                                     ; preds = %if.end17.i.i
  %offset.i.i = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %err.0.i, i32 0, i32 1
  %30 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %offset.i.i, align 8
  %length.i.i = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %err.0.i, i32 0, i32 2
  %32 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %length.i.i, align 8
  %34 = tail call i64 @llvm.uadd.sat.i64(i64 %31, i64 %33) #13
  %35 = ptrtoint ptr %offset6 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %offset6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %36)
  %cmp25.i.i = icmp ult i64 %34, %36
  br i1 %cmp25.i.i, label %if.end22.i.i.ff_ds_error_match.exit.i_crit_edge, label %if.end.i

if.end22.i.i.ff_ds_error_match.exit.i_crit_edge:  ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ff_ds_error_match.exit.i

ff_ds_error_match.exit.i:                         ; preds = %if.end22.i.i.ff_ds_error_match.exit.i_crit_edge, %if.end17.i.i.ff_ds_error_match.exit.i_crit_edge, %if.end12.i.i.ff_ds_error_match.exit.i_crit_edge, %if.then7.i.i.ff_ds_error_match.exit.i_crit_edge, %if.then.i.i.ff_ds_error_match.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.end12.i.i.ff_ds_error_match.exit.i_crit_edge ], [ %call19.i.i, %if.end17.i.i.ff_ds_error_match.exit.i_crit_edge ], [ -1, %if.end22.i.i.ff_ds_error_match.exit.i_crit_edge ], [ -1, %if.then.i.i.ff_ds_error_match.exit.i_crit_edge ], [ -1, %if.then7.i.i.ff_ds_error_match.exit.i_crit_edge ]
  %cmp9.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp9.i, label %ff_ds_error_match.exit.i.for.cond.i_crit_edge, label %ff_ds_error_match.exit.i.for.end.i_crit_edge

ff_ds_error_match.exit.i.for.end.i_crit_edge:     ; preds = %ff_ds_error_match.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

ff_ds_error_match.exit.i.for.cond.i_crit_edge:    ; preds = %ff_ds_error_match.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

if.end.i:                                         ; preds = %if.end22.i.i
  %37 = ptrtoint ptr %length7 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %length7, align 8
  %39 = tail call i64 @llvm.uadd.sat.i64(i64 %36, i64 %38) #13
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %39)
  %cmp32.i.not.i = icmp ugt i64 %31, %39
  br i1 %cmp32.i.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end13.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %40 = tail call i64 @llvm.umax.i64(i64 %39, i64 %34) #13
  %41 = tail call i64 @llvm.umin.i64(i64 %36, i64 %31) #13
  %42 = ptrtoint ptr %offset6 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %offset6, align 8
  %sub.i.i = sub i64 %40, %41
  %43 = ptrtoint ptr %length7 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %sub.i.i, ptr %length7, align 8
  %44 = ptrtoint ptr %err.0.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %err.0.i, align 4
  %46 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %call7.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i, ptr %prev.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %err.0.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev3.i.i, align 4
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %prev.i, align 4
  %51 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i, ptr %49, align 4
  tail call void @kfree(ptr noundef %err.0.i) #13
  br label %ff_layout_add_ds_error_locked.exit

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %ff_ds_error_match.exit.i.for.end.i_crit_edge, %if.then7.i.i.for.end.i_crit_edge, %if.then.i.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %head.0.i = phi ptr [ %err.0.i, %if.end.i.for.end.i_crit_edge ], [ %error_list.i, %for.cond.i.for.end.i_crit_edge ], [ %err.0.i, %ff_ds_error_match.exit.i.for.end.i_crit_edge ], [ %err.0.i, %if.then7.i.i.for.end.i_crit_edge ], [ %err.0.i, %if.then.i.i.for.end.i_crit_edge ]
  %prev.i39.i = getelementptr inbounds %struct.list_head, ptr %head.0.i, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i39.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i39.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %53, ptr noundef %head.0.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.i.ff_layout_add_ds_error_locked.exit_crit_edge

for.end.i.ff_layout_add_ds_error_locked.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ff_layout_add_ds_error_locked.exit

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %prev.i39.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i, ptr %prev.i39.i, align 4
  %55 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %head.0.i, ptr %call7.i, align 8
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %call7.i, ptr %53, align 4
  br label %ff_layout_add_ds_error_locked.exit

ff_layout_add_ds_error_locked.exit:               ; preds = %if.end.i.i.i, %for.end.i.ff_layout_add_ds_error_locked.exit_crit_edge, %if.end13.i
  %58 = ptrtoint ptr %plh_inode to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %plh_inode, align 4
  %i_lock15 = getelementptr inbounds %struct.inode, ptr %59, i32 0, i32 18
  tail call void @_raw_spin_unlock(ptr noundef %i_lock15) #13
  br label %cleanup

cleanup:                                          ; preds = %ff_layout_add_ds_error_locked.exit, %kmalloc.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ff_layout_add_ds_error_locked.exit ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %kmalloc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @nfs4_ff_layout_select_ds_fh(ptr nocapture noundef readonly %mirror) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fh_versions = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 7
  %0 = ptrtoint ptr %fh_versions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh_versions, align 4
  ret ptr %1
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nfs4_ff_layout_select_ds_stateid(ptr nocapture noundef readonly %mirror, ptr nocapture noundef writeonly %stateid) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mirror_ds.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 5
  %0 = ptrtoint ptr %mirror_ds.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mirror_ds.i, align 4
  %ds_versions.i = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ds_versions.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds_versions.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp eq i32 %5, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %stateid1 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 8
  %6 = call ptr @memcpy(ptr %stateid, ptr %stateid1, i32 16)
  %type.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type.i, align 4
  %type2.i = getelementptr inbounds %struct.nfs4_stateid_struct, ptr %stateid, i32 0, i32 1
  %9 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %type2.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs4_ff_layout_prepare_ds(ptr noundef %lseg, ptr noundef %mirror, i1 noundef zeroext %fail_return) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pls_layout = getelementptr inbounds %struct.pnfs_layout_segment, ptr %lseg, i32 0, i32 7
  %0 = ptrtoint ptr %pls_layout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pls_layout, align 4
  %plh_inode = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %plh_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plh_inode, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %cmp.i = icmp eq ptr %mirror, null
  br i1 %cmp.i, label %entry.noconnect_crit_edge, label %if.end.i

entry.noconnect_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %noconnect

if.end.i:                                         ; preds = %entry
  %mirror_ds.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 5
  %8 = ptrtoint ptr %mirror_ds.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mirror_ds.i, align 4
  %cmp1.i = icmp eq ptr %9, null
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.if.end31.i_crit_edge

if.end.i.if.end31.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i

if.then2.i:                                       ; preds = %if.end.i
  %devid.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 4
  %plh_lc_cred.i = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %plh_lc_cred.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %plh_lc_cred.i, align 8
  %call5.i = tail call ptr @nfs4_find_get_deviceid(ptr noundef %7, ptr noundef %devid.i, ptr noundef %11, i32 noundef 3264) #13
  %tobool.not.i = icmp eq ptr %call5.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -19 to ptr), ptr %call5.i
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mirror_ds.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !76
  %12 = ptrtoint ptr %spec.select.i to i32
  tail call void @llvm.prefetch.p0(ptr %mirror_ds.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then2.i
  %13 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %mirror_ds.i, i32 0, i32 %12) #13, !srcloc !77
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %13, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i.i)
  %tobool25.not.i = icmp eq i32 %asmresult1.i.i, 0
  %cmp27.not.i = icmp eq ptr %spec.select.i, inttoptr (i32 -19 to ptr)
  %or.cond.i = select i1 %tobool25.not.i, i1 true, i1 %cmp27.not.i
  br i1 %or.cond.i, label %__cmpxchg.exit.i.if.end31thread-pre-split.i_crit_edge, label %if.then28.i

__cmpxchg.exit.i.if.end31thread-pre-split.i_crit_edge: ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31thread-pre-split.i

if.then28.i:                                      ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call29.i = tail call zeroext i1 @nfs4_put_deviceid_node(ptr noundef %call5.i) #13
  br label %if.end31thread-pre-split.i

if.end31thread-pre-split.i:                       ; preds = %if.then28.i, %__cmpxchg.exit.i.if.end31thread-pre-split.i_crit_edge
  %14 = ptrtoint ptr %mirror_ds.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr.i = load ptr, ptr %mirror_ds.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.end31thread-pre-split.i, %if.end.i.if.end31.i_crit_edge
  %15 = phi ptr [ %.pr.i, %if.end31thread-pre-split.i ], [ %9, %if.end.i.if.end31.i_crit_edge ]
  %cmp.i.i = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end31.i.noconnect_crit_edge, label %if.end

if.end31.i.noconnect_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %noconnect

if.end:                                           ; preds = %if.end31.i
  %16 = ptrtoint ptr %mirror_ds.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mirror_ds.i, align 4
  %ds3 = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %ds3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ds3, align 4
  %ds_clp = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %ds_clp, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %do.end9, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end9:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !79
  %22 = ptrtoint ptr %mirror_ds.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mirror_ds.i, align 4
  %24 = load i32, ptr @dataserver_timeo, align 4
  %25 = load i32, ptr @dataserver_retrans, align 4
  %ds_versions = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %ds_versions to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ds_versions, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %minor_version = getelementptr inbounds %struct.nfs4_ff_ds_version, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %minor_version to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %minor_version, align 4
  %call17 = tail call i32 @nfs4_pnfs_ds_connect(ptr noundef %7, ptr noundef %19, ptr noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %29, i32 noundef %31) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %do.end9.noconnect_crit_edge

do.end9.noconnect_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %noconnect

if.then19:                                        ; preds = %do.end9
  %32 = ptrtoint ptr %ds_clp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ds_clp, align 4
  %cl_rpcclient = getelementptr inbounds %struct.nfs_client, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %cl_rpcclient to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cl_rpcclient, align 8
  %call21 = tail call i32 @rpc_max_payload(ptr noundef %35) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %call21)
  %cmp.i74 = icmp ult i32 %call21, 1024
  %36 = tail call i32 @llvm.umin.i32(i32 %call21, i32 1048576) #13
  %bsize.addr.0.i = select i1 %cmp.i74, i32 4096, i32 %36
  %37 = tail call i32 @llvm.ctpop.i32(i32 %bsize.addr.0.i) #13, !range !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %tobool.not.i.i75 = icmp ult i32 %37, 2
  br i1 %tobool.not.i.i75, label %if.then19.nfs_block_size.exit_crit_edge, label %if.then19.land.rhs.i.i_crit_edge

if.then19.land.rhs.i.i_crit_edge:                 ; preds = %if.then19
  br label %land.rhs.i.i

if.then19.nfs_block_size.exit_crit_edge:          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_block_size.exit

for.cond.i.i:                                     ; preds = %land.rhs.i.i
  %dec.i.i = add nsw i8 %nrbits.01.i.i, -1
  %conv.i.i = zext i8 %dec.i.i to i32
  %tobool2.not.i.i = icmp eq i8 %dec.i.i, 0
  br i1 %tobool2.not.i.i, label %for.cond.i.i.nfs_block_size.exit_crit_edge, label %for.cond.i.i.land.rhs.i.i_crit_edge

for.cond.i.i.land.rhs.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i.i

for.cond.i.i.nfs_block_size.exit_crit_edge:       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_block_size.exit

land.rhs.i.i:                                     ; preds = %for.cond.i.i.land.rhs.i.i_crit_edge, %if.then19.land.rhs.i.i_crit_edge
  %conv2.i.i = phi i32 [ %conv.i.i, %for.cond.i.i.land.rhs.i.i_crit_edge ], [ 31, %if.then19.land.rhs.i.i_crit_edge ]
  %nrbits.01.i.i = phi i8 [ %dec.i.i, %for.cond.i.i.land.rhs.i.i_crit_edge ], [ 31, %if.then19.land.rhs.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %conv2.i.i
  %and4.i.i = and i32 %shl.i.i, %bsize.addr.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %for.cond.i.i, label %land.rhs.i.i.nfs_block_size.exit_crit_edge

land.rhs.i.i.nfs_block_size.exit_crit_edge:       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfs_block_size.exit

nfs_block_size.exit:                              ; preds = %land.rhs.i.i.nfs_block_size.exit_crit_edge, %for.cond.i.i.nfs_block_size.exit_crit_edge, %if.then19.nfs_block_size.exit_crit_edge
  %bsize.addr.0.i.i = phi i32 [ %bsize.addr.0.i, %if.then19.nfs_block_size.exit_crit_edge ], [ 1, %for.cond.i.i.nfs_block_size.exit_crit_edge ], [ %shl.i.i, %land.rhs.i.i.nfs_block_size.exit_crit_edge ]
  %38 = ptrtoint ptr %mirror_ds.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mirror_ds.i, align 4
  %ds_versions24 = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %ds_versions24 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ds_versions24, align 4
  %rsize = getelementptr inbounds %struct.nfs4_ff_ds_version, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %bsize.addr.0.i.i)
  %cmp = icmp ugt i32 %43, %bsize.addr.0.i.i
  br i1 %cmp, label %if.then26, label %nfs_block_size.exit.if.end31_crit_edge

nfs_block_size.exit.if.end31_crit_edge:           ; preds = %nfs_block_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then26:                                        ; preds = %nfs_block_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %bsize.addr.0.i.i, ptr %rsize, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %nfs_block_size.exit.if.end31_crit_edge
  %45 = ptrtoint ptr %mirror_ds.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mirror_ds.i, align 4
  %ds_versions33 = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %ds_versions33 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ds_versions33, align 4
  %wsize = getelementptr inbounds %struct.nfs4_ff_ds_version, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %wsize to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %wsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %bsize.addr.0.i.i)
  %cmp35 = icmp ugt i32 %50, %bsize.addr.0.i.i
  br i1 %cmp35, label %if.then36, label %if.end31.out_crit_edge

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %wsize to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %bsize.addr.0.i.i, ptr %wsize, align 4
  br label %out

noconnect:                                        ; preds = %do.end9.noconnect_crit_edge, %if.end31.i.noconnect_crit_edge, %entry.noconnect_crit_edge
  %52 = ptrtoint ptr %pls_layout to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pls_layout, align 4
  %offset = getelementptr inbounds %struct.pnfs_layout_segment, ptr %lseg, i32 0, i32 3, i32 1
  %54 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %offset, align 8
  %length = getelementptr inbounds %struct.pnfs_layout_segment, ptr %lseg, i32 0, i32 3, i32 2
  %56 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %length, align 8
  %call46 = tail call i32 @ff_layout_track_ds_error(ptr noundef %53, ptr noundef %mirror, i64 noundef %55, i64 noundef %57, i32 noundef 6, i32 noundef 10044, i32 noundef 3072)
  tail call void @ff_layout_send_layouterror(ptr noundef %lseg) #13
  br i1 %fail_return, label %noconnect.if.then49_crit_edge, label %lor.lhs.false

noconnect.if.then49_crit_edge:                    ; preds = %noconnect
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then49

lor.lhs.false:                                    ; preds = %noconnect
  %pls_range.i = getelementptr inbounds %struct.pnfs_layout_segment, ptr %lseg, i32 0, i32 3
  %58 = ptrtoint ptr %pls_range.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pls_range.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp.i76 = icmp eq i32 %59, 1
  %mirror_array_cnt.i.i.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %lseg, i32 0, i32 3
  %60 = ptrtoint ptr %mirror_array_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mirror_array_cnt.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp23.not.i.i = icmp eq i32 %61, 0
  br i1 %cmp.i76, label %if.then.i, label %if.end.i80

if.then.i:                                        ; preds = %lor.lhs.false
  br i1 %cmp23.not.i.i, label %if.then.i.if.then49_crit_edge, label %if.then.i.FF_LAYOUT_COMP.exit.i.i_crit_edge

if.then.i.FF_LAYOUT_COMP.exit.i.i_crit_edge:      ; preds = %if.then.i
  br label %FF_LAYOUT_COMP.exit.i.i

if.then.i.if.then49_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then49

FF_LAYOUT_COMP.exit.i.i:                          ; preds = %for.inc.i.i.FF_LAYOUT_COMP.exit.i.i_crit_edge, %if.then.i.FF_LAYOUT_COMP.exit.i.i_crit_edge
  %idx.024.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.FF_LAYOUT_COMP.exit.i.i_crit_edge ], [ 0, %if.then.i.FF_LAYOUT_COMP.exit.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %lseg, i32 0, i32 4, i32 %idx.024.i.i
  %62 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i77 = icmp eq ptr %63, null
  br i1 %tobool.not.i.i77, label %FF_LAYOUT_COMP.exit.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

FF_LAYOUT_COMP.exit.i.i.for.inc.i.i_crit_edge:    ; preds = %FF_LAYOUT_COMP.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %FF_LAYOUT_COMP.exit.i.i
  %mirror_ds.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %mirror_ds.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mirror_ds.i.i, align 4
  %tobool2.not.i.i78 = icmp eq ptr %65, null
  br i1 %tobool2.not.i.i78, label %if.then.i.i.out_crit_edge, label %if.end.i.i

if.then.i.i.out_crit_edge:                        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i.i:                                       ; preds = %if.then.i.i
  %cmp.i22.i.i = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i22.i.i, label %if.end.i.i.for.inc.i.i_crit_edge, label %if.end7.i.i

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %call9.i.i = tail call zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef nonnull %65) #13
  br i1 %call9.i.i, label %if.end7.i.i.for.inc.i.i_crit_edge, label %if.end7.i.i.out_crit_edge

if.end7.i.i.out_crit_edge:                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end7.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end7.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %FF_LAYOUT_COMP.exit.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %idx.024.i.i, 1
  %66 = ptrtoint ptr %mirror_array_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mirror_array_cnt.i.i.i, align 4
  %cmp.i.i79 = icmp ult i32 %inc.i.i, %67
  br i1 %cmp.i.i79, label %for.inc.i.i.FF_LAYOUT_COMP.exit.i.i_crit_edge, label %for.inc.i.i.if.then49_crit_edge

for.inc.i.i.if.then49_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then49

for.inc.i.i.FF_LAYOUT_COMP.exit.i.i_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %FF_LAYOUT_COMP.exit.i.i

if.end.i80:                                       ; preds = %lor.lhs.false
  br i1 %cmp23.not.i.i, label %if.end.i80.if.then49_crit_edge, label %if.end.i80.FF_LAYOUT_COMP.exit.i7.i_crit_edge

if.end.i80.FF_LAYOUT_COMP.exit.i7.i_crit_edge:    ; preds = %if.end.i80
  br label %FF_LAYOUT_COMP.exit.i7.i

if.end.i80.if.then49_crit_edge:                   ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then49

FF_LAYOUT_COMP.exit.i7.i:                         ; preds = %for.inc.i12.i.FF_LAYOUT_COMP.exit.i7.i_crit_edge, %if.end.i80.FF_LAYOUT_COMP.exit.i7.i_crit_edge
  %idx.027.i.i = phi i32 [ %inc.i10.i, %for.inc.i12.i.FF_LAYOUT_COMP.exit.i7.i_crit_edge ], [ 0, %if.end.i80.FF_LAYOUT_COMP.exit.i7.i_crit_edge ]
  %arrayidx.i.i5.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %lseg, i32 0, i32 4, i32 %idx.027.i.i
  %68 = ptrtoint ptr %arrayidx.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i.i5.i, align 4
  %tobool.not.i6.i = icmp eq ptr %69, null
  br i1 %tobool.not.i6.i, label %FF_LAYOUT_COMP.exit.i7.i.if.then49_crit_edge, label %lor.lhs.false.i.i

FF_LAYOUT_COMP.exit.i7.i.if.then49_crit_edge:     ; preds = %FF_LAYOUT_COMP.exit.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then49

lor.lhs.false.i.i:                                ; preds = %FF_LAYOUT_COMP.exit.i7.i
  %mirror_ds.i8.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %mirror_ds.i8.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mirror_ds.i8.i, align 4
  %cmp.i23.i.i = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i23.i.i, label %lor.lhs.false.i.i.if.then49_crit_edge, label %if.end.i9.i

lor.lhs.false.i.i.if.then49_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then49

if.end.i9.i:                                      ; preds = %lor.lhs.false.i.i
  %tobool4.not.i.i = icmp eq ptr %71, null
  br i1 %tobool4.not.i.i, label %if.end.i9.i.for.inc.i12.i_crit_edge, label %if.end6.i.i

if.end.i9.i.for.inc.i12.i_crit_edge:              ; preds = %if.end.i9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i12.i

if.end6.i.i:                                      ; preds = %if.end.i9.i
  %call8.i.i = tail call zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef nonnull %71) #13
  br i1 %call8.i.i, label %if.end6.i.i.if.then49_crit_edge, label %if.end6.i.i.for.inc.i12.i_crit_edge

if.end6.i.i.for.inc.i12.i_crit_edge:              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i12.i

if.end6.i.i.if.then49_crit_edge:                  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then49

for.inc.i12.i:                                    ; preds = %if.end6.i.i.for.inc.i12.i_crit_edge, %if.end.i9.i.for.inc.i12.i_crit_edge
  %inc.i10.i = add nuw i32 %idx.027.i.i, 1
  %72 = ptrtoint ptr %mirror_array_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mirror_array_cnt.i.i.i, align 4
  %cmp.i11.i = icmp ult i32 %inc.i10.i, %73
  br i1 %cmp.i11.i, label %for.inc.i12.i.FF_LAYOUT_COMP.exit.i7.i_crit_edge, label %ff_layout_has_available_ds.exit

for.inc.i12.i.FF_LAYOUT_COMP.exit.i7.i_crit_edge: ; preds = %for.inc.i12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %FF_LAYOUT_COMP.exit.i7.i

ff_layout_has_available_ds.exit:                  ; preds = %for.inc.i12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %phi.cmp.i.i.not = icmp eq i32 %73, 0
  br i1 %phi.cmp.i.i.not, label %ff_layout_has_available_ds.exit.if.then49_crit_edge, label %ff_layout_has_available_ds.exit.out_crit_edge

ff_layout_has_available_ds.exit.out_crit_edge:    ; preds = %ff_layout_has_available_ds.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

ff_layout_has_available_ds.exit.if.then49_crit_edge: ; preds = %ff_layout_has_available_ds.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then49

if.then49:                                        ; preds = %ff_layout_has_available_ds.exit.if.then49_crit_edge, %if.end6.i.i.if.then49_crit_edge, %lor.lhs.false.i.i.if.then49_crit_edge, %FF_LAYOUT_COMP.exit.i7.i.if.then49_crit_edge, %if.end.i80.if.then49_crit_edge, %for.inc.i.i.if.then49_crit_edge, %if.then.i.if.then49_crit_edge, %noconnect.if.then49_crit_edge
  tail call void @pnfs_error_mark_layout_for_return(ptr noundef %3, ptr noundef %lseg) #13
  br label %out

out:                                              ; preds = %if.then49, %ff_layout_has_available_ds.exit.out_crit_edge, %if.end7.i.i.out_crit_edge, %if.then.i.i.out_crit_edge, %if.then36, %if.end31.out_crit_edge, %if.end.out_crit_edge
  %ds.0 = phi ptr [ %19, %if.end.out_crit_edge ], [ %19, %if.then36 ], [ %19, %if.end31.out_crit_edge ], [ null, %if.then49 ], [ null, %ff_layout_has_available_ds.exit.out_crit_edge ], [ null, %if.then.i.i.out_crit_edge ], [ null, %if.end7.i.i.out_crit_edge ]
  ret ptr %ds.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_pnfs_ds_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_max_payload(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ff_layout_send_layouterror(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_error_mark_layout_for_return(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ff_layout_get_ds_cred(ptr noundef %mirror, ptr nocapture noundef readonly %range, ptr noundef %mdscred) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mirror, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %mirror_ds = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 5
  %0 = ptrtoint ptr %mirror_ds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mirror_ds, align 4
  %ds_versions = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ds_versions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds_versions, align 4
  %tightly_coupled = getelementptr inbounds %struct.nfs4_ff_ds_version, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %tightly_coupled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tightly_coupled, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %range, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  %ro_cred.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 9
  %rw_cred.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 10
  %pcred.0.i = select i1 %cmp.i, ptr %ro_cred.i, ptr %rw_cred.i
  %8 = tail call i32 @llvm.read_register.i32(metadata !61) #13
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !80
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.then.do.body.i.preheader_crit_edge, label %land.lhs.true.i.i

if.then.do.body.i.preheader_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.preheader

land.lhs.true.i.i:                                ; preds = %if.then
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.do.body.i.preheader_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.do.body.i.preheader_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.preheader

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.do.body.i.preheader_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.do.body.i.preheader_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.preheader

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #13
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.then.i.i, %land.lhs.true2.i.i.do.body.i.preheader_crit_edge, %land.lhs.true.i.i.do.body.i.preheader_crit_edge, %if.then.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.i.do.body.i_crit_edge, %do.body.i.preheader
  %12 = ptrtoint ptr %pcred.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %pcred.0.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.body.i.do.end10.i_crit_edge

do.body.i.do.end10.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b23.i = load i1, ptr @ff_layout_get_mirror_cred.__warned, align 1
  br i1 %.b23.i, label %land.lhs.true5.i.do.end10.i_crit_edge, label %if.then7.i

land.lhs.true5.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ff_layout_get_mirror_cred.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 294, ptr noundef nonnull @.str.21) #13
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then7.i, %land.lhs.true5.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %do.body.i.do.end10.i_crit_edge
  %tobool12.not.i = icmp eq ptr %13, null
  br i1 %tobool12.not.i, label %do.end10.i.do.end18.i_crit_edge, label %if.end.i.i

do.end10.i.do.end18.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end18.i

if.end.i.i:                                       ; preds = %do.end10.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %13, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr nonnull %13, i32 1, i32 3, i32 1) #13
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 0, i32 1, ptr nonnull elementtype(i32) %13) #13, !srcloc !82
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.end.i.i.do.body.i_crit_edge, label %do.body.i.i

if.end.i.i.do.body.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

do.body.i.i:                                      ; preds = %if.end.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !83
  %call.i.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %13) #13
  br i1 %call.i.i.i, label %if.then.i.i.i, label %do.body.i.i.get_cred_rcu.exit.thread.i_crit_edge, !prof !73

do.body.i.i.get_cred_rcu.exit.thread.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_cred_rcu.exit.thread.i

if.then.i.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__invalid_creds(ptr noundef nonnull %13, ptr noundef nonnull @.str.24, i32 noundef 265) #13
  br label %get_cred_rcu.exit.thread.i

get_cred_rcu.exit.thread.i:                       ; preds = %if.then.i.i.i, %do.body.i.i.get_cred_rcu.exit.thread.i_crit_edge
  %15 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 28
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %15, align 4
  br label %do.end18.i

do.end18.i:                                       ; preds = %get_cred_rcu.exit.thread.i, %do.end10.i.do.end18.i_crit_edge
  %call.i25.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i25.i, label %do.end18.i.ff_layout_get_mirror_cred.exit_crit_edge, label %land.lhs.true.i28.i

do.end18.i.ff_layout_get_mirror_cred.exit_crit_edge: ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ff_layout_get_mirror_cred.exit

land.lhs.true.i28.i:                              ; preds = %do.end18.i
  %call1.i26.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26.i)
  %tobool.not.i27.i = icmp eq i32 %call1.i26.i, 0
  br i1 %tobool.not.i27.i, label %land.lhs.true.i28.i.ff_layout_get_mirror_cred.exit_crit_edge, label %land.lhs.true2.i30.i

land.lhs.true.i28.i.ff_layout_get_mirror_cred.exit_crit_edge: ; preds = %land.lhs.true.i28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ff_layout_get_mirror_cred.exit

land.lhs.true2.i30.i:                             ; preds = %land.lhs.true.i28.i
  %.b4.i29.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29.i, label %land.lhs.true2.i30.i.ff_layout_get_mirror_cred.exit_crit_edge, label %if.then.i31.i

land.lhs.true2.i30.i.ff_layout_get_mirror_cred.exit_crit_edge: ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ff_layout_get_mirror_cred.exit

if.then.i31.i:                                    ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.25) #13
  br label %ff_layout_get_mirror_cred.exit

ff_layout_get_mirror_cred.exit:                   ; preds = %if.then.i31.i, %land.lhs.true2.i30.i.ff_layout_get_mirror_cred.exit_crit_edge, %land.lhs.true.i28.i.ff_layout_get_mirror_cred.exit_crit_edge, %do.end18.i.ff_layout_get_mirror_cred.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !84
  %17 = tail call i32 @llvm.read_register.i32(metadata !61) #13
  %and.i.i.i.i.i32.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i32.i to ptr
  %preempt_count.i.i.i.i33.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i33.i, align 4
  %sub.i.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i33.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br i1 %tobool12.not.i, label %if.then3, label %ff_layout_get_mirror_cred.exit.if.end6_crit_edge

ff_layout_get_mirror_cred.exit.if.end6_crit_edge: ; preds = %ff_layout_get_mirror_cred.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then3:                                         ; preds = %ff_layout_get_mirror_cred.exit
  %tobool.not.i11 = icmp eq ptr %mdscred, null
  br i1 %tobool.not.i11, label %if.then3.if.end6_crit_edge, label %do.body.i13

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

do.body.i13:                                      ; preds = %if.then3
  %call.i.i12 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %mdscred) #13
  br i1 %call.i.i12, label %if.then.i.i14, label %do.body.i13.__validate_creds.exit.i_crit_edge, !prof !73

do.body.i13.__validate_creds.exit.i_crit_edge:    ; preds = %do.body.i13
  call void @__sanitizer_cov_trace_pc() #15
  br label %__validate_creds.exit.i

if.then.i.i14:                                    ; preds = %do.body.i13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__invalid_creds(ptr noundef nonnull %mdscred, ptr noundef nonnull @.str.24, i32 noundef 253) #13
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i14, %do.body.i13.__validate_creds.exit.i_crit_edge
  %21 = getelementptr inbounds %struct.cred, ptr %mdscred, i32 0, i32 28
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %21, align 4
  %call.i.i.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mdscred, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %mdscred, i32 1, i32 3, i32 1) #13
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %mdscred, ptr nonnull %mdscred, i32 1, ptr nonnull elementtype(i32) %mdscred) #13, !srcloc !85
  br label %if.end6

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %tobool.not.i16 = icmp eq ptr %mdscred, null
  br i1 %tobool.not.i16, label %if.else.if.end6_crit_edge, label %do.body.i18

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

do.body.i18:                                      ; preds = %if.else
  %call.i.i17 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %mdscred) #13
  br i1 %call.i.i17, label %if.then.i.i19, label %do.body.i18.__validate_creds.exit.i21_crit_edge, !prof !73

do.body.i18.__validate_creds.exit.i21_crit_edge:  ; preds = %do.body.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %__validate_creds.exit.i21

if.then.i.i19:                                    ; preds = %do.body.i18
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__invalid_creds(ptr noundef nonnull %mdscred, ptr noundef nonnull @.str.24, i32 noundef 253) #13
  br label %__validate_creds.exit.i21

__validate_creds.exit.i21:                        ; preds = %if.then.i.i19, %do.body.i18.__validate_creds.exit.i21_crit_edge
  %24 = getelementptr inbounds %struct.cred, ptr %mdscred, i32 0, i32 28
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %24, align 4
  %call.i.i.i.i20 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mdscred, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %mdscred, i32 1, i32 3, i32 1) #13
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %mdscred, ptr nonnull %mdscred, i32 1, ptr nonnull elementtype(i32) %mdscred) #13, !srcloc !85
  br label %if.end6

if.end6:                                          ; preds = %__validate_creds.exit.i21, %if.else.if.end6_crit_edge, %__validate_creds.exit.i, %if.then3.if.end6_crit_edge, %ff_layout_get_mirror_cred.exit.if.end6_crit_edge
  %cred.0 = phi ptr [ %13, %ff_layout_get_mirror_cred.exit.if.end6_crit_edge ], [ null, %if.then3.if.end6_crit_edge ], [ %mdscred, %__validate_creds.exit.i ], [ null, %if.else.if.end6_crit_edge ], [ %mdscred, %__validate_creds.exit.i21 ]
  ret ptr %cred.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs4_ff_find_or_create_ds_client(ptr nocapture noundef readonly %mirror, ptr noundef %ds_clp, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mirror_ds = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %mirror, i32 0, i32 5
  %0 = ptrtoint ptr %mirror_ds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mirror_ds, align 4
  %ds_versions = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ds_versions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds_versions, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %5, label %do.body [
    i32 3, label %sw.bb
    i32 4, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cl_rpcclient = getelementptr inbounds %struct.nfs_client, ptr %ds_clp, i32 0, i32 11
  %7 = ptrtoint ptr %cl_rpcclient to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cl_rpcclient, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call ptr @nfs4_find_or_create_ds_client(ptr noundef %ds_clp, ptr noundef %inode) #13
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/flexfilelayout/flexfilelayoutdev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 455, 0\0A.popsection", ""() #13, !srcloc !86
  unreachable

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %retval.0 = phi ptr [ %call, %sw.bb1 ], [ %8, %sw.bb ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_find_or_create_ds_client(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ff_layout_free_ds_ioerr(ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %head, align 4
  %cmp.i.not3 = icmp eq ptr %1, %head
  br i1 %cmp.i.not3, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %12, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #13
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %2) #13
  %11 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %head, align 4
  %cmp.i.not = icmp eq ptr %12, %head
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ff_layout_encode_ds_ioerr(ptr noundef %xdr, ptr noundef readonly %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %err.055 = load ptr, ptr %head, align 4
  %cmp.not56 = icmp eq ptr %err.055, %head
  br i1 %cmp.not56, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %err.057 = phi ptr [ %err.0, %for.inc.for.body_crit_edge ], [ %err.055, %entry.for.body_crit_edge ]
  %call = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 60) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end, !prof !73

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %for.body
  %offset = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %err.057, i32 0, i32 1
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %offset, align 8
  %3 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 %2, ptr %call, align 1
  %add.ptr.i = getelementptr i32, ptr %call, i32 2
  %length = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %err.057, i32 0, i32 2
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %length, align 8
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %add.ptr.i, align 1
  %add.ptr.i54 = getelementptr i32, ptr %call, i32 4
  %stateid = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %err.057, i32 0, i32 5
  %call7 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %add.ptr.i54, ptr noundef %stateid, i32 noundef 16) #13
  %incdec.ptr = getelementptr i32, ptr %call7, i32 1
  %7 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %call7, align 4
  %deviceid = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %err.057, i32 0, i32 6
  %call8 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %incdec.ptr, ptr noundef %deviceid, i32 noundef 16) #13
  %status = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %err.057, i32 0, i32 3
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 8
  %incdec.ptr9 = getelementptr i32, ptr %call8, i32 1
  %10 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call8, align 4
  %opnum = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %err.057, i32 0, i32 4
  %11 = ptrtoint ptr %opnum to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %opnum, align 4
  %13 = ptrtoint ptr %incdec.ptr9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %incdec.ptr9, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %14 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end.for.inc_crit_edge, label %do.end, !prof !72

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %offset, align 8
  %17 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %length, align 8
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status, align 8
  %21 = ptrtoint ptr %opnum to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %opnum, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i64 noundef %16, i64 noundef %18, i32 noundef %20, i32 noundef %22) #17
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end.for.inc_crit_edge
  %23 = ptrtoint ptr %err.057 to i32
  call void @__asan_load4_noabort(i32 %23)
  %err.0 = load ptr, ptr %err.057, align 4
  %cmp.not = icmp eq ptr %err.0, %head
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -105, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque_fixed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ff_layout_fetch_ds_ioerr(ptr noundef %lo, ptr nocapture noundef readonly %range, ptr noundef %head, i32 noundef %maxnum) local_unnamed_addr #0 align 64 {
entry:
  %discard = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @do_layout_fetch_ds_ioerr(ptr noundef %lo, ptr noundef %range, ptr noundef %head, i32 noundef %maxnum)
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %maxnum)
  %cmp = icmp eq i32 %call, %maxnum
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %discard) #13
  %0 = getelementptr inbounds %struct.list_head, ptr %discard, i32 0, i32 1
  %1 = ptrtoint ptr %discard to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %discard, ptr %discard, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %discard, ptr %0, align 4
  %call1 = call fastcc i32 @do_layout_fetch_ds_ioerr(ptr noundef %lo, ptr noundef %range, ptr noundef nonnull %discard, i32 noundef -1)
  %3 = ptrtoint ptr %discard to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %discard, align 4
  %cmp.i.not3.i = icmp eq ptr %4, %discard
  br i1 %cmp.i.not3.i, label %if.then.ff_layout_free_ds_ioerr.exit_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.ff_layout_free_ds_ioerr.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %ff_layout_free_ds_ioerr.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %5 = phi ptr [ %15, %list_del.exit.i.while.body.i_crit_edge ], [ %4, %if.then.while.body.i_crit_edge ]
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %5) #13
  %14 = ptrtoint ptr %discard to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %discard, align 4
  %cmp.i.not.i = icmp eq ptr %15, %discard
  br i1 %cmp.i.not.i, label %list_del.exit.i.ff_layout_free_ds_ioerr.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

list_del.exit.i.ff_layout_free_ds_ioerr.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ff_layout_free_ds_ioerr.exit

ff_layout_free_ds_ioerr.exit:                     ; preds = %list_del.exit.i.ff_layout_free_ds_ioerr.exit_crit_edge, %if.then.ff_layout_free_ds_ioerr.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %discard) #13
  br label %if.end

if.end:                                           ; preds = %ff_layout_free_ds_ioerr.exit, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_layout_fetch_ds_ioerr(ptr noundef readonly %lo, ptr nocapture noundef readonly %range, ptr noundef %head, i32 noundef %maxnum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %plh_inode = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %lo, i32 0, i32 15
  %0 = ptrtoint ptr %plh_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plh_inode, align 4
  %i_lock = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #13
  %error_list = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %lo, i32 0, i32 3
  %2 = ptrtoint ptr %error_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %error_list, align 4
  %cmp.not37 = icmp eq ptr %3, %error_list
  br i1 %cmp.not37, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %offset9 = getelementptr inbounds %struct.pnfs_layout_range, ptr %range, i32 0, i32 1
  %length11 = getelementptr inbounds %struct.pnfs_layout_range, ptr %range, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %maxnum.addr.041 = phi i32 [ %maxnum, %for.body.lr.ph ], [ %maxnum.addr.1, %for.inc.for.body_crit_edge ]
  %err.039 = phi ptr [ %3, %for.body.lr.ph ], [ %n.042, %for.inc.for.body_crit_edge ]
  %ret.038 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %err.039 to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.042 = load ptr, ptr %err.039, align 8
  %offset = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %err.039, i32 0, i32 1
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %offset, align 8
  %length = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %err.039, i32 0, i32 2
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %length, align 8
  %9 = tail call i64 @llvm.uadd.sat.i64(i64 %6, i64 %8) #13
  %10 = ptrtoint ptr %offset9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %offset9, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %9)
  %cmp.i = icmp eq i64 %9, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %9)
  %cmp1.i = icmp ult i64 %11, %9
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %pnfs_is_range_intersecting.exit, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

pnfs_is_range_intersecting.exit:                  ; preds = %for.body
  %12 = ptrtoint ptr %length11 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %length11, align 8
  %14 = tail call i64 @llvm.uadd.sat.i64(i64 %11, i64 %13) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %14)
  %cmp2.i = icmp eq i64 %14, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %14)
  %cmp3.i = icmp ult i64 %6, %14
  %spec.select.i = or i1 %cmp2.i, %cmp3.i
  br i1 %spec.select.i, label %if.end, label %pnfs_is_range_intersecting.exit.for.inc_crit_edge

pnfs_is_range_intersecting.exit.for.inc_crit_edge: ; preds = %pnfs_is_range_intersecting.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %pnfs_is_range_intersecting.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxnum.addr.041)
  %tobool.not = icmp eq i32 %maxnum.addr.041, 0
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end15

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end15:                                         ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %err.039) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end15.__list_del_entry.exit.i_crit_edge

if.end15.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %err.039, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %err.039 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %err.039, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end15.__list_del_entry.exit.i_crit_edge
  %21 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %err.039, ptr noundef %head, ptr noundef %22) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %err.039, ptr %prev1.i.i2.i, align 4
  %24 = ptrtoint ptr %err.039 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %err.039, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %err.039, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %head, ptr %prev3.i.i.i, align 4
  %26 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %err.039, ptr %head, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %dec = add i32 %maxnum.addr.041, -1
  %inc = add i32 %ret.038, 1
  br label %for.inc

for.inc:                                          ; preds = %list_move.exit, %pnfs_is_range_intersecting.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %inc, %list_move.exit ], [ %ret.038, %pnfs_is_range_intersecting.exit.for.inc_crit_edge ], [ %ret.038, %for.body.for.inc_crit_edge ]
  %maxnum.addr.1 = phi i32 [ %dec, %list_move.exit ], [ %maxnum.addr.041, %pnfs_is_range_intersecting.exit.for.inc_crit_edge ], [ %maxnum.addr.041, %for.body.for.inc_crit_edge ]
  %cmp.not = icmp eq ptr %n.042, %error_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %ret.038, %if.end.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #13
  ret i32 %ret.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ff_layout_avoid_mds_available_ds(ptr nocapture noundef readonly %lseg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %lseg, i32 0, i32 2
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  %pls_range.i = getelementptr inbounds %struct.pnfs_layout_segment, ptr %lseg, i32 0, i32 3
  %2 = ptrtoint ptr %pls_range.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pls_range.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %mirror_array_cnt.i.i.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %lseg, i32 0, i32 3
  %4 = ptrtoint ptr %mirror_array_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mirror_array_cnt.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp23.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %lor.rhs
  br i1 %cmp23.not.i.i, label %if.then.i.lor.end_crit_edge, label %if.then.i.FF_LAYOUT_COMP.exit.i.i_crit_edge

if.then.i.FF_LAYOUT_COMP.exit.i.i_crit_edge:      ; preds = %if.then.i
  br label %FF_LAYOUT_COMP.exit.i.i

if.then.i.lor.end_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

FF_LAYOUT_COMP.exit.i.i:                          ; preds = %for.inc.i.i.FF_LAYOUT_COMP.exit.i.i_crit_edge, %if.then.i.FF_LAYOUT_COMP.exit.i.i_crit_edge
  %idx.024.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.FF_LAYOUT_COMP.exit.i.i_crit_edge ], [ 0, %if.then.i.FF_LAYOUT_COMP.exit.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %lseg, i32 0, i32 4, i32 %idx.024.i.i
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %FF_LAYOUT_COMP.exit.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

FF_LAYOUT_COMP.exit.i.i.for.inc.i.i_crit_edge:    ; preds = %FF_LAYOUT_COMP.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %FF_LAYOUT_COMP.exit.i.i
  %mirror_ds.i.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %mirror_ds.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mirror_ds.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i.i, label %if.then.i.i.lor.end_crit_edge, label %if.end.i.i

if.then.i.i.lor.end_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

if.end.i.i:                                       ; preds = %if.then.i.i
  %cmp.i22.i.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i22.i.i, label %if.end.i.i.for.inc.i.i_crit_edge, label %if.end7.i.i

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %call9.i.i = tail call zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef nonnull %9) #13
  br i1 %call9.i.i, label %if.end7.i.i.for.inc.i.i_crit_edge, label %if.end7.i.i.lor.end_crit_edge

if.end7.i.i.lor.end_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

if.end7.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end7.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %FF_LAYOUT_COMP.exit.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %idx.024.i.i, 1
  %10 = ptrtoint ptr %mirror_array_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mirror_array_cnt.i.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %11
  br i1 %cmp.i.i, label %for.inc.i.i.FF_LAYOUT_COMP.exit.i.i_crit_edge, label %for.inc.i.i.lor.end_crit_edge

for.inc.i.i.lor.end_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

for.inc.i.i.FF_LAYOUT_COMP.exit.i.i_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %FF_LAYOUT_COMP.exit.i.i

if.end.i:                                         ; preds = %lor.rhs
  br i1 %cmp23.not.i.i, label %if.end.i.lor.end_crit_edge, label %if.end.i.FF_LAYOUT_COMP.exit.i7.i_crit_edge

if.end.i.FF_LAYOUT_COMP.exit.i7.i_crit_edge:      ; preds = %if.end.i
  br label %FF_LAYOUT_COMP.exit.i7.i

if.end.i.lor.end_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

FF_LAYOUT_COMP.exit.i7.i:                         ; preds = %for.inc.i12.i.FF_LAYOUT_COMP.exit.i7.i_crit_edge, %if.end.i.FF_LAYOUT_COMP.exit.i7.i_crit_edge
  %idx.027.i.i = phi i32 [ %inc.i10.i, %for.inc.i12.i.FF_LAYOUT_COMP.exit.i7.i_crit_edge ], [ 0, %if.end.i.FF_LAYOUT_COMP.exit.i7.i_crit_edge ]
  %arrayidx.i.i5.i = getelementptr %struct.nfs4_ff_layout_segment, ptr %lseg, i32 0, i32 4, i32 %idx.027.i.i
  %12 = ptrtoint ptr %arrayidx.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i5.i, align 4
  %tobool.not.i6.i = icmp eq ptr %13, null
  br i1 %tobool.not.i6.i, label %FF_LAYOUT_COMP.exit.i7.i.lor.end_crit_edge, label %lor.lhs.false.i.i

FF_LAYOUT_COMP.exit.i7.i.lor.end_crit_edge:       ; preds = %FF_LAYOUT_COMP.exit.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

lor.lhs.false.i.i:                                ; preds = %FF_LAYOUT_COMP.exit.i7.i
  %mirror_ds.i8.i = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %mirror_ds.i8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mirror_ds.i8.i, align 4
  %cmp.i23.i.i = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i23.i.i, label %lor.lhs.false.i.i.lor.end_crit_edge, label %if.end.i9.i

lor.lhs.false.i.i.lor.end_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

if.end.i9.i:                                      ; preds = %lor.lhs.false.i.i
  %tobool4.not.i.i = icmp eq ptr %15, null
  br i1 %tobool4.not.i.i, label %if.end.i9.i.for.inc.i12.i_crit_edge, label %if.end6.i.i

if.end.i9.i.for.inc.i12.i_crit_edge:              ; preds = %if.end.i9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i12.i

if.end6.i.i:                                      ; preds = %if.end.i9.i
  %call8.i.i = tail call zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef nonnull %15) #13
  br i1 %call8.i.i, label %if.end6.i.i.lor.end_crit_edge, label %if.end6.i.i.for.inc.i12.i_crit_edge

if.end6.i.i.for.inc.i12.i_crit_edge:              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i12.i

if.end6.i.i.lor.end_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

for.inc.i12.i:                                    ; preds = %if.end6.i.i.for.inc.i12.i_crit_edge, %if.end.i9.i.for.inc.i12.i_crit_edge
  %inc.i10.i = add nuw i32 %idx.027.i.i, 1
  %16 = ptrtoint ptr %mirror_array_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mirror_array_cnt.i.i.i, align 4
  %cmp.i11.i = icmp ult i32 %inc.i10.i, %17
  br i1 %cmp.i11.i, label %for.inc.i12.i.FF_LAYOUT_COMP.exit.i7.i_crit_edge, label %for.end.loopexit.i.i

for.inc.i12.i.FF_LAYOUT_COMP.exit.i7.i_crit_edge: ; preds = %for.inc.i12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %FF_LAYOUT_COMP.exit.i7.i

for.end.loopexit.i.i:                             ; preds = %for.inc.i12.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %phi.cmp.i.i = icmp ne i32 %17, 0
  br label %lor.end

lor.end:                                          ; preds = %for.end.loopexit.i.i, %if.end6.i.i.lor.end_crit_edge, %lor.lhs.false.i.i.lor.end_crit_edge, %FF_LAYOUT_COMP.exit.i7.i.lor.end_crit_edge, %if.end.i.lor.end_crit_edge, %for.inc.i.i.lor.end_crit_edge, %if.end7.i.i.lor.end_crit_edge, %if.then.i.i.lor.end_crit_edge, %if.then.i.lor.end_crit_edge, %entry.lor.end_crit_edge
  %18 = phi i1 [ true, %entry.lor.end_crit_edge ], [ false, %if.then.i.lor.end_crit_edge ], [ false, %if.end.i.lor.end_crit_edge ], [ %phi.cmp.i.i, %for.end.loopexit.i.i ], [ false, %for.inc.i.i.lor.end_crit_edge ], [ true, %if.end7.i.i.lor.end_crit_edge ], [ true, %if.then.i.i.lor.end_crit_edge ], [ false, %FF_LAYOUT_COMP.exit.i7.i.lor.end_crit_edge ], [ false, %lor.lhs.false.i.i.lor.end_crit_edge ], [ false, %if.end6.i.i.lor.end_crit_edge ]
  ret i1 %18
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ff_layout_avoid_read_on_rw(ptr nocapture noundef readonly %lseg) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pls_range = getelementptr inbounds %struct.pnfs_layout_segment, ptr %lseg, i32 0, i32 3
  %0 = ptrtoint ptr %pls_range to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pls_range, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %flags.i = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %lseg, i32 0, i32 2
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool.i, %land.rhs ]
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_find_get_deviceid(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.uadd.sat.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !36, !38, !39, !41, !43, !45, !47, !49, !50, !52, !53, !54, !56, !58, !59, !60}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfs/flexfilelayout/flexfilelayoutdev.c", i32 79, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nfs4_ff_alloc_deviceid_node._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nfs4_ff_alloc_deviceid_node._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nfs/flexfilelayout/flexfilelayoutdev.c", i32 89, i32 3}
!8 = !{ptr @nfs4_ff_alloc_deviceid_node._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @nfs4_ff_alloc_deviceid_node._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nfs/flexfilelayout/flexfilelayoutdev.c", i32 100, i32 2}
!12 = !{ptr @nfs4_ff_alloc_deviceid_node._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @nfs4_ff_alloc_deviceid_node._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/nfs/flexfilelayout/flexfilelayoutdev.c", i32 132, i32 4}
!16 = !{ptr @nfs4_ff_alloc_deviceid_node._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @nfs4_ff_alloc_deviceid_node._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/nfs/flexfilelayout/flexfilelayoutdev.c", i32 139, i32 3}
!20 = !{ptr @nfs4_ff_alloc_deviceid_node._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @nfs4_ff_alloc_deviceid_node._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/nfs/flexfilelayout/flexfilelayoutdev.c", i32 182, i32 2}
!24 = !{ptr @nfs4_ff_alloc_deviceid_node._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @nfs4_ff_alloc_deviceid_node._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/nfs/flexfilelayout/flexfilelayoutdev.c", i32 497, i32 3}
!28 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ff_layout_encode_ds_ioerr._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @ff_layout_encode_ds_ioerr._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @__param_dataserver_retrans, !32, !"__param_dataserver_retrans", i1 false, i1 false}
!32 = !{!"../fs/nfs/flexfilelayout/flexfilelayoutdev.c", i32 612, i32 1}
!33 = !{ptr @__UNIQUE_ID_dataserver_retranstype500, !32, !"__UNIQUE_ID_dataserver_retranstype500", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_dataserver_retrans501, !35, !"__UNIQUE_ID_dataserver_retrans501", i1 false, i1 false}
!35 = !{!"../fs/nfs/flexfilelayout/flexfilelayoutdev.c", i32 613, i32 1}
!36 = !{ptr @__param_dataserver_timeo, !37, !"__param_dataserver_timeo", i1 false, i1 false}
!37 = !{!"../fs/nfs/flexfilelayout/flexfilelayoutdev.c", i32 616, i32 1}
!38 = !{ptr @__UNIQUE_ID_dataserver_timeotype502, !37, !"__UNIQUE_ID_dataserver_timeotype502", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_dataserver_timeo503, !40, !"__UNIQUE_ID_dataserver_timeo503", i1 false, i1 false}
!40 = !{!"../fs/nfs/flexfilelayout/flexfilelayoutdev.c", i32 617, i32 1}
!41 = !{ptr @dataserver_retrans, !42, !"dataserver_retrans", i1 false, i1 false}
!42 = !{!"../fs/nfs/flexfilelayout/flexfilelayoutdev.c", i32 22, i32 21}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!45 = !{ptr @dataserver_timeo, !46, !"dataserver_timeo", i1 false, i1 false}
!46 = !{!"../fs/nfs/flexfilelayout/flexfilelayoutdev.c", i32 21, i32 21}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../fs/nfs/flexfilelayout/flexfilelayoutdev.c", i32 294, i32 10}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/cred.h", i32 265, i32 2}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @__param_str_dataserver_retrans, !32, !"__param_str_dataserver_retrans", i1 false, i1 false}
!60 = !{ptr @__param_str_dataserver_timeo, !37, !"__param_str_dataserver_timeo", i1 false, i1 false}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"auto-init"}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{i32 0, i32 33}
!75 = !{i8 0, i8 2}
!76 = !{i64 2157689091}
!77 = !{i64 817262, i64 817283, i64 817306, i64 817325, i64 817344}
!78 = !{i64 2157689510}
!79 = !{i64 2157692458}
!80 = !{i64 2149384071}
!81 = !{i64 2148307189}
!82 = !{i64 792012, i64 792037, i64 792059, i64 792075, i64 792087, i64 792107, i64 792131, i64 792147, i64 792159}
!83 = !{i64 2148307377}
!84 = !{i64 2149384337}
!85 = !{i64 2148307770, i64 2148307796, i64 2148307825, i64 2148307859, i64 2148307890, i64 2148307913}
!86 = !{i64 2157692853, i64 2157697420, i64 2157692890, i64 2157692946, i64 2157692980, i64 2157693004, i64 2157693045, i64 2157693066, i64 2157693094, i64 2157693128}
