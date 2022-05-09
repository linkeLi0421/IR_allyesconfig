; ModuleID = '/llk/IR_all_yes/net/sunrpc/xprtrdma/transport.c_pt.bc'
source_filename = "../net/sunrpc/xprtrdma/transport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xprt_class = type { %struct.list_head, i32, ptr, ptr, [32 x i8], [0 x ptr] }
%struct.list_head = type { ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%struct.rpc_xprt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.109 }
%struct.atomic_t = type { i32 }
%union.anon.109 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.131, ptr, ptr, [6 x ptr], ptr, %struct.callback_head, ptr, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.127 }
%union.anon.127 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rb_root = type { ptr }
%struct.anon.131 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.62 }
%union.anon.62 = type { [4 x i32] }
%struct.rpcrdma_xprt = type { %struct.rpc_xprt, ptr, %struct.rpcrdma_buffer, %struct.delayed_work, %struct.rpc_timeout, %struct.rpcrdma_stats }
%struct.rpcrdma_buffer = type { %struct.spinlock, %struct.list_head, %struct.list_head, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.llist_head, i32, i32, i32, i32, %struct.work_struct }
%struct.llist_head = type { ptr }
%struct.rpcrdma_stats = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.xprt_create = type { i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.rpcrdma_req = type { %struct.list_head, %struct.rpc_rqst, ptr, %struct.xdr_stream, %struct.xdr_buf, %struct.ib_send_wr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.kref, %struct.list_head, %struct.list_head, [260 x %struct.rpcrdma_mr_seg] }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.126, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.126 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.167, ptr, i32, i32, i32, %union.anon.168 }
%union.anon.167 = type { i64 }
%union.anon.168 = type { i32 }
%struct.rpcrdma_mr_seg = type { i32, ptr, i64 }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.2, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.2 = type { %struct.work_struct }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.rpcrdma_ep = type { %struct.kref, ptr, ptr, i32, i32, ptr, i32, %struct.completion, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.ib_qp_init_attr, %struct.wait_queue_head, ptr, %struct.rpcrdma_connect_private, %struct.rdma_conn_param, i32, i32, i32, i32, %struct.atomic_t, [4 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rpcrdma_connect_private = type { i32, i8, i8, i8, i8 }
%struct.rdma_conn_param = type { ptr, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.rpcrdma_regbuf = type { %struct.ib_sge, ptr, i32, ptr }
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@xprt_rdma_max_inline_read = dso_local global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@xprt_rdma_max_inline_write = dso_local global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@xprt_rdma_memreg_strategy = dso_local global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@xprt_rdma_format_addresses._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013rpcrdma: Unrecognized address family\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xprt_rdma_format_addresses\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/sunrpc/xprtrdma/transport.c\00", [32 x i8] zeroinitializer }, align 32
@xprt_rdma_format_addresses._entry_ptr = internal global ptr @xprt_rdma_format_addresses._entry, section ".printk_index", align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%4hx\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rdma\00", [27 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\09xprt:\09rdma \00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%u %lu %lu %lu %ld %lu %lu %lu %llu %llu \00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%lu %lu %lu %llu %llu %llu %llu %lu %lu %lu %lu \00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%lu %lu %lu %lu %lu %lu\0A\00", [39 x i8] zeroinitializer }, align 32
@sunrpc_table_header = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@xprt_rdma_bc = external dso_local global %struct.xprt_class, align 4
@sunrpc_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.21, ptr null, i32 0, i16 365, ptr @xr_tunables_table, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@xprt_rdma_pad_optimize = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%08x\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pi6\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rdma6\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@xprt_rdma = internal global { { %struct.list_head, i32, ptr, ptr, [32 x i8], [3 x ptr] }, [32 x i8] } { { %struct.list_head, i32, ptr, ptr, [32 x i8], [3 x ptr] } { %struct.list_head { ptr @xprt_rdma, ptr @xprt_rdma }, i32 256, ptr @xprt_setup_rdma, ptr null, [32 x i8] c"rdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [3 x ptr] [ptr @.str.5, ptr @.str.12, ptr @.str.13] }, [32 x i8] zeroinitializer }, align 32
@xprt_rdma_slot_table_entries = internal global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@xprt_rdma_default_timeout = internal constant { %struct.rpc_timeout, [44 x i8] } { %struct.rpc_timeout { i32 6000, i32 6000, i32 0, i32 0, i8 0 }, [44 x i8] zeroinitializer }, align 32
@xprt_rdma_procs = internal constant { %struct.rpc_xprt_ops, [52 x i8] } { %struct.rpc_xprt_ops { ptr null, ptr @xprt_reserve_xprt_cong, ptr @xprt_release_xprt_cong, ptr @xprt_rdma_alloc_slot, ptr @xprt_rdma_free_slot, ptr @rpcb_getport_async, ptr @xprt_rdma_set_port, ptr @xprt_rdma_connect, ptr @xprt_rdma_allocate, ptr @xprt_rdma_free, ptr null, ptr @xprt_rdma_send_request, ptr @xprt_wait_for_reply_request_def, ptr @xprt_rdma_timer, ptr @xprt_release_rqst_cong, ptr @xprt_rdma_close, ptr @xprt_rdma_destroy, ptr @xprt_rdma_set_connect_timeout, ptr @xprt_rdma_print_stats, ptr @xprt_rdma_enable_swap, ptr @xprt_rdma_disable_swap, ptr @xprt_rdma_inject_disconnect, ptr @xprt_rdma_bc_setup, ptr @xprt_rdma_bc_maxpayload, ptr @xprt_rdma_bc_max_slots, ptr @xprt_rdma_bc_free_rqst, ptr @xprt_rdma_bc_destroy }, [52 x i8] zeroinitializer }, align 32
@xprt_setup_rdma.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"(work_completion)(&(&new_xprt->rx_connect_worker)->work)\00", [39 x i8] zeroinitializer }, align 32
@xprt_setup_rdma.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"&(&new_xprt->rx_connect_worker)->timer\00", [57 x i8] zeroinitializer }, align 32
@xprt_rdma_connect.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@xprtiod_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_xprtrdma_op_connect = external dso_local global %struct.tracepoint, align 4
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/trace/events/rpcrdma.h\00", [33 x i8] zeroinitializer }, align 32
@trace_xprtrdma_op_connect.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xprtrdma_mrs_zap = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_mrs_zap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_op_set_cto = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_op_set_cto.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_op_inject_dsc = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_op_inject_dsc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sunrpc\00", [25 x i8] zeroinitializer }, align 32
@xr_tunables_table = internal global { [7 x %struct.ctl_table], [36 x i8] } { [7 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.22, ptr @xprt_rdma_slot_table_entries, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_slot_table_size, ptr @max_slot_table_size }, %struct.ctl_table { ptr @.str.23, ptr @xprt_rdma_max_inline_read, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_inline_size, ptr @max_inline_size }, %struct.ctl_table { ptr @.str.24, ptr @xprt_rdma_max_inline_write, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_inline_size, ptr @max_inline_size }, %struct.ctl_table { ptr @.str.25, ptr @dummy, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @max_padding }, %struct.ctl_table { ptr @.str.26, ptr @xprt_rdma_memreg_strategy, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_memreg, ptr @max_memreg }, %struct.ctl_table { ptr @.str.27, ptr @xprt_rdma_pad_optimize, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rdma_slot_table_entries\00", [40 x i8] zeroinitializer }, align 32
@min_slot_table_size = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@max_slot_table_size = internal global { i32, [28 x i8] } { i32 16384, [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rdma_max_inline_read\00", [43 x i8] zeroinitializer }, align 32
@min_inline_size = internal global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@max_inline_size = internal global { i32, [28 x i8] } { i32 65536, [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rdma_max_inline_write\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rdma_inline_write_padding\00", [38 x i8] zeroinitializer }, align 32
@dummy = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sysctl_vals = external dso_local constant [0 x i32], align 4
@max_padding = internal global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rdma_memreg_strategy\00", [43 x i8] zeroinitializer }, align 32
@min_memreg = internal global { i32, [28 x i8] } zeroinitializer, align 32
@max_memreg = internal global { i32, [28 x i8] } { i32 6, [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rdma_pad_optimize\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.32 = private unnamed_addr constant [26 x i8] c"xprt_rdma_max_inline_read\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 68, i32 14 }
@___asan_gen_.35 = private unnamed_addr constant [27 x i8] c"xprt_rdma_max_inline_write\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 69, i32 14 }
@___asan_gen_.38 = private unnamed_addr constant [26 x i8] c"xprt_rdma_memreg_strategy\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 70, i32 14 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 193, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 200, i32 29 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 203, i32 29 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 206, i32 45 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 687, i32 16 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 688, i32 18 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 699, i32 18 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 711, i32 18 }
@___asan_gen_.74 = private unnamed_addr constant [20 x i8] c"sunrpc_table_header\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 85, i32 33 }
@___asan_gen_.77 = private unnamed_addr constant [13 x i8] c"sunrpc_table\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 143, i32 25 }
@___asan_gen_.80 = private unnamed_addr constant [23 x i8] c"xprt_rdma_pad_optimize\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 71, i32 5 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 162, i32 29 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 174, i32 29 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 177, i32 45 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 771, i32 32 }
@___asan_gen_.95 = private unnamed_addr constant [10 x i8] c"xprt_rdma\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 765, i32 26 }
@___asan_gen_.98 = private unnamed_addr constant [29 x i8] c"xprt_rdma_slot_table_entries\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 67, i32 21 }
@___asan_gen_.101 = private unnamed_addr constant [26 x i8] c"xprt_rdma_default_timeout\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 297, i32 33 }
@___asan_gen_.104 = private unnamed_addr constant [16 x i8] c"xprt_rdma_procs\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 735, i32 34 }
@___asan_gen_.113 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 363, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [34 x i8] c"../include/trace/events/rpcrdma.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 675, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 108, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 145, i32 15 }
@___asan_gen_.131 = private unnamed_addr constant [18 x i8] c"xr_tunables_table\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 87, i32 25 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 89, i32 15 }
@___asan_gen_.137 = private unnamed_addr constant [20 x i8] c"min_slot_table_size\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 76, i32 21 }
@___asan_gen_.140 = private unnamed_addr constant [20 x i8] c"max_slot_table_size\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 77, i32 21 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 98, i32 15 }
@___asan_gen_.146 = private unnamed_addr constant [16 x i8] c"min_inline_size\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 78, i32 21 }
@___asan_gen_.149 = private unnamed_addr constant [16 x i8] c"max_inline_size\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 79, i32 21 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 107, i32 15 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 116, i32 15 }
@___asan_gen_.158 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 83, i32 21 }
@___asan_gen_.161 = private unnamed_addr constant [12 x i8] c"max_padding\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 80, i32 21 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 125, i32 15 }
@___asan_gen_.167 = private unnamed_addr constant [11 x i8] c"min_memreg\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 81, i32 21 }
@___asan_gen_.170 = private unnamed_addr constant [11 x i8] c"max_memreg\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 82, i32 21 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [35 x i8] c"../net/sunrpc/xprtrdma/transport.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 134, i32 15 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @xprt_rdma_format_addresses._entry, ptr @xprt_rdma_format_addresses._entry_ptr, ptr @xprt_rdma_max_inline_read, ptr @xprt_rdma_max_inline_write, ptr @xprt_rdma_memreg_strategy, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @sunrpc_table_header, ptr @sunrpc_table, ptr @xprt_rdma_pad_optimize, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @xprt_rdma, ptr @xprt_rdma_slot_table_entries, ptr @xprt_rdma_default_timeout, ptr @xprt_rdma_procs, ptr @xprt_setup_rdma.__key, ptr @.str.15, ptr @xprt_setup_rdma.__key.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @xr_tunables_table, ptr @.str.22, ptr @min_slot_table_size, ptr @max_slot_table_size, ptr @.str.23, ptr @min_inline_size, ptr @max_inline_size, ptr @.str.24, ptr @.str.25, ptr @dummy, ptr @max_padding, ptr @.str.26, ptr @min_memreg, ptr @max_memreg, ptr @.str.27], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_rdma_max_inline_read to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_rdma_max_inline_write to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_rdma_memreg_strategy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_rdma_format_addresses._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunrpc_table_header to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunrpc_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_rdma_pad_optimize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_rdma to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_rdma_slot_table_entries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_rdma_default_timeout to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_rdma_procs to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_setup_rdma.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_setup_rdma.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xr_tunables_table to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_slot_table_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_slot_table_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_inline_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_inline_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_padding to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_memreg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_memreg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xprt_rdma_format_addresses(ptr nocapture noundef writeonly %xprt, ptr noundef %sap) local_unnamed_addr #0 align 64 {
entry:
  %buf.i33 = alloca [40 x i8], align 1
  %buf.i = alloca [20 x i8], align 1
  %buf = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #9
  %0 = call ptr @memset(ptr %buf, i32 255, i32 128)
  %1 = ptrtoint ptr %sap to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %sap, align 2
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i16 %2, label %do.end [
    i16 2, label %sw.bb
    i16 10, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf.i) #9
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %sap, i32 0, i32 2
  %4 = call ptr @memset(ptr %buf.i, i32 255, i32 20)
  %5 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sin_addr.i, align 4
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 20, ptr noundef nonnull @.str.10, i32 noundef %6) #9
  %call2.i = call noalias ptr @kstrdup(ptr noundef nonnull %buf.i, i32 noundef 3264) #9
  %arrayidx.i = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 3
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2.i, ptr %arrayidx.i, align 4
  %arrayidx4.i = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 5
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.5, ptr %arrayidx4.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf.i) #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buf.i33) #9
  %9 = call ptr @memset(ptr %buf.i33, i32 255, i32 40)
  %sin6_addr.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sap, i32 0, i32 3
  %call.i34 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i33, i32 noundef 40, ptr noundef nonnull @.str.11, ptr noundef %sin6_addr.i) #9
  %call2.i35 = call noalias ptr @kstrdup(ptr noundef nonnull %buf.i33, i32 noundef 3264) #9
  %arrayidx.i36 = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 3
  %10 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2.i35, ptr %arrayidx.i36, align 4
  %arrayidx4.i37 = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 5
  %11 = ptrtoint ptr %arrayidx4.i37 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.12, ptr %arrayidx4.i37, align 4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buf.i33) #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %call2 = call i32 @rpc_ntop(ptr noundef %sap, ptr noundef nonnull %buf, i32 noundef 128) #9
  %call4 = call noalias ptr @kstrdup(ptr noundef nonnull %buf, i32 noundef 3264) #9
  %address_strings = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 51
  %12 = ptrtoint ptr %address_strings to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call4, ptr %address_strings, align 8
  %13 = ptrtoint ptr %sap to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sap, align 2
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %14, label %sw.epilog.rpc_get_port.exit_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb1.i
  ]

sw.epilog.rpc_get_port.exit_crit_edge:            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %rpc_get_port.exit

sw.bb.i:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %sap, i32 0, i32 1
  br label %return.sink.split.i

sw.bb1.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sap, i32 0, i32 1
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb1.i, %sw.bb.i
  %sin6_port.sink.i = phi ptr [ %sin6_port.i, %sw.bb1.i ], [ %sin_port.i, %sw.bb.i ]
  %16 = ptrtoint ptr %sin6_port.sink.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sin6_port.sink.i, align 2
  %phi.cast = zext i16 %17 to i32
  br label %rpc_get_port.exit

rpc_get_port.exit:                                ; preds = %return.sink.split.i, %sw.epilog.rpc_get_port.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.epilog.rpc_get_port.exit_crit_edge ], [ %phi.cast, %return.sink.split.i ]
  %call8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 128, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i)
  %call10 = call noalias ptr @kstrdup(ptr noundef nonnull %buf, i32 noundef 3264) #9
  %arrayidx12 = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 1
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call10, ptr %arrayidx12, align 4
  %19 = ptrtoint ptr %sap to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sap, align 2
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.29)
  switch i16 %20, label %rpc_get_port.exit.rpc_get_port.exit45_crit_edge [
    i16 2, label %sw.bb.i39
    i16 10, label %sw.bb1.i41
  ]

