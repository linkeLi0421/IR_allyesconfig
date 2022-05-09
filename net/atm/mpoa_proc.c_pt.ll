; ModuleID = '/llk/IR_all_yes/net/atm/mpoa_proc.c_pt.bc'
source_filename = "../net/atm/mpoa_proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.atm_qos = type <{ %struct.atm_trafprm, %struct.atm_trafprm, i8, [3 x i8] }>
%struct.atm_trafprm = type { i8, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mpoa_client = type { ptr, ptr, i32, ptr, [20 x i8], [20 x i8], %struct.rwlock_t, ptr, ptr, %struct.rwlock_t, ptr, ptr, ptr, i32, %struct.mpc_parameters, ptr, %struct.net_device_ops }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mpc_parameters = type { i16, i16, [8 x i8], i16, i16, i16 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.in_cache_entry = type { ptr, ptr, i64, i64, i64, i32, i16, i32, i32, i32, ptr, [20 x i8], %struct.in_ctrl_info, %struct.refcount_struct }
%struct.in_ctrl_info = type { i8, i8, [20 x i8], i32, i32, i16, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.atm_vcc = type { %struct.sock, i32, i16, i32, i32, i32, ptr, %struct.atm_qos, %struct.atm_sap, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.82, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.83, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.84, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.45, %union.anon.47, %union.anon.48, i16, i8, i8, i32, %union.anon.50, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.74, [0 x i32], %union.anon.75, i16, i16, %union.anon.76, %struct.refcount_struct, [0 x i32], %union.anon.77 }
%union.anon.45 = type { i64 }
%union.anon.47 = type { i32 }
%union.anon.48 = type { i32 }
%union.anon.50 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.73 }
%union.anon.73 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { i32 }
%union.anon.75 = type { %struct.hlist_node }
%union.anon.76 = type { i32 }
%union.anon.77 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.82 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.83 = type { ptr }
%union.anon.84 = type { ptr }
%struct.sk_buff_head = type { %union.anon.80, i32, %struct.spinlock }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.atm_sap = type { %struct.atm_bhli, [3 x %struct.atm_blli] }
%struct.atm_bhli = type { i8, i8, [8 x i8] }
%struct.atm_blli = type { i8, %union.anon.145, i8, %union.anon.147 }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type { i8, i8 }
%union.anon.147 = type { %struct.anon.150 }
%struct.anon.150 = type { i8, [5 x i8] }
%struct.sockaddr_atmsvc = type { i16, %struct.anon.151 }
%struct.anon.151 = type { [20 x i8], [13 x i8], i8, i32 }
%struct.eg_cache_entry = type { ptr, ptr, i64, [20 x i8], ptr, i32, i16, i32, %struct.eg_ctrl_info, %struct.refcount_struct }
%struct.eg_ctrl_info = type { [256 x i8], i8, i32, i32, i32, i32, [20 x i8], i16 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mpc\00", [28 x i8] zeroinitializer }, align 32
@atm_proc_root = external dso_local local_unnamed_addr global ptr, align 4
@mpc_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @proc_mpc_open, ptr @seq_read, ptr null, ptr @proc_mpc_write, ptr @seq_lseek, ptr @seq_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@mpc_proc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013mpoa:%s: Unable to initialize /proc/atm/%s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mpc_proc_init\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/atm/mpoa_proc.c\00", [44 x i8] zeroinitializer }, align 32
@mpc_proc_init._entry_ptr = internal global ptr @mpc_proc_init._entry, section ".printk_index", align 4
@mpc_op = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @mpc_start, ptr @mpc_stop, ptr @mpc_next, ptr @mpc_show }, [16 x i8] zeroinitializer }, align 32
@mpcs = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0AInterface %d:\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Ingress Entries:\0AIP address      State      Holding time  Packets fwded  VPI  VCI\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%-16s%s%-14lu%-12u\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"   %-3d  %-3d\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [119 x i8], [41 x i8] } { [119 x i8] c"Egress Entries:\0AIngress MPC ATM addr\0ACache-id        State      Holding time  Packets recvd  Latest IP addr   VPI VCI\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\0A%-16lu%s%-14lu%-15u\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%-16s\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" %-3d %-3d\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"resolving  \00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"resolved   \00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"invalid    \00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"refreshing \00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"purge      \00", [20 x i8] zeroinitializer }, align 32
@proc_mpc_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mpoa: proc_mpc_write: could not parse '%s'\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"proc_mpc_write\00", [17 x i8] zeroinitializer }, align 32
@proc_mpc_write._entry_ptr = internal global ptr @proc_mpc_write._entry, section ".printk_index", align 4
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"del %hhu.%hhu.%hhu.%hhu\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"add %hhu.%hhu.%hhu.%hhu tx=%d,%d rx=tx\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"add %hhu.%hhu.%hhu.%hhu tx=%d,%d rx=%d,%d\00", [54 x i8] zeroinitializer }, align 32
@parse_qos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017mpoa:%s: parse_qos(): setting qos parameters to tx=%d,%d rx=%d,%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"parse_qos\00", [22 x i8] zeroinitializer }, align 32
@parse_qos._entry_ptr = internal global ptr @parse_qos._entry, section ".printk_index", align 4
@switch.table.mpc_show = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.17, ptr @.str.15, ptr @.str.16, ptr @.str.18], [16 x i8] zeroinitializer }, align 32
@switch.table.mpc_show.28 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.17, ptr @.str.20, ptr @.str.16], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 290, i32 18 }
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"mpc_proc_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 56, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 292, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"mpc_op\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 194, i32 36 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 145, i32 16 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 146, i32 16 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 152, i32 22 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 153, i32 17 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 160, i32 18 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 163, i32 17 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 167, i32 16 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 173, i32 18 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 174, i32 17 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 182, i32 17 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 185, i32 18 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 71, i32 10 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 73, i32 10 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 75, i32 10 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 77, i32 10 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 80, i32 9 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 92, i32 10 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 234, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 253, i32 19 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 259, i32 19 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 263, i32 26 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private constant [23 x i8] c"../net/atm/mpoa_proc.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 275, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [22 x i8] c"switch.table.mpc_show\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [25 x i8] c"switch.table.mpc_show.28\00", align 1
@llvm.compiler.used = appending global [38 x ptr] [ptr @mpc_proc_init._entry, ptr @mpc_proc_init._entry_ptr, ptr @parse_qos._entry, ptr @parse_qos._entry_ptr, ptr @proc_mpc_write._entry, ptr @proc_mpc_write._entry_ptr, ptr @.str, ptr @mpc_proc_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mpc_op, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @switch.table.mpc_show, ptr @switch.table.mpc_show.28], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc_proc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpc_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 119, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_mpc_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_qos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mpc_show to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mpc_show.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpc_proc_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @atm_proc_root to i32))
  %0 = load ptr, ptr @atm_proc_root, align 4
  %call = tail call ptr @proc_create(ptr noundef nonnull @.str, i16 noundef zeroext 0, ptr noundef %0, ptr noundef nonnull @mpc_proc_ops) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpc_proc_clean() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @atm_proc_root to i32))
  %0 = load ptr, ptr @atm_proc_root, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_mpc_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @mpc_op) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_mpc_write(ptr nocapture noundef readnone %file, ptr noundef %buff, i32 noundef %nbytes, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %ip.i = alloca [4 x i8], align 4
  %tx_pcr.i = alloca i32, align 4
  %tx_sdu.i = alloca i32, align 4
  %rx_pcr.i = alloca i32, align 4
  %rx_sdu.i = alloca i32, align 4
  %qos.i = alloca %struct.atm_qos, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes)
  %cmp = icmp eq i32 %nbytes, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.umin.i32(i32 %nbytes, i32 4095)
  %call = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #10
  %1 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %buff.addr.053 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %buff, %if.end.for.body_crit_edge ]
  %p.052 = phi ptr [ %incdec.ptr21, %for.inc.for.body_crit_edge ], [ %1, %if.end.for.body_crit_edge ]
  %len.051 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 223) #10
  %incdec.ptr = getelementptr i8, ptr %buff.addr.053, i32 1
  %2 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #8, !srcloc !72
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !74
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buff.addr.053, i32 -1226833921) #10, !srcloc !75
  %asmresult = extractvalue { i32, i32 } %5, 0
  %asmresult8 = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #10, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !74
  %conv = trunc i32 %asmresult8 to i8
  %6 = ptrtoint ptr %p.052 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %p.052, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool10.not = icmp eq i32 %asmresult, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #10
  br label %cleanup

