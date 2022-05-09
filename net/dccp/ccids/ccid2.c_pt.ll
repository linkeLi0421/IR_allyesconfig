; ModuleID = '/llk/IR_all_yes/net/dccp/ccids/ccid2.c_pt.bc'
source_filename = "../net/dccp/ccids/ccid2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.164 }
%union.anon.164 = type { ptr }
%struct.ccid_operations = type { i8, i32, ptr, ptr, ptr, [32 x i8], [32 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ccid = type { ptr, [0 x i8] }
%struct.dccp_sock = type { %struct.inet_connection_sock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, ptr, i32, i32, i16, i16, i48, i64, i48, i32, %struct.list_head, ptr, ptr, ptr, %struct.dccp_options_received, i8, i32, i8, %struct.tasklet_struct, %struct.timer_list }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.192, %struct.anon.193, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.81, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.118, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.119, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.73, [0 x i32], %union.anon.74, i16, i16, %union.anon.75, %struct.refcount_struct, [0 x i32], %union.anon.76 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { i32 }
%union.anon.74 = type { %struct.hlist_node }
%union.anon.75 = type { i32 }
%union.anon.76 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.81 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.118 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.119 = type { ptr }
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.122 }
%union.anon.122 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.192 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.193 = type { i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.dccp_options_received = type { i48, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.194, i32 }
%union.anon.194 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ccid2_seq = type { i64, i32, i32, ptr, ptr }
%struct.ccid2_hc_tx_sock = type { i32, i32, i32, i32, [128 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i48, %struct.timer_list, ptr, i32, i32, i32, i32, i64, i32, i32, i64, %struct.list_head }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }

@__param_str_ccid2_do_cwv = internal constant [18 x i8] c"dccp.ccid2_do_cwv\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@ccid2_do_cwv = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_ccid2_do_cwv = internal constant %struct.kernel_param { ptr @__param_str_ccid2_do_cwv, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @ccid2_do_cwv } }, section "__param", align 4
@__UNIQUE_ID_ccid2_do_cwvtype599 = internal constant [32 x i8] c"dccp.parmtype=ccid2_do_cwv:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_ccid2_do_cwv600 = internal constant [68 x i8] c"dccp.parm=ccid2_do_cwv:Perform RFC2861 Congestion Window Validation\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TCP-like\00", [23 x i8] zeroinitializer }, align 32
@ccid2_ops = dso_local global { %struct.ccid_operations, [40 x i8] } { %struct.ccid_operations { i8 2, i32 0, ptr @.str, ptr null, ptr null, [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, i32 4, i32 672, ptr null, ptr @ccid2_hc_tx_init, ptr null, ptr @ccid2_hc_tx_exit, ptr @ccid2_hc_rx_packet_recv, ptr null, ptr null, ptr @ccid2_hc_tx_packet_recv, ptr @ccid2_hc_tx_parse_options, ptr @ccid2_hc_tx_send_packet, ptr @ccid2_hc_tx_packet_sent, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__param_str_ccid2_debug = internal constant [17 x i8] c"dccp.ccid2_debug\00", align 1
@ccid2_debug = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_ccid2_debug = internal constant %struct.kernel_param { ptr @__param_str_ccid2_debug, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @ccid2_debug } }, section "__param", align 4
@__UNIQUE_ID_ccid2_debugtype615 = internal constant [31 x i8] c"dccp.parmtype=ccid2_debug:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_ccid2_debug616 = internal constant [51 x i8] c"dccp.parm=ccid2_debug:Enable CCID-2 debug messages\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ccid2_hc_tx_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&hc->tx_rtotimer)\00", [45 x i8] zeroinitializer }, align 32
@ccid2_hc_tx_rto_expire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: RTO_EXPIRE\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ccid2_hc_tx_rto_expire\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/dccp/ccids/ccid2.c\00", [41 x i8] zeroinitializer }, align 32
@ccid2_hc_tx_rto_expire._entry_ptr = internal global ptr @ccid2_hc_tx_rto_expire._entry, section ".printk_index", align 4
@sock_owned_by_me.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@ccid2_change_l_ack_ratio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.4, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: Limiting Ack Ratio (%u) to %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ccid2_change_l_ack_ratio\00", [39 x i8] zeroinitializer }, align 32
@ccid2_change_l_ack_ratio._entry_ptr = internal global ptr @ccid2_change_l_ack_ratio._entry, section ".printk_index", align 4
@ccid2_hc_tx_packet_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: ackvec %llu |%u,%u|\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ccid2_hc_tx_packet_recv\00", [40 x i8] zeroinitializer }, align 32
@ccid2_hc_tx_packet_recv._entry_ptr = internal global ptr @ccid2_hc_tx_packet_recv._entry, section ".printk_index", align 4
@ccid2_hc_tx_packet_recv._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.4, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: Got ack for %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@ccid2_hc_tx_packet_recv._entry_ptr.12 = internal global ptr @ccid2_hc_tx_packet_recv._entry.10, section ".printk_index", align 4
@ccid2_hc_tx_packet_recv._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.4, i32 682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: Packet lost: %llu\0A\00", [39 x i8] zeroinitializer }, align 32
@ccid2_hc_tx_packet_recv._entry_ptr.15 = internal global ptr @ccid2_hc_tx_packet_recv._entry.13, section ".printk_index", align 4
@ccid2_congestion_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: Multiple losses in an RTT---treating as one\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ccid2_congestion_event\00", [41 x i8] zeroinitializer }, align 32
@ccid2_congestion_event._entry_ptr = internal global ptr @ccid2_congestion_event._entry, section ".printk_index", align 4
@__sk_dst_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ccid2_hc_tx_packet_sent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\012packet history - out of memory! at %s:%d/%s()\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ccid2_hc_tx_packet_sent\00", [40 x i8] zeroinitializer }, align 32
@ccid2_hc_tx_packet_sent._entry_ptr = internal global ptr @ccid2_hc_tx_packet_sent._entry, section ".printk_index", align 4
@ccid2_hc_tx_packet_sent._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: cwnd=%d pipe=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@ccid2_hc_tx_packet_sent._entry_ptr.24 = internal global ptr @ccid2_hc_tx_packet_sent._entry.22, section ".printk_index", align 4
@ccid2_hc_tx_packet_sent._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.4, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: out seq=%llu acked=%d time=%u\0A\00", [59 x i8] zeroinitializer }, align 32
@ccid2_hc_tx_packet_sent._entry_ptr.27 = internal global ptr @ccid2_hc_tx_packet_sent._entry.25, section ".printk_index", align 4
@ccid2_hc_tx_packet_sent._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.4, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: =========\0A\00", [47 x i8] zeroinitializer }, align 32
@ccid2_hc_tx_packet_sent._entry_ptr.30 = internal global ptr @ccid2_hc_tx_packet_sent._entry.28, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 4, i64 2, i64 4]
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"ccid2_do_cwv\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 178, i32 13 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 778, i32 18 }
@___asan_gen_.37 = private unnamed_addr constant [10 x i8] c"ccid2_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 776, i32 24 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"ccid2_debug\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 19, i32 13 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 745, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 139, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1750, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 85, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 595, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 630, i32 6 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 681, i32 5 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 485, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 2067, i32 9 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 276, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 285, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 343, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [26 x i8] c"../net/dccp/ccids/ccid2.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 349, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_ccid2_debug616, ptr @__UNIQUE_ID_ccid2_debugtype615, ptr @__UNIQUE_ID_ccid2_do_cwv600, ptr @__UNIQUE_ID_ccid2_do_cwvtype599, ptr @__param_ccid2_debug, ptr @__param_ccid2_do_cwv, ptr @ccid2_change_l_ack_ratio._entry, ptr @ccid2_change_l_ack_ratio._entry_ptr, ptr @ccid2_congestion_event._entry, ptr @ccid2_congestion_event._entry_ptr, ptr @ccid2_hc_tx_packet_recv._entry, ptr @ccid2_hc_tx_packet_recv._entry.10, ptr @ccid2_hc_tx_packet_recv._entry.13, ptr @ccid2_hc_tx_packet_recv._entry_ptr, ptr @ccid2_hc_tx_packet_recv._entry_ptr.12, ptr @ccid2_hc_tx_packet_recv._entry_ptr.15, ptr @ccid2_hc_tx_packet_sent._entry, ptr @ccid2_hc_tx_packet_sent._entry.22, ptr @ccid2_hc_tx_packet_sent._entry.25, ptr @ccid2_hc_tx_packet_sent._entry.28, ptr @ccid2_hc_tx_packet_sent._entry_ptr, ptr @ccid2_hc_tx_packet_sent._entry_ptr.24, ptr @ccid2_hc_tx_packet_sent._entry_ptr.27, ptr @ccid2_hc_tx_packet_sent._entry_ptr.30, ptr @ccid2_hc_tx_rto_expire._entry, ptr @ccid2_hc_tx_rto_expire._entry_ptr, ptr @ccid2_do_cwv, ptr @.str, ptr @ccid2_ops, ptr @ccid2_debug, ptr @ccid2_hc_tx_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid2_do_cwv to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid2_ops to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid2_debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid2_hc_tx_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid2_hc_tx_rto_expire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid2_change_l_ack_ratio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid2_hc_tx_packet_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid2_hc_tx_packet_recv._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid2_hc_tx_packet_recv._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid2_congestion_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid2_hc_tx_packet_sent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid2_hc_tx_packet_sent._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid2_hc_tx_packet_sent._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid2_hc_tx_packet_sent._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccid2_hc_tx_init(ptr noundef %ccid, ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ccid_priv.i = getelementptr inbounds %struct.ccid, ptr %ccid, i32 0, i32 1
  %tx_ssthresh = getelementptr inbounds %struct.ccid, ptr %ccid, i32 2
  %0 = ptrtoint ptr %tx_ssthresh to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tx_ssthresh, align 4
  %dccps_mss_cache = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 12
  %1 = ptrtoint ptr %dccps_mss_cache to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dccps_mss_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1096, i32 %2)
  %cmp.i = icmp ult i32 %2, 1096
  call void @__sanitizer_cov_trace_const_cmp4(i32 2190, i32 %2)
  %cmp1.i = icmp ugt i32 %2, 2190
  %cond.i = select i1 %cmp1.i, i32 2, i32 3
  %cond2.i = select i1 %cmp.i, i32 4, i32 %cond.i
  %3 = ptrtoint ptr %ccid_priv.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond2.i, ptr %ccid_priv.i, align 8
  %tx_expected_wnd = getelementptr inbounds %struct.ccid, ptr %ccid, i32 157
  %4 = ptrtoint ptr %tx_expected_wnd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond2.i, ptr %tx_expected_wnd, align 8
  %sub = add nuw nsw i32 %cond2.i, 1
  %div37 = lshr i32 %sub, 1
  %dccps_l_ack_ratio = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 16
  %5 = ptrtoint ptr %dccps_l_ack_ratio to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %dccps_l_ack_ratio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp = icmp eq i16 %6, 0
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div37, i32 %conv)
  %cmp8 = icmp ult i32 %div37, %conv
  %or.cond = select i1 %cmp, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv10 = trunc i32 %div37 to i16
  %7 = ptrtoint ptr %dccps_l_ack_ratio to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv10, ptr %dccps_l_ack_ratio, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_seqbufc.i = getelementptr inbounds %struct.ccid, ptr %ccid, i32 133
  %8 = ptrtoint ptr %tx_seqbufc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_seqbufc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %9)
  %cmp.i38 = icmp ugt i32 %9, 127
  br i1 %cmp.i38, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %10 = tail call i32 @llvm.read_register.i32(metadata !78) #8
  %and.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %and.i.i = and i32 %13, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 3264, i32 2592
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 24576, i32 noundef %cond.i.i, i32 noundef 3) #11
  %cmp2.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.062.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.062.i, 1
  %arrayidx.i = getelementptr %struct.ccid2_seq, ptr %call1.i.i.i.i, i32 %add.i
  %arrayidx6.i = getelementptr %struct.ccid2_seq, ptr %call1.i.i.i.i, i32 %i.062.i
  %ccid2s_next.i = getelementptr %struct.ccid2_seq, ptr %call1.i.i.i.i, i32 %i.062.i, i32 4
  %14 = ptrtoint ptr %ccid2s_next.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.i, ptr %ccid2s_next.i, align 4
  %ccid2s_prev.i = getelementptr %struct.ccid2_seq, ptr %call1.i.i.i.i, i32 %add.i, i32 3
  %15 = ptrtoint ptr %ccid2s_prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx6.i, ptr %ccid2s_prev.i, align 8
  %exitcond.not.i = icmp eq i32 %add.i, 1023
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %arrayidx10.i = getelementptr %struct.ccid2_seq, ptr %call1.i.i.i.i, i32 1023
  %ccid2s_next11.i = getelementptr %struct.ccid2_seq, ptr %call1.i.i.i.i, i32 1023, i32 4
  %16 = ptrtoint ptr %ccid2s_next11.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call1.i.i.i.i, ptr %ccid2s_next11.i, align 4
  %ccid2s_prev13.i = getelementptr inbounds %struct.ccid2_seq, ptr %call1.i.i.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %ccid2s_prev13.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx10.i, ptr %ccid2s_prev13.i, align 16
  %18 = ptrtoint ptr %tx_seqbufc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_seqbufc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp15.i = icmp eq i32 %19, 0
  br i1 %cmp15.i, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %tx_seqt.i = getelementptr inbounds %struct.ccid, ptr %ccid, i32 135
  %20 = ptrtoint ptr %tx_seqt.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call1.i.i.i.i, ptr %tx_seqt.i, align 8
  %tx_seqh.i = getelementptr inbounds %struct.ccid, ptr %ccid, i32 134
  %21 = ptrtoint ptr %tx_seqh.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call1.i.i.i.i, ptr %tx_seqh.i, align 4
  br label %if.end14

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %tx_seqh17.i = getelementptr inbounds %struct.ccid, ptr %ccid, i32 134
  %22 = ptrtoint ptr %tx_seqh17.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_seqh17.i, align 4
  %ccid2s_next18.i = getelementptr inbounds %struct.ccid2_seq, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %ccid2s_next18.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call1.i.i.i.i, ptr %ccid2s_next18.i, align 4
  %25 = load ptr, ptr %tx_seqh17.i, align 4
  %26 = ptrtoint ptr %ccid2s_prev13.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %ccid2s_prev13.i, align 16
  %tx_seqt22.i = getelementptr inbounds %struct.ccid, ptr %ccid, i32 135
  %27 = ptrtoint ptr %tx_seqt22.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx_seqt22.i, align 8
  %ccid2s_prev23.i = getelementptr inbounds %struct.ccid2_seq, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %ccid2s_prev23.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx10.i, ptr %ccid2s_prev23.i, align 8
  %30 = load ptr, ptr %tx_seqt22.i, align 8
  %31 = ptrtoint ptr %ccid2s_next11.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %ccid2s_next11.i, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else.i, %if.then16.i
  %32 = ptrtoint ptr %tx_seqbufc.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_seqbufc.i, align 8
  %arrayidx29.i = getelementptr %struct.ccid2_hc_tx_sock, ptr %ccid_priv.i, i32 0, i32 4, i32 %33
  %34 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call1.i.i.i.i, ptr %arrayidx29.i, align 4
  %35 = load i32, ptr %tx_seqbufc.i, align 8
  %inc31.i = add i32 %35, 1
  store i32 %inc31.i, ptr %tx_seqbufc.i, align 8
  %tx_rto = getelementptr inbounds %struct.ccid, ptr %ccid, i32 140
  %36 = ptrtoint ptr %tx_rto to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 300, ptr %tx_rto, align 4
  %tx_rpdupack = getelementptr inbounds %struct.ccid, ptr %ccid, i32 163
  %37 = ptrtoint ptr %tx_rpdupack to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %tx_rpdupack, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %tx_cwnd_stamp = getelementptr inbounds %struct.ccid, ptr %ccid, i32 158
  %39 = ptrtoint ptr %tx_cwnd_stamp to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %tx_cwnd_stamp, align 4
  %tx_lsndtime = getelementptr inbounds %struct.ccid, ptr %ccid, i32 159
  %40 = ptrtoint ptr %tx_lsndtime to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %38, ptr %tx_lsndtime, align 8
  %tx_last_cong = getelementptr inbounds %struct.ccid, ptr %ccid, i32 164
  %41 = ptrtoint ptr %tx_last_cong to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %38, ptr %tx_last_cong, align 4
  %tx_cwnd_used = getelementptr inbounds %struct.ccid, ptr %ccid, i32 156
  %42 = ptrtoint ptr %tx_cwnd_used to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %tx_cwnd_used, align 4
  %sk15 = getelementptr inbounds %struct.ccid, ptr %ccid, i32 155
  %43 = ptrtoint ptr %sk15 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %sk, ptr %sk15, align 8
  %tx_rtotimer = getelementptr inbounds %struct.ccid, ptr %ccid, i32 143
  tail call void @init_timer_key(ptr noundef %tx_rtotimer, ptr noundef nonnull @ccid2_hc_tx_rto_expire, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @ccid2_hc_tx_init.__key) #8
  %tx_av_chunks = getelementptr inbounds %struct.ccid, ptr %ccid, i32 167
  %44 = ptrtoint ptr %tx_av_chunks to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %tx_av_chunks, ptr %tx_av_chunks, align 4
  %prev.i = getelementptr inbounds %struct.ccid, ptr %ccid, i32 168
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %tx_av_chunks, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccid2_hc_tx_exit(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_hc_tx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  %0 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %ccid_priv.i.i = getelementptr inbounds %struct.ccid, ptr %1, i32 0, i32 1
  %tx_rtotimer = getelementptr inbounds %struct.ccid, ptr %1, i32 143
  tail call void @sk_stop_timer(ptr noundef %sk, ptr noundef %tx_rtotimer) #8
  %tx_seqbufc = getelementptr inbounds %struct.ccid, ptr %1, i32 133
  %2 = ptrtoint ptr %tx_seqbufc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_seqbufc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9 = icmp sgt i32 %3, 0
  br i1 %cmp9, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ccid2_hc_tx_sock, ptr %ccid_priv.i.i, i32 0, i32 4, i32 %i.010
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %5) #8
  %inc = add nuw nsw i32 %i.010, 1
  %6 = ptrtoint ptr %tx_seqbufc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_seqbufc, align 8
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %8 = ptrtoint ptr %tx_seqbufc to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tx_seqbufc, align 8
  %tx_av_chunks = getelementptr inbounds %struct.ccid, ptr %1, i32 167
  tail call void @dccp_ackvec_parsed_cleanup(ptr noundef %tx_av_chunks) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccid2_hc_rx_packet_recv(ptr noundef %sk, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_hc_rx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 24
  %0 = ptrtoint ptr %dccps_hc_rx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_rx_ccid.i, align 8
  %ccid_priv.i.i = getelementptr inbounds %struct.ccid, ptr %1, i32 0, i32 1
  %dccpd_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %2 = ptrtoint ptr %dccpd_type.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %dccpd_type.i, align 8
  %bf.lshr.i = lshr i8 %bf.load.i, 4
  %trunc.i = trunc i8 %bf.lshr.i to i4
  %3 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i4 %trunc.i, label %lor.lhs.false5.i [
    i4 2, label %entry.if.end_crit_edge
    i4 4, label %entry.if.end_crit_edge11
  ]

entry.if.end_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false5.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.load.i)
  %cmp7.i = icmp ult i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.lshr.i)
  %cmp10.i.not = icmp eq i8 %bf.lshr.i, 1
  %or.cond = or i1 %cmp7.i, %cmp10.i.not
  br i1 %or.cond, label %lor.lhs.false5.i.if.end_crit_edge, label %lor.lhs.false5.i.cleanup_crit_edge