rpc_get_port.exit.rpc_get_port.exit45_crit_edge:  ; preds = %rpc_get_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rpc_get_port.exit45

sw.bb.i39:                                        ; preds = %rpc_get_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sin_port.i38 = getelementptr inbounds %struct.sockaddr_in, ptr %sap, i32 0, i32 1
  br label %return.sink.split.i43

sw.bb1.i41:                                       ; preds = %rpc_get_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sin6_port.i40 = getelementptr inbounds %struct.sockaddr_in6, ptr %sap, i32 0, i32 1
  br label %return.sink.split.i43

return.sink.split.i43:                            ; preds = %sw.bb1.i41, %sw.bb.i39
  %sin6_port.sink.i42 = phi ptr [ %sin6_port.i40, %sw.bb1.i41 ], [ %sin_port.i38, %sw.bb.i39 ]
  %22 = ptrtoint ptr %sin6_port.sink.i42 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sin6_port.sink.i42, align 2
  %phi.cast46 = zext i16 %23 to i32
  br label %rpc_get_port.exit45

rpc_get_port.exit45:                              ; preds = %return.sink.split.i43, %rpc_get_port.exit.rpc_get_port.exit45_crit_edge
  %retval.0.i44 = phi i32 [ 0, %rpc_get_port.exit.rpc_get_port.exit45_crit_edge ], [ %phi.cast46, %return.sink.split.i43 ]
  %call16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 128, ptr noundef nonnull @.str.4, i32 noundef %retval.0.i44)
  %call18 = call noalias ptr @kstrdup(ptr noundef nonnull %buf, i32 noundef 3264) #9
  %arrayidx20 = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 4
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call18, ptr %arrayidx20, align 8
  %arrayidx22 = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 2
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.5, ptr %arrayidx22, align 8
  br label %cleanup