if.end12:                                         ; preds = %for.body
  %7 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %conv, label %for.inc [
    i8 0, label %if.end12.for.end_crit_edge
    i8 10, label %if.end12.for.end_crit_edge60
  ]

if.end12.for.end_crit_edge60:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %if.end12
  %incdec.ptr21 = getelementptr i8, ptr %p.052, i32 1
  %inc = add nuw nsw i32 %len.051, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end12.for.end_crit_edge, %if.end12.for.end_crit_edge60
  %len.0.lcssa = phi i32 [ %0, %for.inc.for.end_crit_edge ], [ %len.051, %if.end12.for.end_crit_edge ], [ %len.051, %if.end12.for.end_crit_edge60 ]
  %p.0.lcssa = phi ptr [ %incdec.ptr21, %for.inc.for.end_crit_edge ], [ %p.052, %if.end12.for.end_crit_edge ], [ %p.052, %if.end12.for.end_crit_edge60 ]
  %8 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %p.0.lcssa, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip.i) #10
  %9 = getelementptr inbounds [4 x i8], ptr %ip.i, i32 0, i32 1
  %10 = getelementptr inbounds [4 x i8], ptr %ip.i, i32 0, i32 2
  %11 = getelementptr inbounds [4 x i8], ptr %ip.i, i32 0, i32 3
  %12 = ptrtoint ptr %ip.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %ip.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_pcr.i) #10
  %13 = ptrtoint ptr %tx_pcr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %tx_pcr.i, align 4, !annotation !76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_sdu.i) #10
  %14 = ptrtoint ptr %tx_sdu.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %tx_sdu.i, align 4, !annotation !76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_pcr.i) #10
  %15 = ptrtoint ptr %rx_pcr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %rx_pcr.i, align 4, !annotation !76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_sdu.i) #10
  %16 = ptrtoint ptr %rx_sdu.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %rx_sdu.i, align 4, !annotation !76
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %qos.i) #10
  %17 = call ptr @memset(ptr %qos.i, i32 0, i32 84)
  %call.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %1, ptr noundef nonnull @.str.23, ptr noundef nonnull %ip.i, ptr noundef %9, ptr noundef %10, ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 4
  br i1 %cmp.i, label %parse_qos.exit, label %if.end.i