lor.lhs.false5.i.cleanup_crit_edge:               ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false5.i.if.end_crit_edge:                ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false5.i.if.end_crit_edge, %entry.if.end_crit_edge, %entry.if.end_crit_edge11
  %4 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ccid_priv.i.i, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ccid_priv.i.i, align 4
  %dccps_r_ack_ratio = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 17
  %6 = ptrtoint ptr %dccps_r_ack_ratio to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dccps_r_ack_ratio, align 2
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp.not = icmp ult i32 %inc, %conv
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dccp_send_ack(ptr noundef %sk) #8
  %8 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ccid_priv.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %lor.lhs.false5.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccid2_hc_tx_packet_recv(ptr noundef %sk, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_hc_tx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  %0 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %ccid_priv.i.i = getelementptr inbounds %struct.ccid, ptr %1, i32 0, i32 1
  %tx_pipe.i = getelementptr inbounds %struct.ccid, ptr %1, i32 3
  %2 = ptrtoint ptr %tx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_pipe.i, align 8
  %4 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ccid_priv.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i.not = icmp ult i32 %3, %5
  %dccpd_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %6 = ptrtoint ptr %dccpd_seq to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dccpd_seq, align 8
  %tx_rpdupack = getelementptr inbounds %struct.ccid, ptr %1, i32 163
  %8 = ptrtoint ptr %tx_rpdupack to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_rpdupack, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp = icmp eq i32 %9, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %tx_rpdupack to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %tx_rpdupack, align 8
  %tx_rpseq = getelementptr inbounds %struct.ccid, ptr %1, i32 161
  %11 = ptrtoint ptr %tx_rpseq to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %7, ptr %tx_rpseq, align 8
  br label %if.end21

if.else:                                          ; preds = %entry
  %tx_rpseq4 = getelementptr inbounds %struct.ccid, ptr %1, i32 161
  %12 = ptrtoint ptr %tx_rpseq4 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tx_rpseq4, align 8
  %add.i = sub i64 %7, %13
  %and.i = and i64 %add.i, 281474976710655
  call void @__sanitizer_cov_trace_const_cmp8(i64 140737488355328, i64 %and.i)
  %cmp.i360 = icmp ult i64 %and.i, 140737488355328
  %masksel.i = select i1 %cmp.i360, i64 0, i64 -281474976710656
  %cond.i = or i64 %masksel.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %cond.i)
  %cmp6 = icmp eq i64 %cond.i, 1
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %tx_rpseq4 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %7, ptr %tx_rpseq4, align 8
  br label %if.end21

if.else9:                                         ; preds = %if.else
  %sub.i = shl i64 %add.i, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i)
  %cmp.i361 = icmp slt i64 %sub.i, 1
  br i1 %cmp.i361, label %if.else9.if.end21_crit_edge, label %if.then12

if.else9.if.end21_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then12:                                        ; preds = %if.else9
  %inc = add nuw i32 %9, 1
  %15 = ptrtoint ptr %tx_rpdupack to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc, ptr %tx_rpdupack, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp15 = icmp sgt i32 %inc, 2
  br i1 %cmp15, label %if.then16, label %if.then12.if.end21_crit_edge

if.then12.if.end21_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %tx_rpdupack to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %tx_rpdupack, align 8
  %17 = ptrtoint ptr %tx_rpseq4 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %tx_rpseq4, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.then12.if.end21_crit_edge, %if.else9.if.end21_crit_edge, %if.then7, %if.then
  %dccpd_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %18 = ptrtoint ptr %dccpd_type.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %dccpd_type.i, align 8
  %bf.lshr.mask.i = and i8 %bf.load.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.lshr.mask.i)
  %cmp.i362 = icmp ne i8 %bf.lshr.mask.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %bf.load.i)
  %cmp3.i = icmp ugt i8 %bf.load.i, 15
  %tobool23.not = and i1 %cmp3.i, %cmp.i362
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup242_crit_edge

if.end21.cleanup242_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup242

if.end25:                                         ; preds = %if.end21
  %tx_seqh = getelementptr inbounds %struct.ccid, ptr %1, i32 134
  %19 = ptrtoint ptr %tx_seqh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_seqh, align 4
  %tx_seqt = getelementptr inbounds %struct.ccid, ptr %1, i32 135
  %21 = ptrtoint ptr %tx_seqt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_seqt, align 8
  %cmp26 = icmp eq ptr %20, %22
  br i1 %cmp26, label %if.end25.done234_crit_edge, label %if.end28

if.end25.done234_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %done234

if.end28:                                         ; preds = %if.end25
  %dccpd_ack_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %23 = ptrtoint ptr %dccpd_ack_seq to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %dccpd_ack_seq, align 8
  %tx_high_ack = getelementptr inbounds %struct.ccid, ptr %1, i32 165
  %25 = ptrtoint ptr %tx_high_ack to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %tx_high_ack, align 8
  %27 = sub i64 %24, %26
  %sub.i363 = shl i64 %27, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i363)
  %cmp.i364 = icmp slt i64 %sub.i363, 1
  br i1 %cmp.i364, label %if.end28.if.end35_crit_edge, label %if.then33

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %tx_high_ack to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %24, ptr %tx_high_ack, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end28.if.end35_crit_edge
  %29 = ptrtoint ptr %tx_seqt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_seqt, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end35
  %seqp.0 = phi ptr [ %30, %if.end35 ], [ %35, %while.body.while.cond_crit_edge ]
  %31 = ptrtoint ptr %seqp.0 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %seqp.0, align 8
  %33 = sub i64 %24, %32
  %sub.i366 = shl i64 %33, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i366)
  %cmp.i367 = icmp slt i64 %sub.i366, 1
  br i1 %cmp.i367, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.cond
  %ccid2s_next = getelementptr inbounds %struct.ccid2_seq, ptr %seqp.0, i32 0, i32 4
  %34 = ptrtoint ptr %ccid2s_next to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ccid2s_next, align 4
  %36 = ptrtoint ptr %tx_seqh to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tx_seqh, align 4
  %cmp40 = icmp eq ptr %35, %37
  br i1 %cmp40, label %if.then41, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.then41:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %ccid2s_prev = getelementptr inbounds %struct.ccid2_seq, ptr %35, i32 0, i32 3
  %38 = ptrtoint ptr %ccid2s_prev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ccid2s_prev, align 8
  br label %while.end

while.end:                                        ; preds = %if.then41, %while.cond.while.end_crit_edge
  %seqp.1 = phi ptr [ %39, %if.then41 ], [ %seqp.0, %while.cond.while.end_crit_edge ]
  %tx_ssthresh = getelementptr inbounds %struct.ccid, ptr %1, i32 2
  %40 = ptrtoint ptr %tx_ssthresh to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_ssthresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %41)
  %cmp44 = icmp ult i32 %5, %41
  br i1 %cmp44, label %if.then45, label %while.end.if.end46_crit_edge

while.end.if.end46_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then45:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %dccps_l_ack_ratio = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 16
  %42 = ptrtoint ptr %dccps_l_ack_ratio to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %dccps_l_ack_ratio, align 4
  %conv = zext i16 %43 to i32
  %sub = add nuw nsw i32 %conv, 1
  %div358 = lshr i32 %sub, 1
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %while.end.if.end46_crit_edge
  %maxincr.0 = phi i32 [ %div358, %if.then45 ], [ 0, %while.end.if.end46_crit_edge ]
  %tx_av_chunks = getelementptr inbounds %struct.ccid, ptr %1, i32 167
  %44 = ptrtoint ptr %tx_av_chunks to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn469 = load ptr, ptr %tx_av_chunks, align 4
  %cmp48.not471 = icmp eq ptr %.pn469, %tx_av_chunks
  br i1 %cmp48.not471, label %if.end46.for.end144_crit_edge, label %for.cond50.preheader.lr.ph

if.end46.for.end144_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end144

for.cond50.preheader.lr.ph:                       ; preds = %if.end46
  %dccps_l_ack_ratio.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 16
  %dccps_l_seq_win.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 18
  %dccps_r_seq_win.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 19
  %dccps_gar.i.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 10
  %dccps_gss62.i.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 8
  %sk_dst_cache.i.i135.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %dep_map.i.i.i136.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %dep_map2.i.i.i139.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %icsk_rto_min.i152.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 7
  br label %for.cond50.preheader

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %for.cond50.preheader.for.cond.loopexit_crit_edge
  %maxincr.2.lcssa = phi i32 [ %maxincr.1472, %for.cond50.preheader.for.cond.loopexit_crit_edge ], [ %maxincr.3.lcssa, %for.inc.for.cond.loopexit_crit_edge ]
  %seqp.3.lcssa = phi ptr [ %seqp.2473, %for.cond50.preheader.for.cond.loopexit_crit_edge ], [ %seqp.5.lcssa, %for.inc.for.cond.loopexit_crit_edge ]
  %ackno.1.lcssa = phi i64 [ %ackno.0474, %for.cond50.preheader.for.cond.loopexit_crit_edge ], [ %and130, %for.inc.for.cond.loopexit_crit_edge ]
  %45 = ptrtoint ptr %.pn475 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn = load ptr, ptr %.pn475, align 4
  %cmp48.not = icmp eq ptr %.pn, %tx_av_chunks
  br i1 %cmp48.not, label %for.cond.loopexit.for.end144_crit_edge, label %for.cond.loopexit.for.cond50.preheader_crit_edge

for.cond.loopexit.for.cond50.preheader_crit_edge: ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond50.preheader

for.cond.loopexit.for.end144_crit_edge:           ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end144

for.cond50.preheader:                             ; preds = %for.cond.loopexit.for.cond50.preheader_crit_edge, %for.cond50.preheader.lr.ph
  %.pn475 = phi ptr [ %.pn469, %for.cond50.preheader.lr.ph ], [ %.pn, %for.cond.loopexit.for.cond50.preheader_crit_edge ]
  %ackno.0474 = phi i64 [ %24, %for.cond50.preheader.lr.ph ], [ %ackno.1.lcssa, %for.cond.loopexit.for.cond50.preheader_crit_edge ]
  %seqp.2473 = phi ptr [ %seqp.1, %for.cond50.preheader.lr.ph ], [ %seqp.3.lcssa, %for.cond.loopexit.for.cond50.preheader_crit_edge ]
  %maxincr.1472 = phi i32 [ %maxincr.0, %for.cond50.preheader.lr.ph ], [ %maxincr.2.lcssa, %for.cond.loopexit.for.cond50.preheader_crit_edge ]
  %avp.0476 = getelementptr i8, ptr %.pn475, i32 -8
  %len = getelementptr i8, ptr %.pn475, i32 -4
  %46 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %len, align 4
  %dec461 = add i8 %47, -1
  store i8 %dec461, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool51.not462 = icmp eq i8 %47, 0
  br i1 %tobool51.not462, label %for.cond50.preheader.for.cond.loopexit_crit_edge, label %for.cond50.preheader.for.body52_crit_edge

for.cond50.preheader.for.body52_crit_edge:        ; preds = %for.cond50.preheader
  br label %for.body52

for.cond50.preheader.for.cond.loopexit_crit_edge: ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

for.body52:                                       ; preds = %for.inc.for.body52_crit_edge, %for.cond50.preheader.for.body52_crit_edge
  %ackno.1465 = phi i64 [ %and130, %for.inc.for.body52_crit_edge ], [ %ackno.0474, %for.cond50.preheader.for.body52_crit_edge ]
  %seqp.3464 = phi ptr [ %seqp.5.lcssa, %for.inc.for.body52_crit_edge ], [ %seqp.2473, %for.cond50.preheader.for.body52_crit_edge ]
  %maxincr.2463 = phi i32 [ %maxincr.3.lcssa, %for.inc.for.body52_crit_edge ], [ %maxincr.1472, %for.cond50.preheader.for.body52_crit_edge ]
  %48 = ptrtoint ptr %avp.0476 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %avp.0476, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 1
  %52 = and i8 %51, 63
  %conv54 = zext i8 %52 to i64
  %add56 = sub i64 %ackno.1465, %conv54
  %53 = load i8, ptr @ccid2_debug, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool57.not = icmp eq i8 %53, 0
  br i1 %tobool57.not, label %for.body52.do.end70_crit_edge, label %do.end

for.body52.do.end70_crit_edge:                    ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end70

