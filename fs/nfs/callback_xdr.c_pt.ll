; ModuleID = '/llk/IR_all_yes/fs/nfs/callback_xdr.c_pt.bc'
source_filename = "../fs/nfs/callback_xdr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.svc_procedure = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.svc_version = type { i32, i32, ptr, ptr, i32, i8, i8, i8, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.145 }
%struct.atomic_t = type { i32 }
%union.anon.145 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.callback_op = type { ptr, ptr, ptr, i32 }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.121 }
%union.anon.121 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cb_process_state = type { i32, ptr, ptr, i32, ptr }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nfs4_session = type { %struct.nfs4_sessionid, i32, i32, i32, i32, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, ptr }
%struct.nfs4_sessionid = type { [16 x i8] }
%struct.nfs4_channel_attrs = type { i32, i32, i32, i32, i32 }
%struct.nfs4_slot_table = type { ptr, ptr, [32 x i32], %struct.spinlock, %struct.rpc_wait_queue, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.cb_getattrargs = type { %struct.nfs_fh, [2 x i32] }
%struct.cb_getattrres = type { i32, [2 x i32], i64, i64, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.cb_recallargs = type { %struct.nfs_fh, %struct.nfs4_stateid_struct, i32 }
%struct.nfs4_stateid_struct = type { %union.anon.133, i32 }
%union.anon.133 = type { %struct.anon.134 }
%struct.anon.134 = type { i32, [12 x i8] }
%struct.cb_layoutrecallargs = type { i32, i32, i32, %union.anon.168 }
%union.anon.168 = type { %struct.anon.169 }
%struct.anon.169 = type { %struct.nfs_fh, %struct.pnfs_layout_range, %struct.nfs4_stateid_struct }
%struct.pnfs_layout_range = type { i32, i64, i64 }
%struct.cb_recallanyargs = type { i32, i32 }
%struct.cb_sequenceargs = type { ptr, %struct.nfs4_sessionid, i32, i32, i32, i32, i32, ptr }
%struct.referring_call_list = type { %struct.nfs4_sessionid, i32, ptr }
%struct.referring_call = type { i32, i32 }
%struct.cb_sequenceres = type { i32, %struct.nfs4_sessionid, i32, i32, i32, i32 }
%struct.cb_notify_lock_args = type { %struct.nfs_fh, %struct.nfs_lowner, i8 }
%struct.nfs_lowner = type { i64, i64, i32 }
%struct.cb_devicenotifyargs = type { i32, ptr }
%struct.cb_devicenotifyitem = type { i32, i32, %struct.nfs4_deviceid, i32 }
%struct.nfs4_deviceid = type { [16 x i8] }
%struct.cb_offloadargs = type { %struct.nfs_fh, %struct.nfs4_stateid_struct, i32, i64, %struct.nfs_writeverf }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_write_verifier = type { [8 x i8] }

@nfs4_callback_procedures1 = internal constant { [2 x %struct.svc_procedure], [56 x i8] } { [2 x %struct.svc_procedure] [%struct.svc_procedure { ptr @nfs4_callback_null, ptr null, ptr @nfs4_encode_void, ptr null, i32 0, i32 0, i32 0, i32 1, ptr @.str }, %struct.svc_procedure { ptr @nfs4_callback_compound, ptr null, ptr @nfs4_encode_void, ptr null, i32 256, i32 256, i32 0, i32 3072, ptr @.str.1 }], [56 x i8] zeroinitializer }, align 32
@nfs4_callback_count1 = internal global { [2 x i32], [24 x i8] } zeroinitializer, align 32
@nfs4_callback_version1 = dso_local constant { %struct.svc_version, [36 x i8] } { %struct.svc_version { i32 1, i32 2, ptr @nfs4_callback_procedures1, ptr @nfs4_callback_count1, i32 2048, i8 1, i8 0, i8 1, ptr @nfs_callback_dispatch }, [36 x i8] zeroinitializer }, align 32
@nfs4_callback_count4 = internal global { [2 x i32], [24 x i8] } zeroinitializer, align 32
@nfs4_callback_version4 = dso_local constant { %struct.svc_version, [36 x i8] } { %struct.svc_version { i32 4, i32 2, ptr @nfs4_callback_procedures1, ptr @nfs4_callback_count4, i32 2048, i8 1, i8 0, i8 1, ptr @nfs_callback_dispatch }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"COMPOUND\00", [23 x i8] zeroinitializer }, align 32
@nfs4_callback_compound._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.nfs4_callback_compound = private unnamed_addr constant [23 x i8] c"nfs4_callback_compound\00", align 1
@nfs4_callback_compound._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.nfs4_callback_compound, ptr @.str.4, i32 981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014NFS: NFSv4 callback contains invalid cred\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/nfs/callback_xdr.c\00", [42 x i8] zeroinitializer }, align 32
@nfs4_callback_compound._entry_ptr = internal global ptr @nfs4_callback_compound._entry, section ".printk_index", align 4
@decode_compound_hdr_arg._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.decode_compound_hdr_arg = private unnamed_addr constant [24 x i8] c"decode_compound_hdr_arg\00", align 1
@decode_compound_hdr_arg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.decode_compound_hdr_arg, ptr @.str.4, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014NFS: %s: NFSv4 server callback with illegal minor version %u!\0A\00", [63 x i8] zeroinitializer }, align 32
@decode_compound_hdr_arg._entry_ptr = internal global ptr @decode_compound_hdr_arg._entry, section ".printk_index", align 4
@__tracepoint_nfs_cb_no_clp = external dso_local global %struct.tracepoint, align 4
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/nfs/nfs4trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_nfs_cb_no_clp.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_nfs_cb_badprinc = external dso_local global %struct.tracepoint, align 4
@trace_nfs_cb_badprinc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@callback_ops = internal constant { [16 x %struct.callback_op], [64 x i8] } { [16 x %struct.callback_op] [%struct.callback_op { ptr null, ptr null, ptr null, i32 8 }, %struct.callback_op zeroinitializer, %struct.callback_op zeroinitializer, %struct.callback_op { ptr @nfs4_callback_getattr, ptr @decode_getattr_args, ptr @encode_getattr_res, i32 64 }, %struct.callback_op { ptr @nfs4_callback_recall, ptr @decode_recall_args, ptr null, i32 8 }, %struct.callback_op { ptr @nfs4_callback_layoutrecall, ptr @decode_layoutrecall_args, ptr null, i32 8 }, %struct.callback_op zeroinitializer, %struct.callback_op zeroinitializer, %struct.callback_op { ptr @nfs4_callback_recallany, ptr @decode_recallany_args, ptr null, i32 8 }, %struct.callback_op zeroinitializer, %struct.callback_op { ptr @nfs4_callback_recallslot, ptr @decode_recallslot_args, ptr null, i32 8 }, %struct.callback_op { ptr @nfs4_callback_sequence, ptr @decode_cb_sequence_args, ptr @encode_cb_sequence_res, i32 40 }, %struct.callback_op zeroinitializer, %struct.callback_op { ptr @nfs4_callback_notify_lock, ptr @decode_notify_lock_args, ptr null, i32 8 }, %struct.callback_op { ptr @nfs4_callback_devicenotify, ptr @decode_devicenotify_args, ptr null, i32 8 }, %struct.callback_op { ptr @nfs4_callback_offload, ptr @decode_offload_args, ptr null, i32 8 }], [64 x i8] zeroinitializer }, align 32
@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@decode_devicenotify_args._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: type %d layout 0x%x immediate %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"decode_devicenotify_args\00", [39 x i8] zeroinitializer }, align 32
@decode_devicenotify_args._entry_ptr = internal global ptr @decode_devicenotify_args._entry, section ".printk_index", align 4
@decode_devicenotify_args._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: ndevs %d\0A\00", [18 x i8] zeroinitializer }, align 32
@decode_devicenotify_args._entry_ptr.14 = internal global ptr @decode_devicenotify_args._entry.12, section ".printk_index", align 4
@decode_devicenotify_args._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.4, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: status %d ndevs %d\0A\00", [40 x i8] zeroinitializer }, align 32
@decode_devicenotify_args._entry_ptr.17 = internal global ptr @decode_devicenotify_args._entry.15, section ".printk_index", align 4
@switch.table.nfs4_callback_compound = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 3), ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 4), ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 5), ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 3), ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 3), ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 8), ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 3), ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 10), ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 3), ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 3), ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 13), ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 14), ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 15)], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 11050]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [13 x i64] [i64 11, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.22 = private unnamed_addr constant [26 x i8] c"nfs4_callback_procedures1\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1061, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant [21 x i8] c"nfs4_callback_count1\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1078, i32 21 }
@___asan_gen_.28 = private unnamed_addr constant [23 x i8] c"nfs4_callback_version1\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1079, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant [21 x i8] c"nfs4_callback_count4\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1090, i32 21 }
@___asan_gen_.34 = private unnamed_addr constant [23 x i8] c"nfs4_callback_version4\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1091, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1066, i32 14 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1074, i32 14 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 981, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 157, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [22 x i8] c"../fs/nfs/nfs4trace.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 490, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 108, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [13 x i8] c"callback_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1001, i32 27 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 331, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 336, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [25 x i8] c"../fs/nfs/callback_xdr.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 343, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [36 x i8] c"switch.table.nfs4_callback_compound\00", align 1
@llvm.compiler.used = appending global [32 x ptr] [ptr @decode_compound_hdr_arg._entry, ptr @decode_compound_hdr_arg._entry_ptr, ptr @decode_devicenotify_args._entry, ptr @decode_devicenotify_args._entry.12, ptr @decode_devicenotify_args._entry.15, ptr @decode_devicenotify_args._entry_ptr, ptr @decode_devicenotify_args._entry_ptr.14, ptr @decode_devicenotify_args._entry_ptr.17, ptr @nfs4_callback_compound._entry, ptr @nfs4_callback_compound._entry_ptr, ptr @nfs4_callback_procedures1, ptr @nfs4_callback_count1, ptr @nfs4_callback_version1, ptr @nfs4_callback_count4, ptr @nfs4_callback_version4, ptr @.str, ptr @.str.1, ptr @nfs4_callback_compound._rs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @decode_compound_hdr_arg._rs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @callback_ops, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @switch.table.nfs4_callback_compound], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_callback_procedures1 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_callback_count1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_callback_version1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_callback_count4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_callback_version4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_callback_compound._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_callback_compound._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_compound_hdr_arg._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_compound_hdr_arg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @callback_ops to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_devicenotify_args._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_devicenotify_args._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_devicenotify_args._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nfs4_callback_compound to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs_callback_dispatch(ptr noundef %rqstp, ptr nocapture noundef writeonly %statp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_procinfo = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 9
  %0 = ptrtoint ptr %rq_procinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_procinfo, align 4
  %rq_arg_stream.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 16
  %rq_arg.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15
  %2 = ptrtoint ptr %rq_arg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_arg.i, align 4
  tail call void @xdr_init_decode(ptr noundef %rq_arg_stream.i, ptr noundef %rq_arg.i, ptr noundef %3, ptr noundef null) #9
  %rq_scratch_page.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 18
  %4 = ptrtoint ptr %rq_scratch_page.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rq_scratch_page.i, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %5) #9
  %scratch.i.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 16, i32 4
  %6 = ptrtoint ptr %scratch.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %scratch.i.i.i, align 4
  %iov_len.i.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 16, i32 4, i32 1
  %7 = ptrtoint ptr %iov_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4096, ptr %iov_len.i.i.i, align 4
  %rq_res_stream.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17
  %rq_res.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19
  %scratch.i.i.i4 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17, i32 4
  %8 = ptrtoint ptr %scratch.i.i.i4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %scratch.i.i.i4, align 4
  %iov_len.i.i.i5 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17, i32 4, i32 1
  %9 = ptrtoint ptr %iov_len.i.i.i5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %iov_len.i.i.i5, align 4
  %buf1.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17, i32 1
  %10 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %rq_res.i, ptr %buf1.i, align 4
  %iov.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17, i32 3
  %11 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %rq_res.i, ptr %iov.i, align 4
  %12 = ptrtoint ptr %rq_res.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rq_res.i, align 4
  %iov_len.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iov_len.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %15
  %16 = ptrtoint ptr %rq_res_stream.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.i, ptr %rq_res_stream.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %13, i32 4096
  %rq_auth_slack.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 39
  %17 = ptrtoint ptr %rq_auth_slack.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rq_auth_slack.i, align 8
  %idx.neg.i = sub i32 0, %18
  %add.ptr4.i = getelementptr i8, ptr %add.ptr3.i, i32 %idx.neg.i
  %end.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17, i32 2
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr4.i, ptr %end.i, align 4
  %len.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 8
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %15, ptr %len.i, align 4
  %pages.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 3
  %21 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pages.i, align 4
  %add.ptr6.i = getelementptr ptr, ptr %22, i32 -1
  %page_ptr.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17, i32 5
  %23 = ptrtoint ptr %page_ptr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr6.i, ptr %page_ptr.i, align 4
  %rq_page_end.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 23
  %24 = ptrtoint ptr %rq_page_end.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rq_page_end.i, align 4
  %add.ptr7.i = getelementptr ptr, ptr %25, i32 1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr7.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %mul.i = shl i32 %sub.ptr.sub.i, 10
  %buflen.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 7
  %sub.i = sub i32 %mul.i, %18
  %26 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.i, ptr %buflen.i, align 4
  %rqst.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17, i32 7
  %27 = ptrtoint ptr %rqst.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rqst.i, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %call = tail call i32 %29(ptr noundef %rqstp) #9
  %30 = ptrtoint ptr %statp to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call, ptr %statp, align 4
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfs4_callback_null(ptr nocapture noundef readnone %rqstp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nfs4_encode_void(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %xdr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs4_callback_compound(ptr noundef %rqstp) #0 align 64 {
entry:
  %cps = alloca %struct.cb_process_state, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cps) #9
  %0 = getelementptr inbounds %struct.cb_process_state, ptr %cps, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cb_process_state, ptr %cps, i32 0, i32 2
  %2 = getelementptr inbounds %struct.cb_process_state, ptr %cps, i32 0, i32 3
  %3 = getelementptr inbounds %struct.cb_process_state, ptr %cps, i32 0, i32 4
  %4 = call ptr @memset(ptr %cps, i32 0, i32 16)
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %5 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rq_xprt, align 8
  %tobool.not = icmp eq ptr %6, null
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %6, i32 0, i32 19
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in = select i1 %tobool.not, ptr %rq_bc_net, ptr %xpt_net
  %7 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %cond = load ptr, ptr %cond.in, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cond, ptr %3, align 4
  %rq_arg_stream = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 16
  %call.i.i.i.i = tail call ptr @xdr_inline_decode(ptr noundef %rq_arg_stream, i32 noundef 4) #9
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %entry.cleanup_crit_edge, label %if.end.i.i.i, !prof !64

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i.i:                                     ; preds = %entry
  %9 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2.not.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp2.not.i.i.i, label %if.end.i.i.i.if.end.i_crit_edge, label %if.then3.i.i.i

if.end.i.i.i.if.end.i_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  %call4.i.i.i = tail call ptr @xdr_inline_decode(ptr noundef %rq_arg_stream, i32 noundef %10) #9
  %tobool5.not.i.i.i = icmp eq ptr %call4.i.i.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %10)
  %cmp16.i.i.i = icmp ugt i32 %10, 512
  %or.cond.i.i = select i1 %tobool5.not.i.i.i, i1 true, i1 %cmp16.i.i.i
  br i1 %or.cond.i.i, label %if.then3.i.i.i.cleanup_crit_edge, label %if.then3.i.i.i.if.end.i_crit_edge, !prof !65