if.end.i:                                         ; preds = %for.end
  %call16.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %1, ptr noundef nonnull @.str.24, ptr noundef nonnull %ip.i, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %tx_pcr.i, ptr noundef nonnull %tx_sdu.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call16.i)
  %cmp17.i = icmp eq i32 %call16.i, 6
  br i1 %cmp17.i, label %if.then18.i, label %if.else.i

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %tx_pcr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_pcr.i, align 4
  %20 = ptrtoint ptr %rx_pcr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %rx_pcr.i, align 4
  %21 = ptrtoint ptr %tx_sdu.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_sdu.i, align 4
  %23 = ptrtoint ptr %rx_sdu.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rx_sdu.i, align 4
  br label %parse_qos.exit.thread45

if.else.i:                                        ; preds = %if.end.i
  %call26.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %1, ptr noundef nonnull @.str.25, ptr noundef nonnull %ip.i, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %tx_pcr.i, ptr noundef nonnull %tx_sdu.i, ptr noundef nonnull %rx_pcr.i, ptr noundef nonnull %rx_sdu.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call26.i)
  %cmp27.not.i = icmp eq i32 %call26.i, 8
  br i1 %cmp27.not.i, label %if.else.i.parse_qos.exit.thread45_crit_edge, label %parse_qos.exit.thread