do.end:                                           ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #10
  %54 = lshr i8 %51, 6
  %55 = zext i8 %54 to i32
  %conv66 = zext i8 %52 to i32
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i64 noundef %ackno.1465, i32 noundef %55, i32 noundef %conv66) #12
  br label %do.end70

do.end70:                                         ; preds = %do.end, %for.body52.do.end70_crit_edge
  %56 = ptrtoint ptr %seqp.3464 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %seqp.3464, align 8
  %58 = sub i64 %57, %ackno.1465
  %sub.i369449 = shl i64 %58, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i369449)
  %cmp.i370450 = icmp slt i64 %sub.i369449, 1
  br i1 %cmp.i370450, label %do.end70.while.cond86.preheader_crit_edge, label %while.body75.lr.ph

do.end70.while.cond86.preheader_crit_edge:        ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond86.preheader

while.body75.lr.ph:                               ; preds = %do.end70
  %59 = ptrtoint ptr %tx_seqt to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tx_seqt, align 8
  br label %while.body75

while.cond86.preheader:                           ; preds = %if.end80.while.cond86.preheader_crit_edge, %do.end70.while.cond86.preheader_crit_edge
  %seqp.4.lcssa = phi ptr [ %seqp.3464, %do.end70.while.cond86.preheader_crit_edge ], [ %65, %if.end80.while.cond86.preheader_crit_edge ]
  %sub.i372 = shl nuw nsw i64 %conv54, 16
  %61 = ptrtoint ptr %seqp.4.lcssa to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %seqp.4.lcssa, align 8
  %63 = sub i64 %62, %add56
  %sub4.i452 = shl i64 %63, 16
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i372, i64 %sub4.i452)
  %cmp.i373.not453 = icmp ult i64 %sub.i372, %sub4.i452
  br i1 %cmp.i373.not453, label %while.cond86.preheader.for.inc_crit_edge, label %while.cond86.preheader.while.body90_crit_edge

while.cond86.preheader.while.body90_crit_edge:    ; preds = %while.cond86.preheader
  br label %while.body90

while.cond86.preheader.for.inc_crit_edge:         ; preds = %while.cond86.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.body75:                                     ; preds = %if.end80.while.body75_crit_edge, %while.body75.lr.ph
  %seqp.4451 = phi ptr [ %seqp.3464, %while.body75.lr.ph ], [ %65, %if.end80.while.body75_crit_edge ]
  %cmp77 = icmp eq ptr %seqp.4451, %60
  br i1 %cmp77, label %while.body75.for.end144_crit_edge, label %if.end80

while.body75.for.end144_crit_edge:                ; preds = %while.body75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end144

if.end80:                                         ; preds = %while.body75
  %ccid2s_prev81 = getelementptr inbounds %struct.ccid2_seq, ptr %seqp.4451, i32 0, i32 3
  %64 = ptrtoint ptr %ccid2s_prev81 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ccid2s_prev81, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %65, align 8
  %68 = sub i64 %67, %ackno.1465
  %sub.i369 = shl i64 %68, 16
  %cmp.i370 = icmp slt i64 %sub.i369, 1
  br i1 %cmp.i370, label %if.end80.while.cond86.preheader_crit_edge, label %if.end80.while.body75_crit_edge

if.end80.while.body75_crit_edge:                  ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body75

if.end80.while.cond86.preheader_crit_edge:        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond86.preheader

while.body90:                                     ; preds = %cleanup.while.body90_crit_edge, %while.cond86.preheader.while.body90_crit_edge
  %seqp.5455 = phi ptr [ %201, %cleanup.while.body90_crit_edge ], [ %seqp.4.lcssa, %while.cond86.preheader.while.body90_crit_edge ]
  %maxincr.3454 = phi i32 [ %maxincr.7, %cleanup.while.body90_crit_edge ], [ %maxincr.2463, %while.cond86.preheader.while.body90_crit_edge ]
  %69 = ptrtoint ptr %avp.0476 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %avp.0476, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 1
  %73 = and i8 %72, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %72)
  %cmp94.not = icmp ugt i8 %72, -65
  br i1 %cmp94.not, label %while.body90.if.end118_crit_edge, label %land.lhs.true

while.body90.if.end118_crit_edge:                 ; preds = %while.body90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

land.lhs.true:                                    ; preds = %while.body90
  %ccid2s_acked = getelementptr inbounds %struct.ccid2_seq, ptr %seqp.5455, i32 0, i32 2
  %74 = ptrtoint ptr %ccid2s_acked to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ccid2s_acked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool96.not = icmp eq i32 %75, 0
  br i1 %tobool96.not, label %if.then97, label %land.lhs.true.if.end118_crit_edge

land.lhs.true.if.end118_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.then97:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %73)
  %cmp99 = icmp eq i8 %73, 64
  %76 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  br i1 %cmp99, label %if.then101, label %if.else102

if.then101:                                       ; preds = %if.then97
  %ccid2s_sent.i = getelementptr inbounds %struct.ccid2_seq, ptr %seqp.5455, i32 0, i32 1
  %78 = ptrtoint ptr %ccid2s_sent.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ccid2s_sent.i, align 8
  %tx_last_cong.i = getelementptr inbounds %struct.ccid, ptr %77, i32 164
  %80 = ptrtoint ptr %tx_last_cong.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tx_last_cong.i, align 4
  %sub.i375 = sub i32 %79, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i375)
  %cmp.i376 = icmp slt i32 %sub.i375, 0
  br i1 %cmp.i376, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %if.then101
  %82 = load i8, ptr @ccid2_debug, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i = icmp eq i8 %82, 0
  br i1 %tobool.not.i, label %if.end103.thread, label %do.end.i

if.end103.thread:                                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %ccid2s_acked to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %ccid2s_acked, align 4
  br label %do.end116

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #12
  br label %if.end103

if.end6.i:                                        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  %ccid_priv.i.i.i = getelementptr inbounds %struct.ccid, ptr %77, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %84 = load volatile i32, ptr @jiffies, align 128
  %85 = ptrtoint ptr %tx_last_cong.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %tx_last_cong.i, align 4
  %86 = ptrtoint ptr %ccid_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ccid_priv.i.i.i, align 8
  %div25.i = lshr i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %tobool8.not.inv.i = icmp ugt i32 %87, 1
  %div..i = select i1 %tobool8.not.inv.i, i32 %div25.i, i32 1
  %88 = ptrtoint ptr %ccid_priv.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %div..i, ptr %ccid_priv.i.i.i, align 8
  %89 = tail call i32 @llvm.umax.i32(i32 %div..i, i32 2) #8
  %tx_ssthresh.i = getelementptr inbounds %struct.ccid, ptr %77, i32 2
  %90 = ptrtoint ptr %tx_ssthresh.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %tx_ssthresh.i, align 4
  tail call fastcc void @ccid2_check_l_ack_ratio(ptr noundef %sk) #8
  br label %if.end103

if.else102:                                       ; preds = %if.then97
  %ccid_priv.i.i.i378 = getelementptr inbounds %struct.ccid, ptr %77, i32 0, i32 1
  %91 = ptrtoint ptr %ccid_priv.i.i.i378 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ccid_priv.i.i.i378, align 8
  %93 = ptrtoint ptr %dccps_l_ack_ratio.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %dccps_l_ack_ratio.i, align 4
  %conv.i379 = zext i16 %94 to i32
  %div.i = udiv i32 %92, %conv.i379
  %conv3.i = zext i32 %92 to i64
  %95 = ptrtoint ptr %dccps_l_seq_win.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %bf.load.i380 = load i64, ptr %dccps_l_seq_win.i, align 8
  %bf.lshr.i = lshr i64 %bf.load.i380, 16
  call void @__sanitizer_cov_trace_cmp8(i64 %bf.lshr.i, i64 %conv3.i)
  %cmp.i381 = icmp ugt i64 %bf.lshr.i, %conv3.i
  br i1 %cmp.i381, label %land.lhs.true.i, label %if.else102.if.end33.i_crit_edge

if.else102.if.end33.i_crit_edge:                  ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

land.lhs.true.i:                                  ; preds = %if.else102
  %conv5.i = sext i32 %div.i to i64
  %96 = ptrtoint ptr %dccps_r_seq_win.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %bf.load6.i = load i64, ptr %dccps_r_seq_win.i, align 8
  %bf.lshr7.i = lshr i64 %bf.load6.i, 16
  call void @__sanitizer_cov_trace_cmp8(i64 %bf.lshr7.i, i64 %conv5.i)
  %cmp8.i = icmp ugt i64 %bf.lshr7.i, %conv5.i
  br i1 %cmp8.i, label %if.then.i, label %land.lhs.true.i.if.end33.i_crit_edge

land.lhs.true.i.if.end33.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %tx_ssthresh.i382 = getelementptr inbounds %struct.ccid, ptr %77, i32 2
  %97 = ptrtoint ptr %tx_ssthresh.i382 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tx_ssthresh.i382, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %98)
  %cmp11.i = icmp ult i32 %92, %98
  br i1 %cmp11.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxincr.3454)
  %cmp14.not.i = icmp eq i32 %maxincr.3454, 0
  br i1 %cmp14.not.i, label %if.then13.i.if.end33.i_crit_edge, label %land.lhs.true16.i

if.then13.i.if.end33.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

land.lhs.true16.i:                                ; preds = %if.then13.i
  %tx_packets_acked.i = getelementptr inbounds %struct.ccid, ptr %77, i32 4
  %99 = ptrtoint ptr %tx_packets_acked.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tx_packets_acked.i, align 4
  %inc.i = add i32 %100, 1
  store i32 %inc.i, ptr %tx_packets_acked.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc.i)
  %cmp17.i = icmp ugt i32 %inc.i, 1
  br i1 %cmp17.i, label %if.then19.i, label %land.lhs.true16.i.if.end33.i_crit_edge

land.lhs.true16.i.if.end33.i_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then19.i:                                      ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i383 = add nuw i32 %92, 1
  %101 = ptrtoint ptr %ccid_priv.i.i.i378 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %add.i383, ptr %ccid_priv.i.i.i378, align 8
  %sub.i384 = add i32 %maxincr.3454, -1
  br label %if.end33.sink.split.i

if.else.i:                                        ; preds = %if.then.i
  %tx_packets_acked22.i = getelementptr inbounds %struct.ccid, ptr %77, i32 4
  %102 = ptrtoint ptr %tx_packets_acked22.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tx_packets_acked22.i, align 4
  %inc23.i = add i32 %103, 1
  store i32 %inc23.i, ptr %tx_packets_acked22.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc23.i, i32 %92)
  %cmp25.not.i = icmp ult i32 %inc23.i, %92
  br i1 %cmp25.not.i, label %if.else.i.if.end33.i_crit_edge, label %if.then27.i

if.else.i.if.end33.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then27.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %add29.i = add i32 %92, 1
  %104 = ptrtoint ptr %ccid_priv.i.i.i378 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %add29.i, ptr %ccid_priv.i.i.i378, align 8
  br label %if.end33.sink.split.i

if.end33.sink.split.i:                            ; preds = %if.then27.i, %if.then19.i
  %maxincr.4 = phi i32 [ %sub.i384, %if.then19.i ], [ %maxincr.3454, %if.then27.i ]
  %tx_packets_acked.sink.i = phi ptr [ %tx_packets_acked.i, %if.then19.i ], [ %tx_packets_acked22.i, %if.then27.i ]
  %105 = ptrtoint ptr %tx_packets_acked.sink.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %tx_packets_acked.sink.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end33.sink.split.i, %if.else.i.if.end33.i_crit_edge, %land.lhs.true16.i.if.end33.i_crit_edge, %if.then13.i.if.end33.i_crit_edge, %land.lhs.true.i.if.end33.i_crit_edge, %if.else102.if.end33.i_crit_edge
  %maxincr.5 = phi i32 [ 0, %if.then13.i.if.end33.i_crit_edge ], [ %maxincr.4, %if.end33.sink.split.i ], [ %maxincr.3454, %land.lhs.true16.i.if.end33.i_crit_edge ], [ %maxincr.3454, %if.else.i.if.end33.i_crit_edge ], [ %maxincr.3454, %land.lhs.true.i.if.end33.i_crit_edge ], [ %maxincr.3454, %if.else102.if.end33.i_crit_edge ]
  %mul.i = mul i32 %div.i, 5
  %conv34.i = sext i32 %mul.i to i64
  %106 = ptrtoint ptr %dccps_r_seq_win.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %bf.load36.i = load i64, ptr %dccps_r_seq_win.i, align 8
  %bf.lshr37.i = lshr i64 %bf.load36.i, 16
  call void @__sanitizer_cov_trace_cmp8(i64 %bf.lshr37.i, i64 %conv34.i)
  %cmp38.not.i = icmp ugt i64 %bf.lshr37.i, %conv34.i
  br i1 %cmp38.not.i, label %if.else44.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.end33.i
  %107 = ptrtoint ptr %dccps_l_ack_ratio.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %dccps_l_ack_ratio.i, align 4
  %conv42.i = zext i16 %108 to i32
  %mul43.i = shl nuw nsw i32 %conv42.i, 1
  %109 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %ccid_priv.i.i.i.i = getelementptr inbounds %struct.ccid, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %ccid_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ccid_priv.i.i.i.i, align 8
  %sub.i.i = add i32 %112, 1
  %div20.i.i = lshr i32 %sub.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %cmp.i.i = icmp eq i16 %108, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %div20.i.i, i32 %mul43.i)
  %cmp1.i.i = icmp ult i32 %div20.i.i, %mul43.i
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %cmp1.i.i
  br i1 %or.cond.i.i, label %do.body.i.i, label %if.then40.i.if.end58.sink.split.i_crit_edge

if.then40.i.if.end58.sink.split.i_crit_edge:      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.sink.split.i

do.body.i.i:                                      ; preds = %if.then40.i
  %call2.i.i = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.if.end58.sink.split.i_crit_edge, label %do.end.i.i

do.body.i.i.if.end58.sink.split.i_crit_edge:      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.sink.split.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %mul43.i, i32 noundef %div20.i.i) #12
  br label %if.end58.sink.split.i

if.else44.i:                                      ; preds = %if.end33.i
  %div50121.i = lshr i64 %bf.load36.i, 17
  call void @__sanitizer_cov_trace_cmp8(i64 %div50121.i, i64 %conv34.i)
  %cmp51.i = icmp ugt i64 %div50121.i, %conv34.i
  br i1 %cmp51.i, label %if.then53.i, label %if.else44.i.if.end58.i_crit_edge

if.else44.i.if.end58.i_crit_edge:                 ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.then53.i:                                      ; preds = %if.else44.i
  %113 = ptrtoint ptr %dccps_l_ack_ratio.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %dccps_l_ack_ratio.i, align 4
  %115 = lshr i16 %114, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %114)
  %tobool.not.inv.i = icmp ugt i16 %114, 1
  %narrow.i385 = select i1 %tobool.not.inv.i, i16 %115, i16 1
  %div56..i = zext i16 %narrow.i385 to i32
  %116 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %ccid_priv.i.i.i124.i = getelementptr inbounds %struct.ccid, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %ccid_priv.i.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ccid_priv.i.i.i124.i, align 8
  %sub.i125.i = add i32 %119, 1
  %div20.i126.i = lshr i32 %sub.i125.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %narrow.i385)
  %cmp.i127.i = icmp eq i16 %narrow.i385, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %div20.i126.i, i32 %div56..i)
  %cmp1.i128.i = icmp ult i32 %div20.i126.i, %div56..i
  %or.cond.i129.i = select i1 %cmp.i127.i, i1 true, i1 %cmp1.i128.i
  br i1 %or.cond.i129.i, label %do.body.i132.i, label %if.then53.i.if.end58.sink.split.i_crit_edge

if.then53.i.if.end58.sink.split.i_crit_edge:      ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.sink.split.i

do.body.i132.i:                                   ; preds = %if.then53.i
  %call2.i130.i = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i130.i)
  %tobool.not.i131.i = icmp eq i32 %call2.i130.i, 0
  br i1 %tobool.not.i131.i, label %do.body.i132.i.if.end58.sink.split.i_crit_edge, label %do.end.i134.i