if.then3.i.i.i.if.end.i_crit_edge:                ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then3.i.i.i.cleanup_crit_edge:                 ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then3.i.i.i.if.end.i_crit_edge, %if.end.i.i.i.if.end.i_crit_edge
  %hdr_arg.sroa.5.0 = phi ptr [ null, %if.end.i.i.i.if.end.i_crit_edge ], [ %call4.i.i.i, %if.then3.i.i.i.if.end.i_crit_edge ]
  %call2.i = tail call ptr @xdr_inline_decode(ptr noundef %rq_arg_stream, i32 noundef 12) #9
  %cmp3.i = icmp eq ptr %call2.i, null
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %if.end11.i, !prof !64

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i
  %11 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp13.i = icmp ult i32 %12, 3
  br i1 %cmp13.i, label %if.end, label %if.else.i

if.else.i:                                        ; preds = %if.end11.i
  %call16.i = tail call i32 @___ratelimit(ptr noundef nonnull @decode_compound_hdr_arg._rs, ptr noundef nonnull @__func__.decode_compound_hdr_arg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.else.i.if.end27_crit_edge, label %do.end.i

if.else.i.if.end27_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.decode_compound_hdr_arg, i32 noundef %12) #12
  br label %if.end27

if.end:                                           ; preds = %if.end11.i
  %incdec.ptr.i = getelementptr i32, ptr %call2.i, i32 1
  %incdec.ptr15.i = getelementptr i32, ptr %call2.i, i32 2
  %13 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %incdec.ptr.i, align 4
  %15 = ptrtoint ptr %incdec.ptr15.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %incdec.ptr15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2 = icmp eq i32 %12, 0
  br i1 %cmp2, label %if.then3, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then3:                                         ; preds = %if.end
  %17 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rq_xprt, align 8
  %tobool5.not = icmp eq ptr %18, null
  %xpt_net8 = getelementptr inbounds %struct.svc_xprt, ptr %18, i32 0, i32 19
  %cond12.in = select i1 %tobool5.not, ptr %rq_bc_net, ptr %xpt_net8
  %19 = ptrtoint ptr %cond12.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %cond12 = load ptr, ptr %cond12.in, align 4
  %call13 = tail call ptr @nfs4_find_client_ident(ptr noundef %cond12, i32 noundef %14) #9
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call13, ptr %0, align 4
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %rq_xid = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 27
  %21 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rq_xid, align 4
  tail call fastcc void @trace_nfs_cb_no_clp(i32 noundef %22, i32 noundef %14)
  br label %out_invalidcred

if.end18:                                         ; preds = %if.then3
  %call20 = tail call i32 @check_gss_callback_principal(ptr noundef nonnull %call13, ptr noundef %rqstp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end18.if.end27_crit_edge

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %rq_xid23 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 27
  %23 = ptrtoint ptr %rq_xid23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rq_xid23, align 4
  tail call fastcc void @trace_nfs_cb_badprinc(i32 noundef %24, i32 noundef %14)
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 4
  tail call void @nfs_put_client(ptr noundef %26) #9
  br label %out_invalidcred

if.end27:                                         ; preds = %if.end18.if.end27_crit_edge, %if.end.if.end27_crit_edge, %do.end.i, %if.else.i.if.end27_crit_edge
  %retval.0.i118 = phi i32 [ 0, %if.end18.if.end27_crit_edge ], [ 0, %if.end.if.end27_crit_edge ], [ 10021, %if.else.i.if.end27_crit_edge ], [ 10021, %do.end.i ]
  %hdr_arg.sroa.16.0117 = phi i32 [ %16, %if.end18.if.end27_crit_edge ], [ %16, %if.end.if.end27_crit_edge ], [ 0, %if.else.i.if.end27_crit_edge ], [ 0, %do.end.i ]
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %12, ptr %2, align 4
  %rq_res_stream = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %rq_res_stream, i32 noundef 4) #9
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.end27.if.then34_crit_edge, label %if.end.i84, !prof !64

if.end27.if.then34_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

if.end.i84:                                       ; preds = %if.end27
  %28 = add nuw nsw i32 %10, 7
  %add.i.i.i = and i32 %28, -4
  %call1.i.i.i = tail call ptr @xdr_reserve_space(ptr noundef %rq_res_stream, i32 noundef %add.i.i.i) #9
  %tobool.not.i.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i84.if.then34_crit_edge, label %if.end13.i, !prof !64

if.end.i84.if.then34_crit_edge:                   ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

if.end13.i:                                       ; preds = %if.end.i84
  %call5.i.i.i = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %call1.i.i.i, ptr noundef %hdr_arg.sroa.5.0, i32 noundef %10) #9
  %call14.i = tail call ptr @xdr_reserve_space(ptr noundef %rq_res_stream, i32 noundef 4) #9
  %cmp16.i = icmp eq ptr %call14.i, null
  br i1 %cmp16.i, label %if.end13.i.if.then34_crit_edge, label %while.cond.preheader

if.end13.i.if.then34_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

while.cond.preheader:                             ; preds = %if.end13.i
  %end.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17, i32 2
  %rq_argp.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %rq_resp.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  br label %while.cond

if.then34:                                        ; preds = %if.end13.i.if.then34_crit_edge, %if.end.i84.if.then34_crit_edge, %if.end27.if.then34_crit_edge
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %0, align 4
  %tobool36.not = icmp eq ptr %30, null
  br i1 %tobool36.not, label %if.then34.cleanup_crit_edge, label %if.then37

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then37:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nfs_put_client(ptr noundef nonnull %30) #9
  br label %cleanup

while.cond:                                       ; preds = %process_op.exit, %while.cond.preheader
  %nops.0 = phi i32 [ %inc, %process_op.exit ], [ 0, %while.cond.preheader ]
  %status.0 = phi i32 [ %retval.0.i90, %process_op.exit ], [ %retval.0.i118, %while.cond.preheader ]
  %31 = zext i32 %status.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %status.0, label %while.cond.if.end49_crit_edge [
    i32 0, label %land.rhs
    i32 11050, label %if.then48
  ], !prof !66

while.cond.if.end49_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

land.rhs:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %nops.0, i32 %hdr_arg.sroa.16.0117)
  %cmp43.not = icmp eq i32 %nops.0, %hdr_arg.sroa.16.0117
  br i1 %cmp43.not, label %land.rhs.if.end49_crit_edge, label %while.body

land.rhs.if.end49_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

while.body:                                       ; preds = %land.rhs
  %call.i.i = call ptr @xdr_inline_decode(ptr noundef %rq_arg_stream, i32 noundef 4) #9
  %cmp.i.i87 = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i87, label %while.body.process_op.exit_crit_edge, label %if.end.i89, !prof !64

while.body.process_op.exit_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %process_op.exit