if.else.i.parse_qos.exit.thread45_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %parse_qos.exit.thread45

parse_qos.exit.thread:                            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %qos.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_sdu.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_pcr.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_sdu.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_pcr.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i) #10
  br label %do.end

parse_qos.exit.thread45:                          ; preds = %if.else.i.parse_qos.exit.thread45_crit_edge, %if.then18.i
  %24 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ip.i, align 4
  %26 = ptrtoint ptr %qos.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %qos.i, align 4
  %27 = ptrtoint ptr %tx_pcr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_pcr.i, align 4
  %max_pcr.i = getelementptr inbounds %struct.atm_trafprm, ptr %qos.i, i32 0, i32 1
  %29 = ptrtoint ptr %max_pcr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %max_pcr.i, align 4
  %30 = ptrtoint ptr %tx_sdu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_sdu.i, align 4
  %max_sdu.i = getelementptr inbounds %struct.atm_trafprm, ptr %qos.i, i32 0, i32 5
  %32 = ptrtoint ptr %max_sdu.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %max_sdu.i, align 4
  %rxtp.i = getelementptr inbounds %struct.atm_qos, ptr %qos.i, i32 0, i32 1
  %33 = ptrtoint ptr %rxtp.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %rxtp.i, align 4
  %34 = ptrtoint ptr %rx_pcr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_pcr.i, align 4
  %max_pcr36.i = getelementptr inbounds %struct.atm_qos, ptr %qos.i, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %max_pcr36.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %max_pcr36.i, align 4
  %37 = ptrtoint ptr %rx_sdu.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_sdu.i, align 4
  %max_sdu38.i = getelementptr inbounds %struct.atm_qos, ptr %qos.i, i32 0, i32 1, i32 5
  %39 = ptrtoint ptr %max_sdu38.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %max_sdu38.i, align 4
  %aal.i = getelementptr inbounds %struct.atm_qos, ptr %qos.i, i32 0, i32 2
  %40 = ptrtoint ptr %aal.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 5, ptr %aal.i, align 4
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.3, i32 noundef %28, i32 noundef %31, i32 noundef %35, i32 noundef %38) #13
  %call48.i = call ptr @atm_mpoa_add_qos(i32 noundef %25, ptr noundef nonnull %qos.i) #10
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %qos.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_sdu.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_pcr.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_sdu.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_pcr.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i) #10
  br label %if.end27

parse_qos.exit:                                   ; preds = %for.end
  %41 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ip.i, align 4
  %call7.i = call ptr @atm_mpoa_search_qos(i32 noundef %42) #10
  %call8.i = call i32 @atm_mpoa_delete_qos(ptr noundef %call7.i) #10
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %qos.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_sdu.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_pcr.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_sdu.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_pcr.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool23.not = icmp eq i32 %call8.i, 0
  br i1 %tobool23.not, label %parse_qos.exit.do.end_crit_edge, label %parse_qos.exit.if.end27_crit_edge

parse_qos.exit.if.end27_crit_edge:                ; preds = %parse_qos.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

parse_qos.exit.do.end_crit_edge:                  ; preds = %parse_qos.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %parse_qos.exit.do.end_crit_edge, %parse_qos.exit.thread
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull %1) #13
  br label %if.end27