do.body.i132.i.if.end58.sink.split.i_crit_edge:   ; preds = %do.body.i132.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.sink.split.i

do.end.i134.i:                                    ; preds = %do.body.i132.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i133.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %div56..i, i32 noundef %div20.i126.i) #12
  br label %if.end58.sink.split.i

if.end58.sink.split.i:                            ; preds = %do.end.i134.i, %do.body.i132.i.if.end58.sink.split.i_crit_edge, %if.then53.i.if.end58.sink.split.i_crit_edge, %do.end.i.i, %do.body.i.i.if.end58.sink.split.i_crit_edge, %if.then40.i.if.end58.sink.split.i_crit_edge
  %val.addr.0.i135.sink.i = phi i32 [ %mul43.i, %if.then40.i.if.end58.sink.split.i_crit_edge ], [ %div20.i.i, %do.end.i.i ], [ %div20.i.i, %do.body.i.i.if.end58.sink.split.i_crit_edge ], [ %div56..i, %if.then53.i.if.end58.sink.split.i_crit_edge ], [ %div20.i126.i, %do.end.i134.i ], [ %div20.i126.i, %do.body.i132.i.if.end58.sink.split.i_crit_edge ]
  %120 = tail call i32 @llvm.umin.i32(i32 %val.addr.0.i135.sink.i, i32 65535) #8
  %conv.i136.i = zext i32 %120 to i64
  %call11.i137.i = tail call i32 @dccp_feat_signal_nn_change(ptr noundef %sk, i8 noundef zeroext 5, i64 noundef %conv.i136.i) #8
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end58.sink.split.i, %if.else44.i.if.end58.i_crit_edge
  %121 = ptrtoint ptr %ccid_priv.i.i.i378 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %ccid_priv.i.i.i378, align 8
  %mul60.i = mul i32 %122, 5
  %conv61.i = zext i32 %mul60.i to i64
  %123 = ptrtoint ptr %dccps_l_seq_win.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %bf.load63.i = load i64, ptr %dccps_l_seq_win.i, align 8
  %bf.lshr64.i = lshr i64 %bf.load63.i, 16
  call void @__sanitizer_cov_trace_cmp8(i64 %bf.lshr64.i, i64 %conv61.i)
  %cmp65.not.i = icmp ugt i64 %bf.lshr64.i, %conv61.i
  br i1 %cmp65.not.i, label %if.else72.i, label %if.then67.i

if.then67.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul71.i = shl nuw nsw i64 %bf.lshr64.i, 1
  br label %if.end88.sink.split.i

if.else72.i:                                      ; preds = %if.end58.i
  %div79122.i = lshr i64 %bf.load63.i, 17
  call void @__sanitizer_cov_trace_cmp8(i64 %div79122.i, i64 %conv61.i)
  %cmp80.i = icmp ugt i64 %div79122.i, %conv61.i
  br i1 %cmp80.i, label %if.else72.i.if.end88.sink.split.i_crit_edge, label %if.else72.i.if.end88.i_crit_edge

if.else72.i.if.end88.i_crit_edge:                 ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88.i

if.else72.i.if.end88.sink.split.i_crit_edge:      ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88.sink.split.i

if.end88.sink.split.i:                            ; preds = %if.else72.i.if.end88.sink.split.i_crit_edge, %if.then67.i
  %div79122.sink.i = phi i64 [ %mul71.i, %if.then67.i ], [ %div79122.i, %if.else72.i.if.end88.sink.split.i_crit_edge ]
  %124 = tail call i64 @llvm.umax.i64(i64 %div79122.sink.i, i64 32) #8
  %125 = tail call i64 @llvm.umin.i64(i64 %124, i64 70368744177663) #8
  %call.i139.i = tail call i32 @dccp_feat_signal_nn_change(ptr noundef %sk, i8 noundef zeroext 3, i64 noundef %125) #8
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.end88.sink.split.i, %if.else72.i.if.end88.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %126 = load volatile i32, ptr @jiffies, align 128
  %ccid2s_sent.i386 = getelementptr inbounds %struct.ccid2_seq, ptr %seqp.5455, i32 0, i32 1
  %127 = ptrtoint ptr %ccid2s_sent.i386 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %ccid2s_sent.i386, align 8
  %sub89.i = sub i32 %126, %128
  %129 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %128)
  %tobool.not.i141.i = icmp eq i32 %126, %128
  %..i.i = select i1 %tobool.not.i141.i, i32 1, i32 %sub89.i
  %tx_srtt.i.i = getelementptr inbounds %struct.ccid, ptr %130, i32 136
  %131 = ptrtoint ptr %tx_srtt.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %tx_srtt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp.i142.i = icmp eq i32 %132, 0
  br i1 %cmp.i142.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end88.i
  %shl.i.i = shl i32 %..i.i, 3
  %133 = ptrtoint ptr %tx_srtt.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %shl.i.i, ptr %tx_srtt.i.i, align 4
  %shl2.i.i = shl i32 %..i.i, 1
  %tx_mdev.i.i = getelementptr inbounds %struct.ccid, ptr %130, i32 137
  %134 = ptrtoint ptr %tx_mdev.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %shl2.i.i, ptr %tx_mdev.i.i, align 8
  %135 = ptrtoint ptr %sk_dst_cache.i.i135.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile ptr, ptr %sk_dst_cache.i.i135.i.i, align 4
  %call.i.i.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i136.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %lockdep_sock_is_held.exit.i.i.i.i, label %if.then.i.i.__sk_dst_get.exit.i.i.i_crit_edge

if.then.i.i.__sk_dst_get.exit.i.i.i_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i.i.i

lockdep_sock_is_held.exit.i.i.i.i:                ; preds = %if.then.i.i
  %call.i6.i.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i139.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i.i.i)
  %tobool4.i.not.i.i.i.i = icmp eq i32 %call.i6.i.i.i.i.i, 0
  br i1 %tobool4.i.not.i.i.i.i, label %lor.lhs.false.i.i.i.i, label %lockdep_sock_is_held.exit.i.i.i.i.__sk_dst_get.exit.i.i.i_crit_edge

lockdep_sock_is_held.exit.i.i.i.i.__sk_dst_get.exit.i.i.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %lockdep_sock_is_held.exit.i.i.i.i
  %call2.i.i.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %lor.lhs.false.i.i.i.i.__sk_dst_get.exit.i.i.i_crit_edge

lor.lhs.false.i.i.i.i.__sk_dst_get.exit.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %lor.lhs.false.i.i.i.i
  %call3.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call3.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %land.lhs.true.i.i.i.i.__sk_dst_get.exit.i.i.i_crit_edge, label %land.lhs.true5.i.i.i.i

land.lhs.true.i.i.i.i.__sk_dst_get.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i.i.i

land.lhs.true5.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b11.i.i.i.i = load i1, ptr @__sk_dst_get.__warned, align 1
  br i1 %.b11.i.i.i.i, label %land.lhs.true5.i.i.i.i.__sk_dst_get.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true5.i.i.i.i.__sk_dst_get.exit.i.i.i_crit_edge: ; preds = %land.lhs.true5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2068, ptr noundef nonnull @.str.18) #8
  br label %__sk_dst_get.exit.i.i.i

__sk_dst_get.exit.i.i.i:                          ; preds = %if.then.i.i.i.i, %land.lhs.true5.i.i.i.i.__sk_dst_get.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.__sk_dst_get.exit.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.__sk_dst_get.exit.i.i.i_crit_edge, %lockdep_sock_is_held.exit.i.i.i.i.__sk_dst_get.exit.i.i.i_crit_edge, %if.then.i.i.__sk_dst_get.exit.i.i.i_crit_edge
  %137 = ptrtoint ptr %icsk_rto_min.i152.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %icsk_rto_min.i152.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %136, null
  br i1 %tobool.not.i.i.i, label %__sk_dst_get.exit.i.i.i.tcp_rto_min.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

__sk_dst_get.exit.i.i.i.tcp_rto_min.exit.i.i_crit_edge: ; preds = %__sk_dst_get.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tcp_rto_min.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %__sk_dst_get.exit.i.i.i
  %_metrics.i.i.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %136, i32 0, i32 2
  %139 = ptrtoint ptr %_metrics.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %_metrics.i.i.i.i.i.i, align 4
  %and.i.i.i.i.i.i = and i32 %140, -4
  %141 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 4
  %and.i.i.i.i = and i32 %143, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.tcp_rto_min.exit.i.i_crit_edge, label %if.else.i.i.i.i.i

land.lhs.true.i.i.i.tcp_rto_min.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tcp_rto_min.exit.i.i

if.else.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i.i.i.i.i = getelementptr i32, ptr %141, i32 12
  %144 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx.i.i.i.i.i.i, align 4
  %call2.i.i.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %145) #8
  br label %tcp_rto_min.exit.i.i

tcp_rto_min.exit.i.i:                             ; preds = %if.else.i.i.i.i.i, %land.lhs.true.i.i.i.tcp_rto_min.exit.i.i_crit_edge, %__sk_dst_get.exit.i.i.i.tcp_rto_min.exit.i.i_crit_edge
  %rto_min.0.i.i.i = phi i32 [ %138, %land.lhs.true.i.i.i.tcp_rto_min.exit.i.i_crit_edge ], [ %138, %__sk_dst_get.exit.i.i.i.tcp_rto_min.exit.i.i_crit_edge ], [ %call2.i.i.i.i.i, %if.else.i.i.i.i.i ]
  %146 = tail call i32 @llvm.umax.i32(i32 %shl2.i.i, i32 %rto_min.0.i.i.i) #8
  %tx_mdev_max.i.i = getelementptr inbounds %struct.ccid, ptr %130, i32 138
  %147 = ptrtoint ptr %tx_mdev_max.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %tx_mdev_max.i.i, align 4
  %tx_rttvar.i.i = getelementptr inbounds %struct.ccid, ptr %130, i32 139
  %148 = ptrtoint ptr %tx_rttvar.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %146, ptr %tx_rttvar.i.i, align 8
  %149 = ptrtoint ptr %dccps_gss62.i.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %dccps_gss62.i.i, align 8
  %tx_rtt_seq.i.i = getelementptr inbounds %struct.ccid, ptr %130, i32 141
  %151 = ptrtoint ptr %tx_rtt_seq.i.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %bf.load.i.i = load i64, ptr %tx_rtt_seq.i.i, align 8
  %bf.shl.i.i = shl i64 %150, 16
  %bf.clear.i.i = and i64 %bf.load.i.i, 65535
  %bf.set.i.i = or i64 %bf.clear.i.i, %bf.shl.i.i
  store i64 %bf.set.i.i, ptr %tx_rtt_seq.i.i, align 8
  br label %ccid2_new_ack.exit

if.else.i.i:                                      ; preds = %if.end88.i
  %shr.i.i = lshr i32 %132, 3
  %sub.i143.i = sub i32 %..i.i, %shr.i.i
  %add.i.i = add i32 %sub.i143.i, %132
  %152 = ptrtoint ptr %tx_srtt.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %add.i.i, ptr %tx_srtt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i143.i)
  %cmp14.i.i = icmp slt i32 %sub.i143.i, 0
  %tx_mdev17.i.i = getelementptr inbounds %struct.ccid, ptr %130, i32 137
  %153 = ptrtoint ptr %tx_mdev17.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %tx_mdev17.i.i, align 8
  %shr18.i.i = lshr i32 %154, 2
  br i1 %cmp14.i.i, label %if.then15.i.i, label %if.else23.i.i

if.then15.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %155 = add nsw i32 %sub.i143.i, %shr18.i.i
  %sub19.i.i = sub i32 0, %155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub19.i.i)
  %cmp20.i.i = icmp sgt i32 %sub19.i.i, 0
  %shr22.i.i = ashr i32 %sub19.i.i, 3
  %spec.select.i.i = select i1 %cmp20.i.i, i32 %shr22.i.i, i32 %sub19.i.i
  br label %if.end27.i.i

if.else23.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub26.i.i = sub nsw i32 %sub.i143.i, %shr18.i.i
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.else23.i.i, %if.then15.i.i
  %m.0.i.i = phi i32 [ %sub26.i.i, %if.else23.i.i ], [ %spec.select.i.i, %if.then15.i.i ]
  %add29.i.i = add i32 %m.0.i.i, %154
  %156 = ptrtoint ptr %tx_mdev17.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %add29.i.i, ptr %tx_mdev17.i.i, align 8
  %tx_mdev_max31.i.i = getelementptr inbounds %struct.ccid, ptr %130, i32 138
  %157 = ptrtoint ptr %tx_mdev_max31.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %tx_mdev_max31.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add29.i.i, i32 %158)
  %cmp32.i.i = icmp ugt i32 %add29.i.i, %158
  br i1 %cmp32.i.i, label %if.then33.i.i, label %if.end27.i.i.if.end43.i.i_crit_edge

if.end27.i.i.if.end43.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i.i

if.then33.i.i:                                    ; preds = %if.end27.i.i
  %159 = ptrtoint ptr %tx_mdev_max31.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %add29.i.i, ptr %tx_mdev_max31.i.i, align 4
  %tx_rttvar37.i.i = getelementptr inbounds %struct.ccid, ptr %130, i32 139
  %160 = ptrtoint ptr %tx_rttvar37.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %tx_rttvar37.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add29.i.i, i32 %161)
  %cmp38.i.i = icmp ugt i32 %add29.i.i, %161
  br i1 %cmp38.i.i, label %if.then39.i.i, label %if.then33.i.i.if.end43.i.i_crit_edge

if.then33.i.i.if.end43.i.i_crit_edge:             ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i.i

if.then39.i.i:                                    ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %162 = ptrtoint ptr %tx_rttvar37.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %add29.i.i, ptr %tx_rttvar37.i.i, align 8
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.then39.i.i, %if.then33.i.i.if.end43.i.i_crit_edge, %if.end27.i.i.if.end43.i.i_crit_edge
  %tx_rtt_seq44.i.i = getelementptr inbounds %struct.ccid, ptr %130, i32 141
  %163 = ptrtoint ptr %tx_rtt_seq44.i.i to i32
  call void @__asan_load8_noabort(i32 %163)
  %bf.load45.i.i = load i64, ptr %tx_rtt_seq44.i.i, align 8
  %bf.lshr.i.i = lshr i64 %bf.load45.i.i, 16
  %164 = ptrtoint ptr %dccps_gar.i.i to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %dccps_gar.i.i, align 8
  %166 = sub i64 %165, %bf.lshr.i.i
  %sub.i.i.i = shl i64 %166, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i64 %sub.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end43.i.i.ccid2_new_ack.exit_crit_edge, label %if.then49.i.i

if.end43.i.i.ccid2_new_ack.exit_crit_edge:        ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ccid2_new_ack.exit

if.then49.i.i:                                    ; preds = %if.end43.i.i
  %167 = ptrtoint ptr %tx_mdev_max31.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %tx_mdev_max31.i.i, align 4
  %tx_rttvar51.i.i = getelementptr inbounds %struct.ccid, ptr %130, i32 139
  %169 = ptrtoint ptr %tx_rttvar51.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %tx_rttvar51.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %168)
  %cmp52.i.i = icmp ugt i32 %170, %168
  br i1 %cmp52.i.i, label %if.then53.i.i, label %if.then49.i.i.if.end60.i.i_crit_edge

if.then49.i.i.if.end60.i.i_crit_edge:             ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60.i.i

if.then53.i.i:                                    ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub56.i.i = sub i32 %170, %168
  %shr57.i.i = lshr i32 %sub56.i.i, 2
  %sub59.i.i = sub i32 %170, %shr57.i.i
  %171 = ptrtoint ptr %tx_rttvar51.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %sub59.i.i, ptr %tx_rttvar51.i.i, align 8
  br label %if.end60.i.i