cleanup:                                          ; preds = %rpc_get_port.exit45, %do.end
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_ntop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xprt_rdma_free_addresses(ptr nocapture noundef readonly %xprt) local_unnamed_addr #0 align 64 {
for.inc.5:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %1) #9
  %arrayidx.1 = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  tail call void @kfree(ptr noundef %3) #9
  %arrayidx.3 = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 3
  %4 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.3, align 4
  tail call void @kfree(ptr noundef %5) #9
  %arrayidx.4 = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 4
  %6 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.4, align 4
  tail call void @kfree(ptr noundef %7) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xprt_rdma_close(ptr noundef %xprt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rpcrdma_xprt_disconnect(ptr noundef %xprt) #9
  %reestablish_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 24
  %0 = ptrtoint ptr %reestablish_timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reestablish_timeout, align 4
  %connect_cookie = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 25
  %1 = ptrtoint ptr %connect_cookie to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %connect_cookie, align 8
  %inc = add i32 %2, 1
  store i32 %inc, ptr %connect_cookie, align 8
  tail call void @xprt_disconnect_done(ptr noundef %xprt) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcrdma_xprt_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_disconnect_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xprt_rdma_print_stats(ptr noundef %xprt, ptr noundef %seq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 18
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %last_used = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 28
  %4 = ptrtoint ptr %last_used to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_used, align 8
  %sub = sub i32 %3, %5
  %div = sdiv i32 %sub, 100
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %idle_time.0 = phi i32 [ %div, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.6) #9
  %stat = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48
  %6 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stat, align 8
  %connect_count = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 1
  %8 = ptrtoint ptr %connect_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %connect_count, align 4
  %connect_time = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 3
  %10 = ptrtoint ptr %connect_time to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %connect_time, align 4
  %div3 = udiv i32 %11, 100
  %sends = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 4
  %12 = ptrtoint ptr %sends to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sends, align 8
  %recvs = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 5
  %14 = ptrtoint ptr %recvs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %recvs, align 4
  %bad_xids = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 6
  %16 = ptrtoint ptr %bad_xids to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bad_xids, align 8
  %req_u = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 8
  %18 = ptrtoint ptr %req_u to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %req_u, align 8
  %bklog_u = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 48, i32 9
  %20 = ptrtoint ptr %bklog_u to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %bklog_u, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef %7, i32 noundef %9, i32 noundef %div3, i32 noundef %idle_time.0, i32 noundef %13, i32 noundef %15, i32 noundef %17, i64 noundef %19, i64 noundef %21) #9
  %rx_stats = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 5
  %22 = ptrtoint ptr %rx_stats to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_stats, align 8
  %write_chunk_count = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %write_chunk_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %write_chunk_count, align 4
  %reply_chunk_count = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 5, i32 2
  %26 = ptrtoint ptr %reply_chunk_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reply_chunk_count, align 8
  %total_rdma_request = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 5, i32 3
  %28 = ptrtoint ptr %total_rdma_request to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %total_rdma_request, align 8
  %total_rdma_reply = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 5, i32 12
  %30 = ptrtoint ptr %total_rdma_reply to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %total_rdma_reply, align 8
  %pullup_copy_count = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 5, i32 4
  %32 = ptrtoint ptr %pullup_copy_count to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %pullup_copy_count, align 8
  %fixup_copy_count = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 5, i32 13
  %34 = ptrtoint ptr %fixup_copy_count to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %fixup_copy_count, align 8
  %hardway_register_count = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 5, i32 5
  %36 = ptrtoint ptr %hardway_register_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hardway_register_count, align 8
  %failed_marshal_count = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 5, i32 6
  %38 = ptrtoint ptr %failed_marshal_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %failed_marshal_count, align 4
  %bad_reply_count = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 5, i32 7
  %40 = ptrtoint ptr %bad_reply_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bad_reply_count, align 8
  %nomsg_call_count = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 5, i32 16
  %42 = ptrtoint ptr %nomsg_call_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nomsg_call_count, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.8, i32 noundef %23, i32 noundef %25, i32 noundef %27, i64 noundef %29, i64 noundef %31, i64 noundef %33, i64 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43) #9
  %mrs_recycled = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 5, i32 8
  %44 = ptrtoint ptr %mrs_recycled to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mrs_recycled, align 4
  %mrs_orphaned = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 5, i32 9
  %46 = ptrtoint ptr %mrs_orphaned to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mrs_orphaned, align 8
  %mrs_allocated = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 5, i32 10
  %48 = ptrtoint ptr %mrs_allocated to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mrs_allocated, align 4
  %local_inv_needed = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 5, i32 15
  %50 = ptrtoint ptr %local_inv_needed to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %local_inv_needed, align 4
  %empty_sendctx_q = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 5, i32 11
  %52 = ptrtoint ptr %empty_sendctx_q to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %empty_sendctx_q, align 8
  %reply_waits_for_send = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 5, i32 14
  %54 = ptrtoint ptr %reply_waits_for_send to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %reply_waits_for_send, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xprt_rdma_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sunrpc_table_header, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unregister_sysctl_table(ptr noundef nonnull %0) #9
  store ptr null, ptr @sunrpc_table_header, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @xprt_unregister_transport(ptr noundef nonnull @xprt_rdma) #9
  %call1 = tail call i32 @xprt_unregister_transport(ptr noundef nonnull @xprt_rdma_bc) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sysctl_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_unregister_transport(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xprt_rdma_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xprt_register_transport(ptr noundef nonnull @xprt_rdma) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @xprt_register_transport(ptr noundef nonnull @xprt_rdma_bc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @xprt_unregister_transport(ptr noundef nonnull @xprt_rdma) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %0 = load ptr, ptr @sunrpc_table_header, align 4
  %tobool6.not = icmp eq ptr %0, null
  br i1 %tobool6.not, label %if.then7, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call ptr @register_sysctl_table(ptr noundef nonnull @sunrpc_table) #9
  store ptr %call8, ptr @sunrpc_table_header, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end5.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_register_transport(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xprt_setup_rdma(ptr nocapture noundef readonly %args) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %addrlen = getelementptr inbounds %struct.xprt_create, ptr %args, i32 0, i32 4
  %0 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addrlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %1)
  %cmp = icmp ugt i32 %1, 128
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @try_module_get(ptr noundef null) #9
  br i1 %call1, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %net = getelementptr inbounds %struct.xprt_create, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %4 = load i32, ptr @xprt_rdma_slot_table_entries, align 4
  %call5 = tail call ptr @xprt_alloc(ptr noundef %3, i32 noundef 1864, i32 noundef 0, i32 noundef %4) #9
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @module_put(ptr noundef null) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call5, i32 0, i32 3
  %5 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @xprt_rdma_default_timeout, ptr %timeout, align 4
  %connect_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call5, i32 0, i32 30
  %6 = ptrtoint ptr %connect_timeout to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6000, ptr %connect_timeout, align 8
  %max_reconnect_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call5, i32 0, i32 31
  %7 = ptrtoint ptr %max_reconnect_timeout to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6000, ptr %max_reconnect_timeout, align 4
  %bind_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call5, i32 0, i32 23
  %8 = ptrtoint ptr %bind_timeout to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6000, ptr %bind_timeout, align 8
  %reestablish_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call5, i32 0, i32 24
  %9 = ptrtoint ptr %reestablish_timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 500, ptr %reestablish_timeout, align 4
  %idle_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call5, i32 0, i32 29
  %10 = ptrtoint ptr %idle_timeout to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 30000, ptr %idle_timeout, align 4
  %resvport = getelementptr inbounds %struct.rpc_xprt, ptr %call5, i32 0, i32 19
  %11 = ptrtoint ptr %resvport to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %resvport, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %resvport, align 4
  %ops = getelementptr inbounds %struct.rpc_xprt, ptr %call5, i32 0, i32 1
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @xprt_rdma_procs, ptr %ops, align 4
  %dstaddr = getelementptr inbounds %struct.xprt_create, ptr %args, i32 0, i32 3
  %13 = ptrtoint ptr %dstaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dstaddr, align 4
  %prot = getelementptr inbounds %struct.rpc_xprt, ptr %call5, i32 0, i32 6
  %15 = ptrtoint ptr %prot to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 6, ptr %prot, align 4
  %xprt_class = getelementptr inbounds %struct.rpc_xprt, ptr %call5, i32 0, i32 54
  %16 = ptrtoint ptr %xprt_class to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @xprt_rdma, ptr %xprt_class, align 4
  %17 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addrlen, align 4
  %addrlen12 = getelementptr inbounds %struct.rpc_xprt, ptr %call5, i32 0, i32 5
  %19 = ptrtoint ptr %addrlen12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %addrlen12, align 8
  %addr = getelementptr inbounds %struct.rpc_xprt, ptr %call5, i32 0, i32 4
  %20 = call ptr @memcpy(ptr %addr, ptr %14, i32 %18)
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %14, align 2
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %22, label %if.end8.if.end17_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb1.i
  ]

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

sw.bb.i:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %14, i32 0, i32 1
  br label %rpc_get_port.exit

sw.bb1.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %14, i32 0, i32 1
  br label %rpc_get_port.exit

rpc_get_port.exit:                                ; preds = %sw.bb1.i, %sw.bb.i
  %sin6_port.sink.i = phi ptr [ %sin6_port.i, %sw.bb1.i ], [ %sin_port.i, %sw.bb.i ]
  %24 = ptrtoint ptr %sin6_port.sink.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sin6_port.sink.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool15.not = icmp eq i16 %25, 0
  br i1 %tobool15.not, label %rpc_get_port.exit.if.end17_crit_edge, label %if.then16

rpc_get_port.exit.if.end17_crit_edge:             ; preds = %rpc_get_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %rpc_get_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  %state.i = getelementptr inbounds %struct.rpc_xprt, ptr %call5, i32 0, i32 18
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state.i) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %rpc_get_port.exit.if.end17_crit_edge, %if.end8.if.end17_crit_edge
  tail call void @xprt_rdma_format_addresses(ptr noundef nonnull %call5, ptr noundef %14)
  %call18 = tail call i32 @rpcrdma_buffer_create(ptr noundef nonnull %call5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.body23, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.rpc_xprt, ptr %call5, i32 0, i32 51, i32 0
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %27) #9
  %arrayidx.1.i = getelementptr %struct.rpc_xprt, ptr %call5, i32 0, i32 51, i32 1
  %28 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @kfree(ptr noundef %29) #9
  %arrayidx.3.i = getelementptr %struct.rpc_xprt, ptr %call5, i32 0, i32 51, i32 3
  %30 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.3.i, align 4
  tail call void @kfree(ptr noundef %31) #9
  %arrayidx.4.i = getelementptr %struct.rpc_xprt, ptr %call5, i32 0, i32 51, i32 4
  %32 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.4.i, align 4
  tail call void @kfree(ptr noundef %33) #9
  tail call void @xprt_free(ptr noundef nonnull %call5) #9
  tail call void @module_put(ptr noundef null) #9
  %34 = inttoptr i32 %call18 to ptr
  br label %cleanup