if.end27:                                         ; preds = %do.end, %parse_qos.exit.if.end27_crit_edge, %parse_qos.exit.thread45
  call void @free_pages(i32 noundef %call, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then11 ], [ %len.0.lcssa, %if.end27 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal ptr @mpc_start(ptr nocapture noundef readnone %m, ptr nocapture noundef readonly %pos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.cond_crit_edge

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %l.0.in = phi i64 [ %l.0, %for.body.for.cond_crit_edge ], [ %1, %entry.for.cond_crit_edge ]
  %mpc.0.in = phi ptr [ %mpc.0, %for.body.for.cond_crit_edge ], [ @mpcs, %entry.for.cond_crit_edge ]
  %2 = ptrtoint ptr %mpc.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %mpc.0 = load ptr, ptr %mpc.0.in, align 4
  %tobool1.not = icmp eq ptr %mpc.0, null
  br i1 %tobool1.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %l.0 = add i64 %l.0.in, -1
  %tobool3.not = icmp eq i64 %l.0, 0
  br i1 %tobool3.not, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 1 to ptr), %entry.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ], [ %mpc.0, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mpc_stop(ptr nocapture noundef %m, ptr nocapture noundef %v) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @mpc_next(ptr nocapture noundef readnone %m, ptr noundef readonly %v, ptr nocapture noundef %pos) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %mpcs.v = select i1 %cmp, ptr @mpcs, ptr %v
  %2 = ptrtoint ptr %mpcs.v to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load ptr, ptr %mpcs.v, align 4
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpc_show(ptr noundef %m, ptr noundef readonly %v) #0 align 64 {
entry:
  %ip_string = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ip_string) #10
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %0 = call ptr @memset(ptr %ip_string, i32 255, i32 16)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @atm_mpoa_disp_qos(ptr noundef %m) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_num = getelementptr inbounds %struct.mpoa_client, ptr %v, i32 0, i32 2
  %1 = ptrtoint ptr %dev_num to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev_num, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, i32 noundef %2) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.5) #10
  %call = tail call i64 @ktime_get_seconds() #10
  %in_cache = getelementptr inbounds %struct.mpoa_client, ptr %v, i32 0, i32 8
  %3 = ptrtoint ptr %in_cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %in_entry.0102 = load ptr, ptr %in_cache, align 4
  %tobool.not103 = icmp eq ptr %in_entry.0102, null
  br i1 %tobool.not103, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %if.end.for.body_crit_edge
  %in_entry.0104 = phi ptr [ %in_entry.0, %if.end13.for.body_crit_edge ], [ %in_entry.0102, %if.end.for.body_crit_edge ]
  %time = getelementptr inbounds %struct.in_cache_entry, ptr %in_entry.0104, i32 0, i32 2
  %4 = ptrtoint ptr %time to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %time, align 8
  %sub.neg = sub i64 %5, %call
  %conv.neg = trunc i64 %sub.neg to i32
  %in_dst_ip = getelementptr inbounds %struct.in_cache_entry, ptr %in_entry.0104, i32 0, i32 12, i32 4
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %ip_string, ptr noundef nonnull @.str.6, ptr noundef %in_dst_ip)
  %entry_state = getelementptr inbounds %struct.in_cache_entry, ptr %in_entry.0104, i32 0, i32 6
  %6 = ptrtoint ptr %entry_state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %entry_state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %7)
  %8 = icmp ult i16 %7, 4
  br i1 %8, label %switch.lookup, label %for.body.ingress_state_string.exit_crit_edge

for.body.ingress_state_string.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %ingress_state_string.exit

switch.lookup:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %9 = sext i16 %7 to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.mpc_show, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %ingress_state_string.exit

ingress_state_string.exit:                        ; preds = %switch.lookup, %for.body.ingress_state_string.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.19, %for.body.ingress_state_string.exit_crit_edge ]
  %holding_time = getelementptr inbounds %struct.in_cache_entry, ptr %in_entry.0104, i32 0, i32 12, i32 5
  %11 = ptrtoint ptr %holding_time to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %holding_time, align 4
  %conv6 = zext i16 %12 to i32
  %sub7 = add i32 %conv6, %conv.neg
  %packets_fwded = getelementptr inbounds %struct.in_cache_entry, ptr %in_entry.0104, i32 0, i32 5
  %13 = ptrtoint ptr %packets_fwded to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %packets_fwded, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.7, ptr noundef nonnull %ip_string, ptr noundef nonnull %retval.0.i, i32 noundef %sub7, i32 noundef %14) #10
  %shortcut = getelementptr inbounds %struct.in_cache_entry, ptr %in_entry.0104, i32 0, i32 10
  %15 = ptrtoint ptr %shortcut to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %shortcut, align 4
  %tobool8.not = icmp eq ptr %16, null
  br i1 %tobool8.not, label %ingress_state_string.exit.if.end13_crit_edge, label %if.then9