if.end60.i.i:                                     ; preds = %if.then53.i.i, %if.then49.i.i.if.end60.i.i_crit_edge
  %172 = ptrtoint ptr %dccps_gss62.i.i to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %dccps_gss62.i.i, align 8
  %174 = ptrtoint ptr %tx_rtt_seq44.i.i to i32
  call void @__asan_load8_noabort(i32 %174)
  %bf.load64.i.i = load i64, ptr %tx_rtt_seq44.i.i, align 8
  %bf.shl66.i.i = shl i64 %173, 16
  %bf.clear67.i.i = and i64 %bf.load64.i.i, 65535
  %bf.set68.i.i = or i64 %bf.clear67.i.i, %bf.shl66.i.i
  store i64 %bf.set68.i.i, ptr %tx_rtt_seq44.i.i, align 8
  %175 = ptrtoint ptr %sk_dst_cache.i.i135.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile ptr, ptr %sk_dst_cache.i.i135.i.i, align 4
  %call.i.i.i.i137.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i136.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i137.i.i)
  %tobool.not.i.i.i138.i.i = icmp eq i32 %call.i.i.i.i137.i.i, 0
  br i1 %tobool.not.i.i.i138.i.i, label %lockdep_sock_is_held.exit.i.i142.i.i, label %if.end60.i.i.__sk_dst_get.exit.i154.i.i_crit_edge

if.end60.i.i.__sk_dst_get.exit.i154.i.i_crit_edge: ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i154.i.i

lockdep_sock_is_held.exit.i.i142.i.i:             ; preds = %if.end60.i.i
  %call.i6.i.i.i140.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i139.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i140.i.i)
  %tobool4.i.not.i.i141.i.i = icmp eq i32 %call.i6.i.i.i140.i.i, 0
  br i1 %tobool4.i.not.i.i141.i.i, label %lor.lhs.false.i.i145.i.i, label %lockdep_sock_is_held.exit.i.i142.i.i.__sk_dst_get.exit.i154.i.i_crit_edge

lockdep_sock_is_held.exit.i.i142.i.i.__sk_dst_get.exit.i154.i.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i142.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i154.i.i

lor.lhs.false.i.i145.i.i:                         ; preds = %lockdep_sock_is_held.exit.i.i142.i.i
  %call2.i.i143.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i143.i.i)
  %tobool.not.i.i144.i.i = icmp eq i32 %call2.i.i143.i.i, 0
  br i1 %tobool.not.i.i144.i.i, label %land.lhs.true.i.i148.i.i, label %lor.lhs.false.i.i145.i.i.__sk_dst_get.exit.i154.i.i_crit_edge

lor.lhs.false.i.i145.i.i.__sk_dst_get.exit.i154.i.i_crit_edge: ; preds = %lor.lhs.false.i.i145.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i154.i.i

land.lhs.true.i.i148.i.i:                         ; preds = %lor.lhs.false.i.i145.i.i
  %call3.i.i146.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i146.i.i)
  %tobool4.not.i.i147.i.i = icmp eq i32 %call3.i.i146.i.i, 0
  br i1 %tobool4.not.i.i147.i.i, label %land.lhs.true.i.i148.i.i.__sk_dst_get.exit.i154.i.i_crit_edge, label %land.lhs.true5.i.i150.i.i

land.lhs.true.i.i148.i.i.__sk_dst_get.exit.i154.i.i_crit_edge: ; preds = %land.lhs.true.i.i148.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i154.i.i

land.lhs.true5.i.i150.i.i:                        ; preds = %land.lhs.true.i.i148.i.i
  %.b11.i.i149.i.i = load i1, ptr @__sk_dst_get.__warned, align 1
  br i1 %.b11.i.i149.i.i, label %land.lhs.true5.i.i150.i.i.__sk_dst_get.exit.i154.i.i_crit_edge, label %if.then.i.i151.i.i

land.lhs.true5.i.i150.i.i.__sk_dst_get.exit.i154.i.i_crit_edge: ; preds = %land.lhs.true5.i.i150.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i154.i.i

if.then.i.i151.i.i:                               ; preds = %land.lhs.true5.i.i150.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2068, ptr noundef nonnull @.str.18) #8
  br label %__sk_dst_get.exit.i154.i.i

__sk_dst_get.exit.i154.i.i:                       ; preds = %if.then.i.i151.i.i, %land.lhs.true5.i.i150.i.i.__sk_dst_get.exit.i154.i.i_crit_edge, %land.lhs.true.i.i148.i.i.__sk_dst_get.exit.i154.i.i_crit_edge, %lor.lhs.false.i.i145.i.i.__sk_dst_get.exit.i154.i.i_crit_edge, %lockdep_sock_is_held.exit.i.i142.i.i.__sk_dst_get.exit.i154.i.i_crit_edge, %if.end60.i.i.__sk_dst_get.exit.i154.i.i_crit_edge
  %177 = ptrtoint ptr %icsk_rto_min.i152.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %icsk_rto_min.i152.i.i, align 8
  %tobool.not.i153.i.i = icmp eq ptr %176, null
  br i1 %tobool.not.i153.i.i, label %__sk_dst_get.exit.i154.i.i.tcp_rto_min.exit170.i.i_crit_edge, label %land.lhs.true.i159.i.i

__sk_dst_get.exit.i154.i.i.tcp_rto_min.exit170.i.i_crit_edge: ; preds = %__sk_dst_get.exit.i154.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tcp_rto_min.exit170.i.i

land.lhs.true.i159.i.i:                           ; preds = %__sk_dst_get.exit.i154.i.i
  %_metrics.i.i.i.i155.i.i = getelementptr inbounds %struct.dst_entry, ptr %176, i32 0, i32 2
  %179 = ptrtoint ptr %_metrics.i.i.i.i155.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %_metrics.i.i.i.i155.i.i, align 4
  %and.i.i.i.i156.i.i = and i32 %180, -4
  %181 = inttoptr i32 %and.i.i.i.i156.i.i to ptr
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %181, align 4
  %and.i.i157.i.i = and i32 %183, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i157.i.i)
  %tobool3.not.i158.i.i = icmp eq i32 %and.i.i157.i.i, 0
  br i1 %tobool3.not.i158.i.i, label %land.lhs.true.i159.i.i.tcp_rto_min.exit170.i.i_crit_edge, label %if.else.i.i.i168.i.i

land.lhs.true.i159.i.i.tcp_rto_min.exit170.i.i_crit_edge: ; preds = %land.lhs.true.i159.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tcp_rto_min.exit170.i.i

if.else.i.i.i168.i.i:                             ; preds = %land.lhs.true.i159.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i.i.i160.i.i = getelementptr i32, ptr %181, i32 12
  %184 = ptrtoint ptr %arrayidx.i.i.i.i160.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx.i.i.i.i160.i.i, align 4
  %call2.i.i.i167.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %185) #8
  br label %tcp_rto_min.exit170.i.i

tcp_rto_min.exit170.i.i:                          ; preds = %if.else.i.i.i168.i.i, %land.lhs.true.i159.i.i.tcp_rto_min.exit170.i.i_crit_edge, %__sk_dst_get.exit.i154.i.i.tcp_rto_min.exit170.i.i_crit_edge
  %rto_min.0.i169.i.i = phi i32 [ %178, %land.lhs.true.i159.i.i.tcp_rto_min.exit170.i.i_crit_edge ], [ %178, %__sk_dst_get.exit.i154.i.i.tcp_rto_min.exit170.i.i_crit_edge ], [ %call2.i.i.i167.i.i, %if.else.i.i.i168.i.i ]
  %186 = ptrtoint ptr %tx_mdev_max31.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %rto_min.0.i169.i.i, ptr %tx_mdev_max31.i.i, align 4
  br label %ccid2_new_ack.exit

ccid2_new_ack.exit:                               ; preds = %tcp_rto_min.exit170.i.i, %if.end43.i.i.ccid2_new_ack.exit_crit_edge, %tcp_rto_min.exit.i.i
  %187 = ptrtoint ptr %tx_srtt.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %tx_srtt.i.i, align 4
  %shr74.i.i = lshr i32 %188, 3
  %tx_rttvar75.i.i = getelementptr inbounds %struct.ccid, ptr %130, i32 139
  %189 = ptrtoint ptr %tx_rttvar75.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %tx_rttvar75.i.i, align 8
  %add76.i.i = add i32 %shr74.i.i, %190
  %191 = tail call i32 @llvm.umin.i32(i32 %add76.i.i, i32 6400) #8
  %tx_rto.i.i = getelementptr inbounds %struct.ccid, ptr %130, i32 140
  %192 = ptrtoint ptr %tx_rto.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %tx_rto.i.i, align 4
  br label %if.end103

if.end103:                                        ; preds = %ccid2_new_ack.exit, %if.end6.i, %do.end.i
  %maxincr.6.ph = phi i32 [ %maxincr.3454, %if.end6.i ], [ %maxincr.3454, %do.end.i ], [ %maxincr.5, %ccid2_new_ack.exit ]
  %.pr = load i8, ptr @ccid2_debug, align 1
  %193 = ptrtoint ptr %ccid2s_acked to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 1, ptr %ccid2s_acked, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool106.not = icmp eq i8 %.pr, 0
  br i1 %tobool106.not, label %if.end103.do.end116_crit_edge, label %do.end110

if.end103.do.end116_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end116

do.end110:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  %194 = ptrtoint ptr %seqp.5455 to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %seqp.5455, align 8
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i64 noundef %195) #12
  br label %do.end116

do.end116:                                        ; preds = %do.end110, %if.end103.do.end116_crit_edge, %if.end103.thread
  %maxincr.6416 = phi i32 [ %maxincr.3454, %if.end103.thread ], [ %maxincr.6.ph, %do.end110 ], [ %maxincr.6.ph, %if.end103.do.end116_crit_edge ]
  %196 = ptrtoint ptr %tx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %tx_pipe.i, align 8
  %dec117 = add i32 %197, -1
  store i32 %dec117, ptr %tx_pipe.i, align 8
  br label %if.end118

if.end118:                                        ; preds = %do.end116, %land.lhs.true.if.end118_crit_edge, %while.body90.if.end118_crit_edge
  %maxincr.7 = phi i32 [ %maxincr.3454, %while.body90.if.end118_crit_edge ], [ %maxincr.6416, %do.end116 ], [ %maxincr.3454, %land.lhs.true.if.end118_crit_edge ]
  %198 = ptrtoint ptr %tx_seqt to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %tx_seqt, align 8
  %cmp120 = icmp eq ptr %seqp.5455, %199
  br i1 %cmp120, label %if.end118.for.end144_crit_edge, label %cleanup

if.end118.for.end144_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end144

cleanup:                                          ; preds = %if.end118
  %ccid2s_prev124 = getelementptr inbounds %struct.ccid2_seq, ptr %seqp.5455, i32 0, i32 3
  %200 = ptrtoint ptr %ccid2s_prev124 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %ccid2s_prev124, align 8
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %201, align 8
  %204 = sub i64 %203, %add56
  %sub4.i = shl i64 %204, 16
  %cmp.i373.not = icmp ult i64 %sub.i372, %sub4.i
  br i1 %cmp.i373.not, label %cleanup.for.inc_crit_edge, label %cleanup.while.body90_crit_edge

cleanup.while.body90_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body90

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %while.cond86.preheader.for.inc_crit_edge
  %maxincr.3.lcssa = phi i32 [ %maxincr.2463, %while.cond86.preheader.for.inc_crit_edge ], [ %maxincr.7, %cleanup.for.inc_crit_edge ]
  %seqp.5.lcssa = phi ptr [ %seqp.4.lcssa, %while.cond86.preheader.for.inc_crit_edge ], [ %201, %cleanup.for.inc_crit_edge ]
  %add129 = add i64 %add56, 281474976710655
  %and130 = and i64 %add129, 281474976710655
  %205 = ptrtoint ptr %avp.0476 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %avp.0476, align 4
  %incdec.ptr = getelementptr i8, ptr %206, i32 1
  store ptr %incdec.ptr, ptr %avp.0476, align 4
  %207 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %len, align 4
  %dec = add i8 %208, -1
  store i8 %dec, ptr %len, align 4
  %tobool51.not = icmp eq i8 %208, 0
  br i1 %tobool51.not, label %for.inc.for.cond.loopexit_crit_edge, label %for.inc.for.body52_crit_edge

for.inc.for.body52_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body52

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

for.end144:                                       ; preds = %if.end118.for.end144_crit_edge, %while.body75.for.end144_crit_edge, %for.cond.loopexit.for.end144_crit_edge, %if.end46.for.end144_crit_edge
  %209 = ptrtoint ptr %tx_seqt to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %tx_seqt, align 8
  %211 = ptrtoint ptr %tx_high_ack to i32
  call void @__asan_load8_noabort(i32 %211)
  %212 = load i64, ptr %tx_high_ack, align 8
  br label %while.cond146

while.cond146:                                    ; preds = %while.body151.while.cond146_crit_edge, %for.end144
  %seqp.10 = phi ptr [ %210, %for.end144 ], [ %217, %while.body151.while.cond146_crit_edge ]
  %213 = ptrtoint ptr %seqp.10 to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %seqp.10, align 8
  %215 = sub i64 %212, %214
  %sub.i387 = shl i64 %215, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i387)
  %cmp.i388 = icmp slt i64 %sub.i387, 1
  br i1 %cmp.i388, label %while.cond146.while.cond161_crit_edge, label %while.body151

while.cond146.while.cond161_crit_edge:            ; preds = %while.cond146
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond161

while.body151:                                    ; preds = %while.cond146
  %ccid2s_next152 = getelementptr inbounds %struct.ccid2_seq, ptr %seqp.10, i32 0, i32 4
  %216 = ptrtoint ptr %ccid2s_next152 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ccid2s_next152, align 4
  %218 = ptrtoint ptr %tx_seqh to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %tx_seqh, align 4
  %cmp154 = icmp eq ptr %217, %219
  br i1 %cmp154, label %while.body151.while.cond161.sink.split_crit_edge, label %while.body151.while.cond146_crit_edge

while.body151.while.cond146_crit_edge:            ; preds = %while.body151
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond146

while.body151.while.cond161.sink.split_crit_edge: ; preds = %while.body151
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond161.sink.split

while.cond161.sink.split:                         ; preds = %if.end171.while.cond161.sink.split_crit_edge, %while.body151.while.cond161.sink.split_crit_edge
  %.sink = phi ptr [ %seqp.12, %if.end171.while.cond161.sink.split_crit_edge ], [ %217, %while.body151.while.cond161.sink.split_crit_edge ]
  %done.8.ph = phi i32 [ %done.9, %if.end171.while.cond161.sink.split_crit_edge ], [ 0, %while.body151.while.cond161.sink.split_crit_edge ]
  %ccid2s_prev158 = getelementptr inbounds %struct.ccid2_seq, ptr %.sink, i32 0, i32 3
  %220 = ptrtoint ptr %ccid2s_prev158 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %ccid2s_prev158, align 8
  br label %while.cond161

while.cond161:                                    ; preds = %while.cond161.sink.split, %while.cond146.while.cond161_crit_edge
  %done.8 = phi i32 [ %done.8.ph, %while.cond161.sink.split ], [ 0, %while.cond146.while.cond161_crit_edge ]
  %seqp.12 = phi ptr [ %221, %while.cond161.sink.split ], [ %seqp.10, %while.cond146.while.cond161_crit_edge ]
  %ccid2s_acked163 = getelementptr inbounds %struct.ccid2_seq, ptr %seqp.12, i32 0, i32 2
  %222 = ptrtoint ptr %ccid2s_acked163 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %ccid2s_acked163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %tobool164.not = icmp eq i32 %223, 0
  br i1 %tobool164.not, label %while.cond161.if.end171_crit_edge, label %if.then165

while.cond161.if.end171_crit_edge:                ; preds = %while.cond161
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then165:                                       ; preds = %while.cond161
  %inc166 = add i32 %done.8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc166)
  %cmp167 = icmp eq i32 %inc166, 3
  br i1 %cmp167, label %if.then165.while.cond182.preheader_crit_edge, label %if.then165.if.end171_crit_edge

if.then165.if.end171_crit_edge:                   ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then165.while.cond182.preheader_crit_edge:     ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond182.preheader