if.end.i89:                                       ; preds = %while.body
  %32 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call.i.i, align 4
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %2, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %35, label %if.end.i89.sw.epilog.thread.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb4.i
    i32 2, label %sw.bb6.i
  ]

if.end.i89.sw.epilog.thread.i_crit_edge:          ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread.i

sw.bb.i:                                          ; preds = %if.end.i89
  %op_nr.off.i.i = add i32 %33, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %op_nr.off.i.i)
  %switch.i.i = icmp ult i32 %op_nr.off.i.i, 2
  br i1 %switch.i.i, label %sw.bb.i.i, label %sw.bb.i.encode_hdr.i_crit_edge

sw.bb.i.encode_hdr.i_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %encode_hdr.i

sw.bb.i.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr [0 x %struct.callback_op], ptr @callback_ops, i32 0, i32 %33
  br label %if.end12.i

sw.bb4.i:                                         ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %33)
  %cmp.i84.i = icmp eq i32 %33, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nops.0)
  %cmp1.not.i.i = icmp eq i32 %nops.0, 0
  br i1 %cmp.i84.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %sw.bb4.i
  br i1 %cmp1.not.i.i, label %if.then.i.i.sw.bb.i86.i_crit_edge, label %if.then.i.i.sw.epilog.thread.i_crit_edge

if.then.i.i.sw.epilog.thread.i_crit_edge:         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread.i

if.then.i.i.sw.bb.i86.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i86.i

if.else.i.i:                                      ; preds = %sw.bb4.i
  br i1 %cmp1.not.i.i, label %if.else.i.i.sw.epilog.thread.i_crit_edge, label %if.end6.i.i

if.else.i.i.sw.epilog.thread.i_crit_edge:         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread.i

if.end6.i.i:                                      ; preds = %if.else.i.i
  %37 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %33, label %if.end6.i.i.encode_hdr.i_crit_edge [
    i32 3, label %if.end6.i.i.sw.bb.i86.i_crit_edge
    i32 4, label %if.end6.i.i.sw.bb.i86.i_crit_edge128
    i32 12, label %if.end6.i.i.sw.epilog.thread.i_crit_edge
    i32 8, label %if.end6.i.i.sw.bb.i86.i_crit_edge129
    i32 10, label %if.end6.i.i.sw.bb.i86.i_crit_edge130
    i32 5, label %if.end6.i.i.sw.bb.i86.i_crit_edge131
    i32 14, label %if.end6.i.i.sw.bb.i86.i_crit_edge132
    i32 13, label %if.end6.i.i.sw.bb.i86.i_crit_edge133
    i32 6, label %if.end6.i.i.sw.epilog.thread.i_crit_edge134
    i32 7, label %if.end6.i.i.sw.epilog.thread.i_crit_edge135
    i32 9, label %if.end6.i.i.sw.epilog.thread.i_crit_edge136
  ]

if.end6.i.i.sw.epilog.thread.i_crit_edge136:      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread.i

if.end6.i.i.sw.epilog.thread.i_crit_edge135:      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread.i

if.end6.i.i.sw.epilog.thread.i_crit_edge134:      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread.i

if.end6.i.i.sw.bb.i86.i_crit_edge133:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i86.i

if.end6.i.i.sw.bb.i86.i_crit_edge132:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i86.i

if.end6.i.i.sw.bb.i86.i_crit_edge131:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i86.i

if.end6.i.i.sw.bb.i86.i_crit_edge130:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i86.i

if.end6.i.i.sw.bb.i86.i_crit_edge129:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i86.i

if.end6.i.i.sw.epilog.thread.i_crit_edge:         ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread.i

if.end6.i.i.sw.bb.i86.i_crit_edge128:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i86.i

if.end6.i.i.sw.bb.i86.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i86.i

if.end6.i.i.encode_hdr.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %encode_hdr.i

sw.bb.i86.i:                                      ; preds = %if.end6.i.i.sw.bb.i86.i_crit_edge, %if.end6.i.i.sw.bb.i86.i_crit_edge128, %if.end6.i.i.sw.bb.i86.i_crit_edge129, %if.end6.i.i.sw.bb.i86.i_crit_edge130, %if.end6.i.i.sw.bb.i86.i_crit_edge131, %if.end6.i.i.sw.bb.i86.i_crit_edge132, %if.end6.i.i.sw.bb.i86.i_crit_edge133, %if.then.i.i.sw.bb.i86.i_crit_edge
  %arrayidx.i85.i = getelementptr [0 x %struct.callback_op], ptr @callback_ops, i32 0, i32 %33
  br label %if.end12.i

sw.bb6.i:                                         ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %33)
  %cmp.i.i.i = icmp eq i32 %33, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nops.0)
  %cmp1.not.i.i.i = icmp eq i32 %nops.0, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %sw.bb6.i
  br i1 %cmp1.not.i.i.i, label %sw.bb.i.i.i, label %if.then.i.i.i.sw.epilog.thread.i_crit_edge

if.then.i.i.i.sw.epilog.thread.i_crit_edge:       ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread.i

if.else.i.i.i:                                    ; preds = %sw.bb6.i
  br i1 %cmp1.not.i.i.i, label %if.else.i.i.i.sw.epilog.thread.i_crit_edge, label %if.end6.i.i.i

if.else.i.i.i.sw.epilog.thread.i_crit_edge:       ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread.i

if.end6.i.i.i:                                    ; preds = %if.else.i.i.i
  %switch.tableidx = add i32 %33, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %38 = icmp ult i32 %switch.tableidx, 13
  br i1 %38, label %switch.hole_check, label %if.end6.i.i.i.sw.epilog.thread.i_crit_edge

if.end6.i.i.i.sw.epilog.thread.i_crit_edge:       ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread.i

sw.bb.i.i.i:                                      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i = getelementptr [0 x %struct.callback_op], ptr @callback_ops, i32 0, i32 %33
  br label %if.end12.i

sw.epilog.thread.i:                               ; preds = %switch.hole_check.sw.epilog.thread.i_crit_edge, %if.end6.i.i.i.sw.epilog.thread.i_crit_edge, %if.else.i.i.i.sw.epilog.thread.i_crit_edge, %if.then.i.i.i.sw.epilog.thread.i_crit_edge, %if.end6.i.i.sw.epilog.thread.i_crit_edge, %if.end6.i.i.sw.epilog.thread.i_crit_edge134, %if.end6.i.i.sw.epilog.thread.i_crit_edge135, %if.end6.i.i.sw.epilog.thread.i_crit_edge136, %if.else.i.i.sw.epilog.thread.i_crit_edge, %if.then.i.i.sw.epilog.thread.i_crit_edge, %if.end.i89.sw.epilog.thread.i_crit_edge
  %status.0.ph.i = phi i32 [ 10004, %if.end6.i.i.i.sw.epilog.thread.i_crit_edge ], [ 10064, %if.then.i.i.i.sw.epilog.thread.i_crit_edge ], [ 10071, %if.else.i.i.i.sw.epilog.thread.i_crit_edge ], [ 10004, %if.end6.i.i.sw.epilog.thread.i_crit_edge ], [ 10004, %if.end6.i.i.sw.epilog.thread.i_crit_edge134 ], [ 10004, %if.end6.i.i.sw.epilog.thread.i_crit_edge135 ], [ 10004, %if.end6.i.i.sw.epilog.thread.i_crit_edge136 ], [ 10071, %if.else.i.i.sw.epilog.thread.i_crit_edge ], [ 10064, %if.then.i.i.sw.epilog.thread.i_crit_edge ], [ 10021, %if.end.i89.sw.epilog.thread.i_crit_edge ], [ 10004, %switch.hole_check.sw.epilog.thread.i_crit_edge ]
  br label %encode_hdr.i

switch.hole_check:                                ; preds = %if.end6.i.i.i
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 7335, %switch.maskindex
  %39 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %switch.lobit.not = icmp eq i16 %39, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog.thread.i_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog.thread.i_crit_edge:   ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [13 x ptr], ptr @switch.table.nfs4_callback_compound, i32 0, i32 %switch.tableidx
  %40 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %40)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %switch.lookup, %sw.bb.i.i.i, %sw.bb.i86.i, %sw.bb.i.i
  %op.3.ph.i = phi ptr [ %arrayidx.i85.i, %sw.bb.i86.i ], [ %arrayidx.i.i, %sw.bb.i.i ], [ %arrayidx.i.i.i, %sw.bb.i.i.i ], [ %switch.load, %switch.lookup ]
  %41 = ptrtoint ptr %cps to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool13.not.i = icmp eq i32 %42, 0
  br i1 %tobool13.not.i, label %if.end16.i, label %if.end12.i.encode_hdr.i_crit_edge

if.end12.i.encode_hdr.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %encode_hdr.i

if.end16.i:                                       ; preds = %if.end12.i
  %43 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %end.i, align 4
  %45 = ptrtoint ptr %rq_res_stream to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rq_res_stream, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %46 to i32
  %47 = xor i32 %sub.ptr.rhs.cast.i, -1
  %48 = add i32 %47, %sub.ptr.lhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %48)
  %49 = icmp ult i32 %48, 16383
  br i1 %49, label %if.then19.i, label %if.end16.i.encode_hdr.i_crit_edge

if.end16.i.encode_hdr.i_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %encode_hdr.i

if.then19.i:                                      ; preds = %if.end16.i
  %decode_args.i = getelementptr inbounds %struct.callback_op, ptr %op.3.ph.i, i32 0, i32 1
  %50 = ptrtoint ptr %decode_args.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %decode_args.i, align 4
  %52 = ptrtoint ptr %rq_argp.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rq_argp.i, align 8
  %call21.i = call i32 %51(ptr noundef %rqstp, ptr noundef %rq_arg_stream, ptr noundef %53) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp eq i32 %call21.i, 0
  br i1 %cmp22.i, label %if.then29.i, label %if.then19.i.encode_hdr.i_crit_edge, !prof !67

if.then19.i.encode_hdr.i_crit_edge:               ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %encode_hdr.i

if.then29.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %op.3.ph.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %op.3.ph.i, align 4
  %56 = ptrtoint ptr %rq_argp.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rq_argp.i, align 8
  %58 = ptrtoint ptr %rq_resp.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rq_resp.i, align 4
  %call31.i = call i32 %55(ptr noundef %57, ptr noundef %59, ptr noundef nonnull %cps) #9
  br label %encode_hdr.i

