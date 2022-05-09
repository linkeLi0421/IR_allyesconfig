; ModuleID = '/llk/IR_all_yes/net/sunrpc/xprtrdma/svc_rdma.c_pt.bc'
source_filename = "../net/sunrpc/xprtrdma/svc_rdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.svc_xprt_class = type { ptr, ptr, ptr, %struct.list_head, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }

@svcrdma_ord = dso_local global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@svcrdma_max_requests = dso_local global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@svcrdma_max_bc_requests = dso_local global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@svcrdma_max_req_size = dso_local global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@rpc_debug = external dso_local local_unnamed_addr global i32, align 4
@svc_rdma_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"SVCRDMA Module Removed, deregister RPC RDMA transport\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"svc_rdma_cleanup\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"net/sunrpc/xprtrdma/svc_rdma.c\00", [33 x i8] zeroinitializer }, align 32
@svc_rdma_cleanup._entry_ptr = internal global ptr @svc_rdma_cleanup._entry, section ".printk_index", align 4
@svc_rdma_class = external dso_local global %struct.svc_xprt_class, align 4
@svc_rdma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"SVCRDMA Module Init, register RPC RDMA transport\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"svc_rdma_init\00", [18 x i8] zeroinitializer }, align 32
@svc_rdma_init._entry_ptr = internal global ptr @svc_rdma_init._entry, section ".printk_index", align 4
@svc_rdma_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\09svcrdma_ord      : %d\0A\00", [40 x i8] zeroinitializer }, align 32
@svc_rdma_init._entry_ptr.7 = internal global ptr @svc_rdma_init._entry.5, section ".printk_index", align 4
@svc_rdma_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\09max_requests     : %u\0A\00", [40 x i8] zeroinitializer }, align 32
@svc_rdma_init._entry_ptr.10 = internal global ptr @svc_rdma_init._entry.8, section ".printk_index", align 4
@svc_rdma_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\09max_bc_requests  : %u\0A\00", [40 x i8] zeroinitializer }, align 32
@svc_rdma_init._entry_ptr.13 = internal global ptr @svc_rdma_init._entry.11, section ".printk_index", align 4
@svc_rdma_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\09max_inline       : %d\0A\00", [40 x i8] zeroinitializer }, align 32
@svc_rdma_init._entry_ptr.16 = internal global ptr @svc_rdma_init._entry.14, section ".printk_index", align 4
@svcrdma_stat_read = dso_local global { %struct.percpu_counter, [56 x i8] } zeroinitializer, align 32
@svcrdma_stat_recv = dso_local global { %struct.percpu_counter, [56 x i8] } zeroinitializer, align 32
@svcrdma_stat_sq_starve = dso_local global { %struct.percpu_counter, [56 x i8] } zeroinitializer, align 32
@svcrdma_stat_write = dso_local global { %struct.percpu_counter, [56 x i8] } zeroinitializer, align 32
@svcrdma_table_header = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@svc_rdma_proc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@svc_rdma_proc_init.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@svc_rdma_proc_init.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@svc_rdma_proc_init.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@svcrdma_root_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.20, ptr null, i32 0, i16 365, ptr @svcrdma_table, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sunrpc\00", [25 x i8] zeroinitializer }, align 32
@svcrdma_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.21, ptr null, i32 0, i16 365, ptr @svcrdma_parm_table, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"svc_rdma\00", [23 x i8] zeroinitializer }, align 32
@svcrdma_parm_table = internal global { [13 x %struct.ctl_table], [108 x i8] } { [13 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.22, ptr @svcrdma_max_requests, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_max_requests, ptr @max_max_requests }, %struct.ctl_table { ptr @.str.23, ptr @svcrdma_max_req_size, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_max_inline, ptr @max_max_inline }, %struct.ctl_table { ptr @.str.24, ptr @svcrdma_ord, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_ord, ptr @max_ord }, %struct.ctl_table { ptr @.str.25, ptr @svcrdma_stat_read, i32 8, i16 420, ptr null, ptr @svcrdma_counter_handler, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.26, ptr @svcrdma_stat_recv, i32 8, i16 420, ptr null, ptr @svcrdma_counter_handler, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.27, ptr @svcrdma_stat_write, i32 8, i16 420, ptr null, ptr @svcrdma_counter_handler, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.28, ptr @svcrdma_stat_sq_starve, i32 8, i16 420, ptr null, ptr @svcrdma_counter_handler, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.29, ptr @svcrdma_stat_unused, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @zero, ptr @zero }, %struct.ctl_table { ptr @.str.30, ptr @svcrdma_stat_unused, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @zero, ptr @zero }, %struct.ctl_table { ptr @.str.31, ptr @svcrdma_stat_unused, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @zero, ptr @zero }, %struct.ctl_table { ptr @.str.32, ptr @svcrdma_stat_unused, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @zero, ptr @zero }, %struct.ctl_table { ptr @.str.33, ptr @svcrdma_stat_unused, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @zero, ptr @zero }, %struct.ctl_table zeroinitializer], [108 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max_requests\00", [19 x i8] zeroinitializer }, align 32
@min_max_requests = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@max_max_requests = internal global { i32, [28 x i8] } { i32 16384, [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max_req_size\00", [19 x i8] zeroinitializer }, align 32
@min_max_inline = internal global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@max_max_inline = internal global { i32, [28 x i8] } { i32 65536, [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"max_outbound_read_requests\00", [37 x i8] zeroinitializer }, align 32
@min_ord = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@max_ord = internal global { i32, [28 x i8] } { i32 255, [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rdma_stat_read\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rdma_stat_recv\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rdma_stat_write\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rdma_stat_sq_starve\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rdma_stat_rq_starve\00", [44 x i8] zeroinitializer }, align 32
@svcrdma_stat_unused = internal global { i32, [28 x i8] } zeroinitializer, align 32
@zero = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rdma_stat_rq_poll\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rdma_stat_rq_prod\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rdma_stat_sq_poll\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rdma_stat_sq_prod\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.35 = private unnamed_addr constant [12 x i8] c"svcrdma_ord\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 55, i32 14 }
@___asan_gen_.38 = private unnamed_addr constant [21 x i8] c"svcrdma_max_requests\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 58, i32 14 }
@___asan_gen_.41 = private unnamed_addr constant [24 x i8] c"svcrdma_max_bc_requests\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 59, i32 14 }
@___asan_gen_.44 = private unnamed_addr constant [21 x i8] c"svcrdma_max_req_size\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 62, i32 14 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 278, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 287, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 288, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 289, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 290, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 291, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [18 x i8] c"svcrdma_stat_read\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 68, i32 23 }
@___asan_gen_.95 = private unnamed_addr constant [18 x i8] c"svcrdma_stat_recv\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 69, i32 23 }
@___asan_gen_.98 = private unnamed_addr constant [23 x i8] c"svcrdma_stat_sq_starve\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 70, i32 23 }
@___asan_gen_.101 = private unnamed_addr constant [19 x i8] c"svcrdma_stat_write\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 71, i32 23 }
@___asan_gen_.104 = private unnamed_addr constant [21 x i8] c"svcrdma_table_header\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 109, i32 33 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 253, i32 7 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 256, i32 7 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 259, i32 7 }
@___asan_gen_.116 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 262, i32 7 }
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c"svcrdma_root_table\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 224, i32 25 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 226, i32 15 }
@___asan_gen_.125 = private unnamed_addr constant [14 x i8] c"svcrdma_table\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 215, i32 25 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 217, i32 15 }
@___asan_gen_.131 = private unnamed_addr constant [19 x i8] c"svcrdma_parm_table\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 110, i32 25 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 112, i32 15 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"min_max_requests\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 60, i32 21 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"max_max_requests\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 61, i32 21 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 121, i32 15 }
@___asan_gen_.146 = private unnamed_addr constant [15 x i8] c"min_max_inline\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 63, i32 21 }
@___asan_gen_.149 = private unnamed_addr constant [15 x i8] c"max_max_inline\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 64, i32 21 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 130, i32 15 }
@___asan_gen_.155 = private unnamed_addr constant [8 x i8] c"min_ord\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 56, i32 21 }
@___asan_gen_.158 = private unnamed_addr constant [8 x i8] c"max_ord\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 57, i32 21 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 140, i32 15 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 147, i32 15 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 154, i32 15 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 161, i32 15 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 168, i32 15 }
@___asan_gen_.176 = private unnamed_addr constant [20 x i8] c"svcrdma_stat_unused\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 65, i32 21 }
@___asan_gen_.179 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 66, i32 21 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 177, i32 15 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 186, i32 15 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 195, i32 15 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 204, i32 15 }
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private constant [34 x i8] c"../net/sunrpc/xprtrdma/svc_rdma.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 89, i32 46 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @svc_rdma_cleanup._entry, ptr @svc_rdma_cleanup._entry_ptr, ptr @svc_rdma_init._entry, ptr @svc_rdma_init._entry.11, ptr @svc_rdma_init._entry.14, ptr @svc_rdma_init._entry.5, ptr @svc_rdma_init._entry.8, ptr @svc_rdma_init._entry_ptr, ptr @svc_rdma_init._entry_ptr.10, ptr @svc_rdma_init._entry_ptr.13, ptr @svc_rdma_init._entry_ptr.16, ptr @svc_rdma_init._entry_ptr.7, ptr @svcrdma_ord, ptr @svcrdma_max_requests, ptr @svcrdma_max_bc_requests, ptr @svcrdma_max_req_size, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @svcrdma_stat_read, ptr @svcrdma_stat_recv, ptr @svcrdma_stat_sq_starve, ptr @svcrdma_stat_write, ptr @svcrdma_table_header, ptr @svc_rdma_proc_init.__key, ptr @svc_rdma_proc_init.__key.17, ptr @svc_rdma_proc_init.__key.18, ptr @svc_rdma_proc_init.__key.19, ptr @svcrdma_root_table, ptr @.str.20, ptr @svcrdma_table, ptr @.str.21, ptr @svcrdma_parm_table, ptr @.str.22, ptr @min_max_requests, ptr @max_max_requests, ptr @.str.23, ptr @min_max_inline, ptr @max_max_inline, ptr @.str.24, ptr @min_ord, ptr @max_ord, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @svcrdma_stat_unused, ptr @zero, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svcrdma_ord to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svcrdma_max_requests to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svcrdma_max_bc_requests to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svcrdma_max_req_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svcrdma_stat_read to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svcrdma_stat_recv to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svcrdma_stat_sq_starve to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svcrdma_stat_write to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svcrdma_table_header to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_proc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_proc_init.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_proc_init.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_proc_init.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svcrdma_root_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svcrdma_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svcrdma_parm_table to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_max_requests to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_max_requests to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_max_inline to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_max_inline to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_ord to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_ord to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svcrdma_stat_unused to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zero to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svc_rdma_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %0 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end, !prof !114

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  tail call void @svc_unreg_xprt_class(ptr noundef nonnull @svc_rdma_class) #7
  %1 = load ptr, ptr @svcrdma_table_header, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end4.svc_rdma_proc_cleanup.exit_crit_edge, label %if.end.i

do.end4.svc_rdma_proc_cleanup.exit_crit_edge:     ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %svc_rdma_proc_cleanup.exit

if.end.i:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @unregister_sysctl_table(ptr noundef nonnull %1) #7
  store ptr null, ptr @svcrdma_table_header, align 4
  tail call void @percpu_counter_destroy(ptr noundef nonnull @svcrdma_stat_write) #7
  tail call void @percpu_counter_destroy(ptr noundef nonnull @svcrdma_stat_sq_starve) #7
  tail call void @percpu_counter_destroy(ptr noundef nonnull @svcrdma_stat_recv) #7
  tail call void @percpu_counter_destroy(ptr noundef nonnull @svcrdma_stat_read) #7
  br label %svc_rdma_proc_cleanup.exit

svc_rdma_proc_cleanup.exit:                       ; preds = %if.end.i, %do.end4.svc_rdma_proc_cleanup.exit_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_unreg_xprt_class(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svc_rdma_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %0 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body6_crit_edge, label %do.end, !prof !114

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %do.body6

do.body6:                                         ; preds = %do.end, %entry.do.body6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %1 = load i32, ptr @rpc_debug, align 4
  %and7 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body6.do.body24_crit_edge, label %do.end18, !prof !114

do.body6.do.body24_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body24

do.end18:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load i32, ptr @svcrdma_ord, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %2) #10
  br label %do.body24

do.body24:                                        ; preds = %do.end18, %do.body6.do.body24_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %3 = load i32, ptr @rpc_debug, align 4
  %and25 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.do.body42_crit_edge, label %do.end36, !prof !114

do.body24.do.body42_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body42

do.end36:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %4 = load i32, ptr @svcrdma_max_requests, align 4
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %4) #10
  br label %do.body42

do.body42:                                        ; preds = %do.end36, %do.body24.do.body42_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %5 = load i32, ptr @rpc_debug, align 4
  %and43 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body42.do.body60_crit_edge, label %do.end54, !prof !114

do.body42.do.body60_crit_edge:                    ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body60

do.end54:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  %6 = load i32, ptr @svcrdma_max_bc_requests, align 4
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %6) #10
  br label %do.body60

do.body60:                                        ; preds = %do.end54, %do.body42.do.body60_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %7 = load i32, ptr @rpc_debug, align 4
  %and61 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body60.do.end77_crit_edge, label %do.end72, !prof !114

do.body60.do.end77_crit_edge:                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end77

do.end72:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  %8 = load i32, ptr @svcrdma_max_req_size, align 4
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %8) #10
  br label %do.end77