if.end171:                                        ; preds = %if.then165.if.end171_crit_edge, %while.cond161.if.end171_crit_edge
  %done.9 = phi i32 [ %inc166, %if.then165.if.end171_crit_edge ], [ %done.8, %while.cond161.if.end171_crit_edge ]
  %cmp173 = icmp eq ptr %seqp.12, %210
  br i1 %cmp173, label %while.end178, label %if.end171.while.cond161.sink.split_crit_edge

if.end171.while.cond161.sink.split_crit_edge:     ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond161.sink.split

while.end178:                                     ; preds = %if.end171
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %done.9)
  %cmp179 = icmp eq i32 %done.9, 3
  br i1 %cmp179, label %while.end178.while.cond182.preheader_crit_edge, label %while.end178.if.end210_crit_edge

while.end178.if.end210_crit_edge:                 ; preds = %while.end178
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210

while.end178.while.cond182.preheader_crit_edge:   ; preds = %while.end178
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond182.preheader

while.cond182.preheader:                          ; preds = %while.end178.while.cond182.preheader_crit_edge, %if.then165.while.cond182.preheader_crit_edge
  %seqp.12.lcssa489 = phi ptr [ %210, %while.end178.while.cond182.preheader_crit_edge ], [ %seqp.12, %if.then165.while.cond182.preheader_crit_edge ]
  br label %while.cond182

while.cond182:                                    ; preds = %if.end206, %while.cond182.preheader
  %seqp.13 = phi ptr [ %248, %if.end206 ], [ %seqp.12.lcssa489, %while.cond182.preheader ]
  %ccid2s_acked184 = getelementptr inbounds %struct.ccid2_seq, ptr %seqp.13, i32 0, i32 2
  %224 = ptrtoint ptr %ccid2s_acked184 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %ccid2s_acked184, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool185.not = icmp eq i32 %225, 0
  br i1 %tobool185.not, label %do.body187, label %while.cond182.if.end201_crit_edge

while.cond182.if.end201_crit_edge:                ; preds = %while.cond182
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end201

do.body187:                                       ; preds = %while.cond182
  %226 = load i8, ptr @ccid2_debug, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool188.not = icmp eq i8 %226, 0
  br i1 %tobool188.not, label %do.body187.do.end198_crit_edge, label %do.end192

do.body187.do.end198_crit_edge:                   ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end198

do.end192:                                        ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #10
  %227 = ptrtoint ptr %seqp.13 to i32
  call void @__asan_load8_noabort(i32 %227)
  %228 = load i64, ptr %seqp.13, align 8
  %call195 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i64 noundef %228) #12
  br label %do.end198

do.end198:                                        ; preds = %do.end192, %do.body187.do.end198_crit_edge
  %229 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %ccid2s_sent.i391 = getelementptr inbounds %struct.ccid2_seq, ptr %seqp.13, i32 0, i32 1
  %231 = ptrtoint ptr %ccid2s_sent.i391 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %ccid2s_sent.i391, align 8
  %tx_last_cong.i392 = getelementptr inbounds %struct.ccid, ptr %230, i32 164
  %233 = ptrtoint ptr %tx_last_cong.i392 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %tx_last_cong.i392, align 4
  %sub.i393 = sub i32 %232, %234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i393)
  %cmp.i394 = icmp slt i32 %sub.i393, 0
  br i1 %cmp.i394, label %do.body.i396, label %if.end6.i404

do.body.i396:                                     ; preds = %do.end198
  %235 = load i8, ptr @ccid2_debug, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool.not.i395 = icmp eq i8 %235, 0
  br i1 %tobool.not.i395, label %do.body.i396.ccid2_congestion_event.exit405_crit_edge, label %do.end.i398

do.body.i396.ccid2_congestion_event.exit405_crit_edge: ; preds = %do.body.i396
  call void @__sanitizer_cov_trace_pc() #10
  br label %ccid2_congestion_event.exit405

do.end.i398:                                      ; preds = %do.body.i396
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i397 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #12
  br label %ccid2_congestion_event.exit405

if.end6.i404:                                     ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #10
  %ccid_priv.i.i.i399 = getelementptr inbounds %struct.ccid, ptr %230, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %236 = load volatile i32, ptr @jiffies, align 128
  %237 = ptrtoint ptr %tx_last_cong.i392 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %236, ptr %tx_last_cong.i392, align 4
  %238 = ptrtoint ptr %ccid_priv.i.i.i399 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %ccid_priv.i.i.i399, align 8
  %div25.i400 = lshr i32 %239, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %239)
  %tobool8.not.inv.i401 = icmp ugt i32 %239, 1
  %div..i402 = select i1 %tobool8.not.inv.i401, i32 %div25.i400, i32 1
  %240 = ptrtoint ptr %ccid_priv.i.i.i399 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %div..i402, ptr %ccid_priv.i.i.i399, align 8
  %241 = tail call i32 @llvm.umax.i32(i32 %div..i402, i32 2) #8
  %tx_ssthresh.i403 = getelementptr inbounds %struct.ccid, ptr %230, i32 2
  %242 = ptrtoint ptr %tx_ssthresh.i403 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %241, ptr %tx_ssthresh.i403, align 4
  tail call fastcc void @ccid2_check_l_ack_ratio(ptr noundef %sk) #8
  br label %ccid2_congestion_event.exit405

ccid2_congestion_event.exit405:                   ; preds = %if.end6.i404, %do.end.i398, %do.body.i396.ccid2_congestion_event.exit405_crit_edge
  %243 = ptrtoint ptr %tx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %tx_pipe.i, align 8
  %dec200 = add i32 %244, -1
  store i32 %dec200, ptr %tx_pipe.i, align 8
  br label %if.end201

if.end201:                                        ; preds = %ccid2_congestion_event.exit405, %while.cond182.if.end201_crit_edge
  %245 = ptrtoint ptr %tx_seqt to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %tx_seqt, align 8
  %cmp203 = icmp eq ptr %seqp.13, %246
  br i1 %cmp203, label %while.end208, label %if.end206

if.end206:                                        ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #10
  %ccid2s_prev207 = getelementptr inbounds %struct.ccid2_seq, ptr %seqp.13, i32 0, i32 3
  %247 = ptrtoint ptr %ccid2s_prev207 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %ccid2s_prev207, align 8
  br label %while.cond182

while.end208:                                     ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #10
  %249 = ptrtoint ptr %tx_seqt to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %seqp.12.lcssa489, ptr %tx_seqt, align 8
  br label %if.end210

if.end210:                                        ; preds = %while.end208, %while.end178.if.end210_crit_edge
  %250 = ptrtoint ptr %tx_seqt to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %tx_seqt, align 8
  %252 = ptrtoint ptr %tx_seqh to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %tx_seqh, align 4
  %cmp214.not477 = icmp eq ptr %251, %253
  br i1 %cmp214.not477, label %if.end210.while.end225_crit_edge, label %if.end210.while.body216_crit_edge

if.end210.while.body216_crit_edge:                ; preds = %if.end210
  br label %while.body216

if.end210.while.end225_crit_edge:                 ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end225

while.body216:                                    ; preds = %if.end221.while.body216_crit_edge, %if.end210.while.body216_crit_edge
  %254 = phi ptr [ %258, %if.end221.while.body216_crit_edge ], [ %251, %if.end210.while.body216_crit_edge ]
  %ccid2s_acked218 = getelementptr inbounds %struct.ccid2_seq, ptr %254, i32 0, i32 2
  %255 = ptrtoint ptr %ccid2s_acked218 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %ccid2s_acked218, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %tobool219.not = icmp eq i32 %256, 0
  br i1 %tobool219.not, label %while.body216.while.end225_crit_edge, label %if.end221

while.body216.while.end225_crit_edge:             ; preds = %while.body216
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end225

if.end221:                                        ; preds = %while.body216
  %ccid2s_next223 = getelementptr inbounds %struct.ccid2_seq, ptr %254, i32 0, i32 4
  %257 = ptrtoint ptr %ccid2s_next223 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %ccid2s_next223, align 4
  %259 = ptrtoint ptr %tx_seqt to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %258, ptr %tx_seqt, align 8
  %260 = ptrtoint ptr %tx_seqh to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %tx_seqh, align 4
  %cmp214.not = icmp eq ptr %258, %261
  br i1 %cmp214.not, label %if.end221.while.end225_crit_edge, label %if.end221.while.body216_crit_edge

if.end221.while.body216_crit_edge:                ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body216

if.end221.while.end225_crit_edge:                 ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end225

while.end225:                                     ; preds = %if.end221.while.end225_crit_edge, %while.body216.while.end225_crit_edge, %if.end210.while.end225_crit_edge
  %262 = ptrtoint ptr %tx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %tx_pipe.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %cmp227 = icmp eq i32 %263, 0
  %tx_rtotimer = getelementptr inbounds %struct.ccid, ptr %1, i32 143
  br i1 %cmp227, label %if.then229, label %if.else230

if.then229:                                       ; preds = %while.end225
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sk_stop_timer(ptr noundef %sk, ptr noundef %tx_rtotimer) #8
  br label %done234

if.else230:                                       ; preds = %while.end225
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %264 = load volatile i32, ptr @jiffies, align 128
  %tx_rto = getelementptr inbounds %struct.ccid, ptr %1, i32 140
  %265 = ptrtoint ptr %tx_rto to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %tx_rto, align 4
  %add232 = add i32 %266, %264
  tail call void @sk_reset_timer(ptr noundef %sk, ptr noundef %tx_rtotimer, i32 noundef %add232) #8
  br label %done234

done234:                                          ; preds = %if.else230, %if.then229, %if.end25.done234_crit_edge
  br i1 %cmp.i.not, label %done234.if.end240_crit_edge, label %land.lhs.true237

done234.if.end240_crit_edge:                      ; preds = %done234
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end240

land.lhs.true237:                                 ; preds = %done234
  %267 = ptrtoint ptr %tx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %tx_pipe.i, align 8
  %269 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %ccid_priv.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %268, i32 %270)
  %cmp.i407.not = icmp ult i32 %268, %270
  br i1 %cmp.i407.not, label %if.then239, label %land.lhs.true237.if.end240_crit_edge

land.lhs.true237.if.end240_crit_edge:             ; preds = %land.lhs.true237
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end240

if.then239:                                       ; preds = %land.lhs.true237
  %state.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 30, i32 1
  %call1.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i408 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i408, label %if.then.i409, label %if.then239.if.end240_crit_edge

if.then239.if.end240_crit_edge:                   ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end240

if.then.i409:                                     ; preds = %if.then239
  %dccps_xmitlet.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 30
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #8
  %271 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #8, !srcloc !89
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %271, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i409.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i410, !prof !90

if.then.i409.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i409
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i410:                             ; preds = %if.then.i409
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %272 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %272)
  %.not.i.i.i.i.i = icmp sgt i32 %272, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i410.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i410.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !91

if.else.i.i.i.i.i410.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i410
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i410.sock_hold.exit.i_crit_edge:  ; preds = %if.else.i.i.i.i.i410
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i410.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i409.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i409.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i410.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i410.sock_hold.exit.i_crit_edge
  tail call void @__tasklet_schedule(ptr noundef %dccps_xmitlet.i) #8
  br label %if.end240

if.end240:                                        ; preds = %sock_hold.exit.i, %if.then239.if.end240_crit_edge, %land.lhs.true237.if.end240_crit_edge, %done234.if.end240_crit_edge
  %tx_av_chunks241 = getelementptr inbounds %struct.ccid, ptr %1, i32 167
  tail call void @dccp_ackvec_parsed_cleanup(ptr noundef %tx_av_chunks241) #8
  br label %cleanup242

cleanup242:                                       ; preds = %if.end240, %if.end21.cleanup242_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccid2_hc_tx_parse_options(ptr nocapture noundef readonly %sk, i8 noundef zeroext %packet_type, i8 noundef zeroext %option, ptr noundef %optval, i8 noundef zeroext %optlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %option.off = add i8 %option, -38
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %option.off)
  %switch = icmp ult i8 %option.off, 2
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dccps_hc_tx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  %0 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %tx_av_chunks = getelementptr inbounds %struct.ccid, ptr %1, i32 167
  %call3 = tail call i32 @dccp_ackvec_parsed_add(ptr noundef %tx_av_chunks, ptr noundef %optval, i8 noundef zeroext %optlen, i8 noundef zeroext %option.off) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccid2_hc_tx_send_packet(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_hc_tx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  %0 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %ccid_priv.i.i = getelementptr inbounds %struct.ccid, ptr %1, i32 0, i32 1
  %tx_pipe.i = getelementptr inbounds %struct.ccid, ptr %1, i32 3
  %2 = ptrtoint ptr %tx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_pipe.i, align 8
  %4 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ccid_priv.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i.not = icmp ult i32 %3, %5
  %. = select i1 %cmp.i.not, i32 0, i32 131072
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccid2_hc_tx_packet_sent(ptr noundef %sk, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_hc_tx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  %0 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %ccid_priv.i.i = getelementptr inbounds %struct.ccid, ptr %1, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %3 = load i8, ptr @ccid2_do_cwv, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tx_pipe = getelementptr inbounds %struct.ccid, ptr %1, i32 3
  %4 = ptrtoint ptr %tx_pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_pipe, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %tx_lsndtime = getelementptr inbounds %struct.ccid, ptr %1, i32 159
  %6 = ptrtoint ptr %tx_lsndtime to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_lsndtime, align 8
  %sub = sub i32 %2, %7
  %tx_rto = getelementptr inbounds %struct.ccid, ptr %1, i32 140
  %8 = ptrtoint ptr %tx_rto to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_rto, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %9)
  %cmp.not = icmp ult i32 %sub, %9
  br i1 %cmp.not, label %land.lhs.true3.if.end_crit_edge, label %if.then

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  %10 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ccid_priv.i.i, align 8
  %dccps_mss_cache.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 12
  %12 = ptrtoint ptr %dccps_mss_cache.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dccps_mss_cache.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1096, i32 %13)
  %cmp.i.i = icmp ult i32 %13, 1096
  call void @__sanitizer_cov_trace_const_cmp4(i32 2190, i32 %13)
  %cmp1.i.i = icmp ugt i32 %13, 2190
  %cond.i.i = select i1 %cmp1.i.i, i32 2, i32 3
  %cond2.i.i = select i1 %cmp.i.i, i32 4, i32 %cond.i.i
  %14 = ptrtoint ptr %tx_lsndtime to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_lsndtime, align 8
  %sub.i = sub i32 %2, %15
  %tx_ssthresh.i = getelementptr inbounds %struct.ccid, ptr %1, i32 2
  %16 = ptrtoint ptr %tx_ssthresh.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_ssthresh.i, align 4
  %shr.i = lshr i32 %11, 1
  %shr3.i = lshr i32 %11, 2
  %add.i = add nuw i32 %shr.i, %shr3.i
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 %add.i) #8
  %19 = ptrtoint ptr %tx_ssthresh.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tx_ssthresh.i, align 4
  %20 = tail call i32 @llvm.umin.i32(i32 %11, i32 %cond2.i.i) #8
  %21 = ptrtoint ptr %tx_rto to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_rto, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.then
  %delta.0.i = phi i32 [ %sub.i, %if.then ], [ %sub11.i, %while.cond.i.while.cond.i_crit_edge ]
  %cwnd.0.i = phi i32 [ %11, %if.then ], [ %shr14.i, %while.cond.i.while.cond.i_crit_edge ]
  %sub11.i = sub i32 %delta.0.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub11.i)
  %cmp12.i = icmp sgt i32 %sub11.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %cwnd.0.i, i32 %20)
  %cmp13.i = icmp ugt i32 %cwnd.0.i, %20
  %or.cond.i = select i1 %cmp12.i, i1 %cmp13.i, i1 false
  %shr14.i = lshr i32 %cwnd.0.i, 1
  br i1 %or.cond.i, label %while.cond.i.while.cond.i_crit_edge, label %ccid2_cwnd_restart.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