encode_hdr.i:                                     ; preds = %if.then29.i, %if.then19.i.encode_hdr.i_crit_edge, %if.end16.i.encode_hdr.i_crit_edge, %if.end12.i.encode_hdr.i_crit_edge, %sw.epilog.thread.i, %if.end6.i.i.encode_hdr.i_crit_edge, %sw.bb.i.encode_hdr.i_crit_edge
  %op.3104.i = phi ptr [ %op.3.ph.i, %if.then29.i ], [ %op.3.ph.i, %if.then19.i.encode_hdr.i_crit_edge ], [ %op.3.ph.i, %if.end16.i.encode_hdr.i_crit_edge ], [ %op.3.ph.i, %if.end12.i.encode_hdr.i_crit_edge ], [ @callback_ops, %sw.epilog.thread.i ], [ @callback_ops, %sw.bb.i.encode_hdr.i_crit_edge ], [ @callback_ops, %if.end6.i.i.encode_hdr.i_crit_edge ]
  %op_nr.1.i = phi i32 [ %33, %if.then29.i ], [ %33, %if.then19.i.encode_hdr.i_crit_edge ], [ %33, %if.end16.i.encode_hdr.i_crit_edge ], [ %33, %if.end12.i.encode_hdr.i_crit_edge ], [ %33, %sw.epilog.thread.i ], [ 10044, %sw.bb.i.encode_hdr.i_crit_edge ], [ 10044, %if.end6.i.i.encode_hdr.i_crit_edge ]
  %status.1.i = phi i32 [ %call31.i, %if.then29.i ], [ %call21.i, %if.then19.i.encode_hdr.i_crit_edge ], [ 10018, %if.end16.i.encode_hdr.i_crit_edge ], [ %42, %if.end12.i.encode_hdr.i_crit_edge ], [ %status.0.ph.i, %sw.epilog.thread.i ], [ 10044, %sw.bb.i.encode_hdr.i_crit_edge ], [ 10044, %if.end6.i.i.encode_hdr.i_crit_edge ]
  %call.i89.i = call ptr @xdr_reserve_space(ptr noundef %rq_res_stream, i32 noundef 8) #9
  %cmp.i90.i = icmp eq ptr %call.i89.i, null
  br i1 %cmp.i90.i, label %encode_hdr.i.process_op.exit_crit_edge, label %if.end43.i, !prof !64

encode_hdr.i.process_op.exit_crit_edge:           ; preds = %encode_hdr.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %process_op.exit

if.end43.i:                                       ; preds = %encode_hdr.i
  %incdec.ptr.i.i = getelementptr i32, ptr %call.i89.i, i32 1
  %60 = ptrtoint ptr %call.i89.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %op_nr.1.i, ptr %call.i89.i, align 4
  %61 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %status.1.i, ptr %incdec.ptr.i.i, align 4
  %encode_res.i = getelementptr inbounds %struct.callback_op, ptr %op.3104.i, i32 0, i32 2
  %62 = ptrtoint ptr %encode_res.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %encode_res.i, align 4
  %cmp44.not.i = icmp ne ptr %63, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1.i)
  %cmp46.i = icmp eq i32 %status.1.i, 0
  %or.cond82.i = and i1 %cmp46.i, %cmp44.not.i
  br i1 %or.cond82.i, label %if.then47.i, label %if.end43.i.process_op.exit_crit_edge

if.end43.i.process_op.exit_crit_edge:             ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %process_op.exit

if.then47.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %rq_resp.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rq_resp.i, align 4
  %call50.i = call i32 %63(ptr noundef %rqstp, ptr noundef %rq_res_stream, ptr noundef %65) #9
  br label %process_op.exit

process_op.exit:                                  ; preds = %if.then47.i, %if.end43.i.process_op.exit_crit_edge, %encode_hdr.i.process_op.exit_crit_edge, %while.body.process_op.exit_crit_edge
  %retval.0.i90 = phi i32 [ %call50.i, %if.then47.i ], [ %status.1.i, %if.end43.i.process_op.exit_crit_edge ], [ 11050, %while.body.process_op.exit_crit_edge ], [ 11050, %encode_hdr.i.process_op.exit_crit_edge ]
  %inc = add i32 %nops.0, 1
  br label %while.cond

if.then48:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i32 %nops.0, -1
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %land.rhs.if.end49_crit_edge, %while.cond.if.end49_crit_edge
  %nops.1 = phi i32 [ %dec, %if.then48 ], [ %hdr_arg.sroa.16.0117, %land.rhs.if.end49_crit_edge ], [ %nops.0, %while.cond.if.end49_crit_edge ]
  %status.1 = phi i32 [ 10018, %if.then48 ], [ 0, %land.rhs.if.end49_crit_edge ], [ %status.0, %while.cond.if.end49_crit_edge ]
  %66 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %status.1, ptr %call.i, align 4
  %67 = ptrtoint ptr %call14.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %nops.1, ptr %call14.i, align 4
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %69, null
  br i1 %tobool.not.i, label %if.end49.nfs4_cb_free_slot.exit_crit_edge, label %if.then.i

if.end49.nfs4_cb_free_slot.exit_crit_edge:        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs4_cb_free_slot.exit

if.then.i:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %0, align 4
  %cl_session.i = getelementptr inbounds %struct.nfs_client, ptr %71, i32 0, i32 36
  %72 = ptrtoint ptr %cl_session.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cl_session.i, align 4
  %bc_slot_table.i.i = getelementptr inbounds %struct.nfs4_session, ptr %73, i32 0, i32 8
  %slot_tbl_lock.i.i = getelementptr inbounds %struct.nfs4_session, ptr %73, i32 0, i32 8, i32 3
  call void @_raw_spin_lock(ptr noundef %slot_tbl_lock.i.i) #9
  call void @nfs4_free_slot(ptr noundef %bc_slot_table.i.i, ptr noundef nonnull %69) #9
  call void @_raw_spin_unlock(ptr noundef %slot_tbl_lock.i.i) #9
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %1, align 4
  br label %nfs4_cb_free_slot.exit

nfs4_cb_free_slot.exit:                           ; preds = %if.then.i, %if.end49.nfs4_cb_free_slot.exit_crit_edge
  %75 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %0, align 4
  call void @nfs_put_client(ptr noundef %76) #9
  br label %cleanup

out_invalidcred:                                  ; preds = %if.then22, %if.then16
  %call53 = tail call i32 @___ratelimit(ptr noundef nonnull @nfs4_callback_compound._rs, ptr noundef nonnull @__func__.nfs4_callback_compound) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %out_invalidcred.if.end57_crit_edge, label %do.end

out_invalidcred.if.end57_crit_edge:               ; preds = %out_invalidcred
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

do.end:                                           ; preds = %out_invalidcred
  call void @__sanitizer_cov_trace_pc() #11
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  br label %if.end57

if.end57:                                         ; preds = %do.end, %out_invalidcred.if.end57_crit_edge
  %rq_auth_stat = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 38
  %77 = ptrtoint ptr %rq_auth_stat to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %rq_auth_stat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %nfs4_cb_free_slot.exit, %if.then37, %if.then34.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then3.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nfs4_cb_free_slot.exit ], [ 0, %if.end57 ], [ 5, %if.then37 ], [ 5, %if.then34.cleanup_crit_edge ], [ 4, %if.end.i.cleanup_crit_edge ], [ 4, %if.then3.i.i.i.cleanup_crit_edge ], [ 4, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cps) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_find_client_ident(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs_cb_no_clp(i32 noundef %xid, i32 noundef %cb_ident) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_cb_no_clp, i32 0, i32 1), ptr blockaddress(@trace_nfs_cb_no_clp, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !68

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !67

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !69
  %call42 = tail call i32 @__traceiter_nfs_cb_no_clp(ptr noundef null, i32 noundef %xid, i32 noundef %cb_ident) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !70
  %13 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !67

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_cb_no_clp, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_cb_no_clp, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs_cb_no_clp.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_nfs_cb_no_clp.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 490, ptr noundef nonnull @.str.7) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  %31 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
declare dso_local i32 @check_gss_callback_principal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nfs_cb_badprinc(i32 noundef %xid, i32 noundef %cb_ident) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_cb_badprinc, i32 0, i32 1), ptr blockaddress(@trace_nfs_cb_badprinc, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !68

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !67

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !73
  %call42 = tail call i32 @__traceiter_nfs_cb_badprinc(ptr noundef null, i32 noundef %xid, i32 noundef %cb_ident) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !74
  %13 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !67

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_cb_badprinc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_cb_badprinc, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nfs_cb_badprinc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_nfs_cb_badprinc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 491, ptr noundef nonnull @.str.7) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  %31 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
declare dso_local void @nfs_put_client(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_cb_no_clp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_cb_badprinc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_callback_getattr(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @decode_getattr_args(ptr nocapture noundef readnone %rqstp, ptr noundef %xdr, ptr nocapture noundef %argp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #9
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !64

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  %conv.i = trunc i32 %1 to i16
  %2 = ptrtoint ptr %argp to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv.i, ptr %argp, align 2
  %conv3.i = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %conv3.i)
  %cmp4.i = icmp ugt i32 %conv3.i, 128
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %call10.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %conv3.i) #9
  %cmp11.i = icmp eq ptr %call10.i, null
  br i1 %cmp11.i, label %if.end7.i.cleanup_crit_edge, label %if.end, !prof !64

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end7.i
  %data.i = getelementptr inbounds %struct.nfs_fh, ptr %argp, i32 0, i32 1
  %3 = ptrtoint ptr %argp to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %argp, align 2
  %conv22.i = zext i16 %4 to i32
  %5 = call ptr @memcpy(ptr %data.i, ptr %call10.i, i32 %conv22.i)
  %arrayidx25.i = getelementptr %struct.nfs_fh, ptr %argp, i32 0, i32 1, i32 %conv22.i
  %sub.i = sub nsw i32 128, %conv22.i
  %6 = call ptr @memset(ptr %arrayidx25.i, i32 0, i32 %sub.i)
  %bitmap = getelementptr inbounds %struct.cb_getattrargs, ptr %argp, i32 0, i32 1
  %call.i7 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #9
  %cmp.i8 = icmp eq ptr %call.i7, null
  br i1 %cmp.i8, label %if.end.cleanup_crit_edge, label %if.end.i9, !prof !64

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i9:                                        ; preds = %if.end
  %7 = ptrtoint ptr %call.i7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i7, align 4
  %shl.i = shl i32 %8, 2
  %call2.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %shl.i) #9
  %cmp3.i = icmp eq ptr %call2.i, null
  br i1 %cmp3.i, label %if.end.i9.cleanup_crit_edge, label %if.end11.i, !prof !64

if.end.i9.cleanup_crit_edge:                      ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp12.not.i = icmp eq i32 %8, 0
  br i1 %cmp12.not.i, label %if.end11.i.cleanup_crit_edge, label %if.end20.i10, !prof !64

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20.i10:                                     ; preds = %if.end11.i
  %9 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call2.i, align 4
  %11 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %bitmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp21.not.i = icmp eq i32 %8, 1
  br i1 %cmp21.not.i, label %if.end20.i10.cleanup_crit_edge, label %if.then22.i