do.body23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %rx_connect_worker = getelementptr inbounds %struct.rpcrdma_xprt, ptr %call5, i32 0, i32 3
  tail call void @__init_work(ptr noundef %rx_connect_worker, i32 noundef 0) #9
  %35 = ptrtoint ptr %rx_connect_worker to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -64, ptr %rx_connect_worker, align 8
  %lockdep_map = getelementptr inbounds %struct.rpcrdma_xprt, ptr %call5, i32 0, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.15, ptr noundef nonnull @xprt_setup_rdma.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry30 = getelementptr inbounds %struct.rpcrdma_xprt, ptr %call5, i32 0, i32 3, i32 0, i32 1
  %36 = ptrtoint ptr %entry30 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %entry30, ptr %entry30, align 4
  %prev.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %call5, i32 0, i32 3, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %entry30, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rpcrdma_xprt, ptr %call5, i32 0, i32 3, i32 0, i32 2
  %38 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @xprt_rdma_connect_worker, ptr %func, align 4
  %timer = getelementptr inbounds %struct.rpcrdma_xprt, ptr %call5, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.17, ptr noundef nonnull @xprt_setup_rdma.__key.16) #9
  %max_payload = getelementptr inbounds %struct.rpc_xprt, ptr %call5, i32 0, i32 9
  %39 = ptrtoint ptr %max_payload to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1052672, ptr %max_payload, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body23, %if.then20, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %34, %if.then20 ], [ %call5, %do.body23 ], [ inttoptr (i32 -12 to ptr), %if.then6 ], [ inttoptr (i32 -9 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcrdma_buffer_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xprt_rdma_connect_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1648
  %call = tail call i32 @rpcrdma_xprt_connect(ptr noundef %add.ptr) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !114
  %state.i = getelementptr i8, ptr %work, i32 -664
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %connect_cookie = getelementptr i8, ptr %work, i32 -632
  %0 = ptrtoint ptr %connect_cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connect_cookie, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %connect_cookie, align 8
  %connect_count = getelementptr i8, ptr %work, i32 -284
  %2 = ptrtoint ptr %connect_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %connect_count, align 4
  %inc1 = add i32 %3, 1
  store i32 %inc1, ptr %connect_count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %connect_start = getelementptr i8, ptr %work, i32 -280
  %5 = ptrtoint ptr %connect_start to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %connect_start, align 8
  %sub = sub i32 %4, %6
  %connect_time = getelementptr i8, ptr %work, i32 -276
  %7 = ptrtoint ptr %connect_time to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %connect_time, align 4
  %add = add i32 %sub, %8
  store i32 %add, ptr %connect_time, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rpcrdma_xprt_disconnect(ptr noundef %add.ptr) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rc.0 = phi i32 [ %call, %if.else ], [ -11, %if.then ]
  tail call void @xprt_unlock_connect(ptr noundef %add.ptr, ptr noundef %add.ptr) #9
  tail call void @xprt_wake_pending_tasks(ptr noundef %add.ptr, i32 noundef %rc.0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_reserve_xprt_cong(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_release_xprt_cong(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xprt_rdma_alloc_slot(ptr noundef %xprt, ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_buf = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 2
  %call = tail call ptr @rpcrdma_buffer_get(ptr noundef %rx_buf) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %out_sleep, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rl_slot = getelementptr inbounds %struct.rpcrdma_req, ptr %call, i32 0, i32 1
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %0 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %rl_slot, ptr %tk_rqstp, align 8
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %1 = ptrtoint ptr %tk_status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %tk_status, align 4
  br label %cleanup

out_sleep:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tk_status1 = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %2 = ptrtoint ptr %tk_status1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -11, ptr %tk_status1, align 4
  tail call void @xprt_add_backlog(ptr noundef %xprt, ptr noundef %task) #9
  br label %cleanup

cleanup:                                          ; preds = %out_sleep, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xprt_rdma_free_slot(ptr noundef %xprt, ptr noundef %rqst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_buf = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 2
  %add.ptr.i = getelementptr i8, ptr %rqst, i32 -8
  tail call void @rpcrdma_reply_put(ptr noundef %rx_buf, ptr noundef %add.ptr.i) #9
  %call1 = tail call zeroext i1 @xprt_wake_up_backlog(ptr noundef %xprt, ptr noundef %rqst) #9
  br i1 %call1, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = call ptr @memset(ptr %rqst, i32 0, i32 288)
  tail call void @rpcrdma_buffer_put(ptr noundef %rx_buf, ptr noundef %add.ptr.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcb_getport_async(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xprt_rdma_set_port(ptr nocapture noundef %xprt, i16 noundef zeroext %port) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #9
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %buf, align 8
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %addr, align 2
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %2, label %entry.rpc_set_port.exit_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb1.i
  ]

entry.rpc_set_port.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rpc_set_port.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 1
  br label %sw.epilog.sink.split.i

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 1
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb1.i, %sw.bb.i
  %sin6_port.sink.i = phi ptr [ %sin6_port.i, %sw.bb1.i ], [ %sin_port.i, %sw.bb.i ]
  %4 = ptrtoint ptr %sin6_port.sink.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %port, ptr %sin6_port.sink.i, align 2
  br label %rpc_set_port.exit

rpc_set_port.exit:                                ; preds = %sw.epilog.sink.split.i, %entry.rpc_set_port.exit_crit_edge
  %arrayidx = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %6) #9
  %conv = zext i16 %port to i32
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 8, ptr noundef nonnull @.str.3, i32 noundef %conv)
  %call2 = call noalias ptr @kstrdup(ptr noundef nonnull %buf, i32 noundef 3264) #9
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 4
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx6, align 8
  call void @kfree(ptr noundef %9) #9
  %call9 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 8, ptr noundef nonnull @.str.4, i32 noundef %conv)
  %call11 = call noalias ptr @kstrdup(ptr noundef nonnull %buf, i32 noundef 3264) #9
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call11, ptr %arrayidx6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xprt_rdma_connect(ptr noundef %xprt, ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ep = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 1
  %0 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ep, align 8
  %call = tail call zeroext i1 @xprt_lock_connect(ptr noundef %xprt, ptr noundef %task, ptr noundef %xprt) #9
  br i1 %call, label %entry.if.end29_crit_edge, label %land.rhs

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b52 = load i1, ptr @xprt_rdma_connect.__already_done, align 1
  br i1 %.b52, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !116

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @xprt_rdma_connect.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 485, i32 noundef 9, ptr noundef null) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %tobool37.not = icmp eq ptr %1, null
  br i1 %tobool37.not, label %if.end29.if.end40_crit_edge, label %land.lhs.true

if.end29.if.end40_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end29
  %re_connect_status = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %re_connect_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %re_connect_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %land.lhs.true.if.end40_crit_edge, label %if.then38

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then38:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call39 = tail call i32 @xprt_reconnect_delay(ptr noundef %xprt) #9
  tail call void @xprt_reconnect_backoff(ptr noundef %xprt, i32 noundef 500) #9
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %land.lhs.true.if.end40_crit_edge, %if.end29.if.end40_crit_edge
  %delay.0 = phi i32 [ %call39, %if.then38 ], [ 0, %land.lhs.true.if.end40_crit_edge ], [ 0, %if.end29.if.end40_crit_edge ]
  tail call fastcc void @trace_xprtrdma_op_connect(ptr noundef %xprt, i32 noundef %delay.0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xprtiod_workqueue to i32))
  %4 = load ptr, ptr @xprtiod_workqueue, align 4
  %rx_connect_worker = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 3
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %rx_connect_worker, i32 noundef %delay.0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xprt_rdma_allocate(ptr nocapture noundef readonly %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %0 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tk_rqstp, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tk_flags = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 20
  %4 = ptrtoint ptr %tk_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tk_flags, align 4
  %6 = and i16 %5, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  %spec.store.select = select i1 %tobool.not, i32 11264, i32 141312
  %rl_sendbuf = getelementptr i8, ptr %1, i32 424
  %7 = ptrtoint ptr %rl_sendbuf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rl_sendbuf, align 8
  %rq_callsize = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %rq_callsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rq_callsize, align 4
  %length.i.i = getelementptr inbounds %struct.ib_sge, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp.i = icmp ult i32 %12, %10
  br i1 %cmp.i, label %if.then.i, label %entry.if.end3_crit_edge, !prof !117

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then.i:                                        ; preds = %entry
  %call2.i = tail call zeroext i1 @rpcrdma_regbuf_realloc(ptr noundef %8, i32 noundef %10, i32 noundef %spec.store.select) #9
  br i1 %call2.i, label %if.end.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %hardway_register_count.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %3, i32 0, i32 5, i32 5
  %13 = ptrtoint ptr %hardway_register_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hardway_register_count.i, align 8
  %add.i = add i32 %14, %10
  store i32 %add.i, ptr %hardway_register_count.i, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.end.i, %entry.if.end3_crit_edge
  %rl_recvbuf = getelementptr i8, ptr %1, i32 428
  %15 = ptrtoint ptr %rl_recvbuf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rl_recvbuf, align 4
  %rq_rcvsize = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 17
  %17 = ptrtoint ptr %rq_rcvsize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rq_rcvsize, align 4
  %length.i.i25 = getelementptr inbounds %struct.ib_sge, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %length.i.i25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.i.i25, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %18)
  %cmp.i26 = icmp ult i32 %20, %18
  br i1 %cmp.i26, label %if.then.i28, label %if.end3.if.end6_crit_edge, !prof !117

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then.i28:                                      ; preds = %if.end3
  %call2.i27 = tail call zeroext i1 @rpcrdma_regbuf_realloc(ptr noundef %16, i32 noundef %18, i32 noundef %spec.store.select) #9
  br i1 %call2.i27, label %if.end.i31, label %if.then.i28.cleanup_crit_edge

if.then.i28.cleanup_crit_edge:                    ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i31:                                       ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #11
  %hardway_register_count.i29 = getelementptr inbounds %struct.rpcrdma_xprt, ptr %3, i32 0, i32 5, i32 5
  %21 = ptrtoint ptr %hardway_register_count.i29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hardway_register_count.i29, align 8
  %add.i30 = add i32 %22, %18
  store i32 %add.i30, ptr %hardway_register_count.i29, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end.i31, %if.end3.if.end6_crit_edge
  %23 = ptrtoint ptr %rl_sendbuf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rl_sendbuf, align 8
  %rg_data.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %rg_data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rg_data.i, align 8
  %rq_buffer = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 14
  %27 = ptrtoint ptr %rq_buffer to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %rq_buffer, align 8
  %28 = ptrtoint ptr %rl_recvbuf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rl_recvbuf, align 4
  %rg_data.i34 = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %rg_data.i34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rg_data.i34, align 8
  %rq_rbuffer = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 16
  %32 = ptrtoint ptr %rq_rbuffer to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %rq_rbuffer, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.i28.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -12, %if.then.i.cleanup_crit_edge ], [ -12, %if.then.i28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xprt_rdma_free(ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %0 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tk_rqstp, align 8
  %rl_registered = getelementptr i8, ptr %1, i32 452
  %2 = ptrtoint ptr %rl_registered to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rl_registered, align 4
  %cmp.i.not = icmp eq ptr %3, %rl_registered
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then, !prof !116

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  tail call fastcc void @trace_xprtrdma_mrs_zap(ptr noundef %task)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void @frwr_unmap_sync(ptr noundef %5, ptr noundef %add.ptr.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xprt_rdma_send_request(ptr noundef %rqst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rqst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqst, align 8
  %add.ptr.i = getelementptr i8, ptr %rqst, i32 -8
  %rq_buffer = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 14
  %2 = ptrtoint ptr %rq_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_buffer, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !117

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @xprt_rdma_bc_send_reply(ptr noundef %rqst) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call zeroext i1 @xprt_request_get_cong(ptr noundef %1, ptr noundef %rqst) #9
  br i1 %call9, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %call12 = tail call i32 @rpcrdma_marshal_req(ptr noundef %1, ptr noundef %rqst) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %failed_marshal, label %if.end14

if.end14:                                         ; preds = %if.end11
  %rq_connect_cookie = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 26
  %7 = ptrtoint ptr %rq_connect_cookie to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rq_connect_cookie, align 4
  %connect_cookie = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 25
  %9 = ptrtoint ptr %connect_cookie to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %connect_cookie, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp15 = icmp eq i32 %8, %10
  br i1 %cmp15, label %if.end14.drop_connection_crit_edge, label %if.end17

if.end14.drop_connection_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_connection

if.end17:                                         ; preds = %if.end14
  %call18 = tail call i64 @ktime_get() #9
  %rq_xtime = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 29
  %11 = ptrtoint ptr %rq_xtime to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call18, ptr %rq_xtime, align 8
  %call19 = tail call i32 @frwr_send(ptr noundef %1, ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.drop_connection_crit_edge

if.end17.drop_connection_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_connection

if.end22:                                         ; preds = %if.end17
  %len = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 1, i32 8
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %rq_xmit_bytes_sent = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 18
  %14 = ptrtoint ptr %rq_xmit_bytes_sent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rq_xmit_bytes_sent, align 8
  %add = add i32 %15, %13
  store i32 %add, ptr %rq_xmit_bytes_sent, align 8
  %rq_task = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 3
  %16 = ptrtoint ptr %rq_task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rq_task, align 4
  %tk_msg.i = getelementptr inbounds %struct.rpc_task, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %tk_msg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tk_msg.i, align 4
  %cmp.not.i = icmp eq ptr %19, null
  br i1 %cmp.not.i, label %if.end22.drop_connection_crit_edge, label %rpc_reply_expected.exit

if.end22.drop_connection_crit_edge:               ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_connection

rpc_reply_expected.exit:                          ; preds = %if.end22
  %p_decode.i = getelementptr inbounds %struct.rpc_procinfo, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %p_decode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p_decode.i, align 4
  %cmp3.i.not = icmp eq ptr %21, null
  br i1 %cmp3.i.not, label %rpc_reply_expected.exit.drop_connection_crit_edge, label %rpc_reply_expected.exit.cleanup_crit_edge

rpc_reply_expected.exit.cleanup_crit_edge:        ; preds = %rpc_reply_expected.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

rpc_reply_expected.exit.drop_connection_crit_edge: ; preds = %rpc_reply_expected.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_connection

failed_marshal:                                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -107, i32 %call12)
  %cmp27.not = icmp eq i32 %call12, -107
  br i1 %cmp27.not, label %failed_marshal.drop_connection_crit_edge, label %failed_marshal.cleanup_crit_edge

failed_marshal.cleanup_crit_edge:                 ; preds = %failed_marshal
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

failed_marshal.drop_connection_crit_edge:         ; preds = %failed_marshal
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_connection

drop_connection:                                  ; preds = %failed_marshal.drop_connection_crit_edge, %rpc_reply_expected.exit.drop_connection_crit_edge, %if.end22.drop_connection_crit_edge, %if.end17.drop_connection_crit_edge, %if.end14.drop_connection_crit_edge
  tail call void @rpcrdma_xprt_disconnect(ptr noundef %1) #9
  %reestablish_timeout.i = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 24
  %22 = ptrtoint ptr %reestablish_timeout.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %reestablish_timeout.i, align 4
  %connect_cookie.i = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 25
  %23 = ptrtoint ptr %connect_cookie.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %connect_cookie.i, align 8
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr %connect_cookie.i, align 8
  tail call void @xprt_disconnect_done(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %drop_connection, %failed_marshal.cleanup_crit_edge, %rpc_reply_expected.exit.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ -107, %drop_connection ], [ -107, %if.end.cleanup_crit_edge ], [ -57, %if.end8.cleanup_crit_edge ], [ 0, %rpc_reply_expected.exit.cleanup_crit_edge ], [ %call12, %failed_marshal.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_wait_for_reply_request_def(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xprt_rdma_timer(ptr noundef %xprt, ptr nocapture noundef readnone %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xprt_force_disconnect(ptr noundef %xprt) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_release_rqst_cong(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xprt_rdma_destroy(ptr noundef %xprt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_connect_worker = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 3
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %rx_connect_worker) #9
  tail call void @rpcrdma_xprt_disconnect(ptr noundef %xprt) #9
  %rx_buf = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 2
  tail call void @rpcrdma_buffer_destroy(ptr noundef %rx_buf) #9
  %arrayidx.i = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %1) #9
  %arrayidx.1.i = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 1
  %2 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @kfree(ptr noundef %3) #9
  %arrayidx.3.i = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 3
  %4 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.3.i, align 4
  tail call void @kfree(ptr noundef %5) #9
  %arrayidx.4.i = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 4
  %6 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.4.i, align 4
  tail call void @kfree(ptr noundef %7) #9
  tail call void @xprt_free(ptr noundef %xprt) #9
  tail call void @module_put(ptr noundef null) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xprt_rdma_set_connect_timeout(ptr noundef %xprt, i32 noundef %connect_timeout, i32 noundef %reconnect_timeout) #0 align 64 {
entry:
  %to.sroa.7 = alloca { i32, i32, i8 }, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_xprtrdma_op_set_cto(ptr noundef %xprt, i32 noundef %connect_timeout, i32 noundef %reconnect_timeout)
  %transport_lock = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %transport_lock) #9
  %connect_timeout1 = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 30
  %0 = ptrtoint ptr %connect_timeout1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connect_timeout1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %connect_timeout)
  %cmp = icmp ugt i32 %1, %connect_timeout
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %to.sroa.7)
  %timeout = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 3
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timeout, align 4
  %to.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 8
  %4 = call ptr @memcpy(ptr %to.sroa.7, ptr %to.sroa.7.0..sroa_idx, i32 12)
  %5 = tail call i32 @llvm.umax.i32(i32 %connect_timeout, i32 1000)
  %rx_timeout = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 4
  %6 = ptrtoint ptr %rx_timeout to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %rx_timeout, align 4
  %to.sroa.6.0.rx_timeout.sroa_idx = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %to.sroa.6.0.rx_timeout.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %to.sroa.6.0.rx_timeout.sroa_idx, align 4
  %to.sroa.7.0.rx_timeout.sroa_idx = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 4, i32 2
  %8 = call ptr @memcpy(ptr %to.sroa.7.0.rx_timeout.sroa_idx, ptr %to.sroa.7, i32 12)
  %9 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %rx_timeout, ptr %timeout, align 4
  %10 = ptrtoint ptr %connect_timeout1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %connect_timeout, ptr %connect_timeout1, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %to.sroa.7)
  br label %if.end7

if.end7:                                          ; preds = %if.then, %entry.if.end7_crit_edge
  %max_reconnect_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 31
  %11 = ptrtoint ptr %max_reconnect_timeout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_reconnect_timeout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %reconnect_timeout)
  %cmp8 = icmp ugt i32 %12, %reconnect_timeout
  br i1 %cmp8, label %if.then9, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %max_reconnect_timeout to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %reconnect_timeout, ptr %max_reconnect_timeout, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %transport_lock) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xprt_rdma_enable_swap(ptr nocapture noundef readnone %xprt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xprt_rdma_disable_swap(ptr nocapture noundef %xprt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xprt_rdma_inject_disconnect(ptr noundef %xprt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_xprtrdma_op_inject_dsc(ptr noundef %xprt)
  %rx_ep = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 1
  %0 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ep, align 8
  %re_id = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %re_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %re_id, align 4
  %call = tail call i32 @rdma_disconnect(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_rdma_bc_setup(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_rdma_bc_maxpayload(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_rdma_bc_max_slots(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_rdma_bc_free_rqst(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_rdma_bc_destroy(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpcrdma_buffer_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_add_backlog(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcrdma_reply_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xprt_wake_up_backlog(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcrdma_buffer_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xprt_lock_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_reconnect_delay(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_reconnect_backoff(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_op_connect(ptr noundef %r_xprt, i32 noundef %delay) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_op_connect, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_op_connect, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !118

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !116

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !119
  %call42 = tail call i32 @__traceiter_xprtrdma_op_connect(ptr noundef null, ptr noundef %r_xprt, i32 noundef %delay) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !120
  %13 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !116

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_op_connect, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_op_connect, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_op_connect.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xprtrdma_op_connect.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 698, ptr noundef nonnull @.str.19) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !122
  %31 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
declare dso_local i32 @__traceiter_xprtrdma_op_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rpcrdma_regbuf_realloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_mrs_zap(ptr noundef %task) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_mrs_zap, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_mrs_zap, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !118

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !116

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  %call42 = tail call i32 @__traceiter_xprtrdma_mrs_zap(ptr noundef null, ptr noundef %task) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !124
  %13 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !116

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_mrs_zap, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_mrs_zap, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_mrs_zap.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xprtrdma_mrs_zap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 1447, ptr noundef nonnull @.str.19) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !122
  %31 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
declare dso_local void @frwr_unmap_sync(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_mrs_zap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_rdma_bc_send_reply(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xprt_request_get_cong(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcrdma_marshal_req(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @frwr_send(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_force_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcrdma_buffer_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_op_set_cto(ptr noundef %r_xprt, i32 noundef %connect, i32 noundef %reconnect) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_op_set_cto, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_op_set_cto, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !118

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !116

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !125
  %call42 = tail call i32 @__traceiter_xprtrdma_op_set_cto(ptr noundef null, ptr noundef %r_xprt, i32 noundef %connect, i32 noundef %reconnect) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !126
  %13 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !116

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_op_set_cto, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_op_set_cto, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_op_set_cto.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xprtrdma_op_set_cto.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 728, ptr noundef nonnull @.str.19) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !122
  %31 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
declare dso_local i32 @__traceiter_xprtrdma_op_set_cto(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_op_inject_dsc(ptr noundef %r_xprt) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_op_inject_dsc, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_op_inject_dsc, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !118

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !116

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !127
  %call42 = tail call i32 @__traceiter_xprtrdma_op_inject_dsc(ptr noundef null, ptr noundef %r_xprt) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !128
  %13 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !116

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !104) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_op_inject_dsc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_op_inject_dsc, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_op_inject_dsc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xprtrdma_op_inject_dsc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 673, ptr noundef nonnull @.str.19) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !122
  %31 = tail call i32 @llvm.read_register.i32(metadata !104) #9
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
declare dso_local i32 @rdma_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_op_inject_dsc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcrdma_xprt_connect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_unlock_connect(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_wake_pending_tasks(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102}
!llvm.named.register.sp = !{!104}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @xprt_rdma_max_inline_read, !1, !"xprt_rdma_max_inline_read", i1 false, i1 false}
!1 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 68, i32 14}
!2 = !{ptr @xprt_rdma_max_inline_write, !3, !"xprt_rdma_max_inline_write", i1 false, i1 false}
!3 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 69, i32 14}
!4 = !{ptr @xprt_rdma_memreg_strategy, !5, !"xprt_rdma_memreg_strategy", i1 false, i1 false}
!5 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 70, i32 14}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 193, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @xprt_rdma_format_addresses._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @xprt_rdma_format_addresses._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 200, i32 29}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 203, i32 29}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 206, i32 45}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 687, i32 16}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 688, i32 18}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 699, i32 18}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 711, i32 18}
!26 = !{ptr @xprt_rdma_pad_optimize, !27, !"xprt_rdma_pad_optimize", i1 false, i1 false}
!27 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 71, i32 5}
!28 = !{ptr @sunrpc_table_header, !29, !"sunrpc_table_header", i1 false, i1 false}
!29 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 85, i32 33}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 162, i32 29}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 174, i32 29}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 177, i32 45}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 771, i32 32}
!38 = !{ptr @xprt_rdma, !39, !"xprt_rdma", i1 false, i1 false}
!39 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 765, i32 26}
!40 = !{ptr @xprt_setup_rdma.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 363, i32 2}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @xprt_setup_rdma.__key.16, !41, !"__key", i1 false, i1 false}
!44 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @xprt_rdma_slot_table_entries, !46, !"xprt_rdma_slot_table_entries", i1 false, i1 false}
!46 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 67, i32 21}
!47 = !{ptr @xprt_rdma_default_timeout, !48, !"xprt_rdma_default_timeout", i1 false, i1 false}
!48 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 297, i32 33}
!49 = !{ptr @xprt_rdma_procs, !50, !"xprt_rdma_procs", i1 false, i1 false}
!50 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 735, i32 34}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 485, i32 2}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/trace/events/rpcrdma.h", i32 675, i32 1}
!55 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!57 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!60 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/trace/events/rpcrdma.h", i32 1427, i32 1}
!63 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../include/trace/events/rpcrdma.h", i32 701, i32 1}
!66 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../include/trace/events/rpcrdma.h", i32 673, i32 1}
!69 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 145, i32 15}
!72 = !{ptr @sunrpc_table, !73, !"sunrpc_table", i1 false, i1 false}
!73 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 143, i32 25}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 89, i32 15}
!76 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 98, i32 15}
!78 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 107, i32 15}
!80 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 116, i32 15}
!82 = !{ptr @.str.26, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 125, i32 15}
!84 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 134, i32 15}
!86 = !{ptr @xr_tunables_table, !87, !"xr_tunables_table", i1 false, i1 false}
!87 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 87, i32 25}
!88 = !{ptr @min_slot_table_size, !89, !"min_slot_table_size", i1 false, i1 false}
!89 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 76, i32 21}
!90 = !{ptr @max_slot_table_size, !91, !"max_slot_table_size", i1 false, i1 false}
!91 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 77, i32 21}
!92 = !{ptr @min_inline_size, !93, !"min_inline_size", i1 false, i1 false}
!93 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 78, i32 21}
!94 = !{ptr @max_inline_size, !95, !"max_inline_size", i1 false, i1 false}
!95 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 79, i32 21}
!96 = !{ptr @dummy, !97, !"dummy", i1 false, i1 false}
!97 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 83, i32 21}
!98 = !{ptr @max_padding, !99, !"max_padding", i1 false, i1 false}
!99 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 80, i32 21}
!100 = !{ptr @min_memreg, !101, !"min_memreg", i1 false, i1 false}
!101 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 81, i32 21}
!102 = !{ptr @max_memreg, !103, !"max_memreg", i1 false, i1 false}
!103 = !{!"../net/sunrpc/xprtrdma/transport.c", i32 82, i32 21}
!104 = !{!"sp"}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{i64 2158204936}
!115 = !{i64 2158205215}
!116 = !{!"branch_weights", i32 2000, i32 1}
!117 = !{!"branch_weights", i32 1, i32 2000}
!118 = !{i64 2148973720, i64 2148973725, i64 2148973738, i64 2148973782, i64 2148973816, i64 2148973837}
!119 = !{i64 2158475178}
!120 = !{i64 2158475405}
!121 = !{i64 2149385061}
!122 = !{i64 2149386097}
!123 = !{i64 2159257065}
!124 = !{i64 2159257268}
!125 = !{i64 2158496885}
!126 = !{i64 2158497138}
!127 = !{i64 2158457995}
!128 = !{i64 2158458214}