ingress_state_string.exit.if.end13_crit_edge:     ; preds = %ingress_state_string.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then9:                                         ; preds = %ingress_state_string.exit
  call void @__sanitizer_cov_trace_pc() #12
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vpi, align 4
  %conv11 = sext i16 %18 to i32
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vci, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i32 noundef %conv11, i32 noundef %20) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %ingress_state_string.exit.if.end13_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9) #10
  %21 = ptrtoint ptr %in_entry.0104 to i32
  call void @__asan_load4_noabort(i32 %21)
  %in_entry.0 = load ptr, ptr %in_entry.0104, align 4
  %tobool.not = icmp eq ptr %in_entry.0, null
  br i1 %tobool.not, label %if.end13.for.end_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end13.for.end_crit_edge, %if.end.for.end_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9) #10
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10) #10
  %eg_cache = getelementptr inbounds %struct.mpoa_client, ptr %v, i32 0, i32 11
  %22 = ptrtoint ptr %eg_cache to i32
  call void @__asan_load4_noabort(i32 %22)
  %eg_entry.0106 = load ptr, ptr %eg_cache, align 4
  %tobool15.not107 = icmp eq ptr %eg_entry.0106, null
  br i1 %tobool15.not107, label %for.end.for.end52_crit_edge, label %for.end.for.body16_crit_edge

for.end.for.body16_crit_edge:                     ; preds = %for.end
  br label %for.body16

for.end.for.end52_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end52

for.body16:                                       ; preds = %if.end49.for.body16_crit_edge, %for.end.for.body16_crit_edge
  %eg_entry.0108 = phi ptr [ %eg_entry.0, %if.end49.for.body16_crit_edge ], [ %eg_entry.0106, %for.end.for.body16_crit_edge ]
  %in_MPC_data_ATM_addr = getelementptr inbounds %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 8, i32 6
  %time20 = getelementptr inbounds %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 2
  %23 = ptrtoint ptr %time20 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %time20, align 8
  %sub21.neg = sub i64 %24, %call
  %25 = ptrtoint ptr %in_MPC_data_ATM_addr to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %in_MPC_data_ATM_addr, align 1
  %conv27 = zext i8 %26 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %conv27) #10
  %arrayidx.1 = getelementptr %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 8, i32 6, i32 1
  %27 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.1, align 1
  %conv27.1 = zext i8 %28 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %conv27.1) #10
  %arrayidx.2 = getelementptr %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 8, i32 6, i32 2
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.2, align 1
  %conv27.2 = zext i8 %30 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %conv27.2) #10
  %arrayidx.3 = getelementptr %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 8, i32 6, i32 3
  %31 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.3, align 1
  %conv27.3 = zext i8 %32 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %conv27.3) #10
  %arrayidx.4 = getelementptr %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 8, i32 6, i32 4
  %33 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.4, align 1
  %conv27.4 = zext i8 %34 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %conv27.4) #10
  %arrayidx.5 = getelementptr %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 8, i32 6, i32 5
  %35 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.5, align 1
  %conv27.5 = zext i8 %36 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %conv27.5) #10
  %arrayidx.6 = getelementptr %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 8, i32 6, i32 6
  %37 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.6, align 1
  %conv27.6 = zext i8 %38 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %conv27.6) #10
  %arrayidx.7 = getelementptr %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 8, i32 6, i32 7
  %39 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.7, align 1
  %conv27.7 = zext i8 %40 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %conv27.7) #10
  %arrayidx.8 = getelementptr %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 8, i32 6, i32 8
  %41 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.8, align 1
  %conv27.8 = zext i8 %42 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %conv27.8) #10
  %arrayidx.9 = getelementptr %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 8, i32 6, i32 9
  %43 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.9, align 1
  %conv27.9 = zext i8 %44 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %conv27.9) #10
  %arrayidx.10 = getelementptr %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 8, i32 6, i32 10
  %45 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.10, align 1
  %conv27.10 = zext i8 %46 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %conv27.10) #10
  %arrayidx.11 = getelementptr %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 8, i32 6, i32 11
  %47 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.11, align 1
  %conv27.11 = zext i8 %48 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %conv27.11) #10
  %arrayidx.12 = getelementptr %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 8, i32 6, i32 12
  %49 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.12, align 1
  %conv27.12 = zext i8 %50 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %conv27.12) #10
  %arrayidx.13 = getelementptr %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 8, i32 6, i32 13
  %51 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.13, align 1
  %conv27.13 = zext i8 %52 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %conv27.13) #10
  %arrayidx.14 = getelementptr %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 8, i32 6, i32 14
  %53 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.14, align 1
  %conv27.14 = zext i8 %54 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %conv27.14) #10
  %arrayidx.15 = getelementptr %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 8, i32 6, i32 15
  %55 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.15, align 1
  %conv27.15 = zext i8 %56 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %conv27.15) #10
  %arrayidx.16 = getelementptr %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 8, i32 6, i32 16
  %57 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.16, align 1
  %conv27.16 = zext i8 %58 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %conv27.16) #10
  %arrayidx.17 = getelementptr %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 8, i32 6, i32 17
  %59 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.17, align 1
  %conv27.17 = zext i8 %60 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %conv27.17) #10
  %arrayidx.18 = getelementptr %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 8, i32 6, i32 18
  %61 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.18, align 1
  %conv27.18 = zext i8 %62 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %conv27.18) #10
  %arrayidx.19 = getelementptr %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 8, i32 6, i32 19
  %63 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.19, align 1
  %conv27.19 = zext i8 %64 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %conv27.19) #10
  %conv22.neg = trunc i64 %sub21.neg to i32
  %cache_id = getelementptr inbounds %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 8, i32 2
  %65 = ptrtoint ptr %cache_id to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cache_id, align 4
  %entry_state31 = getelementptr inbounds %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 6
  %67 = ptrtoint ptr %entry_state31 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %entry_state31, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %68)
  %69 = icmp ult i16 %68, 3
  br i1 %69, label %switch.lookup109, label %for.body16.egress_state_string.exit_crit_edge