if.end20.i10.cleanup_crit_edge:                   ; preds = %if.end20.i10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then22.i:                                      ; preds = %if.end20.i10
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr.i = getelementptr i32, ptr %call2.i, i32 1
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %incdec.ptr.i, align 4
  %arrayidx23.i = getelementptr %struct.cb_getattrargs, ptr %argp, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx23.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then22.i, %if.end20.i10.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %if.end.i9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10018, %if.end.cleanup_crit_edge ], [ 10018, %if.end.i9.cleanup_crit_edge ], [ 0, %if.then22.i ], [ 0, %if.end20.i10.cleanup_crit_edge ], [ 0, %if.end11.i.cleanup_crit_edge ], [ 10018, %if.end7.i.cleanup_crit_edge ], [ 10001, %if.end.i.cleanup_crit_edge ], [ 10018, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encode_getattr_res(ptr nocapture noundef readnone %rqstp, ptr noundef %xdr, ptr nocapture noundef readonly %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge, !prof !67

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %bitmap = getelementptr inbounds %struct.cb_getattrres, ptr %resp, i32 0, i32 1
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 12) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.out_crit_edge, label %if.end11, !prof !64

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end11:                                         ; preds = %if.end
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %call.i.i, align 4
  %p.0.i.i = getelementptr i32, ptr %call.i.i, i32 1
  %3 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bitmap, align 4
  %5 = ptrtoint ptr %p.0.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %p.0.i.i, align 4
  %incdec.ptr6.i.i = getelementptr %struct.cb_getattrres, ptr %resp, i32 0, i32 1, i32 1
  %p.0.1.i.i = getelementptr i32, ptr %call.i.i, i32 2
  %6 = ptrtoint ptr %incdec.ptr6.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incdec.ptr6.i.i, align 4
  %8 = ptrtoint ptr %p.0.1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %p.0.1.i.i, align 4
  %call12 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #9
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.out_crit_edge, label %if.end23, !prof !64

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end23:                                         ; preds = %if.end11
  %change_attr = getelementptr inbounds %struct.cb_getattrres, ptr %resp, i32 0, i32 3
  %9 = ptrtoint ptr %change_attr to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %change_attr, align 8
  %11 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bitmap, align 4
  %and.i = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end23.if.end35_crit_edge, label %if.end.i

if.end23.if.end35_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.end.i:                                         ; preds = %if.end23
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 8) #9
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.out_crit_edge, label %if.end6.i, !prof !64

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %10, ptr %call.i, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.end6.i, %if.end23.if.end35_crit_edge
  %size = getelementptr inbounds %struct.cb_getattrres, ptr %resp, i32 0, i32 2
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %size, align 8
  %16 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bitmap, align 4
  %and.i85 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85)
  %tobool.not.i86 = icmp eq i32 %and.i85, 0
  br i1 %tobool.not.i86, label %if.end35.if.end47_crit_edge, label %if.end.i89

if.end35.if.end47_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.end.i89:                                       ; preds = %if.end35
  %call.i87 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 8) #9
  %tobool1.not.i88 = icmp eq ptr %call.i87, null
  br i1 %tobool1.not.i88, label %if.end.i89.out_crit_edge, label %if.end6.i90, !prof !64

if.end.i89.out_crit_edge:                         ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end6.i90:                                      ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %call.i87 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %15, ptr %call.i87, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.end6.i90, %if.end35.if.end47_crit_edge
  %ctime = getelementptr inbounds %struct.cb_getattrres, ptr %resp, i32 0, i32 4
  %19 = ptrtoint ptr %incdec.ptr6.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %incdec.ptr6.i.i, align 4
  %and.i92 = and i32 %20, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %tobool.not.i93 = icmp eq i32 %and.i92, 0
  br i1 %tobool.not.i93, label %if.end47.if.end59_crit_edge, label %if.end.i96

if.end47.if.end59_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end.i96:                                       ; preds = %if.end47
  %call.i.i94 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 12) #9
  %tobool.not.i.i95 = icmp eq ptr %call.i.i94, null
  br i1 %tobool.not.i.i95, label %if.end.i96.out_crit_edge, label %if.end.i.i, !prof !64

if.end.i96.out_crit_edge:                         ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i.i:                                       ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %ctime to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %ctime, align 8
  %23 = ptrtoint ptr %call.i.i94 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %call.i.i94, align 1
  %add.ptr.i.i.i = getelementptr i32, ptr %call.i.i94, i32 2
  %tv_nsec.i.i = getelementptr inbounds %struct.cb_getattrres, ptr %resp, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tv_nsec.i.i, align 8
  %26 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %add.ptr.i.i.i, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.end.i.i, %if.end47.if.end59_crit_edge
  %mtime = getelementptr inbounds %struct.cb_getattrres, ptr %resp, i32 0, i32 5
  %27 = ptrtoint ptr %incdec.ptr6.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %incdec.ptr6.i.i, align 4
  %and.i99 = and i32 %28, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99)
  %tobool.not.i100 = icmp eq i32 %and.i99, 0
  br i1 %tobool.not.i100, label %if.end59.encode_attr_mtime.exit_crit_edge, label %if.end.i103

if.end59.encode_attr_mtime.exit_crit_edge:        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %encode_attr_mtime.exit

if.end.i103:                                      ; preds = %if.end59
  %call.i.i101 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 12) #9
  %tobool.not.i.i102 = icmp eq ptr %call.i.i101, null
  br i1 %tobool.not.i.i102, label %if.end.i103.encode_attr_mtime.exit_crit_edge, label %if.end.i.i106, !prof !64

if.end.i103.encode_attr_mtime.exit_crit_edge:     ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #11
  br label %encode_attr_mtime.exit

if.end.i.i106:                                    ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %mtime to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %mtime, align 8
  %31 = ptrtoint ptr %call.i.i101 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %30, ptr %call.i.i101, align 1
  %add.ptr.i.i.i104 = getelementptr i32, ptr %call.i.i101, i32 2
  %tv_nsec.i.i105 = getelementptr inbounds %struct.cb_getattrres, ptr %resp, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %tv_nsec.i.i105 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tv_nsec.i.i105, align 8
  %34 = ptrtoint ptr %add.ptr.i.i.i104 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %add.ptr.i.i.i104, align 4
  br label %encode_attr_mtime.exit

encode_attr_mtime.exit:                           ; preds = %if.end.i.i106, %if.end.i103.encode_attr_mtime.exit_crit_edge, %if.end59.encode_attr_mtime.exit_crit_edge
  %retval.0.i107 = phi i32 [ 0, %if.end59.encode_attr_mtime.exit_crit_edge ], [ 0, %if.end.i.i106 ], [ 10018, %if.end.i103.encode_attr_mtime.exit_crit_edge ]
  %35 = ptrtoint ptr %xdr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xdr, align 4
  %add.ptr = getelementptr i32, ptr %call12, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %36 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %37 = ptrtoint ptr %call12 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub.ptr.sub, ptr %call12, align 4
  br label %out

out:                                              ; preds = %encode_attr_mtime.exit, %if.end.i96.out_crit_edge, %if.end.i89.out_crit_edge, %if.end.i.out_crit_edge, %if.end11.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %status.0 = phi i32 [ %1, %entry.out_crit_edge ], [ 10018, %if.end11.out_crit_edge ], [ %retval.0.i107, %encode_attr_mtime.exit ], [ 10018, %if.end.out_crit_edge ], [ 10018, %if.end.i.out_crit_edge ], [ 10018, %if.end.i89.out_crit_edge ], [ 10018, %if.end.i96.out_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_callback_recall(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @decode_recall_args(ptr nocapture noundef readnone %rqstp, ptr noundef %xdr, ptr nocapture noundef %argp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.cb_recallargs, ptr %argp, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %type.i, align 4
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 16) #9
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %entry.cleanup_crit_edge, label %if.end, !prof !64

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %stateid = getelementptr inbounds %struct.cb_recallargs, ptr %argp, i32 0, i32 1
  %1 = call ptr @memcpy(ptr %stateid, ptr %call.i.i, i32 16)
  %call2 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #9
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end11, !prof !64

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %2 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call2, align 4
  %truncate = getelementptr inbounds %struct.cb_recallargs, ptr %argp, i32 0, i32 2
  %4 = ptrtoint ptr %truncate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %truncate, align 4
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #9
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.end11.cleanup_crit_edge, label %if.end.i, !prof !64

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end11
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call.i, align 4
  %conv.i = trunc i32 %6 to i16
  %7 = ptrtoint ptr %argp to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %argp, align 2
  %conv3.i = and i32 %6, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %conv3.i)
  %cmp4.i = icmp ugt i32 %conv3.i, 128
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %call10.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %conv3.i) #9
  %cmp11.i = icmp eq ptr %call10.i, null
  br i1 %cmp11.i, label %if.end7.i.cleanup_crit_edge, label %if.end20.i, !prof !64

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.nfs_fh, ptr %argp, i32 0, i32 1
  %8 = ptrtoint ptr %argp to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %argp, align 2
  %conv22.i = zext i16 %9 to i32
  %10 = call ptr @memcpy(ptr %data.i, ptr %call10.i, i32 %conv22.i)
  %arrayidx25.i = getelementptr %struct.nfs_fh, ptr %argp, i32 0, i32 1, i32 %conv22.i
  %sub.i = sub nsw i32 128, %conv22.i
  %11 = call ptr @memset(ptr %arrayidx25.i, i32 0, i32 %sub.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end20.i, %if.end7.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10018, %if.end.cleanup_crit_edge ], [ 10018, %entry.cleanup_crit_edge ], [ 0, %if.end20.i ], [ 10018, %if.end11.cleanup_crit_edge ], [ 10001, %if.end.i.cleanup_crit_edge ], [ 10018, %if.end7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_callback_layoutrecall(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @decode_layoutrecall_args(ptr nocapture noundef readnone %rqstp, ptr noundef %xdr, ptr nocapture noundef %argp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 16) #9
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !64

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr i32, ptr %call, i32 1
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %cbl_layout_type = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %argp, i32 0, i32 1
  %2 = ptrtoint ptr %cbl_layout_type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %cbl_layout_type, align 4
  %incdec.ptr2 = getelementptr i32, ptr %call, i32 2
  %3 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %incdec.ptr, align 4
  %incdec.ptr3 = getelementptr i32, ptr %call, i32 3
  %5 = ptrtoint ptr %incdec.ptr2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %incdec.ptr2, align 4
  %cbl_layoutchanged = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %argp, i32 0, i32 2
  %7 = ptrtoint ptr %cbl_layoutchanged to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cbl_layoutchanged, align 8
  %8 = ptrtoint ptr %incdec.ptr3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %incdec.ptr3, align 4
  %10 = ptrtoint ptr %argp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %argp, align 8
  %11 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %9, label %if.end.cleanup_crit_edge [
    i32 1, label %if.then7
    i32 2, label %if.then36
    i32 3, label %if.end.if.end55_crit_edge
  ]

if.end.if.end55_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %12 = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %argp, i32 0, i32 3
  %cbl_range = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %argp, i32 0, i32 3, i32 0, i32 1
  %13 = ptrtoint ptr %cbl_range to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %4, ptr %cbl_range, align 8
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #9
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then7.cleanup_crit_edge, label %if.end.i, !prof !64

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then7
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i, align 4
  %conv.i = trunc i32 %15 to i16
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %12, align 2
  %conv3.i = and i32 %15, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %conv3.i)
  %cmp4.i = icmp ugt i32 %conv3.i, 128
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %call10.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %conv3.i) #9
  %cmp11.i = icmp eq ptr %call10.i, null
  br i1 %cmp11.i, label %if.end7.i.cleanup_crit_edge, label %if.end18, !prof !64

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end7.i
  %data.i = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %argp, i32 0, i32 3, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %12, align 2
  %conv22.i = zext i16 %18 to i32
  %19 = call ptr @memcpy(ptr %data.i, ptr %call10.i, i32 %conv22.i)
  %arrayidx25.i = getelementptr %struct.nfs_fh, ptr %12, i32 0, i32 1, i32 %conv22.i
  %sub.i = sub nsw i32 128, %conv22.i
  %20 = call ptr @memset(ptr %arrayidx25.i, i32 0, i32 %sub.i)
  %call19 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 16) #9
  %cmp20 = icmp eq ptr %call19, null
  br i1 %cmp20, label %if.end18.cleanup_crit_edge, label %if.end28, !prof !64

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %offset = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %argp, i32 0, i32 3, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %call19 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %call19, align 1
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %offset, align 8
  %add.ptr.i = getelementptr i32, ptr %call19, i32 2
  %length = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %argp, i32 0, i32 3, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %add.ptr.i, align 1
  %26 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %length, align 8
  %type.i = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %argp, i32 0, i32 3, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 5, ptr %type.i, align 4
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 16) #9
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %if.end28.cleanup_crit_edge, label %if.end.i.i, !prof !64

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %cbl_stateid = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %argp, i32 0, i32 3, i32 0, i32 2
  %28 = call ptr @memcpy(ptr %cbl_stateid, ptr %call.i.i, i32 16)
  br label %cleanup