ccid2_cwnd_restart.exit:                          ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = tail call i32 @llvm.umax.i32(i32 %cwnd.0.i, i32 %20) #8
  %24 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %ccid_priv.i.i, align 8
  %tx_cwnd_stamp.i = getelementptr inbounds %struct.ccid, ptr %1, i32 158
  %25 = ptrtoint ptr %tx_cwnd_stamp.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %2, ptr %tx_cwnd_stamp.i, align 4
  %tx_cwnd_used.i = getelementptr inbounds %struct.ccid, ptr %1, i32 156
  %26 = ptrtoint ptr %tx_cwnd_used.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %tx_cwnd_used.i, align 4
  tail call fastcc void @ccid2_check_l_ack_ratio(ptr noundef %sk) #8
  br label %if.end

if.end:                                           ; preds = %ccid2_cwnd_restart.exit, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tx_lsndtime4 = getelementptr inbounds %struct.ccid, ptr %1, i32 159
  %27 = ptrtoint ptr %tx_lsndtime4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %2, ptr %tx_lsndtime4, align 8
  %tx_pipe5 = getelementptr inbounds %struct.ccid, ptr %1, i32 3
  %28 = ptrtoint ptr %tx_pipe5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_pipe5, align 8
  %add = add i32 %29, 1
  store i32 %add, ptr %tx_pipe5, align 8
  %30 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ccid_priv.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %31)
  %cmp.i.not = icmp ult i32 %add, %31
  br i1 %cmp.i.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %tx_expected_wnd.i = getelementptr inbounds %struct.ccid, ptr %1, i32 157
  %32 = ptrtoint ptr %tx_expected_wnd.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_expected_wnd.i, align 8
  %mul.i = mul i32 %33, 3
  %add.i154 = add i32 %mul.i, %31
  %div3.i = lshr i32 %add.i154, 2
  store i32 %div3.i, ptr %tx_expected_wnd.i, align 8
  %tx_cwnd_used = getelementptr inbounds %struct.ccid, ptr %1, i32 156
  %34 = ptrtoint ptr %tx_cwnd_used to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %tx_cwnd_used, align 4
  %tx_cwnd_stamp = getelementptr inbounds %struct.ccid, ptr %1, i32 158
  %35 = ptrtoint ptr %tx_cwnd_stamp to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %2, ptr %tx_cwnd_stamp, align 4
  br label %if.end24

if.else:                                          ; preds = %if.end
  %tx_cwnd_used9 = getelementptr inbounds %struct.ccid, ptr %1, i32 156
  %36 = ptrtoint ptr %tx_cwnd_used9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_cwnd_used9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %37)
  %cmp10 = icmp ugt i32 %add, %37
  br i1 %cmp10, label %if.then11, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %tx_cwnd_used9 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add, ptr %tx_cwnd_used9, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.else.if.end14_crit_edge
  %39 = ptrtoint ptr %tx_cwnd_used9 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_cwnd_used9, align 4
  %tx_expected_wnd.i155 = getelementptr inbounds %struct.ccid, ptr %1, i32 157
  %41 = ptrtoint ptr %tx_expected_wnd.i155 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_expected_wnd.i155, align 8
  %mul.i156 = mul i32 %42, 3
  %add.i157 = add i32 %mul.i156, %40
  %div3.i158 = lshr i32 %add.i157, 2
  store i32 %div3.i158, ptr %tx_expected_wnd.i155, align 8
  %43 = load i8, ptr @ccid2_do_cwv, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool16.not = icmp eq i8 %43, 0
  br i1 %tobool16.not, label %if.end14.if.end24_crit_edge, label %land.lhs.true17

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

land.lhs.true17:                                  ; preds = %if.end14
  %tx_cwnd_stamp18 = getelementptr inbounds %struct.ccid, ptr %1, i32 158
  %44 = ptrtoint ptr %tx_cwnd_stamp18 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_cwnd_stamp18, align 4
  %sub19 = sub i32 %2, %45
  %tx_rto20 = getelementptr inbounds %struct.ccid, ptr %1, i32 140
  %46 = ptrtoint ptr %tx_rto20 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_rto20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub19, i32 %47)
  %cmp21.not = icmp ult i32 %sub19, %47
  br i1 %cmp21.not, label %land.lhs.true17.if.end24_crit_edge, label %if.then22

land.lhs.true17.if.end24_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then22:                                        ; preds = %land.lhs.true17
  %48 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %ccid_priv.i.i.i160 = getelementptr inbounds %struct.ccid, ptr %49, i32 0, i32 1
  %dccps_mss_cache.i161 = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 12
  %50 = ptrtoint ptr %dccps_mss_cache.i161 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dccps_mss_cache.i161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1096, i32 %51)
  %cmp.i.i162 = icmp ult i32 %51, 1096
  call void @__sanitizer_cov_trace_const_cmp4(i32 2190, i32 %51)
  %cmp1.i.i163 = icmp ugt i32 %51, 2190
  %cond.i.i164 = select i1 %cmp1.i.i163, i32 2, i32 3
  %cond2.i.i165 = select i1 %cmp.i.i162, i32 4, i32 %cond.i.i164
  %tx_cwnd_used.i166 = getelementptr inbounds %struct.ccid, ptr %49, i32 156
  %52 = ptrtoint ptr %tx_cwnd_used.i166 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_cwnd_used.i166, align 4
  %54 = tail call i32 @llvm.umax.i32(i32 %53, i32 %cond2.i.i165) #8
  %55 = ptrtoint ptr %ccid_priv.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ccid_priv.i.i.i160, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp3.i = icmp ult i32 %54, %56
  br i1 %cmp3.i, label %if.then.i, label %if.then22.ccid2_cwnd_application_limited.exit_crit_edge

if.then22.ccid2_cwnd_application_limited.exit_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %ccid2_cwnd_application_limited.exit

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %tx_ssthresh.i167 = getelementptr inbounds %struct.ccid, ptr %49, i32 2
  %57 = ptrtoint ptr %tx_ssthresh.i167 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_ssthresh.i167, align 4
  %shr.i168 = lshr i32 %56, 1
  %shr6.i = lshr i32 %56, 2
  %add.i169 = add nuw i32 %shr.i168, %shr6.i
  %59 = tail call i32 @llvm.umax.i32(i32 %58, i32 %add.i169) #8
  %60 = ptrtoint ptr %tx_ssthresh.i167 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %tx_ssthresh.i167, align 4
  %add15.i = add i32 %54, %56
  %shr16.i = lshr i32 %add15.i, 1
  %61 = ptrtoint ptr %ccid_priv.i.i.i160 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %shr16.i, ptr %ccid_priv.i.i.i160, align 8
  br label %ccid2_cwnd_application_limited.exit

ccid2_cwnd_application_limited.exit:              ; preds = %if.then.i, %if.then22.ccid2_cwnd_application_limited.exit_crit_edge
  %62 = ptrtoint ptr %tx_cwnd_used.i166 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %tx_cwnd_used.i166, align 4
  %tx_cwnd_stamp.i170 = getelementptr inbounds %struct.ccid, ptr %49, i32 158
  %63 = ptrtoint ptr %tx_cwnd_stamp.i170 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %2, ptr %tx_cwnd_stamp.i170, align 4
  tail call fastcc void @ccid2_check_l_ack_ratio(ptr noundef %sk) #8
  br label %if.end24

if.end24:                                         ; preds = %ccid2_cwnd_application_limited.exit, %land.lhs.true17.if.end24_crit_edge, %if.end14.if.end24_crit_edge, %if.then7
  %dccps_gss = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 8
  %64 = ptrtoint ptr %dccps_gss to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %dccps_gss, align 8
  %tx_seqh = getelementptr inbounds %struct.ccid, ptr %1, i32 134
  %66 = ptrtoint ptr %tx_seqh to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tx_seqh, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %65, ptr %67, align 8
  %69 = load ptr, ptr %tx_seqh, align 4
  %ccid2s_acked = getelementptr inbounds %struct.ccid2_seq, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %ccid2s_acked to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %ccid2s_acked, align 4
  %71 = load ptr, ptr %tx_seqh, align 4
  %ccid2s_sent = getelementptr inbounds %struct.ccid2_seq, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %ccid2s_sent to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %2, ptr %ccid2s_sent, align 8
  %73 = load ptr, ptr %tx_seqh, align 4
  %ccid2s_next = getelementptr inbounds %struct.ccid2_seq, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %ccid2s_next to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ccid2s_next, align 4
  %tx_seqt = getelementptr inbounds %struct.ccid, ptr %1, i32 135
  %76 = ptrtoint ptr %tx_seqt to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tx_seqt, align 8
  %cmp28 = icmp eq ptr %75, %77
  br i1 %cmp28, label %if.then29, label %if.end24.if.end52_crit_edge

if.end24.if.end52_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then29:                                        ; preds = %if.end24
  %tx_seqbufc.i = getelementptr inbounds %struct.ccid, ptr %1, i32 133
  %78 = ptrtoint ptr %tx_seqbufc.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tx_seqbufc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %79)
  %cmp.i171 = icmp ugt i32 %79, 127
  br i1 %cmp.i171, label %if.then29.do.end_crit_edge, label %if.end.i

if.then29.do.end_crit_edge:                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %if.then29
  %80 = tail call i32 @llvm.read_register.i32(metadata !78) #8
  %and.i.i.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %and.i.i = and i32 %83, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i172 = select i1 %tobool.not.i.i, i32 3264, i32 2592
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 24576, i32 noundef %cond.i.i172, i32 noundef 3) #11
  %cmp2.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %cmp2.i, label %if.end.i.do.end_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.062.i = phi i32 [ %add.i173, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %add.i173 = add nuw nsw i32 %i.062.i, 1
  %arrayidx.i = getelementptr %struct.ccid2_seq, ptr %call1.i.i.i.i, i32 %add.i173
  %arrayidx6.i = getelementptr %struct.ccid2_seq, ptr %call1.i.i.i.i, i32 %i.062.i
  %ccid2s_next.i = getelementptr %struct.ccid2_seq, ptr %call1.i.i.i.i, i32 %i.062.i, i32 4
  %84 = ptrtoint ptr %ccid2s_next.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %arrayidx.i, ptr %ccid2s_next.i, align 4
  %ccid2s_prev.i = getelementptr %struct.ccid2_seq, ptr %call1.i.i.i.i, i32 %add.i173, i32 3
  %85 = ptrtoint ptr %ccid2s_prev.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %arrayidx6.i, ptr %ccid2s_prev.i, align 8
  %exitcond.not.i = icmp eq i32 %add.i173, 1023
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %arrayidx10.i = getelementptr %struct.ccid2_seq, ptr %call1.i.i.i.i, i32 1023
  %ccid2s_next11.i = getelementptr %struct.ccid2_seq, ptr %call1.i.i.i.i, i32 1023, i32 4
  %86 = ptrtoint ptr %ccid2s_next11.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call1.i.i.i.i, ptr %ccid2s_next11.i, align 4
  %ccid2s_prev13.i = getelementptr inbounds %struct.ccid2_seq, ptr %call1.i.i.i.i, i32 0, i32 3
  %87 = ptrtoint ptr %ccid2s_prev13.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %arrayidx10.i, ptr %ccid2s_prev13.i, align 16
  %88 = ptrtoint ptr %tx_seqbufc.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tx_seqbufc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp15.i = icmp eq i32 %89, 0
  br i1 %cmp15.i, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %tx_seqt to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call1.i.i.i.i, ptr %tx_seqt, align 8
  %91 = ptrtoint ptr %tx_seqh to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call1.i.i.i.i, ptr %tx_seqh, align 4
  br label %if.end34

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %tx_seqh to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tx_seqh, align 4
  %ccid2s_next18.i = getelementptr inbounds %struct.ccid2_seq, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %ccid2s_next18.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call1.i.i.i.i, ptr %ccid2s_next18.i, align 4
  %95 = load ptr, ptr %tx_seqh, align 4
  %96 = ptrtoint ptr %ccid2s_prev13.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %95, ptr %ccid2s_prev13.i, align 16
  %97 = ptrtoint ptr %tx_seqt to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tx_seqt, align 8
  %ccid2s_prev23.i = getelementptr inbounds %struct.ccid2_seq, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %ccid2s_prev23.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %arrayidx10.i, ptr %ccid2s_prev23.i, align 8
  %100 = load ptr, ptr %tx_seqt, align 8
  %101 = ptrtoint ptr %ccid2s_next11.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %100, ptr %ccid2s_next11.i, align 4
  br label %if.end34

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %if.then29.do.end_crit_edge
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.4, i32 noundef 276, ptr noundef nonnull @.str.21) #12
  br label %cleanup

if.end34:                                         ; preds = %if.else.i, %if.then16.i
  %102 = ptrtoint ptr %tx_seqbufc.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tx_seqbufc.i, align 8
  %arrayidx29.i = getelementptr %struct.ccid2_hc_tx_sock, ptr %ccid_priv.i.i, i32 0, i32 4, i32 %103
  %104 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call1.i.i.i.i, ptr %arrayidx29.i, align 4
  %105 = load i32, ptr %tx_seqbufc.i, align 8
  %inc31.i = add i32 %105, 1
  store i32 %inc31.i, ptr %tx_seqbufc.i, align 8
  %106 = ptrtoint ptr %tx_seqh to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tx_seqh, align 4
  %ccid2s_next36 = getelementptr inbounds %struct.ccid2_seq, ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %ccid2s_next36 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ccid2s_next36, align 4
  %110 = ptrtoint ptr %tx_seqt to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tx_seqt, align 8
  %cmp39 = icmp eq ptr %109, %111
  br i1 %cmp39, label %do.body43, label %if.end34.if.end52_crit_edge, !prof !90

if.end34.if.end52_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

do.body43:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/dccp/ccids/ccid2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 281, 0\0A.popsection", ""() #8, !srcloc !92
  unreachable

if.end52:                                         ; preds = %if.end34.if.end52_crit_edge, %if.end24.if.end52_crit_edge
  %next.0 = phi ptr [ %109, %if.end34.if.end52_crit_edge ], [ %75, %if.end24.if.end52_crit_edge ]
  %112 = ptrtoint ptr %tx_seqh to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %next.0, ptr %tx_seqh, align 4
  %113 = load i8, ptr @ccid2_debug, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool55.not = icmp eq i8 %113, 0
  br i1 %tobool55.not, label %if.end52.do.end66_crit_edge, label %do.end59

if.end52.do.end66_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end66

do.end59:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ccid_priv.i.i, align 8
  %116 = ptrtoint ptr %tx_pipe5 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %tx_pipe5, align 8
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef %115, i32 noundef %117) #12
  br label %do.end66

do.end66:                                         ; preds = %do.end59, %if.end52.do.end66_crit_edge
  %tx_rtotimer = getelementptr inbounds %struct.ccid, ptr %1, i32 143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %118 = load volatile i32, ptr @jiffies, align 128
  %tx_rto67 = getelementptr inbounds %struct.ccid, ptr %1, i32 140
  %119 = ptrtoint ptr %tx_rto67 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %tx_rto67, align 4
  %add68 = add i32 %120, %118
  tail call void @sk_reset_timer(ptr noundef %sk, ptr noundef %tx_rtotimer, i32 noundef %add68) #8
  %121 = ptrtoint ptr %tx_seqt to i32
  call void @__asan_load4_noabort(i32 %121)
  %seqp.0176 = load ptr, ptr %tx_seqt, align 4
  %122 = ptrtoint ptr %tx_seqh to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tx_seqh, align 4
  %cmp72.not177 = icmp eq ptr %seqp.0176, %123
  br i1 %cmp72.not177, label %do.end66.while.end_crit_edge, label %do.end66.do.body73_crit_edge

do.end66.do.body73_crit_edge:                     ; preds = %do.end66
  br label %do.body73

do.end66.while.end_crit_edge:                     ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.body73:                                        ; preds = %do.end86.do.body73_crit_edge, %do.end66.do.body73_crit_edge
  %seqp.0178 = phi ptr [ %seqp.0, %do.end86.do.body73_crit_edge ], [ %seqp.0176, %do.end66.do.body73_crit_edge ]
  %124 = load i8, ptr @ccid2_debug, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool74.not = icmp eq i8 %124, 0
  br i1 %tobool74.not, label %do.body73.do.end86_crit_edge, label %do.end78