for.body16.egress_state_string.exit_crit_edge:    ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %egress_state_string.exit

switch.lookup109:                                 ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #12
  %70 = sext i16 %68 to i32
  %switch.gep110 = getelementptr inbounds [3 x ptr], ptr @switch.table.mpc_show.28, i32 0, i32 %70
  %71 = ptrtoint ptr %switch.gep110 to i32
  call void @__asan_load4_noabort(i32 %71)
  %switch.load111 = load ptr, ptr %switch.gep110, align 4
  br label %egress_state_string.exit

egress_state_string.exit:                         ; preds = %switch.lookup109, %for.body16.egress_state_string.exit_crit_edge
  %retval.0.i101 = phi ptr [ %switch.load111, %switch.lookup109 ], [ @.str.19, %for.body16.egress_state_string.exit_crit_edge ]
  %holding_time35 = getelementptr inbounds %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 8, i32 7
  %72 = ptrtoint ptr %holding_time35 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %holding_time35, align 4
  %conv36 = zext i16 %73 to i32
  %sub37 = add i32 %conv36, %conv22.neg
  %packets_rcvd = getelementptr inbounds %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 5
  %74 = ptrtoint ptr %packets_rcvd to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %packets_rcvd, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, i32 noundef %66, ptr noundef nonnull %retval.0.i101, i32 noundef %sub37, i32 noundef %75) #10
  %latest_ip_addr = getelementptr inbounds %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 7
  %call39 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %ip_string, ptr noundef nonnull @.str.6, ptr noundef %latest_ip_addr)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, ptr noundef nonnull %ip_string) #10
  %shortcut41 = getelementptr inbounds %struct.eg_cache_entry, ptr %eg_entry.0108, i32 0, i32 4
  %76 = ptrtoint ptr %shortcut41 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %shortcut41, align 4
  %tobool42.not = icmp eq ptr %77, null
  br i1 %tobool42.not, label %egress_state_string.exit.if.end49_crit_edge, label %if.then43