if.then36:                                        ; preds = %if.end
  %call37 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 16) #9
  %cmp38 = icmp eq ptr %call37, null
  br i1 %cmp38, label %if.then36.cleanup_crit_edge, label %if.end46, !prof !64

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end46:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %29 = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %argp, i32 0, i32 3
  %30 = ptrtoint ptr %call37 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %call37, align 1
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %29, align 8
  %add.ptr.i87 = getelementptr i32, ptr %call37, i32 2
  %minor = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %argp, i32 0, i32 3, i32 0, i32 0, i32 1, i32 6
  %33 = ptrtoint ptr %add.ptr.i87 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %add.ptr.i87, align 1
  %35 = ptrtoint ptr %minor to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %minor, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.end46, %if.end.if.end55_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then36.cleanup_crit_edge, %if.end.i.i, %if.end28.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end55 ], [ 10036, %entry.cleanup_crit_edge ], [ 10036, %if.end18.cleanup_crit_edge ], [ 10036, %if.then36.cleanup_crit_edge ], [ 10036, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ 10018, %if.end28.cleanup_crit_edge ], [ 10018, %if.end7.i.cleanup_crit_edge ], [ 10001, %if.end.i.cleanup_crit_edge ], [ 10018, %if.then7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_callback_recallany(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @decode_recallany_args(ptr nocapture noundef readnone %rqstp, ptr noundef %xdr, ptr nocapture noundef writeonly %argp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #9
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !64

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %2 = ptrtoint ptr %argp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %argp, align 4
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #9
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i, !prof !64

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call.i, align 4
  %shl.i = shl i32 %4, 2
  %call2.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %shl.i) #9
  %cmp3.i = icmp eq ptr %call2.i, null
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %if.end11.i, !prof !64

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp12.not.i = icmp eq i32 %4, 0
  br i1 %cmp12.not.i, label %if.end11.i.if.end11_crit_edge, label %if.end20.i, !prof !64

if.end11.i.if.end11_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end20.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call2.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end20.i, %if.end11.i.if.end11_crit_edge
  %bitmap.sroa.0.0.ph = phi i32 [ -1, %if.end11.i.if.end11_crit_edge ], [ %6, %if.end20.i ]
  %craa_type_mask = getelementptr inbounds %struct.cb_recallanyargs, ptr %argp, i32 0, i32 1
  %7 = ptrtoint ptr %craa_type_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %bitmap.sroa.0.0.ph, ptr %craa_type_mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ 10036, %entry.cleanup_crit_edge ], [ 10018, %if.end.cleanup_crit_edge ], [ 10018, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_callback_recallslot(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @decode_recallslot_args(ptr nocapture noundef readnone %rqstp, ptr noundef %xdr, ptr nocapture noundef writeonly %argp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #9
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !64

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %2 = ptrtoint ptr %argp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %argp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 10036, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_callback_sequence(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @decode_cb_sequence_args(ptr noundef %rqstp, ptr noundef %xdr, ptr nocapture noundef %argp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 16) #9
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end, !prof !64

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %csa_sessionid = getelementptr inbounds %struct.cb_sequenceargs, ptr %argp, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %csa_sessionid, ptr %call.i, i32 16)
  %call1 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 20) #9
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5, !prof !64

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %rq_addr.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3
  %1 = ptrtoint ptr %argp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %rq_addr.i, ptr %argp, align 4
  %incdec.ptr = getelementptr i32, ptr %call1, i32 1
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call1, align 4
  %csa_sequenceid = getelementptr inbounds %struct.cb_sequenceargs, ptr %argp, i32 0, i32 2
  %4 = ptrtoint ptr %csa_sequenceid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %csa_sequenceid, align 4
  %incdec.ptr7 = getelementptr i32, ptr %call1, i32 2
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %incdec.ptr, align 4
  %csa_slotid = getelementptr inbounds %struct.cb_sequenceargs, ptr %argp, i32 0, i32 3
  %7 = ptrtoint ptr %csa_slotid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %csa_slotid, align 4
  %incdec.ptr8 = getelementptr i32, ptr %call1, i32 3
  %8 = ptrtoint ptr %incdec.ptr7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %incdec.ptr7, align 4
  %csa_highestslotid = getelementptr inbounds %struct.cb_sequenceargs, ptr %argp, i32 0, i32 4
  %10 = ptrtoint ptr %csa_highestslotid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %csa_highestslotid, align 4
  %incdec.ptr9 = getelementptr i32, ptr %call1, i32 4
  %11 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %incdec.ptr8, align 4
  %csa_cachethis = getelementptr inbounds %struct.cb_sequenceargs, ptr %argp, i32 0, i32 5
  %13 = ptrtoint ptr %csa_cachethis to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %csa_cachethis, align 4
  %14 = ptrtoint ptr %incdec.ptr9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr9, align 4
  %csa_nrclists = getelementptr inbounds %struct.cb_sequenceargs, ptr %argp, i32 0, i32 6
  %16 = ptrtoint ptr %csa_nrclists to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %csa_nrclists, align 4
  %csa_rclists = getelementptr inbounds %struct.cb_sequenceargs, ptr %argp, i32 0, i32 7
  %17 = ptrtoint ptr %csa_rclists to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %csa_rclists, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.not = icmp eq i32 %15, 0
  br i1 %tobool12.not, label %if.end5.cleanup_crit_edge, label %if.then13

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %if.end5
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 24) #9
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %if.then13.cleanup_crit_edge, label %if.end7.i, !prof !64

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.then13
  %20 = extractvalue { i32, i1 } %18, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3264) #13
  %21 = ptrtoint ptr %csa_rclists to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call8.i, ptr %csa_rclists, align 4
  %cmp18 = icmp eq ptr %call8.i, null
  br i1 %cmp18, label %if.end7.i.cleanup_crit_edge, label %for.cond.preheader, !prof !64

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i
  %22 = ptrtoint ptr %csa_nrclists to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %csa_nrclists, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp28101.not = icmp eq i32 %23, 0
  br i1 %cmp28101.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0102 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %24 = ptrtoint ptr %csa_rclists to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %csa_rclists, align 4
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 16) #9
  %cmp.i.i84 = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i84, label %for.body.if.then32_crit_edge, label %if.end.i86, !prof !64

for.body.if.then32_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

if.end.i86:                                       ; preds = %for.body
  %arrayidx = getelementptr %struct.referring_call_list, ptr %25, i32 %i.0102
  %26 = call ptr @memcpy(ptr %arrayidx, ptr %call.i.i, i32 16)
  %call1.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #9
  %cmp.i85 = icmp eq ptr %call1.i, null
  br i1 %cmp.i85, label %if.end.i86.if.then32_crit_edge, label %if.end5.i, !prof !64

if.end.i86.if.then32_crit_edge:                   ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

if.end5.i:                                        ; preds = %if.end.i86
  %27 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call1.i, align 4
  %rcl_nrefcalls.i = getelementptr %struct.referring_call_list, ptr %25, i32 %i.0102, i32 1
  %29 = ptrtoint ptr %rcl_nrefcalls.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %rcl_nrefcalls.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool7.not.i = icmp eq i32 %28, 0
  br i1 %tobool7.not.i, label %if.end5.i.for.inc_crit_edge, label %if.then8.i

if.end5.i.for.inc_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then8.i:                                       ; preds = %if.end5.i
  %mul10.i = shl i32 %28, 3
  %call11.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %mul10.i) #9
  %cmp12.i = icmp eq ptr %call11.i, null
  br i1 %cmp12.i, label %if.then8.i.if.then32_crit_edge, label %if.end20.i, !prof !64

if.then8.i.if.then32_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

if.end20.i:                                       ; preds = %if.then8.i
  %30 = ptrtoint ptr %rcl_nrefcalls.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rcl_nrefcalls.i, align 4
  %32 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %31, i32 8) #9
  %33 = extractvalue { i32, i1 } %32, 1
  br i1 %33, label %kmalloc_array.exit.thread.i, label %if.end7.i.i, !prof !64

kmalloc_array.exit.thread.i:                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %rcl_refcalls65.i = getelementptr %struct.referring_call_list, ptr %25, i32 %i.0102, i32 2
  %34 = ptrtoint ptr %rcl_refcalls65.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %rcl_refcalls65.i, align 4
  br label %if.then32

if.end7.i.i:                                      ; preds = %if.end20.i
  %35 = extractvalue { i32, i1 } %32, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %35, i32 noundef 3264) #13
  %rcl_refcalls.i = getelementptr %struct.referring_call_list, ptr %25, i32 %i.0102, i32 2
  %36 = ptrtoint ptr %rcl_refcalls.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call8.i.i, ptr %rcl_refcalls.i, align 4
  %cmp24.i = icmp eq ptr %call8.i.i, null
  br i1 %cmp24.i, label %if.end7.i.i.if.then32_crit_edge, label %for.cond.preheader.i, !prof !64

if.end7.i.i.if.then32_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

for.cond.preheader.i:                             ; preds = %if.end7.i.i
  %37 = ptrtoint ptr %rcl_nrefcalls.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rcl_nrefcalls.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp3467.not.i = icmp eq i32 %38, 0
  br i1 %cmp3467.not.i, label %for.cond.preheader.i.for.inc_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.inc_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.069.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %p.068.i = phi ptr [ %incdec.ptr37.i, %for.body.i.for.body.i_crit_edge ], [ %call11.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %incdec.ptr35.i = getelementptr i32, ptr %p.068.i, i32 1
  %39 = ptrtoint ptr %p.068.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %p.068.i, align 4
  %41 = ptrtoint ptr %rcl_refcalls.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rcl_refcalls.i, align 4
  %arrayidx.i = getelementptr %struct.referring_call, ptr %42, i32 %i.069.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %40, ptr %arrayidx.i, align 4
  %incdec.ptr37.i = getelementptr i32, ptr %p.068.i, i32 2
  %44 = ptrtoint ptr %incdec.ptr35.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %incdec.ptr35.i, align 4
  %46 = load ptr, ptr %rcl_refcalls.i, align 4
  %rc_slotid.i = getelementptr %struct.referring_call, ptr %46, i32 %i.069.i, i32 1
  %47 = ptrtoint ptr %rc_slotid.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %45, ptr %rc_slotid.i, align 4
  %inc.i = add nuw i32 %i.069.i, 1
  %48 = ptrtoint ptr %rcl_nrefcalls.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rcl_nrefcalls.i, align 4
  %cmp34.i = icmp ult i32 %inc.i, %49
  br i1 %cmp34.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.inc_crit_edge

for.body.i.for.inc_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.then32:                                        ; preds = %if.end7.i.i.if.then32_crit_edge, %kmalloc_array.exit.thread.i, %if.then8.i.if.then32_crit_edge, %if.end.i86.if.then32_crit_edge, %for.body.if.then32_crit_edge
  %50 = ptrtoint ptr %csa_nrclists to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %i.0102, ptr %csa_nrclists, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0102)
  %cmp38105.not = icmp eq i32 %i.0102, 0
  br i1 %cmp38105.not, label %if.then32.for.end44_crit_edge, label %if.then32.for.body39_crit_edge