do.body73.do.end86_crit_edge:                     ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end86

do.end78:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %seqp.0178 to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %seqp.0178, align 8
  %ccid2s_acked81 = getelementptr inbounds %struct.ccid2_seq, ptr %seqp.0178, i32 0, i32 2
  %127 = ptrtoint ptr %ccid2s_acked81 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %ccid2s_acked81, align 4
  %ccid2s_sent82 = getelementptr inbounds %struct.ccid2_seq, ptr %seqp.0178, i32 0, i32 1
  %129 = ptrtoint ptr %ccid2s_sent82 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ccid2s_sent82, align 8
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21, i64 noundef %126, i32 noundef %128, i32 noundef %130) #12
  br label %do.end86

do.end86:                                         ; preds = %do.end78, %do.body73.do.end86_crit_edge
  %ccid2s_next87 = getelementptr inbounds %struct.ccid2_seq, ptr %seqp.0178, i32 0, i32 4
  %131 = ptrtoint ptr %ccid2s_next87 to i32
  call void @__asan_load4_noabort(i32 %131)
  %seqp.0 = load ptr, ptr %ccid2s_next87, align 4
  %132 = ptrtoint ptr %tx_seqh to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %tx_seqh, align 4
  %cmp72.not = icmp eq ptr %seqp.0, %133
  br i1 %cmp72.not, label %do.end86.while.end_crit_edge, label %do.end86.do.body73_crit_edge

do.end86.do.body73_crit_edge:                     ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body73

do.end86.while.end_crit_edge:                     ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end86.while.end_crit_edge, %do.end66.while.end_crit_edge
  %134 = load i8, ptr @ccid2_debug, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool91.not = icmp eq i8 %134, 0
  br i1 %tobool91.not, label %while.end.cleanup_crit_edge, label %do.end95

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end95:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.21) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end95, %while.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccid2_hc_tx_rto_expire(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -568
  %sk1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 8
  %tx_pipe.i = getelementptr i8, ptr %t, i32 -560
  %2 = ptrtoint ptr %tx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_pipe.i, align 8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i.not = icmp ult i32 %3, %5
  %sk_lock = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #8
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %entry.sock_owned_by_user.exit_crit_edge

entry.sock_owned_by_user.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %entry
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !91

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1750, i32 noundef 9, ptr noundef null) #8
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %entry.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %do.body, label %if.then

if.then:                                          ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, 20
  br label %out.sink.split

do.body:                                          ; preds = %sock_owned_by_user.exit
  %10 = load i8, ptr @ccid2_debug, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %do.body.do.end9_crit_edge, label %do.end

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %12)
  %cmp = icmp eq i8 %12, 7
  br i1 %cmp, label %do.end9.out_crit_edge, label %if.end12

do.end9.out_crit_edge:                            ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end12:                                         ; preds = %do.end9
  %tx_rto = getelementptr i8, ptr %t, i32 -12
  %13 = ptrtoint ptr %tx_rto to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_rto, align 4
  %shl = shl i32 %14, 1
  %15 = tail call i32 @llvm.umin.i32(i32 %shl, i32 6400)
  %16 = ptrtoint ptr %tx_rto to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tx_rto, align 4
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr, align 8
  %div60 = lshr i32 %18, 1
  %tx_ssthresh = getelementptr i8, ptr %t, i32 -564
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp20 = icmp ult i32 %18, 4
  %storemerge = select i1 %cmp20, i32 2, i32 %div60
  %19 = ptrtoint ptr %tx_ssthresh to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %storemerge, ptr %tx_ssthresh, align 4
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %add.ptr, align 8
  %21 = ptrtoint ptr %tx_pipe.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %tx_pipe.i, align 8
  %tx_seqh = getelementptr i8, ptr %t, i32 -36
  %22 = ptrtoint ptr %tx_seqh to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_seqh, align 4
  %tx_seqt = getelementptr i8, ptr %t, i32 -32
  %24 = ptrtoint ptr %tx_seqt to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %tx_seqt, align 8
  %tx_packets_acked = getelementptr i8, ptr %t, i32 -556
  %25 = ptrtoint ptr %tx_packets_acked to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %tx_packets_acked, align 4
  %tx_rpseq = getelementptr i8, ptr %t, i32 72
  %26 = ptrtoint ptr %tx_rpseq to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %tx_rpseq, align 8
  %tx_rpdupack = getelementptr i8, ptr %t, i32 80
  %27 = ptrtoint ptr %tx_rpdupack to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %tx_rpdupack, align 8
  %dccps_hc_tx_ccid.i.i = getelementptr inbounds %struct.dccp_sock, ptr %1, i32 0, i32 25
  %28 = ptrtoint ptr %dccps_hc_tx_ccid.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dccps_hc_tx_ccid.i.i, align 4
  %ccid_priv.i.i.i = getelementptr inbounds %struct.ccid, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %ccid_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ccid_priv.i.i.i, align 8
  %sub.i = add i32 %31, 1
  %div20.i = lshr i32 %sub.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i)
  %cmp1.i = icmp ult i32 %sub.i, 2
  br i1 %cmp1.i, label %do.body.i, label %if.end12.ccid2_change_l_ack_ratio.exit_crit_edge

if.end12.ccid2_change_l_ack_ratio.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %ccid2_change_l_ack_ratio.exit

do.body.i:                                        ; preds = %if.end12
  %call2.i = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %do.body.i.ccid2_change_l_ack_ratio.exit_crit_edge, label %do.end.i

do.body.i.ccid2_change_l_ack_ratio.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ccid2_change_l_ack_ratio.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef %div20.i) #12
  br label %ccid2_change_l_ack_ratio.exit

ccid2_change_l_ack_ratio.exit:                    ; preds = %do.end.i, %do.body.i.ccid2_change_l_ack_ratio.exit_crit_edge, %if.end12.ccid2_change_l_ack_ratio.exit_crit_edge
  %val.addr.0.i = phi i32 [ 1, %if.end12.ccid2_change_l_ack_ratio.exit_crit_edge ], [ 0, %do.end.i ], [ 0, %do.body.i.ccid2_change_l_ack_ratio.exit_crit_edge ]
  %conv.i = zext i32 %val.addr.0.i to i64
  %call11.i = tail call i32 @dccp_feat_signal_nn_change(ptr noundef %1, i8 noundef zeroext 5, i64 noundef %conv.i) #8
  br i1 %cmp.i.not, label %ccid2_change_l_ack_ratio.exit.if.end28_crit_edge, label %if.then27

ccid2_change_l_ack_ratio.exit.if.end28_crit_edge: ; preds = %ccid2_change_l_ack_ratio.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then27:                                        ; preds = %ccid2_change_l_ack_ratio.exit
  %state.i = getelementptr inbounds %struct.dccp_sock, ptr %1, i32 0, i32 30, i32 1
  %call1.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i62 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i62, label %if.then.i, label %if.then27.if.end28_crit_edge

if.then27.if.end28_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then.i:                                        ; preds = %if.then27
  %dccps_xmitlet.i = getelementptr inbounds %struct.dccp_sock, ptr %1, i32 0, i32 30
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #8
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #8, !srcloc !89
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !90

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %33 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %.not.i.i.i.i.i = icmp sgt i32 %33, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !91

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  tail call void @__tasklet_schedule(ptr noundef %dccps_xmitlet.i) #8
  br label %if.end28

if.end28:                                         ; preds = %sock_hold.exit.i, %if.then27.if.end28_crit_edge, %ccid2_change_l_ack_ratio.exit.if.end28_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %35 = ptrtoint ptr %tx_rto to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_rto, align 4
  %add31 = add i32 %36, %34
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end28, %if.then
  %add31.sink = phi i32 [ %add31, %if.end28 ], [ %add, %if.then ]
  tail call void @sk_reset_timer(ptr noundef %1, ptr noundef %t, i32 noundef %add31.sink) #8
  br label %out

out:                                              ; preds = %out.sink.split, %do.end9.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #8
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !94
  %asmresult.i.i.i.i.i.i.i63 = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i63)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i63, 1
  br i1 %cmp.i.i.i.i, label %if.then.i64, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i63)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i63, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !91

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #8
  br label %sock_put.exit

if.then.i64:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @sk_free(ptr noundef %1) #8
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i64, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_reset_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_feat_signal_nn_change(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_stop_timer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_ackvec_parsed_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_send_ack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccid2_check_l_ack_ratio(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_hc_tx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  %0 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %ccid_priv.i.i = getelementptr inbounds %struct.ccid, ptr %1, i32 0, i32 1
  %call1 = tail call i64 @dccp_feat_nn_get(ptr noundef %sk, i8 noundef zeroext 5) #8
  %2 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ccid_priv.i.i, align 8
  %conv = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call1, i64 %conv)
  %cmp = icmp ugt i64 %call1, %conv
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %div7 = lshr i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %tobool.not.inv = icmp ugt i32 %3, 1
  %div. = select i1 %tobool.not.inv, i32 %div7, i32 1
  %4 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %ccid_priv.i.i.i = getelementptr inbounds %struct.ccid, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ccid_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ccid_priv.i.i.i, align 8
  %sub.i = add i32 %7, 1
  %div20.i = lshr i32 %sub.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.)
  %cmp.i = icmp eq i32 %div., 0
  call void @__sanitizer_cov_trace_cmp4(i32 %div20.i, i32 %div.)
  %cmp1.i = icmp ult i32 %div20.i, %div.
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp1.i
  br i1 %or.cond.i, label %do.body.i, label %if.then.ccid2_change_l_ack_ratio.exit_crit_edge

if.then.ccid2_change_l_ack_ratio.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %ccid2_change_l_ack_ratio.exit

do.body.i:                                        ; preds = %if.then
  %call2.i = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %do.body.i.ccid2_change_l_ack_ratio.exit_crit_edge, label %do.end.i

do.body.i.ccid2_change_l_ack_ratio.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ccid2_change_l_ack_ratio.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %div., i32 noundef %div20.i) #12
  br label %ccid2_change_l_ack_ratio.exit

ccid2_change_l_ack_ratio.exit:                    ; preds = %do.end.i, %do.body.i.ccid2_change_l_ack_ratio.exit_crit_edge, %if.then.ccid2_change_l_ack_ratio.exit_crit_edge
  %val.addr.0.i = phi i32 [ %div., %if.then.ccid2_change_l_ack_ratio.exit_crit_edge ], [ %div20.i, %do.end.i ], [ %div20.i, %do.body.i.ccid2_change_l_ack_ratio.exit_crit_edge ]
  %8 = tail call i32 @llvm.umin.i32(i32 %val.addr.0.i, i32 65535) #8
  %conv.i = zext i32 %8 to i64
  %call11.i = tail call i32 @dccp_feat_signal_nn_change(ptr noundef %sk, i8 noundef zeroext 5, i64 noundef %conv.i) #8
  br label %if.end

if.end:                                           ; preds = %ccid2_change_l_ack_ratio.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dccp_feat_nn_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_ackvec_parsed_add(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !17, !19, !21, !22, !24, !25, !26, !27, !28, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77}
!llvm.named.register.sp = !{!78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__param_ccid2_do_cwv, !1, !"__param_ccid2_do_cwv", i1 false, i1 false}
!1 = !{!"../net/dccp/ccids/ccid2.c", i32 179, i32 1}
!2 = !{ptr @__UNIQUE_ID_ccid2_do_cwvtype599, !1, !"__UNIQUE_ID_ccid2_do_cwvtype599", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_ccid2_do_cwv600, !4, !"__UNIQUE_ID_ccid2_do_cwv600", i1 false, i1 false}
!4 = !{!"../net/dccp/ccids/ccid2.c", i32 180, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../net/dccp/ccids/ccid2.c", i32 778, i32 18}
!7 = !{ptr @ccid2_ops, !8, !"ccid2_ops", i1 false, i1 false}
!8 = !{!"../net/dccp/ccids/ccid2.c", i32 776, i32 24}
!9 = !{ptr @__param_ccid2_debug, !10, !"__param_ccid2_debug", i1 false, i1 false}
!10 = !{!"../net/dccp/ccids/ccid2.c", i32 791, i32 1}
!11 = !{ptr @__UNIQUE_ID_ccid2_debugtype615, !10, !"__UNIQUE_ID_ccid2_debugtype615", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_ccid2_debug616, !13, !"__UNIQUE_ID_ccid2_debug616", i1 false, i1 false}
!13 = !{!"../net/dccp/ccids/ccid2.c", i32 792, i32 1}
!14 = !{ptr @ccid2_debug, !15, !"ccid2_debug", i1 false, i1 false}
!15 = !{!"../net/dccp/ccids/ccid2.c", i32 19, i32 13}
!16 = !{ptr @__param_str_ccid2_do_cwv, !1, !"__param_str_ccid2_do_cwv", i1 false, i1 false}
!17 = !{ptr @ccid2_do_cwv, !18, !"ccid2_do_cwv", i1 false, i1 false}
!18 = !{!"../net/dccp/ccids/ccid2.c", i32 178, i32 13}
!19 = !{ptr @ccid2_hc_tx_init.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../net/dccp/ccids/ccid2.c", i32 745, i32 2}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/dccp/ccids/ccid2.c", i32 139, i32 2}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ccid2_hc_tx_rto_expire._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @ccid2_hc_tx_rto_expire._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/net/sock.h", i32 1750, i32 2}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/dccp/ccids/ccid2.c", i32 85, i32 3}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ccid2_change_l_ack_ratio._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @ccid2_change_l_ack_ratio._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/dccp/ccids/ccid2.c", i32 595, i32 4}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ccid2_hc_tx_packet_recv._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @ccid2_hc_tx_packet_recv._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/dccp/ccids/ccid2.c", i32 630, i32 6}
!43 = !{ptr @ccid2_hc_tx_packet_recv._entry.10, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ccid2_hc_tx_packet_recv._entry_ptr.12, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/dccp/ccids/ccid2.c", i32 681, i32 5}
!47 = !{ptr @ccid2_hc_tx_packet_recv._entry.13, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ccid2_hc_tx_packet_recv._entry_ptr.15, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/dccp/ccids/ccid2.c", i32 485, i32 3}
!51 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ccid2_congestion_event._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ccid2_congestion_event._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../include/net/sock.h", i32 2067, i32 9}
!56 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../include/net/dst.h", i32 161, i32 2}
!59 = distinct !{null, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/dccp/ccids/ccid2.c", i32 276, i32 4}
!62 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ccid2_hc_tx_packet_sent._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @ccid2_hc_tx_packet_sent._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/dccp/ccids/ccid2.c", i32 285, i32 2}
!67 = !{ptr @ccid2_hc_tx_packet_sent._entry.22, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @ccid2_hc_tx_packet_sent._entry_ptr.24, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/dccp/ccids/ccid2.c", i32 343, i32 4}
!71 = !{ptr @ccid2_hc_tx_packet_sent._entry.25, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ccid2_hc_tx_packet_sent._entry_ptr.27, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/dccp/ccids/ccid2.c", i32 349, i32 2}
!75 = !{ptr @ccid2_hc_tx_packet_sent._entry.28, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @ccid2_hc_tx_packet_sent._entry_ptr.30, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @__param_str_ccid2_debug, !10, !"__param_str_ccid2_debug", i1 false, i1 false}
!78 = !{!"sp"}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{i8 0, i8 2}
!89 = !{i64 2148603586, i64 2148603618, i64 2148603647, i64 2148603681, i64 2148603712, i64 2148603735}
!90 = !{!"branch_weights", i32 1, i32 2000}
!91 = !{!"branch_weights", i32 2000, i32 1}
!92 = !{i64 2158697404, i64 2158697891, i64 2158697441, i64 2158697497, i64 2158697531, i64 2158697555, i64 2158697596, i64 2158697617, i64 2158697645, i64 2158697679}
!93 = !{i64 2148691611}
!94 = !{i64 2148606051, i64 2148606083, i64 2148606112, i64 2148606146, i64 2148606177, i64 2148606200}
!95 = !{i64 2149889384}