egress_state_string.exit.if.end49_crit_edge:      ; preds = %egress_state_string.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then43:                                        ; preds = %egress_state_string.exit
  call void @__sanitizer_cov_trace_pc() #12
  %vpi45 = getelementptr inbounds %struct.atm_vcc, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %vpi45 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %vpi45, align 4
  %conv46 = sext i16 %79 to i32
  %vci48 = getelementptr inbounds %struct.atm_vcc, ptr %77, i32 0, i32 3
  %80 = ptrtoint ptr %vci48 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %vci48, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, i32 noundef %conv46, i32 noundef %81) #10
  br label %if.end49

if.end49:                                         ; preds = %if.then43, %egress_state_string.exit.if.end49_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9) #10
  %82 = ptrtoint ptr %eg_entry.0108 to i32
  call void @__asan_load4_noabort(i32 %82)
  %eg_entry.0 = load ptr, ptr %eg_entry.0108, align 4
  %tobool15.not = icmp eq ptr %eg_entry.0, null
  br i1 %tobool15.not, label %if.end49.for.end52_crit_edge, label %if.end49.for.body16_crit_edge

if.end49.for.body16_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body16

if.end49.for.end52_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end52

for.end52:                                        ; preds = %if.end49.for.end52_crit_edge, %for.end.for.end52_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end52, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ip_string) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @atm_mpoa_disp_qos(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atm_mpoa_delete_qos(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atm_mpoa_search_qos(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atm_mpoa_add_qos(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !50, !51, !53, !55, !57, !59, !60, !61}
!llvm.named.register.sp = !{!62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/atm/mpoa_proc.c", i32 290, i32 18}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/atm/mpoa_proc.c", i32 292, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mpc_proc_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @mpc_proc_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @mpc_proc_ops, !9, !"mpc_proc_ops", i1 false, i1 false}
!9 = !{!"../net/atm/mpoa_proc.c", i32 56, i32 30}
!10 = !{ptr @mpc_op, !11, !"mpc_op", i1 false, i1 false}
!11 = !{!"../net/atm/mpoa_proc.c", i32 194, i32 36}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/atm/mpoa_proc.c", i32 145, i32 16}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/atm/mpoa_proc.c", i32 146, i32 16}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/atm/mpoa_proc.c", i32 152, i32 22}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/atm/mpoa_proc.c", i32 153, i32 17}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/atm/mpoa_proc.c", i32 160, i32 18}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/atm/mpoa_proc.c", i32 163, i32 17}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/atm/mpoa_proc.c", i32 167, i32 16}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/atm/mpoa_proc.c", i32 173, i32 18}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/atm/mpoa_proc.c", i32 174, i32 17}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/atm/mpoa_proc.c", i32 182, i32 17}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/atm/mpoa_proc.c", i32 185, i32 18}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/atm/mpoa_proc.c", i32 71, i32 10}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/atm/mpoa_proc.c", i32 73, i32 10}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/atm/mpoa_proc.c", i32 75, i32 10}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/atm/mpoa_proc.c", i32 77, i32 10}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/atm/mpoa_proc.c", i32 80, i32 9}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/atm/mpoa_proc.c", i32 92, i32 10}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/atm/mpoa_proc.c", i32 234, i32 3}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @proc_mpc_write._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @proc_mpc_write._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/atm/mpoa_proc.c", i32 253, i32 19}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/atm/mpoa_proc.c", i32 259, i32 19}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/atm/mpoa_proc.c", i32 263, i32 26}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/atm/mpoa_proc.c", i32 275, i32 2}
!59 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @parse_qos._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @parse_qos._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{!"sp"}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 5226401}
!73 = !{i64 5226598}
!74 = !{i64 2152711831}
!75 = !{i64 2156875309, i64 2156875589, i64 2156875923, i64 2156876257}
!76 = !{!"auto-init"}