if.then32.for.body39_crit_edge:                   ; preds = %if.then32
  br label %for.body39

if.then32.for.end44_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end44

for.inc:                                          ; preds = %for.body.i.for.inc_crit_edge, %for.cond.preheader.i.for.inc_crit_edge, %if.end5.i.for.inc_crit_edge
  %inc = add nuw i32 %i.0102, 1
  %51 = ptrtoint ptr %csa_nrclists to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %csa_nrclists, align 4
  %cmp28 = icmp ult i32 %inc, %52
  br i1 %cmp28, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %if.then32.for.body39_crit_edge
  %i.1106 = phi i32 [ %inc43, %for.body39.for.body39_crit_edge ], [ 0, %if.then32.for.body39_crit_edge ]
  %53 = ptrtoint ptr %csa_rclists to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %csa_rclists, align 4
  %rcl_refcalls = getelementptr %struct.referring_call_list, ptr %54, i32 %i.1106, i32 2
  %55 = ptrtoint ptr %rcl_refcalls to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rcl_refcalls, align 4
  tail call void @kfree(ptr noundef %56) #9
  %inc43 = add nuw i32 %i.1106, 1
  %57 = ptrtoint ptr %csa_nrclists to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %csa_nrclists, align 4
  %cmp38 = icmp ult i32 %inc43, %58
  br i1 %cmp38, label %for.body39.for.body39_crit_edge, label %for.body39.for.end44_crit_edge

for.body39.for.end44_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end44

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body39

for.end44:                                        ; preds = %for.body39.for.end44_crit_edge, %if.then32.for.end44_crit_edge
  %59 = ptrtoint ptr %csa_rclists to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %csa_rclists, align 4
  tail call void @kfree(ptr noundef %60) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end44, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10018, %for.end44 ], [ 10018, %if.end.cleanup_crit_edge ], [ 10018, %if.end7.i.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 10018, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 10018, %if.then13.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encode_cb_sequence_res(ptr nocapture noundef readnone %rqstp, ptr noundef %xdr, ptr nocapture noundef readonly %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !67

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 16) #9
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end4, !prof !64

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %csr_sessionid = getelementptr inbounds %struct.cb_sequenceres, ptr %resp, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %call.i, ptr %csr_sessionid, i32 16)
  %call5 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 16) #9
  %cmp6 = icmp eq ptr %call5, null
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end14, !prof !64

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %csr_sequenceid = getelementptr inbounds %struct.cb_sequenceres, ptr %resp, i32 0, i32 2
  %3 = ptrtoint ptr %csr_sequenceid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %csr_sequenceid, align 4
  %incdec.ptr = getelementptr i32, ptr %call5, i32 1
  %5 = ptrtoint ptr %call5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %call5, align 4
  %csr_slotid = getelementptr inbounds %struct.cb_sequenceres, ptr %resp, i32 0, i32 3
  %6 = ptrtoint ptr %csr_slotid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %csr_slotid, align 4
  %incdec.ptr15 = getelementptr i32, ptr %call5, i32 2
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %incdec.ptr, align 4
  %csr_highestslotid = getelementptr inbounds %struct.cb_sequenceres, ptr %resp, i32 0, i32 4
  %9 = ptrtoint ptr %csr_highestslotid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %csr_highestslotid, align 4
  %incdec.ptr16 = getelementptr i32, ptr %call5, i32 3
  %11 = ptrtoint ptr %incdec.ptr15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %incdec.ptr15, align 4
  %csr_target_highestslotid = getelementptr inbounds %struct.cb_sequenceres, ptr %resp, i32 0, i32 5
  %12 = ptrtoint ptr %csr_target_highestslotid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %csr_target_highestslotid, align 4
  %14 = ptrtoint ptr %incdec.ptr16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %incdec.ptr16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %1, %entry.cleanup_crit_edge ], [ 10018, %if.end4.cleanup_crit_edge ], [ 10018, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_callback_notify_lock(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @decode_notify_lock_args(ptr nocapture noundef readnone %rqstp, ptr noundef %xdr, ptr nocapture noundef %argp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #9
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !64

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  %conv.i = trunc i32 %1 to i16
  %2 = ptrtoint ptr %argp to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv.i, ptr %argp, align 2
  %conv3.i = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %conv3.i)
  %cmp4.i = icmp ugt i32 %conv3.i, 128
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %call10.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %conv3.i) #9
  %cmp11.i = icmp eq ptr %call10.i, null
  br i1 %cmp11.i, label %if.end7.i.cleanup_crit_edge, label %if.end, !prof !64

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end7.i
  %data.i = getelementptr inbounds %struct.nfs_fh, ptr %argp, i32 0, i32 1
  %3 = ptrtoint ptr %argp to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %argp, align 2
  %conv22.i = zext i16 %4 to i32
  %5 = call ptr @memcpy(ptr %data.i, ptr %call10.i, i32 %conv22.i)
  %arrayidx25.i = getelementptr %struct.nfs_fh, ptr %argp, i32 0, i32 1, i32 %conv22.i
  %sub.i = sub nsw i32 128, %conv22.i
  %6 = call ptr @memset(ptr %arrayidx25.i, i32 0, i32 %sub.i)
  %call.i7 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 12) #9
  %cmp.i8 = icmp eq ptr %call.i7, null
  br i1 %cmp.i8, label %if.end.cleanup_crit_edge, label %if.end.i10, !prof !64

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i10:                                       ; preds = %if.end
  %cbnl_owner.i = getelementptr inbounds %struct.cb_notify_lock_args, ptr %argp, i32 0, i32 1
  %7 = ptrtoint ptr %call.i7 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %call.i7, align 1
  %9 = ptrtoint ptr %cbnl_owner.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %cbnl_owner.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %call.i7, i32 2
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 4
  %call3.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %11) #9
  %cmp4.i9 = icmp eq ptr %call3.i, null
  br i1 %cmp4.i9, label %if.end.i10.cleanup_crit_edge, label %if.end12.i, !prof !64

if.end.i10.cleanup_crit_edge:                     ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.i:                                       ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %11)
  %cmp13.i = icmp eq i32 %11, 20
  br i1 %cmp13.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i32, ptr %call3.i, i32 2
  %incdec.ptr.i = getelementptr i32, ptr %call3.i, i32 3
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 4
  %s_dev.i = getelementptr inbounds %struct.cb_notify_lock_args, ptr %argp, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %s_dev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %s_dev.i, align 8
  %15 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %incdec.ptr.i, align 1
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %s_dev19.i = getelementptr inbounds %struct.cb_notify_lock_args, ptr %argp, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %s_dev19.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %s_dev19.i, align 8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i, %if.then14.i
  %.sink = phi i64 [ %16, %if.then14.i ], [ 0, %if.else.i ]
  %.sink.i = phi i8 [ 1, %if.then14.i ], [ 0, %if.else.i ]
  %18 = getelementptr inbounds %struct.cb_notify_lock_args, ptr %argp, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %.sink, ptr %18, align 8
  %cbnl_valid.i = getelementptr inbounds %struct.cb_notify_lock_args, ptr %argp, i32 0, i32 2
  %20 = ptrtoint ptr %cbnl_valid.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink.i, ptr %cbnl_valid.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.end.i10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10036, %if.end.cleanup_crit_edge ], [ 10036, %if.end.i10.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i ], [ 10018, %if.end7.i.cleanup_crit_edge ], [ 10001, %if.end.i.cleanup_crit_edge ], [ 10018, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_callback_devicenotify(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @decode_devicenotify_args(ptr nocapture noundef readnone %rqstp, ptr noundef %xdr, ptr nocapture noundef %argp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #9
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.out_crit_edge, label %if.end, !prof !64

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 153391689, i32 %1)
  %cmp5 = icmp ugt i32 %1, 153391689
  br i1 %cmp5, label %if.end4.out_crit_edge, label %if.end7.i

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end7.i:                                        ; preds = %if.end4
  %2 = mul nuw i32 %1, 28
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3264) #13
  %devs = getelementptr inbounds %struct.cb_devicenotifyargs, ptr %argp, i32 0, i32 1
  %3 = ptrtoint ptr %devs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8.i, ptr %devs, align 4
  %tobool10.not = icmp eq ptr %call8.i, null
  br i1 %tobool10.not, label %if.end7.i.out_crit_edge, label %if.end7.i.for.body_crit_edge

if.end7.i.for.body_crit_edge:                     ; preds = %if.end7.i
  br label %for.body

if.end7.i.out_crit_edge:                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end7.i.for.body_crit_edge
  %i.0178 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end7.i.for.body_crit_edge ]
  %4 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devs, align 4
  %arrayidx = getelementptr %struct.cb_devicenotifyitem, ptr %5, i32 %i.0178
  %call15 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 32) #9
  %cmp16 = icmp eq ptr %call15, null
  br i1 %cmp16, label %for.body.err_crit_edge, label %if.end24, !prof !64

for.body.err_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end24:                                         ; preds = %for.body
  %6 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp26.not = icmp eq i32 %7, 1
  br i1 %cmp26.not, label %if.end28, label %if.end24.err_crit_edge

if.end24.err_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end28:                                         ; preds = %if.end24
  %incdec.ptr25 = getelementptr i32, ptr %call15, i32 1
  %8 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %incdec.ptr25, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx, align 4
  %11 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %9, label %if.end28.err_crit_edge [
    i32 2, label %if.end28.if.end35_crit_edge
    i32 4, label %if.end28.if.end35_crit_edge181
  ]

if.end28.if.end35_crit_edge181:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.end28.err_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end35:                                         ; preds = %if.end28.if.end35_crit_edge, %if.end28.if.end35_crit_edge181
  %incdec.ptr29 = getelementptr i32, ptr %call15, i32 2
  %incdec.ptr36 = getelementptr i32, ptr %call15, i32 3
  %12 = ptrtoint ptr %incdec.ptr29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %incdec.ptr29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp38 = icmp ne i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %13)
  %cmp40.not = icmp eq i32 %13, 24
  %or.cond = select i1 %cmp38, i1 true, i1 %cmp40.not
  br i1 %or.cond, label %lor.lhs.false, label %if.end35.err_crit_edge

if.end35.err_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