do.end77:                                         ; preds = %do.end72, %do.body60.do.end77_crit_edge
  %9 = load ptr, ptr @svcrdma_table_header, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end77.if.end81_crit_edge

do.end77.if.end81_crit_edge:                      ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.end.i:                                         ; preds = %do.end77
  %call.i = tail call i32 @__percpu_counter_init(ptr noundef nonnull @svcrdma_stat_read, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @svc_rdma_proc_init.__key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.svc_rdma_proc_init.exit_crit_edge

if.end.i.svc_rdma_proc_init.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %svc_rdma_proc_init.exit

if.end3.i:                                        ; preds = %if.end.i
  %call5.i = tail call i32 @__percpu_counter_init(ptr noundef nonnull @svcrdma_stat_recv, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @svc_rdma_proc_init.__key.17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end3.i.svc_rdma_proc_init.exit_crit_edge

if.end3.i.svc_rdma_proc_init.exit_crit_edge:      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %svc_rdma_proc_init.exit

if.end8.i:                                        ; preds = %if.end3.i
  %call10.i = tail call i32 @__percpu_counter_init(ptr noundef nonnull @svcrdma_stat_sq_starve, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @svc_rdma_proc_init.__key.18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end8.i.svc_rdma_proc_init.exit_crit_edge

if.end8.i.svc_rdma_proc_init.exit_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %svc_rdma_proc_init.exit

if.end13.i:                                       ; preds = %if.end8.i
  %call15.i = tail call i32 @__percpu_counter_init(ptr noundef nonnull @svcrdma_stat_write, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @svc_rdma_proc_init.__key.19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end13.i.svc_rdma_proc_init.exit_crit_edge

if.end13.i.svc_rdma_proc_init.exit_crit_edge:     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %svc_rdma_proc_init.exit

if.end18.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i = tail call ptr @register_sysctl_table(ptr noundef nonnull @svcrdma_root_table) #7
  store ptr %call19.i, ptr @svcrdma_table_header, align 4
  br label %if.end81

svc_rdma_proc_init.exit:                          ; preds = %if.end13.i.svc_rdma_proc_init.exit_crit_edge, %if.end8.i.svc_rdma_proc_init.exit_crit_edge, %if.end3.i.svc_rdma_proc_init.exit_crit_edge, %if.end.i.svc_rdma_proc_init.exit_crit_edge
  %rc.0.i = phi i32 [ %call.i, %if.end.i.svc_rdma_proc_init.exit_crit_edge ], [ %call5.i, %if.end3.i.svc_rdma_proc_init.exit_crit_edge ], [ %call10.i, %if.end8.i.svc_rdma_proc_init.exit_crit_edge ], [ %call15.i, %if.end13.i.svc_rdma_proc_init.exit_crit_edge ]
  tail call void @percpu_counter_destroy(ptr noundef nonnull @svcrdma_stat_sq_starve) #7
  tail call void @percpu_counter_destroy(ptr noundef nonnull @svcrdma_stat_recv) #7
  tail call void @percpu_counter_destroy(ptr noundef nonnull @svcrdma_stat_read) #7
  br label %cleanup

if.end81:                                         ; preds = %if.end18.i, %do.end77.if.end81_crit_edge
  %call82 = tail call i32 @svc_reg_xprt_class(ptr noundef nonnull @svc_rdma_class) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %svc_rdma_proc_init.exit
  %retval.0 = phi i32 [ 0, %if.end81 ], [ %rc.0.i, %svc_rdma_proc_init.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_reg_xprt_class(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svcrdma_counter_handler(ptr nocapture noundef readonly %table, i32 noundef %write, ptr nocapture noundef writeonly %buffer, ptr nocapture noundef %lenp, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %tmp = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  %2 = call ptr @memset(ptr %tmp, i32 255, i32 9)
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @percpu_counter_set(ptr noundef %1, i64 noundef 0) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i64 @__percpu_counter_sum(ptr noundef %1) #7
  %3 = tail call i64 @llvm.smax.i64(i64 %call.i, i64 0) #7
  %call1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp, i32 noundef 8, ptr noundef nonnull @.str.34, i64 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call1)
  %cmp = icmp sgt i32 %call1, 7
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call5 = call i32 @strlen(ptr noundef nonnull %tmp) #11
  %4 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ppos, align 8
  %conv = sext i32 %call5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv)
  %cmp6 = icmp sgt i64 %5, %conv
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %lenp, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %7 = trunc i64 %5 to i32
  %conv11 = sub i32 %call5, %7
  %8 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lenp, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %conv11, i32 %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool16.not = icmp eq i32 %10, 0
  br i1 %tobool16.not, label %if.end9.if.end19_crit_edge, label %if.then17

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %11 = call ptr @memcpy(ptr %buffer, ptr %tmp, i32 %10)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end9.if.end19_crit_edge
  %12 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %lenp, align 4
  %conv20 = sext i32 %10 to i64
  %13 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ppos, align 8
  %add = add i64 %14, %conv20
  store i64 %add, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then8, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then8 ], [ 0, %if.end19 ], [ -14, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %tmp) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @svcrdma_ord, !1, !"svcrdma_ord", i1 false, i1 false}
!1 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 55, i32 14}
!2 = !{ptr @svcrdma_max_requests, !3, !"svcrdma_max_requests", i1 false, i1 false}
!3 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 58, i32 14}
!4 = !{ptr @svcrdma_max_bc_requests, !5, !"svcrdma_max_bc_requests", i1 false, i1 false}
!5 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 59, i32 14}
!6 = !{ptr @svcrdma_max_req_size, !7, !"svcrdma_max_req_size", i1 false, i1 false}
!7 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 62, i32 14}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 278, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @svc_rdma_cleanup._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @svc_rdma_cleanup._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 287, i32 2}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @svc_rdma_init._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @svc_rdma_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 288, i32 2}
!21 = !{ptr @svc_rdma_init._entry.5, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @svc_rdma_init._entry_ptr.7, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 289, i32 2}
!25 = !{ptr @svc_rdma_init._entry.8, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @svc_rdma_init._entry_ptr.10, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 290, i32 2}
!29 = !{ptr @svc_rdma_init._entry.11, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @svc_rdma_init._entry_ptr.13, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 291, i32 2}
!33 = !{ptr @svc_rdma_init._entry.14, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @svc_rdma_init._entry_ptr.16, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @svcrdma_stat_read, !36, !"svcrdma_stat_read", i1 false, i1 false}
!36 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 68, i32 23}
!37 = !{ptr @svcrdma_stat_recv, !38, !"svcrdma_stat_recv", i1 false, i1 false}
!38 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 69, i32 23}
!39 = !{ptr @svcrdma_stat_sq_starve, !40, !"svcrdma_stat_sq_starve", i1 false, i1 false}
!40 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 70, i32 23}
!41 = !{ptr @svcrdma_stat_write, !42, !"svcrdma_stat_write", i1 false, i1 false}
!42 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 71, i32 23}
!43 = !{ptr @svcrdma_table_header, !44, !"svcrdma_table_header", i1 false, i1 false}
!44 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 109, i32 33}
!45 = !{ptr @svc_rdma_proc_init.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 253, i32 7}
!47 = !{ptr @svc_rdma_proc_init.__key.17, !48, !"__key", i1 false, i1 false}
!48 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 256, i32 7}
!49 = !{ptr @svc_rdma_proc_init.__key.18, !50, !"__key", i1 false, i1 false}
!50 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 259, i32 7}
!51 = !{ptr @svc_rdma_proc_init.__key.19, !52, !"__key", i1 false, i1 false}
!52 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 262, i32 7}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 226, i32 15}
!55 = !{ptr @svcrdma_root_table, !56, !"svcrdma_root_table", i1 false, i1 false}
!56 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 224, i32 25}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 217, i32 15}
!59 = !{ptr @svcrdma_table, !60, !"svcrdma_table", i1 false, i1 false}
!60 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 215, i32 25}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 112, i32 15}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 121, i32 15}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 130, i32 15}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 140, i32 15}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 147, i32 15}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 154, i32 15}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 161, i32 15}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 168, i32 15}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 177, i32 15}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 186, i32 15}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 195, i32 15}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 204, i32 15}
!85 = !{ptr @svcrdma_parm_table, !86, !"svcrdma_parm_table", i1 false, i1 false}
!86 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 110, i32 25}
!87 = !{ptr @min_max_requests, !88, !"min_max_requests", i1 false, i1 false}
!88 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 60, i32 21}
!89 = !{ptr @max_max_requests, !90, !"max_max_requests", i1 false, i1 false}
!90 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 61, i32 21}
!91 = !{ptr @min_max_inline, !92, !"min_max_inline", i1 false, i1 false}
!92 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 63, i32 21}
!93 = !{ptr @max_max_inline, !94, !"max_max_inline", i1 false, i1 false}
!94 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 64, i32 21}
!95 = !{ptr @min_ord, !96, !"min_ord", i1 false, i1 false}
!96 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 56, i32 21}
!97 = !{ptr @max_ord, !98, !"max_ord", i1 false, i1 false}
!98 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 57, i32 21}
!99 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 89, i32 46}
!101 = !{ptr @svcrdma_stat_unused, !102, !"svcrdma_stat_unused", i1 false, i1 false}
!102 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 65, i32 21}
!103 = !{ptr @zero, !104, !"zero", i1 false, i1 false}
!104 = !{!"../net/sunrpc/xprtrdma/svc_rdma.c", i32 66, i32 21}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{!"branch_weights", i32 2000, i32 1}