lor.lhs.false:                                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp42 = icmp ne i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %13)
  %cmp44.not = icmp eq i32 %13, 20
  %or.cond170 = select i1 %cmp42, i1 true, i1 %cmp44.not
  br i1 %or.cond170, label %if.end46, label %lor.lhs.false.err_crit_edge

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end46:                                         ; preds = %lor.lhs.false
  %incdec.ptr47 = getelementptr i32, ptr %call15, i32 4
  %14 = ptrtoint ptr %incdec.ptr36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr36, align 4
  %cbd_layout_type = getelementptr %struct.cb_devicenotifyitem, ptr %5, i32 %i.0178, i32 1
  %16 = ptrtoint ptr %cbd_layout_type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %cbd_layout_type, align 4
  %cbd_dev_id = getelementptr %struct.cb_devicenotifyitem, ptr %5, i32 %i.0178, i32 2
  %17 = call ptr @memcpy(ptr %cbd_dev_id, ptr %incdec.ptr47, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp49 = icmp eq i32 %15, 2
  br i1 %cmp49, label %if.then50, label %if.end46.do.body_crit_edge

if.end46.do.body_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then50:                                        ; preds = %if.end46
  %call51 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #9
  %cmp52 = icmp eq ptr %call51, null
  br i1 %cmp52, label %if.then50.err_crit_edge, label %if.end60, !prof !64

if.then50.err_crit_edge:                          ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end60:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %call51 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call51, align 4
  br label %do.body

do.body:                                          ; preds = %if.end60, %if.end46.do.body_crit_edge
  %.sink = phi i32 [ %19, %if.end60 ], [ 0, %if.end46.do.body_crit_edge ]
  %cbd_immediate = getelementptr %struct.cb_devicenotifyitem, ptr %5, i32 %i.0178, i32 3
  %20 = ptrtoint ptr %cbd_immediate to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %cbd_immediate, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %21 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool64.not = icmp eq i32 %and, 0
  br i1 %tobool64.not, label %do.body.for.inc_crit_edge, label %do.end, !prof !67

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %24 = ptrtoint ptr %cbd_layout_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cbd_layout_type, align 4
  %cbd_immediate76 = getelementptr %struct.cb_devicenotifyitem, ptr %5, i32 %i.0178, i32 3
  %26 = ptrtoint ptr %cbd_immediate76 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cbd_immediate76, align 4
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %23, i32 noundef %25, i32 noundef %27) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end, %do.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0178, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %28 = ptrtoint ptr %argp to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %1, ptr %argp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %29 = load i32, ptr @nfs_debug, align 4
  %and82 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %for.end.cleanup122_crit_edge, label %do.end93, !prof !67

for.end.cleanup122_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup122

do.end93:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef %1) #12
  br label %cleanup122

err:                                              ; preds = %if.then50.err_crit_edge, %lor.lhs.false.err_crit_edge, %if.end35.err_crit_edge, %if.end28.err_crit_edge, %if.end24.err_crit_edge, %for.body.err_crit_edge
  %status.1.ph = phi i32 [ 10036, %if.then50.err_crit_edge ], [ 22, %if.end35.err_crit_edge ], [ 22, %lor.lhs.false.err_crit_edge ], [ 22, %if.end28.err_crit_edge ], [ 22, %if.end24.err_crit_edge ], [ 10036, %for.body.err_crit_edge ]
  %30 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %devs, align 4
  tail call void @kfree(ptr noundef %31) #9
  br label %out

out:                                              ; preds = %err, %if.end7.i.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %status.2 = phi i32 [ 0, %if.end.out_crit_edge ], [ %status.1.ph, %err ], [ 10036, %entry.out_crit_edge ], [ 10036, %if.end4.out_crit_edge ], [ 10008, %if.end7.i.out_crit_edge ]
  %devs101 = getelementptr inbounds %struct.cb_devicenotifyargs, ptr %argp, i32 0, i32 1
  %32 = ptrtoint ptr %devs101 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %devs101, align 4
  %33 = ptrtoint ptr %argp to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %argp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %34 = load i32, ptr @nfs_debug, align 4
  %and104 = and i32 %34, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %out.cleanup122_crit_edge, label %do.end115, !prof !67

out.cleanup122_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup122

do.end115:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11, i32 noundef %status.2, i32 noundef 0) #12
  br label %cleanup122

cleanup122:                                       ; preds = %do.end115, %out.cleanup122_crit_edge, %do.end93, %for.end.cleanup122_crit_edge
  %retval.0 = phi i32 [ 0, %do.end93 ], [ 0, %for.end.cleanup122_crit_edge ], [ %status.2, %do.end115 ], [ %status.2, %out.cleanup122_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_callback_offload(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @decode_offload_args(ptr nocapture noundef readnone %rqstp, ptr noundef %xdr, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #9
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !64

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  %conv.i = trunc i32 %1 to i16
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv.i, ptr %data, align 2
  %conv3.i = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %conv3.i)
  %cmp4.i = icmp ugt i32 %conv3.i, 128
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %call10.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %conv3.i) #9
  %cmp11.i = icmp eq ptr %call10.i, null
  br i1 %cmp11.i, label %if.end7.i.cleanup_crit_edge, label %if.end, !prof !64

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end7.i
  %data.i = getelementptr inbounds %struct.nfs_fh, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %data, align 2
  %conv22.i = zext i16 %4 to i32
  %5 = call ptr @memcpy(ptr %data.i, ptr %call10.i, i32 %conv22.i)
  %arrayidx25.i = getelementptr %struct.nfs_fh, ptr %data, i32 0, i32 1, i32 %conv22.i
  %sub.i = sub nsw i32 128, %conv22.i
  %6 = call ptr @memset(ptr %arrayidx25.i, i32 0, i32 %sub.i)
  %call.i70 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 16) #9
  %cmp.i71 = icmp eq ptr %call.i70, null
  br i1 %cmp.i71, label %if.end.cleanup_crit_edge, label %if.end11, !prof !64

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %coa_stateid = getelementptr inbounds %struct.cb_offloadargs, ptr %data, i32 0, i32 1
  %7 = call ptr @memcpy(ptr %coa_stateid, ptr %call.i70, i32 16)
  %call12 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #9
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end23, !prof !64

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end11
  %8 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call12, align 4
  %error = getelementptr inbounds %struct.cb_offloadargs, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool25.not = icmp eq i32 %9, 0
  br i1 %tobool25.not, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end23
  %call.i74 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #9
  %tobool.not.i = icmp eq ptr %call.i74, null
  br i1 %tobool.not.i, label %if.then26.cleanup_crit_edge, label %if.end.i75, !prof !64

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i75:                                       ; preds = %if.then26
  %call4.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 12) #9
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end.i75.cleanup_crit_edge, label %if.end15.i, !prof !64

if.end.i75.cleanup_crit_edge:                     ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15.i:                                       ; preds = %if.end.i75
  %wr_count.i = getelementptr inbounds %struct.cb_offloadargs, ptr %data, i32 0, i32 3
  %11 = ptrtoint ptr %call4.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %call4.i, align 1
  %13 = ptrtoint ptr %wr_count.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %wr_count.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %call4.i, i32 2
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i, align 4
  %committed.i = getelementptr inbounds %struct.cb_offloadargs, ptr %data, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %committed.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %committed.i, align 8
  %call18.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #9
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.end15.i.cleanup_crit_edge, label %decode_write_response.exit, !prof !64

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

decode_write_response.exit:                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %wr_writeverf.i = getelementptr inbounds %struct.cb_offloadargs, ptr %data, i32 0, i32 4
  %17 = ptrtoint ptr %call18.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %call18.i, align 4
  %19 = ptrtoint ptr %wr_writeverf.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %wr_writeverf.i, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end23
  %call37 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #9
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.else.cleanup_crit_edge, label %if.end48, !prof !64

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %wr_count = getelementptr inbounds %struct.cb_offloadargs, ptr %data, i32 0, i32 3
  %20 = ptrtoint ptr %call37 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %call37, align 1
  %22 = ptrtoint ptr %wr_count to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %wr_count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.else.cleanup_crit_edge, %decode_write_response.exit, %if.end15.i.cleanup_crit_edge, %if.end.i75.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10018, %if.else.cleanup_crit_edge ], [ 10018, %if.end11.cleanup_crit_edge ], [ 10018, %if.end.cleanup_crit_edge ], [ 0, %decode_write_response.exit ], [ 0, %if.end48 ], [ 10018, %if.end7.i.cleanup_crit_edge ], [ 10001, %if.end.i.cleanup_crit_edge ], [ 10018, %entry.cleanup_crit_edge ], [ 10018, %if.end15.i.cleanup_crit_edge ], [ 10018, %if.end.i75.cleanup_crit_edge ], [ 10018, %if.then26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_free_slot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !38, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53}
!llvm.named.register.sp = !{!54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @nfs4_callback_version1, !1, !"nfs4_callback_version1", i1 false, i1 false}
!1 = !{!"../fs/nfs/callback_xdr.c", i32 1079, i32 26}
!2 = !{ptr @nfs4_callback_version4, !3, !"nfs4_callback_version4", i1 false, i1 false}
!3 = !{!"../fs/nfs/callback_xdr.c", i32 1091, i32 26}
!4 = !{ptr @nfs4_callback_count1, !5, !"nfs4_callback_count1", i1 false, i1 false}
!5 = !{!"../fs/nfs/callback_xdr.c", i32 1078, i32 21}
!6 = !{ptr @nfs4_callback_count4, !7, !"nfs4_callback_count4", i1 false, i1 false}
!7 = !{!"../fs/nfs/callback_xdr.c", i32 1090, i32 21}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/nfs/callback_xdr.c", i32 1066, i32 14}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nfs/callback_xdr.c", i32 1074, i32 14}
!12 = !{ptr @nfs4_callback_procedures1, !13, !"nfs4_callback_procedures1", i1 false, i1 false}
!13 = !{!"../fs/nfs/callback_xdr.c", i32 1061, i32 35}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/nfs/callback_xdr.c", i32 981, i32 2}
!16 = !{ptr @nfs4_callback_compound._rs, !15, !"_rs", i1 false, i1 false}
!17 = !{ptr @__func__.nfs4_callback_compound, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nfs4_callback_compound._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @nfs4_callback_compound._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @decode_compound_hdr_arg._rs, !23, !"_rs", i1 false, i1 false}
!23 = !{!"../fs/nfs/callback_xdr.c", i32 157, i32 3}
!24 = !{ptr @__func__.decode_compound_hdr_arg, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @decode_compound_hdr_arg._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @decode_compound_hdr_arg._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../fs/nfs/nfs4trace.h", i32 490, i32 1}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!32 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../fs/nfs/nfs4trace.h", i32 491, i32 1}
!38 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!39 = !{ptr @callback_ops, !40, !"callback_ops", i1 false, i1 false}
!40 = !{!"../fs/nfs/callback_xdr.c", i32 1001, i32 27}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/nfs/callback_xdr.c", i32 331, i32 3}
!43 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @decode_devicenotify_args._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @decode_devicenotify_args._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/nfs/callback_xdr.c", i32 336, i32 2}
!48 = !{ptr @decode_devicenotify_args._entry.12, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @decode_devicenotify_args._entry_ptr.14, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/nfs/callback_xdr.c", i32 343, i32 2}
!52 = !{ptr @decode_devicenotify_args._entry.15, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @decode_devicenotify_args._entry_ptr.17, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{!"sp"}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{!"branch_weights", i32 4001, i32 4000000}
!66 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 2148717382, i64 2148717387, i64 2148717400, i64 2148717444, i64 2148717478, i64 2148717499}
!69 = !{i64 2158257914}
!70 = !{i64 2158258129}
!71 = !{i64 2149398492}
!72 = !{i64 2149399528}
!73 = !{i64 2158274272}
!74 = !{i64 2158274491}
