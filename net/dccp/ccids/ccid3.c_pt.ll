; ModuleID = '/llk/IR_all_yes/net/dccp/ccids/ccid3.c_pt.bc'
source_filename = "../net/dccp/ccids/ccid3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ccid_operations = type { i8, i32, ptr, ptr, ptr, [32 x i8], [32 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.134 }
%union.anon.134 = type { ptr }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ccid = type { ptr, [0 x i8] }
%struct.ccid3_hc_tx_sock = type { i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i64, %struct.timer_list, ptr, i64, i64, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dccp_sock = type { %struct.inet_connection_sock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, ptr, i32, i32, i16, i16, i48, i64, i48, i32, %struct.list_head, ptr, ptr, ptr, %struct.dccp_options_received, i8, i32, i8, %struct.tasklet_struct, %struct.timer_list }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.192, %struct.anon.193, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.161 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.39 }
%union.anon.39 = type { %struct.flowi6 }
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
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.54, i32, i32, i32, i16, i16, %union.anon.56, i32, %union.anon.57, %union.anon.58, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.54 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i16 }
%struct.dccp_hdr = type { i16, i16, i8, i8, i16, i8, i8, i16 }
%struct.dccp_hdr_ack_bits = type { i16, i16, i32 }
%struct.tfrc_tx_hist_entry = type { ptr, i64, i64 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.tcp_info = type { i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.tfrc_rx_info = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tfrc_tx_info = type { i64, i64, i32, i32, i32, i32, i32 }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TCP-Friendly Rate Control\00", [38 x i8] zeroinitializer }, align 32
@ccid3_ops = dso_local global { %struct.ccid_operations, [40 x i8] } { %struct.ccid_operations { i8 3, i32 0, ptr @.str, ptr null, ptr null, [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, i32 96, i32 128, ptr @ccid3_hc_rx_init, ptr @ccid3_hc_tx_init, ptr @ccid3_hc_rx_exit, ptr @ccid3_hc_tx_exit, ptr @ccid3_hc_rx_packet_recv, ptr null, ptr @ccid3_hc_rx_insert_options, ptr @ccid3_hc_tx_packet_recv, ptr @ccid3_hc_tx_parse_options, ptr @ccid3_hc_tx_send_packet, ptr @ccid3_hc_tx_packet_sent, ptr @ccid3_hc_rx_get_info, ptr @ccid3_hc_tx_get_info, ptr @ccid3_hc_rx_getsockopt, ptr @ccid3_hc_tx_getsockopt }, [40 x i8] zeroinitializer }, align 32
@__param_str_ccid3_debug = internal constant [17 x i8] c"dccp.ccid3_debug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@ccid3_debug = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_ccid3_debug = internal constant %struct.kernel_param { ptr @__param_str_ccid3_debug, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.134 { ptr @ccid3_debug } }, section "__param", align 4
@__UNIQUE_ID_ccid3_debugtype621 = internal constant [31 x i8] c"dccp.parmtype=ccid3_debug:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_ccid3_debug622 = internal constant [51 x i8] c"dccp.parm=ccid3_debug:Enable CCID-3 debug messages\00", section ".modinfo", align 1
@ccid3_hc_tx_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(&hc->tx_no_feedback_timer)\00", [36 x i8] zeroinitializer }, align 32
@ccid3_hc_tx_no_feedback_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: %s(%p, state=%s) - entry\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ccid3_hc_tx_no_feedback_timer\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/dccp/ccids/ccid3.c\00", [41 x i8] zeroinitializer }, align 32
@ccid3_hc_tx_no_feedback_timer._entry_ptr = internal global ptr @ccid3_hc_tx_no_feedback_timer._entry, section ".printk_index", align 4
@ccid3_hc_tx_no_feedback_timer._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: Reduced X to %llu/64 bytes/sec\0A\00", [58 x i8] zeroinitializer }, align 32
@ccid3_hc_tx_no_feedback_timer._entry_ptr.7 = internal global ptr @ccid3_hc_tx_no_feedback_timer._entry.5, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sock_owned_by_me.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"undefined\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"listen\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"server\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"client\00", [25 x i8] zeroinitializer }, align 32
@ccid3_tx_state_name.ccid3_state_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr null, ptr @.str.13, ptr @.str.14, ptr @.str.15], [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NO_SENT\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NO_FBACK\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FBACK\00", [26 x i8] zeroinitializer }, align 32
@ccid3_hc_tx_set_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: %s(%p) %-8.8s -> %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ccid3_hc_tx_set_state\00", [42 x i8] zeroinitializer }, align 32
@ccid3_hc_tx_set_state._entry_ptr = internal global ptr @ccid3_hc_tx_set_state._entry, section ".printk_index", align 4
@ccid3_update_send_interval._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\012BUG: \22%s\22 holds (exception!) at %s:%d/%s()\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ccid3_update_send_interval\00", [37 x i8] zeroinitializer }, align 32
@ccid3_update_send_interval._entry_ptr = internal global ptr @ccid3_update_send_interval._entry, section ".printk_index", align 4
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hc->tx_t_ipi == 0\00", [46 x i8] zeroinitializer }, align 32
@ccid3_update_send_interval._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.4, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: t_ipi=%u, s=%u, X=%u\0A\00", [36 x i8] zeroinitializer }, align 32
@ccid3_update_send_interval._entry_ptr.23 = internal global ptr @ccid3_update_send_interval._entry.21, section ".printk_index", align 4
@scaled_div32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.26, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\012Overflow: %llu/%llu > UINT_MAX at %s:%d/%s()\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scaled_div32\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/dccp/ccids/lib/tfrc.h\00", [38 x i8] zeroinitializer }, align 32
@scaled_div32._entry_ptr = internal global ptr @scaled_div32._entry, section ".printk_index", align 4
@ccid3_hc_tx_update_x._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: X_prev=%u, X_now=%u, X_calc=%u, X_recv=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ccid3_hc_tx_update_x\00", [43 x i8] zeroinitializer }, align 32
@ccid3_hc_tx_update_x._entry_ptr = internal global ptr @ccid3_hc_tx_update_x._entry, section ".printk_index", align 4
@ccid3_hc_rx_set_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.29, ptr @.str.4, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ccid3_hc_rx_set_state\00", [42 x i8] zeroinitializer }, align 32
@ccid3_hc_rx_set_state._entry_ptr = internal global ptr @ccid3_hc_rx_set_state._entry, section ".printk_index", align 4
@ccid3_rx_state_name.ccid3_rx_state_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr null, ptr @.str.30, ptr @.str.31], [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NO_DATA\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DATA\00", [27 x i8] zeroinitializer }, align 32
@ccid3_first_li._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014%s: No RTT estimate available, using fallback RTT\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ccid3_first_li\00", [17 x i8] zeroinitializer }, align 32
@ccid3_first_li._entry_ptr = internal global ptr @ccid3_first_li._entry, section ".printk_index", align 4
@ccid3_first_li._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.4, i32 689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\014%s: X_recv==0\0A\00", [47 x i8] zeroinitializer }, align 32
@ccid3_first_li._entry_ptr.36 = internal global ptr @ccid3_first_li._entry.34, section ".printk_index", align 4
@ccid3_first_li._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.4, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\012BUG: stored value of X_recv is zero at %s:%d/%s()\0A\00", [43 x i8] zeroinitializer }, align 32
@ccid3_first_li._entry_ptr.39 = internal global ptr @ccid3_first_li._entry.37, section ".printk_index", align 4
@ccid3_first_li._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.4, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017%s: %s(%p), receive rate=%u bytes/s, implied loss rate=%u\0A\00", [35 x i8] zeroinitializer }, align 32
@ccid3_first_li._entry_ptr.42 = internal global ptr @ccid3_first_li._entry.40, section ".printk_index", align 4
@ccid3_hc_rx_send_feedback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: Interval %lldusec, X_recv=%u, 1/p=%u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ccid3_hc_rx_send_feedback\00", [38 x i8] zeroinitializer }, align 32
@ccid3_hc_rx_send_feedback._entry_ptr = internal global ptr @ccid3_hc_rx_send_feedback._entry, section ".printk_index", align 4
@ccid3_hc_tx_packet_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\017%s: %s(%p), RTT=%uus (sample=%uus), s=%u, p=%u, X_calc=%u, X_recv=%u, X=%u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ccid3_hc_tx_packet_recv\00", [40 x i8] zeroinitializer }, align 32
@ccid3_hc_tx_packet_recv._entry_ptr = internal global ptr @ccid3_hc_tx_packet_recv._entry, section ".printk_index", align 4
@ccid3_hc_tx_packet_recv._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.4, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\017%s: %s(%p), Scheduled no feedback timer to expire in %lu jiffies (%luus)\0A\00", [52 x i8] zeroinitializer }, align 32
@ccid3_hc_tx_packet_recv._entry_ptr.49 = internal global ptr @ccid3_hc_tx_packet_recv._entry.47, section ".printk_index", align 4
@__sk_dst_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ccid3_hc_tx_parse_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: %s(%p), invalid len %d for %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ccid3_hc_tx_parse_options\00", [38 x i8] zeroinitializer }, align 32
@ccid3_hc_tx_parse_options._entry_ptr = internal global ptr @ccid3_hc_tx_parse_options._entry, section ".printk_index", align 4
@ccid3_hc_tx_parse_options._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.4, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: %s(%p), RECEIVE_RATE=%u\0A\00", [33 x i8] zeroinitializer }, align 32
@ccid3_hc_tx_parse_options._entry_ptr.56 = internal global ptr @ccid3_hc_tx_parse_options._entry.54, section ".printk_index", align 4
@ccid3_hc_tx_parse_options._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.4, i32 488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: %s(%p), LOSS_EVENT_RATE=%u\0A\00", [62 x i8] zeroinitializer }, align 32
@ccid3_hc_tx_parse_options._entry_ptr.59 = internal global ptr @ccid3_hc_tx_parse_options._entry.57, section ".printk_index", align 4
@ccid3_hc_tx_send_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.4, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: SYN RTT = %uus\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ccid3_hc_tx_send_packet\00", [40 x i8] zeroinitializer }, align 32
@ccid3_hc_tx_send_packet._entry_ptr = internal global ptr @ccid3_hc_tx_send_packet._entry, section ".printk_index", align 4
@ccid3_hc_tx_send_packet._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.4, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: delay=%ld\0A\00", [47 x i8] zeroinitializer }, align 32
@ccid3_hc_tx_send_packet._entry_ptr.64 = internal global ptr @ccid3_hc_tx_send_packet._entry.62, section ".printk_index", align 4
@ccid3_hc_tx_packet_sent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.4, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\012packet history - out of memory! at %s:%d/%s()\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ccid3_hc_tx_packet_sent\00", [40 x i8] zeroinitializer }, align 32
@ccid3_hc_tx_packet_sent._entry_ptr = internal global ptr @ccid3_hc_tx_packet_sent._entry, section ".printk_index", align 4
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@switch.table.ccid3_hc_tx_packet_recv = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.11], [16 x i8] zeroinitializer }, align 32
@switch.table.ccid3_hc_tx_packet_recv.70 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.11], [16 x i8] zeroinitializer }, align 32
@switch.table.ccid3_hc_tx_packet_recv.71 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.11], [16 x i8] zeroinitializer }, align 32
@switch.table.ccid3_hc_tx_parse_options = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.11], [16 x i8] zeroinitializer }, align 32
@switch.table.ccid3_hc_tx_parse_options.72 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.11], [16 x i8] zeroinitializer }, align 32
@switch.table.ccid3_hc_tx_parse_options.73 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.11], [16 x i8] zeroinitializer }, align 32
@switch.table.ccid3_hc_tx_send_packet = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.11], [16 x i8] zeroinitializer }, align 32
@switch.table.ccid3_hc_tx_no_feedback_timer = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.11], [16 x i8] zeroinitializer }, align 32
@switch.table.ccid3_hc_tx_no_feedback_timer.74 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.11], [16 x i8] zeroinitializer }, align 32
@switch.table.ccid3_hc_rx_set_state = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.11], [16 x i8] zeroinitializer }, align 32
@switch.table.ccid3_first_li = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.11], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 4, i64 2, i64 4]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 8, i64 192, i64 194]
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 844, i32 19 }
@___asan_gen_.80 = private unnamed_addr constant [10 x i8] c"ccid3_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 842, i32 24 }
@___asan_gen_.83 = private unnamed_addr constant [12 x i8] c"ccid3_debug\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 28, i32 13 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 501, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 202, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 244, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1750, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 316, i32 35 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 317, i32 34 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 318, i32 34 }
@___asan_gen_.123 = private unnamed_addr constant [24 x i8] c"../include/linux/dccp.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 319, i32 34 }
@___asan_gen_.125 = private unnamed_addr constant [18 x i8] c"ccid3_state_names\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 40, i32 27 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 41, i32 27 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 42, i32 27 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 43, i32 27 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 56, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 90, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 91, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [29 x i8] c"../net/dccp/ccids/lib/tfrc.h\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 38, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 146, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 582, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [21 x i8] c"ccid3_rx_state_names\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 567, i32 27 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 568, i32 26 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 569, i32 26 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 680, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 689, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 691, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 701, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 627, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 420, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 449, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 2067, i32 9 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 470, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 481, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 487, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 304, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 325, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.297 = private constant [26 x i8] c"../net/dccp/ccids/ccid3.c\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 356, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 174, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant [37 x i8] c"switch.table.ccid3_hc_tx_packet_recv\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [40 x i8] c"switch.table.ccid3_hc_tx_packet_recv.70\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [40 x i8] c"switch.table.ccid3_hc_tx_packet_recv.71\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [39 x i8] c"switch.table.ccid3_hc_tx_parse_options\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [42 x i8] c"switch.table.ccid3_hc_tx_parse_options.72\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [42 x i8] c"switch.table.ccid3_hc_tx_parse_options.73\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [37 x i8] c"switch.table.ccid3_hc_tx_send_packet\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [43 x i8] c"switch.table.ccid3_hc_tx_no_feedback_timer\00", align 1
@___asan_gen_.310 = private unnamed_addr constant [46 x i8] c"switch.table.ccid3_hc_tx_no_feedback_timer.74\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [35 x i8] c"switch.table.ccid3_hc_rx_set_state\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [28 x i8] c"switch.table.ccid3_first_li\00", align 1
@llvm.compiler.used = appending global [110 x ptr] [ptr @__UNIQUE_ID_ccid3_debug622, ptr @__UNIQUE_ID_ccid3_debugtype621, ptr @__param_ccid3_debug, ptr @ccid3_first_li._entry, ptr @ccid3_first_li._entry.34, ptr @ccid3_first_li._entry.37, ptr @ccid3_first_li._entry.40, ptr @ccid3_first_li._entry_ptr, ptr @ccid3_first_li._entry_ptr.36, ptr @ccid3_first_li._entry_ptr.39, ptr @ccid3_first_li._entry_ptr.42, ptr @ccid3_hc_rx_send_feedback._entry, ptr @ccid3_hc_rx_send_feedback._entry_ptr, ptr @ccid3_hc_rx_set_state._entry, ptr @ccid3_hc_rx_set_state._entry_ptr, ptr @ccid3_hc_tx_no_feedback_timer._entry, ptr @ccid3_hc_tx_no_feedback_timer._entry.5, ptr @ccid3_hc_tx_no_feedback_timer._entry_ptr, ptr @ccid3_hc_tx_no_feedback_timer._entry_ptr.7, ptr @ccid3_hc_tx_packet_recv._entry, ptr @ccid3_hc_tx_packet_recv._entry.47, ptr @ccid3_hc_tx_packet_recv._entry_ptr, ptr @ccid3_hc_tx_packet_recv._entry_ptr.49, ptr @ccid3_hc_tx_packet_sent._entry, ptr @ccid3_hc_tx_packet_sent._entry_ptr, ptr @ccid3_hc_tx_parse_options._entry, ptr @ccid3_hc_tx_parse_options._entry.54, ptr @ccid3_hc_tx_parse_options._entry.57, ptr @ccid3_hc_tx_parse_options._entry_ptr, ptr @ccid3_hc_tx_parse_options._entry_ptr.56, ptr @ccid3_hc_tx_parse_options._entry_ptr.59, ptr @ccid3_hc_tx_send_packet._entry, ptr @ccid3_hc_tx_send_packet._entry.62, ptr @ccid3_hc_tx_send_packet._entry_ptr, ptr @ccid3_hc_tx_send_packet._entry_ptr.64, ptr @ccid3_hc_tx_set_state._entry, ptr @ccid3_hc_tx_set_state._entry_ptr, ptr @ccid3_hc_tx_update_x._entry, ptr @ccid3_hc_tx_update_x._entry_ptr, ptr @ccid3_update_send_interval._entry, ptr @ccid3_update_send_interval._entry.21, ptr @ccid3_update_send_interval._entry_ptr, ptr @ccid3_update_send_interval._entry_ptr.23, ptr @scaled_div32._entry, ptr @scaled_div32._entry_ptr, ptr @.str, ptr @ccid3_ops, ptr @ccid3_debug, ptr @ccid3_hc_tx_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @ccid3_tx_state_name.ccid3_state_names, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @ccid3_rx_state_name.ccid3_rx_state_names, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.69, ptr @switch.table.ccid3_hc_tx_packet_recv, ptr @switch.table.ccid3_hc_tx_packet_recv.70, ptr @switch.table.ccid3_hc_tx_packet_recv.71, ptr @switch.table.ccid3_hc_tx_parse_options, ptr @switch.table.ccid3_hc_tx_parse_options.72, ptr @switch.table.ccid3_hc_tx_parse_options.73, ptr @switch.table.ccid3_hc_tx_send_packet, ptr @switch.table.ccid3_hc_tx_no_feedback_timer, ptr @switch.table.ccid3_hc_tx_no_feedback_timer.74, ptr @switch.table.ccid3_hc_rx_set_state, ptr @switch.table.ccid3_first_li], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_ops to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_hc_tx_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_hc_tx_no_feedback_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_hc_tx_no_feedback_timer._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_tx_state_name.ccid3_state_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_hc_tx_set_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_update_send_interval._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_update_send_interval._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaled_div32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_hc_tx_update_x._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_hc_rx_set_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_rx_state_name.ccid3_rx_state_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_first_li._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_first_li._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_first_li._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_first_li._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_hc_rx_send_feedback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_hc_tx_packet_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_hc_tx_packet_recv._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_hc_tx_parse_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_hc_tx_parse_options._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_hc_tx_parse_options._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_hc_tx_send_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_hc_tx_send_packet._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid3_hc_tx_packet_sent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ccid3_hc_tx_packet_recv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ccid3_hc_tx_packet_recv.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ccid3_hc_tx_packet_recv.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ccid3_hc_tx_parse_options to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ccid3_hc_tx_parse_options.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ccid3_hc_tx_parse_options.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ccid3_hc_tx_send_packet to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ccid3_hc_tx_no_feedback_timer to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ccid3_hc_tx_no_feedback_timer.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ccid3_hc_rx_set_state to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ccid3_first_li to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccid3_hc_rx_init(ptr noundef %ccid, ptr nocapture noundef readnone %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ccid_priv.i = getelementptr inbounds %struct.ccid, ptr %ccid, i32 0, i32 1
  %0 = ptrtoint ptr %ccid_priv.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %ccid_priv.i, align 8
  %bf.clear = and i16 %bf.load, -4081
  %bf.set = or i16 %bf.clear, 16
  store i16 %bf.set, ptr %ccid_priv.i, align 8
  %rx_li_hist = getelementptr inbounds %struct.ccid, ptr %ccid, i32 12
  %1 = call ptr @memset(ptr %rx_li_hist, i32 0, i32 44)
  %rx_hist = getelementptr inbounds %struct.ccid, ptr %ccid, i32 7
  %call1 = tail call i32 @tfrc_rx_hist_alloc(ptr noundef %rx_hist) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccid3_hc_tx_init(ptr noundef %ccid, ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ccid_priv.i = getelementptr inbounds %struct.ccid, ptr %ccid, i32 0, i32 1
  %tx_state = getelementptr inbounds %struct.ccid3_hc_tx_sock, ptr %ccid_priv.i, i32 0, i32 8
  %0 = ptrtoint ptr %tx_state to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %tx_state, align 2
  %tx_hist = getelementptr inbounds %struct.ccid, ptr %ccid, i32 31
  %1 = ptrtoint ptr %tx_hist to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %tx_hist, align 8
  %sk1 = getelementptr inbounds %struct.ccid, ptr %ccid, i32 25
  %2 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sk, ptr %sk1, align 8
  %tx_no_feedback_timer = getelementptr inbounds %struct.ccid, ptr %ccid, i32 13
  tail call void @init_timer_key(ptr noundef %tx_no_feedback_timer, ptr noundef nonnull @ccid3_hc_tx_no_feedback_timer, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @ccid3_hc_tx_init.__key) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccid3_hc_rx_exit(ptr nocapture noundef readonly %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_hc_rx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 24
  %0 = ptrtoint ptr %dccps_hc_rx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_rx_ccid.i, align 8
  %rx_hist = getelementptr inbounds %struct.ccid, ptr %1, i32 7
  tail call void @tfrc_rx_hist_purge(ptr noundef %rx_hist) #8
  %rx_li_hist = getelementptr inbounds %struct.ccid, ptr %1, i32 12
  tail call void @tfrc_lh_cleanup(ptr noundef %rx_li_hist) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccid3_hc_tx_exit(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_hc_tx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  %0 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %tx_no_feedback_timer = getelementptr inbounds %struct.ccid, ptr %1, i32 13
  tail call void @sk_stop_timer(ptr noundef %sk, ptr noundef %tx_no_feedback_timer) #8
  %tx_hist = getelementptr inbounds %struct.ccid, ptr %1, i32 31
  tail call void @tfrc_tx_hist_purge(ptr noundef %tx_hist) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccid3_hc_rx_packet_recv(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_hc_rx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 24
  %0 = ptrtoint ptr %dccps_hc_rx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_rx_ccid.i, align 8
  %ccid_priv.i.i = getelementptr inbounds %struct.ccid, ptr %1, i32 0, i32 1
  %dccps_options_received = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 26
  %2 = ptrtoint ptr %dccps_options_received to i32
  call void @__asan_load8_noabort(i32 %2)
  %bf.load = load i64, ptr %dccps_options_received, align 8
  %bf.lshr = lshr i64 %bf.load, 16
  %dccpd_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %3 = ptrtoint ptr %dccpd_type.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %dccpd_type.i, align 8
  %bf.lshr.i = lshr i8 %bf.load.i, 4
  %trunc.i = trunc i8 %bf.lshr.i to i4
  %4 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i4 %trunc.i, label %lor.lhs.false5.i [
    i4 2, label %entry.dccp_data_packet.exit_crit_edge
    i4 4, label %entry.dccp_data_packet.exit_crit_edge168
  ]

entry.dccp_data_packet.exit_crit_edge168:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dccp_data_packet.exit

entry.dccp_data_packet.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dccp_data_packet.exit

lor.lhs.false5.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %bf.load.i)
  %cmp7.i = icmp ugt i8 %bf.load.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.lshr.i)
  %cmp10.i = icmp ne i8 %bf.lshr.i, 1
  %spec.select167 = and i1 %cmp7.i, %cmp10.i
  br label %dccp_data_packet.exit

dccp_data_packet.exit:                            ; preds = %lor.lhs.false5.i, %entry.dccp_data_packet.exit_crit_edge, %entry.dccp_data_packet.exit_crit_edge168
  %5 = phi i1 [ false, %entry.dccp_data_packet.exit_crit_edge ], [ false, %entry.dccp_data_packet.exit_crit_edge168 ], [ %spec.select167, %lor.lhs.false5.i ]
  %6 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load3 = load i16, ptr %ccid_priv.i.i, align 8
  %7 = and i16 %bf.load3, 4080
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %7)
  %cmp = icmp eq i16 %7, 16
  br i1 %cmp, label %if.then, label %if.end11, !prof !161

if.then:                                          ; preds = %dccp_data_packet.exit
  br i1 %5, label %if.then.done_receiving.thread149_crit_edge, label %if.then8

if.then.done_receiving.thread149_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %done_receiving.thread149

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %12 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %dccph_doff = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %dccph_doff to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dccph_doff, align 2
  %conv = zext i8 %15 to i32
  %mul.neg = mul nuw nsw i32 %conv, 65532
  %sub = add i32 %mul.neg, %9
  tail call fastcc void @ccid3_hc_rx_set_state(ptr noundef %sk)
  %conv10 = trunc i32 %sub to i16
  %rx_s = getelementptr inbounds %struct.ccid, ptr %1, i32 23
  %16 = ptrtoint ptr %rx_s to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv10, ptr %rx_s, align 8
  br label %done_receiving.thread154

if.end11:                                         ; preds = %dccp_data_packet.exit
  %rx_hist = getelementptr inbounds %struct.ccid, ptr %1, i32 7
  %call12 = tail call i32 @tfrc_rx_hist_duplicate(ptr noundef %rx_hist, ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  br i1 %5, label %if.end15.if.end30_crit_edge, label %if.then17

if.end15.if.end30_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %len19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len19, align 4
  %head.i.i127 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %19 = ptrtoint ptr %head.i.i127 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i127, align 8
  %transport_header.i.i128 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %21 = ptrtoint ptr %transport_header.i.i128 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %transport_header.i.i128, align 2
  %conv.i.i129 = zext i16 %22 to i32
  %add.ptr.i.i130 = getelementptr i8, ptr %20, i32 %conv.i.i129
  %dccph_doff21 = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i130, i32 0, i32 2
  %23 = ptrtoint ptr %dccph_doff21 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dccph_doff21, align 2
  %conv22 = zext i8 %24 to i32
  %mul23.neg = mul nsw i32 %conv22, -4
  %sub24 = add i32 %mul23.neg, %18
  %rx_s25 = getelementptr inbounds %struct.ccid, ptr %1, i32 23
  %25 = ptrtoint ptr %rx_s25 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rx_s25, align 8
  %conv26 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not.i = icmp eq i16 %26, 0
  %mul.i = mul nuw nsw i32 %conv26, 9
  %add.i = add i32 %mul.i, %sub24
  %div.i = udiv i32 %add.i, 10
  %cond.i = select i1 %tobool.not.i, i32 %sub24, i32 %div.i
  %conv28 = trunc i32 %cond.i to i16
  %27 = ptrtoint ptr %rx_s25 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv28, ptr %rx_s25, align 8
  %rx_bytes_recv = getelementptr inbounds %struct.ccid, ptr %1, i32 2
  %28 = ptrtoint ptr %rx_bytes_recv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_bytes_recv, align 4
  %add = add i32 %29, %sub24
  store i32 %add, ptr %rx_bytes_recv, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then17, %if.end15.if.end30_crit_edge
  %rx_li_hist = getelementptr inbounds %struct.ccid, ptr %1, i32 12
  %call32 = tail call i32 @tfrc_rx_handle_loss(ptr noundef %rx_hist, ptr noundef %rx_li_hist, ptr noundef %skb, i64 noundef %bf.lshr, ptr noundef nonnull @ccid3_first_li, ptr noundef %sk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.then85.thread

if.then85.thread:                                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %dccps_hc_rx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dccps_hc_rx_ccid.i, align 8
  %ccid_priv.i.i.i159 = getelementptr inbounds %struct.ccid, ptr %31, i32 0, i32 1
  %call2.i160 = tail call i64 @ktime_get() #8
  br label %sw.bb3.i

if.end35:                                         ; preds = %if.end30
  %loss_count.i = getelementptr inbounds %struct.ccid, ptr %1, i32 11
  %32 = ptrtoint ptr %loss_count.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i131 = load i8, ptr %loss_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %bf.load.i131)
  %cmp.i = icmp ugt i8 %bf.load.i131, 63
  br i1 %cmp.i, label %if.end35.cleanup_crit_edge, label %if.end39

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  br i1 %5, label %if.end39.done_receiving.thread149_crit_edge, label %if.end50, !prof !161

if.end39.done_receiving.thread149_crit_edge:      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %done_receiving.thread149

if.end50:                                         ; preds = %if.end39
  %counter.i = getelementptr inbounds %struct.ccid, ptr %1, i32 21
  %33 = ptrtoint ptr %counter.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %counter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp.i132.not = icmp eq i8 %34, 0
  br i1 %cmp.i132.not, label %if.then54, label %if.else

if.then54:                                        ; preds = %if.end50
  %call56 = tail call i32 @tfrc_rx_hist_sample_rtt(ptr noundef %rx_hist, ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57.not = icmp eq i32 %call56, 0
  br i1 %cmp57.not, label %if.then54.if.end68_crit_edge, label %if.then59

if.then54.if.end68_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then59:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %rx_rtt = getelementptr inbounds %struct.ccid, ptr %1, i32 4
  %35 = ptrtoint ptr %rx_rtt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_rtt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i133 = icmp eq i32 %36, 0
  %mul.i134 = mul i32 %36, 9
  %add.i135 = add i32 %mul.i134, %call56
  %div.i136 = udiv i32 %add.i135, 10
  %cond.i137 = select i1 %tobool.not.i133, i32 %call56, i32 %div.i136
  %37 = ptrtoint ptr %rx_rtt to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %cond.i137, ptr %rx_rtt, align 4
  br label %if.end68

if.else:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %call64 = tail call zeroext i8 @tfrc_lh_update_i_mean(ptr noundef %rx_li_hist, ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call64)
  %tobool65.not = icmp eq i8 %call64, 0
  %spec.select = select i1 %tobool65.not, i32 0, i32 3
  br label %if.end68

if.end68:                                         ; preds = %if.else, %if.then59, %if.then54.if.end68_crit_edge
  %do_feedback.0 = phi i32 [ 0, %if.then59 ], [ 0, %if.then54.if.end68_crit_edge ], [ %spec.select, %if.else ]
  %head.i.i138 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %38 = ptrtoint ptr %head.i.i138 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i138, align 8
  %transport_header.i.i139 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %40 = ptrtoint ptr %transport_header.i.i139 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %transport_header.i.i139, align 2
  %conv.i.i140 = zext i16 %41 to i32
  %add.ptr.i.i141 = getelementptr i8, ptr %39, i32 %conv.i.i140
  %dccph_ccval = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i141, i32 0, i32 3
  %42 = ptrtoint ptr %dccph_ccval to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load70 = load i8, ptr %dccph_ccval, align 1
  %bf.lshr71 = lshr i8 %bf.load70, 4
  %add73 = zext i8 %bf.lshr71 to i32
  %43 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load74 = load i16, ptr %ccid_priv.i.i, align 8
  %bf.lshr75 = lshr i16 %bf.load74, 12
  %bf.cast76 = zext i16 %bf.lshr75 to i32
  %sub78 = sub nsw i32 %add73, %bf.cast76
  %and = and i32 %sub78, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp79.not = icmp eq i32 %and, 0
  br i1 %cmp79.not, label %done_receiving, label %if.end68.done_receiving.thread154_crit_edge

if.end68.done_receiving.thread154_crit_edge:      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %done_receiving.thread154

done_receiving.thread149:                         ; preds = %if.end39.done_receiving.thread149_crit_edge, %if.then.done_receiving.thread149_crit_edge
  %rx_hist83151 = getelementptr inbounds %struct.ccid, ptr %1, i32 7
  tail call void @tfrc_rx_hist_add_packet(ptr noundef %rx_hist83151, ptr noundef %skb, i64 noundef %bf.lshr) #8
  br label %cleanup

done_receiving.thread154:                         ; preds = %if.end68.done_receiving.thread154_crit_edge, %if.then8
  %do_feedback.1.ph = phi i32 [ 2, %if.end68.done_receiving.thread154_crit_edge ], [ 1, %if.then8 ]
  %rx_hist83156 = getelementptr inbounds %struct.ccid, ptr %1, i32 7
  tail call void @tfrc_rx_hist_add_packet(ptr noundef %rx_hist83156, ptr noundef %skb, i64 noundef %bf.lshr) #8
  br label %if.then85

done_receiving:                                   ; preds = %if.end68
  tail call void @tfrc_rx_hist_add_packet(ptr noundef %rx_hist, ptr noundef %skb, i64 noundef %bf.lshr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_feedback.0)
  %tobool84.not = icmp eq i32 %do_feedback.0, 0
  br i1 %tobool84.not, label %done_receiving.cleanup_crit_edge, label %done_receiving.if.then85_crit_edge

done_receiving.if.then85_crit_edge:               ; preds = %done_receiving
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then85

done_receiving.cleanup_crit_edge:                 ; preds = %done_receiving
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then85:                                        ; preds = %done_receiving.if.then85_crit_edge, %done_receiving.thread154
  %do_feedback.2148 = phi i32 [ %do_feedback.0, %done_receiving.if.then85_crit_edge ], [ %do_feedback.1.ph, %done_receiving.thread154 ]
  %44 = ptrtoint ptr %dccps_hc_rx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dccps_hc_rx_ccid.i, align 8
  %ccid_priv.i.i.i = getelementptr inbounds %struct.ccid, ptr %45, i32 0, i32 1
  %call2.i = tail call i64 @ktime_get() #8
  %46 = zext i32 %do_feedback.2148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %do_feedback.2148, label %if.then85.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 3, label %if.then85.sw.bb3.i_crit_edge
    i32 2, label %if.then85.sw.bb5.i_crit_edge
  ]

if.then85.sw.bb5.i_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

if.then85.sw.bb3.i_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3.i

if.then85.cleanup_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  %rx_x_recv.i = getelementptr inbounds %struct.ccid, ptr %45, i32 3
  %47 = ptrtoint ptr %rx_x_recv.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %rx_x_recv.i, align 8
  %i_mean.i = getelementptr inbounds %struct.ccid, ptr %45, i32 22
  %48 = ptrtoint ptr %i_mean.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %i_mean.i, align 4
  br label %do.body.i

sw.bb3.i:                                         ; preds = %if.then85.sw.bb3.i_crit_edge, %if.then85.thread
  %call2.i165 = phi i64 [ %call2.i160, %if.then85.thread ], [ %call2.i, %if.then85.sw.bb3.i_crit_edge ]
  %ccid_priv.i.i.i163 = phi ptr [ %ccid_priv.i.i.i159, %if.then85.thread ], [ %ccid_priv.i.i.i, %if.then85.sw.bb3.i_crit_edge ]
  %49 = phi ptr [ %31, %if.then85.thread ], [ %45, %if.then85.sw.bb3.i_crit_edge ]
  %rx_x_recv4.i = getelementptr inbounds %struct.ccid, ptr %49, i32 3
  %50 = ptrtoint ptr %rx_x_recv4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_x_recv4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.not.i = icmp eq i32 %51, 0
  br i1 %cmp.not.i, label %sw.bb3.i.sw.bb5.i_crit_edge, label %sw.bb3.i.do.body.i_crit_edge

sw.bb3.i.do.body.i_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

sw.bb3.i.sw.bb5.i_crit_edge:                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

sw.bb5.i:                                         ; preds = %sw.bb3.i.sw.bb5.i_crit_edge, %if.then85.sw.bb5.i_crit_edge
  %call2.i164 = phi i64 [ %call2.i165, %sw.bb3.i.sw.bb5.i_crit_edge ], [ %call2.i, %if.then85.sw.bb5.i_crit_edge ]
  %ccid_priv.i.i.i162 = phi ptr [ %ccid_priv.i.i.i163, %sw.bb3.i.sw.bb5.i_crit_edge ], [ %ccid_priv.i.i.i, %if.then85.sw.bb5.i_crit_edge ]
  %52 = phi ptr [ %49, %sw.bb3.i.sw.bb5.i_crit_edge ], [ %45, %if.then85.sw.bb5.i_crit_edge ]
  %rx_tstamp_last_feedback.i = getelementptr inbounds %struct.ccid, ptr %52, i32 5
  %53 = ptrtoint ptr %rx_tstamp_last_feedback.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %rx_tstamp_last_feedback.i, align 8
  %sub.i.i = sub i64 %call2.i164, %54
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp8.i.i.i.i = icmp slt i64 %sub.i.i, 0
  %55 = tail call i64 @llvm.abs.i64(i64 %sub.i.i, i1 false) #8
  %56 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %55, i32 0) #11, !srcloc !162
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %56, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %56, 1
  %57 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %55, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #11, !srcloc !163
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %57, 0
  %div1811.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  %sub210.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i
  %cond213.i.i.i.i = select i1 %cmp8.i.i.i.i, i64 %sub210.i.i.i.i, i64 %div1811.i.i.i.i
  %58 = tail call i64 @llvm.smax.i64(i64 %cond213.i.i.i.i, i64 1) #8
  %rx_bytes_recv.i = getelementptr inbounds %struct.ccid, ptr %52, i32 2
  %59 = ptrtoint ptr %rx_bytes_recv.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rx_bytes_recv.i, align 4
  %conv.i = zext i32 %60 to i64
  %mul.i.i.i = mul nuw nsw i64 %conv.i, 1000000
  %call.i.i.i = tail call i64 @div64_u64(i64 noundef %mul.i.i.i, i64 noundef %58) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %call.i.i.i)
  %cmp.i.i = icmp ugt i64 %call.i.i.i, 4294967295
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i64 noundef %conv.i, i64 noundef %58, ptr noundef nonnull @.str.26, i32 noundef 39, ptr noundef nonnull @.str.25) #12
  br label %scaled_div32.exit.i

if.end.i.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i142 = trunc i64 %call.i.i.i to i32
  br label %scaled_div32.exit.i

scaled_div32.exit.i:                              ; preds = %if.end.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ -1, %do.end.i.i ], [ %conv.i.i142, %if.end.i.i ]
  %rx_x_recv11.i = getelementptr inbounds %struct.ccid, ptr %52, i32 3
  %61 = ptrtoint ptr %rx_x_recv11.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %retval.0.i.i, ptr %rx_x_recv11.i, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %scaled_div32.exit.i, %sw.bb3.i.do.body.i_crit_edge, %sw.bb.i
  %call2.i166 = phi i64 [ %call2.i164, %scaled_div32.exit.i ], [ %call2.i165, %sw.bb3.i.do.body.i_crit_edge ], [ %call2.i, %sw.bb.i ]
  %ccid_priv.i.i.i161 = phi ptr [ %ccid_priv.i.i.i162, %scaled_div32.exit.i ], [ %ccid_priv.i.i.i163, %sw.bb3.i.do.body.i_crit_edge ], [ %ccid_priv.i.i.i, %sw.bb.i ]
  %62 = phi ptr [ %52, %scaled_div32.exit.i ], [ %49, %sw.bb3.i.do.body.i_crit_edge ], [ %45, %sw.bb.i ]
  %delta.0.i = phi i64 [ %58, %scaled_div32.exit.i ], [ 0, %sw.bb3.i.do.body.i_crit_edge ], [ 0, %sw.bb.i ]
  %63 = load i8, ptr @ccid3_debug, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i143 = icmp eq i8 %63, 0
  br i1 %tobool.not.i143, label %do.body.i.do.end20.i_crit_edge, label %do.end.i

do.body.i.do.end20.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_x_recv14.i = getelementptr inbounds %struct.ccid, ptr %62, i32 3
  %64 = ptrtoint ptr %rx_x_recv14.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_x_recv14.i, align 8
  %i_mean16.i = getelementptr inbounds %struct.ccid, ptr %62, i32 22
  %66 = ptrtoint ptr %i_mean16.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %i_mean16.i, align 4
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i64 noundef %delta.0.i, i32 noundef %65, i32 noundef %67) #12
  br label %do.end20.i

do.end20.i:                                       ; preds = %do.end.i, %do.body.i.do.end20.i_crit_edge
  %rx_tstamp_last_feedback21.i = getelementptr inbounds %struct.ccid, ptr %62, i32 5
  %68 = ptrtoint ptr %rx_tstamp_last_feedback21.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %call2.i166, ptr %rx_tstamp_last_feedback21.i, align 8
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %69 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %71 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %72 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %70, i32 %conv.i.i.i
  %dccph_ccval.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i.i, i32 0, i32 3
  %73 = ptrtoint ptr %dccph_ccval.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load.i144 = load i8, ptr %dccph_ccval.i, align 1
  %bf.lshr.i145 = lshr i8 %bf.load.i144, 4
  %74 = zext i8 %bf.lshr.i145 to i16
  %75 = ptrtoint ptr %ccid_priv.i.i.i161 to i32
  call void @__asan_load2_noabort(i32 %75)
  %bf.load23.i = load i16, ptr %ccid_priv.i.i.i161, align 8
  %bf.shl.i = shl nuw i16 %74, 12
  %bf.clear.i = and i16 %bf.load23.i, 4095
  %bf.set.i = or i16 %bf.shl.i, %bf.clear.i
  store i16 %bf.set.i, ptr %ccid_priv.i.i.i161, align 8
  %rx_bytes_recv24.i = getelementptr inbounds %struct.ccid, ptr %62, i32 2
  %76 = ptrtoint ptr %rx_bytes_recv24.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %rx_bytes_recv24.i, align 4
  %dccps_hc_rx_insert_options.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 29
  %77 = ptrtoint ptr %dccps_hc_rx_insert_options.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load25.i = load i8, ptr %dccps_hc_rx_insert_options.i, align 8
  %bf.set27.i = or i8 %bf.load25.i, 32
  store i8 %bf.set27.i, ptr %dccps_hc_rx_insert_options.i, align 8
  tail call void @dccp_send_ack(ptr noundef %sk) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end20.i, %if.then85.cleanup_crit_edge, %done_receiving.cleanup_crit_edge, %done_receiving.thread149, %if.end35.cleanup_crit_edge, %if.end11.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccid3_hc_rx_insert_options(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  %x_recv = alloca i32, align 4
  %pinv = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_hc_rx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 24
  %0 = ptrtoint ptr %dccps_hc_rx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_rx_ccid.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x_recv) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pinv) #8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %entry.if.end_crit_edge, label %lor.lhs.false

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %5)
  %cmp5 = icmp eq i8 %5, 13
  br i1 %cmp5, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %dccpd_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %6 = ptrtoint ptr %dccpd_type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %dccpd_type.i, align 8
  %bf.lshr.mask.i = and i8 %bf.load.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.lshr.mask.i)
  %cmp.i = icmp ne i8 %bf.lshr.mask.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %bf.load.i)
  %cmp3.i = icmp ugt i8 %bf.load.i, 15
  %tobool.not = and i1 %cmp3.i, %cmp.i
  br i1 %tobool.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %rx_x_recv = getelementptr inbounds %struct.ccid, ptr %1, i32 3
  %7 = ptrtoint ptr %rx_x_recv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_x_recv, align 8
  %9 = ptrtoint ptr %x_recv to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %x_recv, align 4
  %i_mean = getelementptr inbounds %struct.ccid, ptr %1, i32 22
  %10 = ptrtoint ptr %i_mean to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_mean, align 4
  %12 = ptrtoint ptr %pinv to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pinv, align 4
  %call10 = call i32 @dccp_insert_option(ptr noundef %skb, i8 noundef zeroext -64, ptr noundef nonnull %pinv, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false12:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = call i32 @dccp_insert_option(ptr noundef %skb, i8 noundef zeroext -62, ptr noundef nonnull %x_recv, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp ne i32 %call13, 0
  %spec.select = sext i1 %tobool14.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false12, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -1, %if.end9.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pinv) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x_recv) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccid3_hc_tx_packet_recv(ptr noundef %sk, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  %now = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_hc_tx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  %0 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %ccid_priv.i.i = getelementptr inbounds %struct.ccid, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %now) #8
  %2 = ptrtoint ptr %now to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %now, align 8, !annotation !165
  %dccpd_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %3 = ptrtoint ptr %dccpd_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %dccpd_type, align 8
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.lshr.off = add nsw i8 %bf.lshr, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.lshr.off)
  %switch = icmp ult i8 %bf.lshr.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_hist = getelementptr inbounds %struct.ccid, ptr %1, i32 31
  %4 = ptrtoint ptr %tx_hist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_hist, align 8
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %8 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %9 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %conv.i.i.i
  %dccph_x.i.i.i.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %dccph_x.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i.i.i.i = load i8, ptr %dccph_x.i.i.i.i, align 2
  %bf.clear.i.i.i.i = shl i8 %bf.load.i.i.i.i, 2
  %11 = and i8 %bf.clear.i.i.i.i, 4
  %narrow.i.i.i.i = add nuw nsw i8 %11, 12
  %add.i.i.i.i = zext i8 %narrow.i.i.i.i to i32
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %add.i.i.i.i
  %dccph_ack_nr_high.i = getelementptr inbounds %struct.dccp_hdr_ack_bits, ptr %add.ptr.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %dccph_ack_nr_high.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dccph_ack_nr_high.i, align 2
  %conv.i = zext i16 %13 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 32
  %dccph_ack_nr_low.i = getelementptr inbounds %struct.dccp_hdr_ack_bits, ptr %add.ptr.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %dccph_ack_nr_low.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dccph_ack_nr_low.i, align 4
  %conv1.i = zext i32 %15 to i64
  %add.i = or i64 %shl.i, %conv1.i
  %cmp.not6.i = icmp eq ptr %5, null
  br i1 %cmp.not6.i, label %if.end.cleanup_crit_edge, label %if.end.land.rhs.i_crit_edge

if.end.land.rhs.i_crit_edge:                      ; preds = %if.end
  br label %land.rhs.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end.land.rhs.i_crit_edge
  %head.addr.07.i = phi ptr [ %19, %while.body.i.land.rhs.i_crit_edge ], [ %5, %if.end.land.rhs.i_crit_edge ]
  %seqno1.i = getelementptr inbounds %struct.tfrc_tx_hist_entry, ptr %head.addr.07.i, i32 0, i32 1
  %16 = ptrtoint ptr %seqno1.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %seqno1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %add.i)
  %cmp2.not.i = icmp eq i64 %17, %add.i
  br i1 %cmp2.not.i, label %if.end15, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %18 = ptrtoint ptr %head.addr.07.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.addr.07.i, align 8
  %cmp.not.i = icmp eq ptr %19, null
  br i1 %cmp.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %land.rhs.i
  tail call void @tfrc_tx_hist_purge(ptr noundef nonnull %head.addr.07.i) #8
  %call.i154 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #8
  %20 = ptrtoint ptr %now to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call.i154, ptr %now, align 8
  %stamp = getelementptr inbounds %struct.tfrc_tx_hist_entry, ptr %head.addr.07.i, i32 0, i32 2
  %21 = ptrtoint ptr %stamp to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %stamp, align 8
  %sub.i = sub i64 %call.i154, %22
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %23 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #8
  %24 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %23, i32 0) #11, !srcloc !162
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %24, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %24, 1
  %25 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %23, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #11, !srcloc !163
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %25, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %conv18 = trunc i64 %cond213.i.i.i to i32
  %call19 = tail call i32 @dccp_sample_rtt(ptr noundef %sk, i32 noundef %conv18) #8
  %tx_rtt = getelementptr inbounds %struct.ccid, ptr %1, i32 6
  %26 = ptrtoint ptr %tx_rtt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_rtt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  %mul.i = mul i32 %27, 9
  %add.i155 = add i32 %mul.i, %call19
  %div.i = udiv i32 %add.i155, 10
  %cond.i = select i1 %tobool.not.i, i32 %call19, i32 %div.i
  %28 = ptrtoint ptr %tx_rtt to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond.i, ptr %tx_rtt, align 4
  %tx_state = getelementptr inbounds %struct.ccid3_hc_tx_sock, ptr %ccid_priv.i.i, i32 0, i32 8
  %29 = ptrtoint ptr %tx_state to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load22 = load i8, ptr %tx_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.load22)
  %cmp23 = icmp eq i8 %bf.load22, 2
  br i1 %cmp23, label %if.then25, label %if.end15.if.end35_crit_edge

if.end15.if.end35_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then25:                                        ; preds = %if.end15
  %30 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %ccid_priv.i.i.i = getelementptr inbounds %struct.ccid, ptr %31, i32 0, i32 1
  %tx_state.i = getelementptr inbounds %struct.ccid3_hc_tx_sock, ptr %ccid_priv.i.i.i, i32 0, i32 8
  %32 = ptrtoint ptr %tx_state.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i = load i8, ptr %tx_state.i, align 2
  %33 = load i8, ptr @ccid3_debug, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i156 = icmp eq i8 %33, 0
  br i1 %tobool.not.i156, label %if.then25.do.end7.i_crit_edge, label %do.end.i

if.then25.do.end7.i_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

do.end.i:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %bf.cast.i = zext i8 %bf.load.i to i32
  %dccps_role.i.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 29
  %34 = ptrtoint ptr %dccps_role.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i.i = load i8, ptr %dccps_role.i.i, align 8
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 6
  %bf.cast.i.i = zext i8 %bf.lshr.i.i to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.ccid3_hc_tx_packet_recv, i32 0, i32 %bf.cast.i.i
  %35 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %35)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %arrayidx.i.i = getelementptr [4 x ptr], ptr @ccid3_tx_state_name.ccid3_state_names, i32 0, i32 %bf.cast.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i, align 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull %switch.load, ptr noundef %sk, ptr noundef %37, ptr noundef nonnull @.str.15) #12
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %if.then25.do.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.load.i)
  %cmp.i157 = icmp eq i8 %bf.load.i, 3
  br i1 %cmp.i157, label %do.end19.i, label %do.end7.i.ccid3_hc_tx_set_state.exit_crit_edge, !prof !161

do.end7.i.ccid3_hc_tx_set_state.exit_crit_edge:   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ccid3_hc_tx_set_state.exit

do.end19.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 59, i32 noundef 9, ptr noundef null) #8
  br label %ccid3_hc_tx_set_state.exit

ccid3_hc_tx_set_state.exit:                       ; preds = %do.end19.i, %do.end7.i.ccid3_hc_tx_set_state.exit_crit_edge
  %38 = ptrtoint ptr %tx_state.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 3, ptr %tx_state.i, align 2
  %tx_t_rto = getelementptr inbounds %struct.ccid, ptr %1, i32 8
  %39 = ptrtoint ptr %tx_t_rto to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_t_rto, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp26 = icmp eq i32 %40, 0
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %ccid3_hc_tx_set_state.exit
  %41 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %tx_rtt.i = getelementptr inbounds %struct.ccid, ptr %42, i32 6
  %43 = ptrtoint ptr %tx_rtt.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_rtt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i.i = icmp eq i32 %44, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %rfc3390_initial_rate.exit, !prof !161

do.body2.i.i:                                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/dccp/ccids/lib/tfrc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #8, !srcloc !166
  unreachable

rfc3390_initial_rate.exit:                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %conv13.i = zext i32 %44 to i64
  %tx_s.i = getelementptr inbounds %struct.ccid, ptr %42, i32 10
  %45 = ptrtoint ptr %tx_s.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %tx_s.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2190, i16 %46)
  %cmp.i159 = icmp ult i16 %46, 2190
  %conv.i160 = zext i16 %46 to i32
  %mul.i161 = shl nuw nsw i32 %conv.i160, 1
  %cond.i162 = select i1 %cmp.i159, i32 4380, i32 %mul.i161
  %mul4.i = shl nuw nsw i32 %conv.i160, 2
  %47 = tail call i32 @llvm.umin.i32(i32 %cond.i162, i32 %mul4.i) #8
  %shl.i163 = shl nuw nsw i32 %47, 6
  %conv12.i = zext i32 %shl.i163 to i64
  %mul.i.i = mul nuw nsw i64 %conv12.i, 1000000
  %call.i.i = tail call i64 @div64_u64(i64 noundef %mul.i.i, i64 noundef %conv13.i) #8
  %48 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %call.i.i, ptr %ccid_priv.i.i, align 8
  %49 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %now, align 8
  %tx_t_ld = getelementptr inbounds %struct.ccid, ptr %1, i32 27
  %51 = ptrtoint ptr %tx_t_ld to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %tx_t_ld, align 8
  tail call fastcc void @ccid3_update_send_interval(ptr noundef %ccid_priv.i.i)
  br label %do.body

if.else:                                          ; preds = %ccid3_hc_tx_set_state.exit
  %tx_p = getelementptr inbounds %struct.ccid, ptr %1, i32 7
  %52 = ptrtoint ptr %tx_p to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_p, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp30 = icmp eq i32 %53, 0
  br i1 %cmp30, label %if.else.do.body_crit_edge, label %if.else.if.end35_crit_edge

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end35:                                         ; preds = %if.else.if.end35_crit_edge, %if.end15.if.end35_crit_edge
  %tx_p36 = getelementptr inbounds %struct.ccid, ptr %1, i32 7
  %54 = ptrtoint ptr %tx_p36 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_p36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp37.not = icmp eq i32 %55, 0
  br i1 %cmp37.not, label %if.end35.if.end43_crit_edge, label %if.then39

if.end35.if.end43_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %tx_s = getelementptr inbounds %struct.ccid, ptr %1, i32 10
  %56 = ptrtoint ptr %tx_s to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %tx_s, align 4
  %58 = ptrtoint ptr %tx_rtt to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_rtt, align 4
  %call42 = tail call i32 @tfrc_calc_x(i16 noundef zeroext %57, i32 noundef %59, i32 noundef %55) #8
  %tx_x_calc = getelementptr inbounds %struct.ccid, ptr %1, i32 5
  %60 = ptrtoint ptr %tx_x_calc to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call42, ptr %tx_x_calc, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end35.if.end43_crit_edge
  call fastcc void @ccid3_hc_tx_update_x(ptr noundef %sk, ptr noundef nonnull %now)
  br label %do.body

do.body:                                          ; preds = %if.end43, %if.else.do.body_crit_edge, %rfc3390_initial_rate.exit
  %61 = load i8, ptr @ccid3_debug, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not = icmp eq i8 %61, 0
  br i1 %tobool.not, label %do.body.do.end59_crit_edge, label %do.end

do.body.do.end59_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dccps_role.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 29
  %62 = ptrtoint ptr %dccps_role.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load.i164 = load i8, ptr %dccps_role.i, align 8
  %bf.lshr.i = lshr i8 %bf.load.i164, 6
  %bf.cast.i165 = zext i8 %bf.lshr.i to i32
  %switch.gep186 = getelementptr inbounds [4 x ptr], ptr @switch.table.ccid3_hc_tx_packet_recv.70, i32 0, i32 %bf.cast.i165
  %63 = ptrtoint ptr %switch.gep186 to i32
  call void @__asan_load4_noabort(i32 %63)
  %switch.load187 = load ptr, ptr %switch.gep186, align 4
  %64 = ptrtoint ptr %tx_rtt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tx_rtt, align 4
  %tx_s48 = getelementptr inbounds %struct.ccid, ptr %1, i32 10
  %66 = ptrtoint ptr %tx_s48 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %tx_s48, align 4
  %conv49 = zext i16 %67 to i32
  %tx_p50 = getelementptr inbounds %struct.ccid, ptr %1, i32 7
  %68 = ptrtoint ptr %tx_p50 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_p50, align 8
  %tx_x_calc51 = getelementptr inbounds %struct.ccid, ptr %1, i32 5
  %70 = ptrtoint ptr %tx_x_calc51 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_x_calc51, align 8
  %tx_x_recv = getelementptr inbounds %struct.ccid, ptr %1, i32 3
  %72 = ptrtoint ptr %tx_x_recv to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %tx_x_recv, align 8
  %shr = lshr i64 %73, 6
  %conv52 = trunc i64 %shr to i32
  %74 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %ccid_priv.i.i, align 8
  %shr54 = lshr i64 %75, 6
  %conv55 = trunc i64 %shr54 to i32
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull %switch.load187, ptr noundef %sk, i32 noundef %65, i32 noundef %call19, i32 noundef %conv49, i32 noundef %69, i32 noundef %71, i32 noundef %conv52, i32 noundef %conv55) #12
  br label %do.end59

do.end59:                                         ; preds = %do.end, %do.body.do.end59_crit_edge
  %tx_no_feedback_timer = getelementptr inbounds %struct.ccid, ptr %1, i32 13
  call void @sk_stop_timer(ptr noundef %sk, ptr noundef %tx_no_feedback_timer) #8
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 78
  %76 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sk_write_space, align 4
  call void %77(ptr noundef %sk) #8
  %78 = ptrtoint ptr %tx_rtt to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tx_rtt, align 4
  %mul = shl i32 %79, 2
  %sk_dst_cache.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %80 = ptrtoint ptr %sk_dst_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %sk_dst_cache.i.i, align 4
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %do.end59.__sk_dst_get.exit.i_crit_edge

do.end59.__sk_dst_get.exit.i_crit_edge:           ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i

lockdep_sock_is_held.exit.i.i:                    ; preds = %do.end59
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %lor.lhs.false.i.i, label %lockdep_sock_is_held.exit.i.i.__sk_dst_get.exit.i_crit_edge

lockdep_sock_is_held.exit.i.i.__sk_dst_get.exit.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i

lor.lhs.false.i.i:                                ; preds = %lockdep_sock_is_held.exit.i.i
  %call2.i.i = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.__sk_dst_get.exit.i_crit_edge

lor.lhs.false.i.i.__sk_dst_get.exit.i_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.__sk_dst_get.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.__sk_dst_get.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b11.i.i = load i1, ptr @__sk_dst_get.__warned, align 1
  br i1 %.b11.i.i, label %land.lhs.true5.i.i.__sk_dst_get.exit.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.__sk_dst_get.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__sk_dst_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 2068, ptr noundef nonnull @.str.50) #8
  br label %__sk_dst_get.exit.i

__sk_dst_get.exit.i:                              ; preds = %if.then.i.i, %land.lhs.true5.i.i.__sk_dst_get.exit.i_crit_edge, %land.lhs.true.i.i.__sk_dst_get.exit.i_crit_edge, %lor.lhs.false.i.i.__sk_dst_get.exit.i_crit_edge, %lockdep_sock_is_held.exit.i.i.__sk_dst_get.exit.i_crit_edge, %do.end59.__sk_dst_get.exit.i_crit_edge
  %icsk_rto_min.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 7
  %82 = ptrtoint ptr %icsk_rto_min.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %icsk_rto_min.i, align 8
  %tobool.not.i167 = icmp eq ptr %81, null
  br i1 %tobool.not.i167, label %__sk_dst_get.exit.i.tcp_rto_min.exit_crit_edge, label %land.lhs.true.i

__sk_dst_get.exit.i.tcp_rto_min.exit_crit_edge:   ; preds = %__sk_dst_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tcp_rto_min.exit

land.lhs.true.i:                                  ; preds = %__sk_dst_get.exit.i
  %_metrics.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %81, i32 0, i32 2
  %84 = ptrtoint ptr %_metrics.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %_metrics.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %85, -4
  %86 = inttoptr i32 %and.i.i.i.i to ptr
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  %and.i.i = and i32 %88, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.tcp_rto_min.exit_crit_edge, label %if.else.i.i.i

land.lhs.true.i.tcp_rto_min.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tcp_rto_min.exit

if.else.i.i.i:                                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i.i.i = getelementptr i32, ptr %86, i32 12
  %89 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %call2.i.i.i = call i32 @__msecs_to_jiffies(i32 noundef %90) #8
  br label %tcp_rto_min.exit

tcp_rto_min.exit:                                 ; preds = %if.else.i.i.i, %land.lhs.true.i.tcp_rto_min.exit_crit_edge, %__sk_dst_get.exit.i.tcp_rto_min.exit_crit_edge
  %rto_min.0.i = phi i32 [ %83, %land.lhs.true.i.tcp_rto_min.exit_crit_edge ], [ %83, %__sk_dst_get.exit.i.tcp_rto_min.exit_crit_edge ], [ %call2.i.i.i, %if.else.i.i.i ]
  %mul62 = mul i32 %rto_min.0.i, 10000
  %91 = call i32 @llvm.umax.i32(i32 %mul, i32 %mul62)
  %tx_t_rto66 = getelementptr inbounds %struct.ccid, ptr %1, i32 8
  %92 = ptrtoint ptr %tx_t_rto66 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %tx_t_rto66, align 4
  %tx_t_ipi = getelementptr inbounds %struct.ccid, ptr %1, i32 9
  %93 = ptrtoint ptr %tx_t_ipi to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tx_t_ipi, align 8
  %mul68 = shl i32 %94, 1
  %95 = call i32 @llvm.umax.i32(i32 %91, i32 %mul68)
  %96 = load i8, ptr @ccid3_debug, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool77.not = icmp eq i8 %96, 0
  br i1 %tobool77.not, label %tcp_rto_min.exit.do.end88_crit_edge, label %do.end81

tcp_rto_min.exit.do.end88_crit_edge:              ; preds = %tcp_rto_min.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end88

do.end81:                                         ; preds = %tcp_rto_min.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dccps_role.i170 = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 29
  %97 = ptrtoint ptr %dccps_role.i170 to i32
  call void @__asan_load1_noabort(i32 %97)
  %bf.load.i171 = load i8, ptr %dccps_role.i170, align 8
  %bf.lshr.i172 = lshr i8 %bf.load.i171, 6
  %bf.cast.i173 = zext i8 %bf.lshr.i172 to i32
  %switch.gep188 = getelementptr inbounds [4 x ptr], ptr @switch.table.ccid3_hc_tx_packet_recv.71, i32 0, i32 %bf.cast.i173
  %98 = ptrtoint ptr %switch.gep188 to i32
  call void @__asan_load4_noabort(i32 %98)
  %switch.load189 = load ptr, ptr %switch.gep188, align 4
  %call3.i = call i32 @__usecs_to_jiffies(i32 noundef %95) #8
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46, ptr noundef nonnull %switch.load189, ptr noundef %sk, i32 noundef %call3.i, i32 noundef %95) #12
  br label %do.end88

do.end88:                                         ; preds = %do.end81, %tcp_rto_min.exit.do.end88_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %99 = load volatile i32, ptr @jiffies, align 128
  %call3.i150 = call i32 @__usecs_to_jiffies(i32 noundef %95) #8
  %add = add i32 %call3.i150, %99
  call void @sk_reset_timer(ptr noundef %sk, ptr noundef %tx_no_feedback_timer, i32 noundef %add) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end88, %while.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %now) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccid3_hc_tx_parse_options(ptr noundef %sk, i8 noundef zeroext %packet_type, i8 noundef zeroext %option, ptr nocapture noundef readonly %optval, i8 noundef zeroext %optlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_hc_tx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  %0 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %conv = zext i8 %option to i32
  %2 = zext i8 %option to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %option, label %entry.cleanup_crit_edge [
    i8 -62, label %entry.sw.bb_crit_edge
    i8 -64, label %entry.sw.bb_crit_edge92
  ]

entry.sw.bb_crit_edge92:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge92
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %packet_type)
  %cmp = icmp eq i8 %packet_type, 2
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %conv3 = zext i8 %optlen to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %optlen)
  %cmp4.not = icmp eq i8 %optlen, 4
  br i1 %cmp4.not, label %if.end19, label %do.body, !prof !167

do.body:                                          ; preds = %if.end
  %call8 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dccps_role.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 29
  %3 = ptrtoint ptr %dccps_role.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %dccps_role.i, align 8
  %bf.lshr.i = lshr i8 %bf.load.i, 6
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.ccid3_hc_tx_parse_options, i32 0, i32 %bf.cast.i
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, ptr noundef nonnull %switch.load, ptr noundef %sk, i32 noundef %conv3, i32 noundef %conv) #12
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %5 = ptrtoint ptr %optval to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %optval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -62, i8 %option)
  %cmp22 = icmp eq i8 %option, -62
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end19
  %conv25 = zext i32 %6 to i64
  %tx_x_recv = getelementptr inbounds %struct.ccid, ptr %1, i32 3
  %shl = shl nuw nsw i64 %conv25, 6
  %7 = ptrtoint ptr %tx_x_recv to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %shl, ptr %tx_x_recv, align 8
  %8 = load i8, ptr @ccid3_debug, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool28.not = icmp eq i8 %8, 0
  br i1 %tobool28.not, label %if.then24.cleanup_crit_edge, label %do.end32

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end32:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %dccps_role.i68 = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 29
  %9 = ptrtoint ptr %dccps_role.i68 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i69 = load i8, ptr %dccps_role.i68, align 8
  %bf.lshr.i70 = lshr i8 %bf.load.i69, 6
  %bf.cast.i71 = zext i8 %bf.lshr.i70 to i32
  %switch.gep88 = getelementptr inbounds [4 x ptr], ptr @switch.table.ccid3_hc_tx_parse_options.72, i32 0, i32 %bf.cast.i71
  %10 = ptrtoint ptr %switch.gep88 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load89 = load ptr, ptr %switch.gep88, align 4
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, ptr noundef nonnull %switch.load89, ptr noundef %sk, i32 noundef %6) #12
  br label %cleanup

if.else:                                          ; preds = %if.end19
  %call39 = tail call i32 @tfrc_invert_loss_event_rate(i32 noundef %6) #8
  %tx_p = getelementptr inbounds %struct.ccid, ptr %1, i32 7
  %11 = ptrtoint ptr %tx_p to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call39, ptr %tx_p, align 8
  %12 = load i8, ptr @ccid3_debug, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool41.not = icmp eq i8 %12, 0
  br i1 %tobool41.not, label %if.else.cleanup_crit_edge, label %do.end45

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end45:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dccps_role.i78 = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 29
  %13 = ptrtoint ptr %dccps_role.i78 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i79 = load i8, ptr %dccps_role.i78, align 8
  %bf.lshr.i80 = lshr i8 %bf.load.i79, 6
  %bf.cast.i81 = zext i8 %bf.lshr.i80 to i32
  %switch.gep90 = getelementptr inbounds [4 x ptr], ptr @switch.table.ccid3_hc_tx_parse_options.73, i32 0, i32 %bf.cast.i81
  %14 = ptrtoint ptr %switch.gep90 to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load91 = load ptr, ptr %switch.gep90, align 4
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.53, ptr noundef nonnull %switch.load91, ptr noundef %sk, i32 noundef %6) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.else.cleanup_crit_edge, %do.end32, %if.then24.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %do.end32 ], [ 0, %if.then24.cleanup_crit_edge ], [ 0, %do.end45 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccid3_hc_tx_send_packet(ptr noundef %sk, ptr nocapture noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_hc_tx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  %0 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %ccid_priv.i.i = getelementptr inbounds %struct.ccid, ptr %1, i32 0, i32 1
  %call.i97 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !161

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_state = getelementptr inbounds %struct.ccid3_hc_tx_sock, ptr %ccid_priv.i.i, i32 0, i32 8
  %4 = ptrtoint ptr %tx_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %tx_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load)
  %cmp4 = icmp eq i8 %bf.load, 1
  br i1 %cmp4, label %if.then5, label %if.else30

if.then5:                                         ; preds = %if.end
  %tx_no_feedback_timer = getelementptr inbounds %struct.ccid, ptr %1, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 2000000
  %spec.select = select i1 %cmp.i, i32 1073741822, i32 200
  %add = add i32 %spec.select, %5
  tail call void @sk_reset_timer(ptr noundef %sk, ptr noundef %tx_no_feedback_timer, i32 noundef %add) #8
  %tx_last_win_count = getelementptr inbounds %struct.ccid3_hc_tx_sock, ptr %ccid_priv.i.i, i32 0, i32 9
  %6 = ptrtoint ptr %tx_last_win_count to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %tx_last_win_count, align 1
  %tx_t_last_win_count = getelementptr inbounds %struct.ccid, ptr %1, i32 11
  %7 = ptrtoint ptr %tx_t_last_win_count to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %call.i97, ptr %tx_t_last_win_count, align 8
  %tx_t_nom = getelementptr inbounds %struct.ccid, ptr %1, i32 29
  %8 = ptrtoint ptr %tx_t_nom to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call.i97, ptr %tx_t_nom, align 8
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %conv = trunc i32 %10 to i16
  %tx_s = getelementptr inbounds %struct.ccid, ptr %1, i32 10
  %11 = ptrtoint ptr %tx_s to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %tx_s, align 4
  %lrcvtime = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24, i32 6
  %12 = ptrtoint ptr %lrcvtime to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lrcvtime, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  br i1 %tobool8.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.then5
  %14 = load i8, ptr @ccid3_debug, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool10.not = icmp eq i8 %14, 0
  br i1 %tobool10.not, label %do.body.do.end19_crit_edge, label %do.end

do.body.do.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef %13) #12
  br label %do.end19

do.end19:                                         ; preds = %do.end, %do.body.do.end19_crit_edge
  %15 = ptrtoint ptr %lrcvtime to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lrcvtime, align 4
  %tx_rtt = getelementptr inbounds %struct.ccid, ptr %1, i32 6
  %17 = ptrtoint ptr %tx_rtt to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tx_rtt, align 4
  %18 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %tx_rtt.i = getelementptr inbounds %struct.ccid, ptr %19, i32 6
  %20 = ptrtoint ptr %tx_rtt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_rtt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %rfc3390_initial_rate.exit, !prof !161

do.body2.i.i:                                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/dccp/ccids/lib/tfrc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #8, !srcloc !166
  unreachable

rfc3390_initial_rate.exit:                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  %conv13.i = zext i32 %21 to i64
  %tx_s.i = getelementptr inbounds %struct.ccid, ptr %19, i32 10
  %22 = ptrtoint ptr %tx_s.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %tx_s.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2190, i16 %23)
  %cmp.i98 = icmp ult i16 %23, 2190
  %conv.i = zext i16 %23 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %cond.i = select i1 %cmp.i98, i32 4380, i32 %mul.i
  %mul4.i = shl nuw nsw i32 %conv.i, 2
  %24 = tail call i32 @llvm.umin.i32(i32 %cond.i, i32 %mul4.i) #8
  %shl.i = shl nuw nsw i32 %24, 6
  %conv12.i = zext i32 %shl.i to i64
  %mul.i.i = mul nuw nsw i64 %conv12.i, 1000000
  %call.i.i = tail call i64 @div64_u64(i64 noundef %mul.i.i, i64 noundef %conv13.i) #8
  %25 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %call.i.i, ptr %ccid_priv.i.i, align 8
  %tx_t_ld = getelementptr inbounds %struct.ccid, ptr %1, i32 27
  %26 = ptrtoint ptr %tx_t_ld to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %call.i97, ptr %tx_t_ld, align 8
  br label %if.end29

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %tx_rtt24 = getelementptr inbounds %struct.ccid, ptr %1, i32 6
  %27 = ptrtoint ptr %tx_rtt24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 200000, ptr %tx_rtt24, align 4
  %conv.mask = shl i32 %10, 6
  %28 = and i32 %conv.mask, 4194240
  %shl = zext i32 %28 to i64
  %29 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %shl, ptr %ccid_priv.i.i, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.else, %rfc3390_initial_rate.exit
  tail call fastcc void @ccid3_update_send_interval(ptr noundef %ccid_priv.i.i)
  %30 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %ccid_priv.i.i.i = getelementptr inbounds %struct.ccid, ptr %31, i32 0, i32 1
  %tx_state.i = getelementptr inbounds %struct.ccid3_hc_tx_sock, ptr %ccid_priv.i.i.i, i32 0, i32 8
  %32 = ptrtoint ptr %tx_state.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i = load i8, ptr %tx_state.i, align 2
  %33 = load i8, ptr @ccid3_debug, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %if.end29.do.end7.i_crit_edge, label %do.end.i

if.end29.do.end7.i_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

do.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %bf.cast.i = zext i8 %bf.load.i to i32
  %dccps_role.i.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 29
  %34 = ptrtoint ptr %dccps_role.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i.i = load i8, ptr %dccps_role.i.i, align 8
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 6
  %bf.cast.i.i = zext i8 %bf.lshr.i.i to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.ccid3_hc_tx_send_packet, i32 0, i32 %bf.cast.i.i
  %35 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %35)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %arrayidx.i.i = getelementptr [4 x ptr], ptr @ccid3_tx_state_name.ccid3_state_names, i32 0, i32 %bf.cast.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i, align 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull %switch.load, ptr noundef %sk, ptr noundef %37, ptr noundef nonnull @.str.14) #12
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %if.end29.do.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.load.i)
  %cmp.i100 = icmp eq i8 %bf.load.i, 2
  br i1 %cmp.i100, label %do.end19.i, label %do.end7.i.ccid3_hc_tx_set_state.exit_crit_edge, !prof !161

do.end7.i.ccid3_hc_tx_set_state.exit_crit_edge:   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ccid3_hc_tx_set_state.exit

do.end19.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 59, i32 noundef 9, ptr noundef null) #8
  br label %ccid3_hc_tx_set_state.exit

ccid3_hc_tx_set_state.exit:                       ; preds = %do.end19.i, %do.end7.i.ccid3_hc_tx_set_state.exit_crit_edge
  %38 = ptrtoint ptr %tx_state.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 2, ptr %tx_state.i, align 2
  br label %if.end50

if.else30:                                        ; preds = %if.end
  %tx_t_nom31 = getelementptr inbounds %struct.ccid, ptr %1, i32 29
  %39 = ptrtoint ptr %tx_t_nom31 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %tx_t_nom31, align 8
  %sub.i = sub i64 %40, %call.i97
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %41 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #8
  %42 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %41, i32 0) #11, !srcloc !162
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %42, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %42, 1
  %43 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %41, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #11, !srcloc !163
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %43, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %44 = load i8, ptr @ccid3_debug, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool34.not = icmp eq i8 %44, 0
  br i1 %tobool34.not, label %if.else30.do.end44_crit_edge, label %do.end38

if.else30.do.end44_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end44

do.end38:                                         ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #10
  %conv40 = trunc i64 %cond213.i.i.i to i32
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.61, i32 noundef %conv40) #12
  br label %do.end44

do.end44:                                         ; preds = %do.end38, %if.else30.do.end44_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4999, i64 %cond213.i.i.i)
  %cmp45 = icmp sgt i64 %cond213.i.i.i, 4999
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #10
  %conv48 = trunc i64 %cond213.i.i.i to i32
  %div = udiv i32 %conv48, 1000
  br label %cleanup

if.end49:                                         ; preds = %do.end44
  %tx_t_last_win_count.i = getelementptr inbounds %struct.ccid, ptr %1, i32 11
  %45 = ptrtoint ptr %tx_t_last_win_count.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %tx_t_last_win_count.i, align 8
  %sub.i.i = sub i64 %call.i97, %46
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp8.i.i.i.i = icmp slt i64 %sub.i.i, 0
  %47 = tail call i64 @llvm.abs.i64(i64 %sub.i.i, i1 false) #8
  %48 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %47, i32 0) #11, !srcloc !162
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %48, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %48, 1
  %49 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %47, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #11, !srcloc !163
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %49, 0
  %div1811.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  %sub210.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i
  %cond213.i.i.i.i = select i1 %cmp8.i.i.i.i, i64 %sub210.i.i.i.i, i64 %div1811.i.i.i.i
  %conv.i101 = trunc i64 %cond213.i.i.i.i to i32
  %mul.i102 = shl i32 %conv.i101, 2
  %tx_rtt.i103 = getelementptr inbounds %struct.ccid, ptr %1, i32 6
  %50 = ptrtoint ptr %tx_rtt.i103 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_rtt.i103, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %mul.i102)
  %cmp.not.i = icmp ugt i32 %51, %mul.i102
  br i1 %cmp.not.i, label %if.end49.if.end50_crit_edge, label %if.then.i

if.end49.if.end50_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then.i:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %div.i = udiv i32 %mul.i102, %51
  %52 = ptrtoint ptr %tx_t_last_win_count.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %call.i97, ptr %tx_t_last_win_count.i, align 8
  %53 = tail call i32 @llvm.umin.i32(i32 %div.i, i32 5) #8
  %54 = trunc i32 %53 to i8
  %tx_last_win_count.i = getelementptr inbounds %struct.ccid3_hc_tx_sock, ptr %ccid_priv.i.i, i32 0, i32 9
  %55 = ptrtoint ptr %tx_last_win_count.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %tx_last_win_count.i, align 1
  %conv6.i = add i8 %56, %54
  %57 = and i8 %conv6.i, 15
  store i8 %57, ptr %tx_last_win_count.i, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.then.i, %if.end49.if.end50_crit_edge, %ccid3_hc_tx_set_state.exit
  %dccps_hc_tx_insert_options = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 29
  %58 = ptrtoint ptr %dccps_hc_tx_insert_options to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load51 = load i8, ptr %dccps_hc_tx_insert_options, align 8
  %bf.set = or i8 %bf.load51, 16
  store i8 %bf.set, ptr %dccps_hc_tx_insert_options, align 8
  %tx_last_win_count52 = getelementptr inbounds %struct.ccid3_hc_tx_sock, ptr %ccid_priv.i.i, i32 0, i32 9
  %59 = ptrtoint ptr %tx_last_win_count52 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %tx_last_win_count52, align 1
  %dccpd_ccval = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %61 = ptrtoint ptr %dccpd_ccval to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load53 = load i8, ptr %dccpd_ccval, align 8
  %bf.value = and i8 %60, 15
  %bf.clear54 = and i8 %bf.load53, -16
  %bf.set55 = or i8 %bf.clear54, %bf.value
  store i8 %bf.set55, ptr %dccpd_ccval, align 8
  %tx_t_nom56 = getelementptr inbounds %struct.ccid, ptr %1, i32 29
  %62 = ptrtoint ptr %tx_t_nom56 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %tx_t_nom56, align 8
  %tx_t_ipi = getelementptr inbounds %struct.ccid, ptr %1, i32 9
  %64 = ptrtoint ptr %tx_t_ipi to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tx_t_ipi, align 8
  %conv57 = zext i32 %65 to i64
  %mul.i105 = mul nuw nsw i64 %conv57, 1000
  %add.i = add i64 %mul.i105, %63
  store i64 %add.i, ptr %tx_t_nom56, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then47, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end50 ], [ %div, %if.then47 ], [ -74, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccid3_hc_tx_packet_sent(ptr nocapture noundef readonly %sk, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_hc_tx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  %0 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %tx_s.i = getelementptr inbounds %struct.ccid, ptr %1, i32 10
  %2 = ptrtoint ptr %tx_s.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tx_s.i, align 4
  %conv.i = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i.i = icmp eq i16 %3, 0
  %mul.i.i = mul nuw nsw i32 %conv.i, 9
  %add.i.i = add i32 %mul.i.i, %len
  %div.i.i = udiv i32 %add.i.i, 10
  %cond.i.i = select i1 %tobool.not.i.i, i32 %len, i32 %div.i.i
  %conv2.i = trunc i32 %cond.i.i to i16
  %4 = ptrtoint ptr %tx_s.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv2.i, ptr %tx_s.i, align 4
  %conv5.i = and i32 %cond.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %conv5.i, %conv.i
  br i1 %cmp.not.i, label %entry.ccid3_hc_tx_update_s.exit_crit_edge, label %if.then.i

entry.ccid3_hc_tx_update_s.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ccid3_hc_tx_update_s.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ccid_priv.i.i = getelementptr inbounds %struct.ccid, ptr %1, i32 0, i32 1
  tail call fastcc void @ccid3_update_send_interval(ptr noundef %ccid_priv.i.i) #8
  br label %ccid3_hc_tx_update_s.exit

ccid3_hc_tx_update_s.exit:                        ; preds = %if.then.i, %entry.ccid3_hc_tx_update_s.exit_crit_edge
  %tx_hist = getelementptr inbounds %struct.ccid, ptr %1, i32 31
  %dccps_gss = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 8
  %5 = ptrtoint ptr %dccps_gss to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %dccps_gss, align 8
  %call2 = tail call i32 @tfrc_tx_hist_add(ptr noundef %tx_hist, i64 noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %ccid3_hc_tx_update_s.exit.if.end_crit_edge, label %do.end

ccid3_hc_tx_update_s.exit.if.end_crit_edge:       ; preds = %ccid3_hc_tx_update_s.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %ccid3_hc_tx_update_s.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.4, i32 noundef 356, ptr noundef nonnull @.str.66) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %ccid3_hc_tx_update_s.exit.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ccid3_hc_rx_get_info(ptr nocapture noundef readonly %sk, ptr nocapture noundef %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_hc_rx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 24
  %0 = ptrtoint ptr %dccps_hc_rx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_rx_ccid.i, align 8
  %ccid_priv.i.i = getelementptr inbounds %struct.ccid, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %ccid_priv.i.i, align 8
  %bf.lshr = lshr i16 %bf.load, 4
  %conv = trunc i16 %bf.lshr to i8
  %tcpi_ca_state = getelementptr inbounds %struct.tcp_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %tcpi_ca_state to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %tcpi_ca_state, align 1
  %tcpi_options = getelementptr inbounds %struct.tcp_info, ptr %info, i32 0, i32 5
  %4 = ptrtoint ptr %tcpi_options to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tcpi_options, align 1
  %6 = or i8 %5, 1
  store i8 %6, ptr %tcpi_options, align 1
  %7 = load ptr, ptr %dccps_hc_rx_ccid.i, align 8
  %rx_rtt = getelementptr inbounds %struct.ccid, ptr %7, i32 4
  %8 = ptrtoint ptr %rx_rtt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_rtt, align 4
  %tcpi_rcv_rtt = getelementptr inbounds %struct.tcp_info, ptr %info, i32 0, i32 28
  %10 = ptrtoint ptr %tcpi_rcv_rtt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tcpi_rcv_rtt, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ccid3_hc_tx_get_info(ptr nocapture noundef readonly %sk, ptr nocapture noundef writeonly %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_hc_tx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  %0 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %tx_t_rto = getelementptr inbounds %struct.ccid, ptr %1, i32 8
  %2 = ptrtoint ptr %tx_t_rto to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_t_rto, align 4
  %tcpi_rto = getelementptr inbounds %struct.tcp_info, ptr %info, i32 0, i32 7
  %4 = ptrtoint ptr %tcpi_rto to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tcpi_rto, align 8
  %5 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %tx_rtt = getelementptr inbounds %struct.ccid, ptr %5, i32 6
  %6 = ptrtoint ptr %tx_rtt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_rtt, align 4
  %tcpi_rtt = getelementptr inbounds %struct.tcp_info, ptr %info, i32 0, i32 22
  %8 = ptrtoint ptr %tcpi_rtt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tcpi_rtt, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccid3_hc_rx_getsockopt(ptr nocapture noundef readonly %sk, i32 noundef %optname, i32 noundef %len, ptr noundef %optval, ptr noundef %optlen) #0 align 64 {
entry:
  %rx_info = alloca %struct.tfrc_rx_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_hc_rx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 24
  %0 = ptrtoint ptr %dccps_hc_rx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_rx_ccid.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rx_info) #8
  %2 = getelementptr inbounds %struct.tfrc_rx_info, ptr %rx_info, i32 0, i32 1
  %3 = getelementptr inbounds %struct.tfrc_rx_info, ptr %rx_info, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %optname)
  %cond = icmp eq i32 %optname, 128
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %len)
  %cmp = icmp ult i32 %len, 12
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %rx_x_recv = getelementptr inbounds %struct.ccid, ptr %1, i32 3
  %4 = ptrtoint ptr %rx_x_recv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_x_recv, align 8
  %6 = ptrtoint ptr %rx_info to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %rx_info, align 4
  %rx_rtt = getelementptr inbounds %struct.ccid, ptr %1, i32 4
  %7 = ptrtoint ptr %rx_rtt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_rtt, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %2, align 4
  %i_mean = getelementptr inbounds %struct.ccid, ptr %1, i32 22
  %10 = ptrtoint ptr %i_mean to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_mean, align 4
  %call1 = tail call i32 @tfrc_invert_loss_event_rate(i32 noundef %11) #8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call1, ptr %3, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 836) #8
  %13 = tail call i32 @llvm.read_register.i32(metadata !151) #8
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !168
  %and.i = and i32 %15, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  %16 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 12, i32 -1226833921) #8, !srcloc !171
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end59.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end59.i.i:                                     ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.69, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end59.i.i.cleanup_crit_edge, label %if.end.i.i

if.end59.i.i.cleanup_crit_edge:                   ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end59.i.i
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 12, i32 -1226833920) #11, !srcloc !172
  %asmresult.i.i = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %rx_info, i32 noundef 12) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %rx_info, i32 noundef 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool5.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool5.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end59.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -92, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end59.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rx_info) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccid3_hc_tx_getsockopt(ptr nocapture noundef readonly %sk, i32 noundef %optname, i32 noundef %len, ptr noundef %optval, ptr noundef %optlen) #0 align 64 {
entry:
  %tfrc = alloca %struct.tfrc_tx_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_hc_tx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  %0 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %ccid_priv.i.i = getelementptr inbounds %struct.ccid, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tfrc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %optname)
  %cond = icmp eq i32 %optname, 192
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %len)
  %cmp = icmp ult i32 %len, 40
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %2 = getelementptr inbounds i8, ptr %tfrc, i32 32
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %2, align 8
  %4 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ccid_priv.i.i, align 8
  %6 = ptrtoint ptr %tfrc to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %tfrc, align 8
  %tx_x_recv = getelementptr inbounds %struct.ccid, ptr %1, i32 3
  %7 = ptrtoint ptr %tx_x_recv to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tx_x_recv, align 8
  %tfrctx_x_recv = getelementptr inbounds %struct.tfrc_tx_info, ptr %tfrc, i32 0, i32 1
  %9 = ptrtoint ptr %tfrctx_x_recv to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %tfrctx_x_recv, align 8
  %tx_x_calc = getelementptr inbounds %struct.ccid, ptr %1, i32 5
  %10 = ptrtoint ptr %tx_x_calc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_x_calc, align 8
  %tfrctx_x_calc = getelementptr inbounds %struct.tfrc_tx_info, ptr %tfrc, i32 0, i32 2
  %12 = ptrtoint ptr %tfrctx_x_calc to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tfrctx_x_calc, align 8
  %tx_rtt = getelementptr inbounds %struct.ccid, ptr %1, i32 6
  %13 = ptrtoint ptr %tx_rtt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_rtt, align 4
  %tfrctx_rtt = getelementptr inbounds %struct.tfrc_tx_info, ptr %tfrc, i32 0, i32 3
  %15 = ptrtoint ptr %tfrctx_rtt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tfrctx_rtt, align 4
  %tx_p = getelementptr inbounds %struct.ccid, ptr %1, i32 7
  %16 = ptrtoint ptr %tx_p to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_p, align 8
  %tfrctx_p = getelementptr inbounds %struct.tfrc_tx_info, ptr %tfrc, i32 0, i32 4
  %18 = ptrtoint ptr %tfrctx_p to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tfrctx_p, align 8
  %tx_t_rto = getelementptr inbounds %struct.ccid, ptr %1, i32 8
  %19 = ptrtoint ptr %tx_t_rto to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_t_rto, align 4
  %tfrctx_rto = getelementptr inbounds %struct.tfrc_tx_info, ptr %tfrc, i32 0, i32 5
  %21 = ptrtoint ptr %tfrctx_rto to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %tfrctx_rto, align 4
  %tx_t_ipi = getelementptr inbounds %struct.ccid, ptr %1, i32 9
  %22 = ptrtoint ptr %tx_t_ipi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_t_ipi, align 8
  %tfrctx_ipi = getelementptr inbounds %struct.tfrc_tx_info, ptr %tfrc, i32 0, i32 6
  %24 = ptrtoint ptr %tfrctx_ipi to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %tfrctx_ipi, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 546) #8
  %25 = tail call i32 @llvm.read_register.i32(metadata !151) #8
  %and.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !168
  %and.i = and i32 %27, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  %28 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 40, i32 -1226833921) #8, !srcloc !173
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %if.end59.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end59.i.i:                                     ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.69, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end59.i.i.cleanup_crit_edge, label %if.end.i.i

if.end59.i.i.cleanup_crit_edge:                   ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end59.i.i
  %29 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 40, i32 -1226833920) #11, !srcloc !172
  %asmresult.i.i = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tfrc, i32 noundef 40) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %tfrc, i32 noundef 40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool4.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool4.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end59.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -92, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end59.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tfrc) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tfrc_rx_hist_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccid3_hc_tx_no_feedback_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -48
  %sk1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 8
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
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !167

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1750, i32 noundef 9, ptr noundef null) #8
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %entry.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %do.body, label %sock_owned_by_user.exit.restart_timer_crit_edge

sock_owned_by_user.exit.restart_timer_crit_edge:  ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %restart_timer

do.body:                                          ; preds = %sock_owned_by_user.exit
  %5 = load i8, ptr @ccid3_debug, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body.do.end10_crit_edge, label %do.end

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dccps_role.i = getelementptr inbounds %struct.dccp_sock, ptr %1, i32 0, i32 29
  %6 = ptrtoint ptr %dccps_role.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %dccps_role.i, align 8
  %bf.lshr.i = lshr i8 %bf.load.i, 6
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.ccid3_hc_tx_no_feedback_timer, i32 0, i32 %bf.cast.i
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %tx_state = getelementptr i8, ptr %t, i32 -10
  %8 = ptrtoint ptr %tx_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %tx_state, align 2
  %bf.cast = zext i8 %bf.load to i32
  %arrayidx.i = getelementptr [4 x ptr], ptr @ccid3_tx_state_name.ccid3_state_names, i32 0, i32 %bf.cast
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %switch.load, ptr noundef %1, ptr noundef %10) #12
  br label %do.end10

do.end10:                                         ; preds = %do.end, %do.body.do.end10_crit_edge
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %12 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, -8195
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end13, label %do.end10.out_crit_edge

do.end10.out_crit_edge:                           ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end13:                                         ; preds = %do.end10
  %tx_state14 = getelementptr i8, ptr %t, i32 -10
  %13 = ptrtoint ptr %tx_state14 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load15 = load i8, ptr %tx_state14, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.load15)
  %cmp = icmp eq i8 %bf.load15, 3
  br i1 %cmp, label %if.then18, label %if.end13.if.end19_crit_edge

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then18:                                        ; preds = %if.end13
  %dccps_hc_tx_ccid.i.i = getelementptr inbounds %struct.dccp_sock, ptr %1, i32 0, i32 25
  %14 = ptrtoint ptr %dccps_hc_tx_ccid.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dccps_hc_tx_ccid.i.i, align 4
  %ccid_priv.i.i.i = getelementptr inbounds %struct.ccid, ptr %15, i32 0, i32 1
  %tx_state.i = getelementptr inbounds %struct.ccid3_hc_tx_sock, ptr %ccid_priv.i.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %tx_state.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i128 = load i8, ptr %tx_state.i, align 2
  %17 = load i8, ptr @ccid3_debug, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.then18.do.end7.i_crit_edge, label %do.end.i

if.then18.do.end7.i_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

do.end.i:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %bf.cast.i129 = zext i8 %bf.load.i128 to i32
  %dccps_role.i.i = getelementptr inbounds %struct.dccp_sock, ptr %1, i32 0, i32 29
  %18 = ptrtoint ptr %dccps_role.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i.i = load i8, ptr %dccps_role.i.i, align 8
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 6
  %bf.cast.i.i = zext i8 %bf.lshr.i.i to i32
  %switch.gep133 = getelementptr inbounds [4 x ptr], ptr @switch.table.ccid3_hc_tx_no_feedback_timer.74, i32 0, i32 %bf.cast.i.i
  %19 = ptrtoint ptr %switch.gep133 to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load134 = load ptr, ptr %switch.gep133, align 4
  %arrayidx.i.i = getelementptr [4 x ptr], ptr @ccid3_tx_state_name.ccid3_state_names, i32 0, i32 %bf.cast.i129
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull %switch.load134, ptr noundef %1, ptr noundef %21, ptr noundef nonnull @.str.14) #12
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %if.then18.do.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.load.i128)
  %cmp.i130 = icmp eq i8 %bf.load.i128, 2
  br i1 %cmp.i130, label %do.end19.i, label %do.end7.i.ccid3_hc_tx_set_state.exit_crit_edge, !prof !161

do.end7.i.ccid3_hc_tx_set_state.exit_crit_edge:   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ccid3_hc_tx_set_state.exit

do.end19.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 59, i32 noundef 9, ptr noundef null) #8
  br label %ccid3_hc_tx_set_state.exit

ccid3_hc_tx_set_state.exit:                       ; preds = %do.end19.i, %do.end7.i.ccid3_hc_tx_set_state.exit_crit_edge
  %22 = ptrtoint ptr %tx_state.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %tx_state.i, align 2
  br label %if.end19

if.end19:                                         ; preds = %ccid3_hc_tx_set_state.exit, %if.end13.if.end19_crit_edge
  %tx_t_rto = getelementptr i8, ptr %t, i32 -20
  %23 = ptrtoint ptr %tx_t_rto to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_t_rto, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp20 = icmp eq i32 %24, 0
  br i1 %cmp20, label %if.end19.if.then24_crit_edge, label %lor.lhs.false

if.end19.if.then24_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.end19
  %tx_p = getelementptr i8, ptr %t, i32 -24
  %25 = ptrtoint ptr %tx_p to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_p, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp22 = icmp eq i32 %26, 0
  br i1 %cmp22, label %lor.lhs.false.if.then24_crit_edge, label %if.else

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false.if.then24_crit_edge, %if.end19.if.then24_crit_edge
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %add.ptr, align 8
  %div126 = lshr i64 %28, 1
  %tx_s = getelementptr i8, ptr %t, i32 -12
  %29 = ptrtoint ptr %tx_s to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %tx_s, align 4
  %conv25 = zext i16 %30 to i64
  %31 = tail call i64 @llvm.umax.i64(i64 %div126, i64 %conv25)
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %add.ptr, align 8
  tail call fastcc void @ccid3_update_send_interval(ptr noundef %add.ptr)
  br label %do.body58

if.else:                                          ; preds = %lor.lhs.false
  %tx_x_calc = getelementptr i8, ptr %t, i32 -32
  %33 = ptrtoint ptr %tx_x_calc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_x_calc, align 8
  %conv32 = zext i32 %34 to i64
  %tx_x_recv = getelementptr i8, ptr %t, i32 -40
  %35 = ptrtoint ptr %tx_x_recv to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %tx_x_recv, align 8
  %shr = lshr i64 %36, 5
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv32)
  %cmp33 = icmp ult i64 %shr, %conv32
  br i1 %cmp33, label %if.then35, label %if.else50

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %div37125 = lshr i64 %36, 1
  %tx_s38 = getelementptr i8, ptr %t, i32 -12
  %37 = ptrtoint ptr %tx_s38 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %tx_s38, align 4
  %39 = lshr i16 %38, 1
  %div41 = zext i16 %39 to i64
  %40 = tail call i64 @llvm.umax.i64(i64 %div37125, i64 %div41)
  br label %if.end56

if.else50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %shl55 = shl nuw nsw i64 %conv32, 4
  br label %if.end56

if.end56:                                         ; preds = %if.else50, %if.then35
  %storemerge = phi i64 [ %shl55, %if.else50 ], [ %40, %if.then35 ]
  %41 = ptrtoint ptr %tx_x_recv to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %storemerge, ptr %tx_x_recv, align 8
  tail call fastcc void @ccid3_hc_tx_update_x(ptr noundef %1, ptr noundef null)
  br label %do.body58

do.body58:                                        ; preds = %if.end56, %if.then24
  %42 = load i8, ptr @ccid3_debug, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool59.not = icmp eq i8 %42, 0
  br i1 %tobool59.not, label %do.body58.do.end69_crit_edge, label %do.end63

do.body58.do.end69_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69

do.end63:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %add.ptr, align 8
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i64 noundef %44) #12
  br label %do.end69

do.end69:                                         ; preds = %do.end63, %do.body58.do.end69_crit_edge
  %45 = ptrtoint ptr %tx_t_rto to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_t_rto, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp71 = icmp eq i32 %46, 0
  br i1 %cmp71, label %do.end69.restart_timer_crit_edge, label %if.else76, !prof !161

do.end69.restart_timer_crit_edge:                 ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %restart_timer

if.else76:                                        ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #10
  %tx_t_ipi = getelementptr i8, ptr %t, i32 -16
  %47 = ptrtoint ptr %tx_t_ipi to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_t_ipi, align 8
  %mul = shl i32 %48, 1
  %49 = tail call i32 @llvm.umax.i32(i32 %46, i32 %mul)
  br label %restart_timer

restart_timer:                                    ; preds = %if.else76, %do.end69.restart_timer_crit_edge, %sock_owned_by_user.exit.restart_timer_crit_edge
  %t_nfb.0 = phi i32 [ 200000, %sock_owned_by_user.exit.restart_timer_crit_edge ], [ %49, %if.else76 ], [ 2000000, %do.end69.restart_timer_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %t_nfb.0) #8
  %add = add i32 %call3.i, %50
  tail call void @sk_reset_timer(ptr noundef %1, ptr noundef %t, i32 noundef %add) #8
  br label %out

out:                                              ; preds = %restart_timer, %do.end10.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #8
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !175
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i131, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !167

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #8
  br label %sock_put.exit

if.then.i131:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @sk_free(ptr noundef %1) #8
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i131, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccid3_update_send_interval(ptr nocapture noundef %hc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_s = getelementptr inbounds %struct.ccid3_hc_tx_sock, ptr %hc, i32 0, i32 7
  %0 = ptrtoint ptr %tx_s to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tx_s, align 4
  %conv = zext i16 %1 to i64
  %shl = shl nuw nsw i64 %conv, 6
  %2 = ptrtoint ptr %hc to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %hc, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp.i.i = icmp eq i64 %3, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %scaled_div.exit.i, !prof !161

do.body2.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/dccp/ccids/lib/tfrc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #8, !srcloc !166
  unreachable

scaled_div.exit.i:                                ; preds = %entry
  %mul.i.i = mul nuw nsw i64 %conv, 64000000
  %call.i.i = tail call i64 @div64_u64(i64 noundef %mul.i.i, i64 noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %call.i.i)
  %cmp.i = icmp ugt i64 %call.i.i, 4294967295
  br i1 %cmp.i, label %scaled_div32.exit.thread, label %scaled_div32.exit

scaled_div32.exit.thread:                         ; preds = %scaled_div.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i64 noundef %shl, i64 noundef %3, ptr noundef nonnull @.str.26, i32 noundef 39, ptr noundef nonnull @.str.25) #12
  %tx_t_ipi32 = getelementptr inbounds %struct.ccid3_hc_tx_sock, ptr %hc, i32 0, i32 6
  %4 = ptrtoint ptr %tx_t_ipi32 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tx_t_ipi32, align 8
  br label %do.body11

scaled_div32.exit:                                ; preds = %scaled_div.exit.i
  %conv.i = trunc i64 %call.i.i to i32
  %tx_t_ipi = getelementptr inbounds %struct.ccid3_hc_tx_sock, ptr %hc, i32 0, i32 6
  %5 = ptrtoint ptr %tx_t_ipi to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv.i, ptr %tx_t_ipi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp = icmp eq i32 %conv.i, 0
  br i1 %cmp, label %do.end, label %scaled_div32.exit.do.body11_crit_edge, !prof !161

scaled_div32.exit.do.body11_crit_edge:            ; preds = %scaled_div32.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

do.end:                                           ; preds = %scaled_div32.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.4, i32 noundef 90, ptr noundef nonnull @.str.19) #12
  tail call void @dump_stack() #12
  br label %do.body11

do.body11:                                        ; preds = %do.end, %scaled_div32.exit.do.body11_crit_edge, %scaled_div32.exit.thread
  %tx_t_ipi34 = phi ptr [ %tx_t_ipi32, %scaled_div32.exit.thread ], [ %tx_t_ipi, %do.end ], [ %tx_t_ipi, %scaled_div32.exit.do.body11_crit_edge ]
  %6 = load i8, ptr @ccid3_debug, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool12.not = icmp eq i8 %6, 0
  br i1 %tobool12.not, label %do.body11.do.end24_crit_edge, label %do.end15

do.body11.do.end24_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24

do.end15:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %tx_t_ipi34 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_t_ipi34, align 8
  %9 = ptrtoint ptr %tx_s to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tx_s, align 4
  %conv19 = zext i16 %10 to i32
  %11 = ptrtoint ptr %hc to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %hc, align 8
  %shr = lshr i64 %12, 6
  %conv21 = trunc i64 %shr to i32
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.19, i32 noundef %8, i32 noundef %conv19, i32 noundef %conv21) #12
  br label %do.end24

do.end24:                                         ; preds = %do.end15, %do.body11.do.end24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccid3_hc_tx_update_x(ptr nocapture noundef readonly %sk, ptr noundef readonly %stamp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_hc_tx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  %0 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %ccid_priv.i.i = getelementptr inbounds %struct.ccid, ptr %1, i32 0, i32 1
  %tx_x_recv = getelementptr inbounds %struct.ccid, ptr %1, i32 3
  %2 = ptrtoint ptr %tx_x_recv to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tx_x_recv, align 8
  %mul = shl i64 %3, 1
  %4 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ccid_priv.i.i, align 8
  %tobool.not = icmp eq ptr %stamp, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %stamp to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %stamp, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %call.i, %cond.false ]
  %tx_t_last_win_count.i = getelementptr inbounds %struct.ccid, ptr %1, i32 11
  %8 = ptrtoint ptr %tx_t_last_win_count.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tx_t_last_win_count.i, align 8
  %sub.i.i = sub i64 %cond, %9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp8.i.i.i.i = icmp slt i64 %sub.i.i, 0
  %10 = tail call i64 @llvm.abs.i64(i64 %sub.i.i, i1 false) #8
  %11 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %10, i32 0) #11, !srcloc !162
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %11, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %11, 1
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %10, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #11, !srcloc !163
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %12, 0
  %div1811.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  %sub210.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i
  %cond213.i.i.i.i = select i1 %cmp8.i.i.i.i, i64 %sub210.i.i.i.i, i64 %div1811.i.i.i.i
  %conv.i = trunc i64 %cond213.i.i.i.i to i32
  %tx_rtt.i = getelementptr inbounds %struct.ccid, ptr %1, i32 6
  %13 = ptrtoint ptr %tx_rtt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_rtt.i, align 4
  %div.i = udiv i32 %conv.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div.i)
  %cmp = icmp ugt i32 %div.i, 1
  br i1 %cmp, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %cond.end
  %15 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %tx_rtt.i127 = getelementptr inbounds %struct.ccid, ptr %16, i32 6
  %17 = ptrtoint ptr %tx_rtt.i127 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_rtt.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.i = icmp eq i32 %18, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %rfc3390_initial_rate.exit, !prof !161

do.body2.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/dccp/ccids/lib/tfrc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #8, !srcloc !166
  unreachable

rfc3390_initial_rate.exit:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %conv13.i = zext i32 %18 to i64
  %tx_s.i = getelementptr inbounds %struct.ccid, ptr %16, i32 10
  %19 = ptrtoint ptr %tx_s.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %tx_s.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2190, i16 %20)
  %cmp.i = icmp ult i16 %20, 2190
  %conv.i128 = zext i16 %20 to i32
  %mul.i = shl nuw nsw i32 %conv.i128, 1
  %cond.i = select i1 %cmp.i, i32 4380, i32 %mul.i
  %mul4.i = shl nuw nsw i32 %conv.i128, 2
  %21 = tail call i32 @llvm.umin.i32(i32 %cond.i, i32 %mul4.i) #8
  %shl.i = shl nuw nsw i32 %21, 6
  %conv12.i = zext i32 %shl.i to i64
  %mul.i.i = mul nuw nsw i64 %conv12.i, 1000000
  %call.i.i = tail call i64 @div64_u64(i64 noundef %mul.i.i, i64 noundef %conv13.i) #8
  %22 = ptrtoint ptr %tx_x_recv to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %tx_x_recv, align 8
  %mul5 = shl i64 %23, 1
  %24 = tail call i64 @llvm.umax.i64(i64 %call.i.i, i64 %mul5)
  br label %if.end

if.end:                                           ; preds = %rfc3390_initial_rate.exit, %cond.end.if.end_crit_edge
  %min_rate.0 = phi i64 [ %24, %rfc3390_initial_rate.exit ], [ %mul, %cond.end.if.end_crit_edge ]
  %tx_p = getelementptr inbounds %struct.ccid, ptr %1, i32 7
  %25 = ptrtoint ptr %tx_p to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_p, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp11.not = icmp eq i32 %26, 0
  br i1 %cmp11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %tx_x_calc = getelementptr inbounds %struct.ccid, ptr %1, i32 5
  %27 = ptrtoint ptr %tx_x_calc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_x_calc, align 8
  %conv = zext i32 %28 to i64
  %shl = shl nuw nsw i64 %conv, 6
  %29 = tail call i64 @llvm.umin.i64(i64 %shl, i64 %min_rate.0)
  %tx_s = getelementptr inbounds %struct.ccid, ptr %1, i32 10
  %30 = ptrtoint ptr %tx_s to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %tx_s, align 4
  %conv22 = zext i16 %31 to i64
  %32 = tail call i64 @llvm.umax.i64(i64 %29, i64 %conv22)
  %33 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %ccid_priv.i.i, align 8
  br label %if.end64

if.else:                                          ; preds = %if.end
  %tx_t_ld = getelementptr inbounds %struct.ccid, ptr %1, i32 27
  %34 = ptrtoint ptr %tx_t_ld to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %tx_t_ld, align 8
  %sub.i = sub i64 %cond, %35
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %36 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #8
  %37 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %36, i32 0) #11, !srcloc !162
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %37, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %37, 1
  %38 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %36, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #11, !srcloc !163
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %38, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %39 = ptrtoint ptr %tx_rtt.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_rtt.i, align 4
  %conv33 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i.i, i64 %conv33)
  %cmp34.not = icmp slt i64 %cond213.i.i.i, %conv33
  br i1 %cmp34.not, label %if.else.if.end64_crit_edge, label %if.then36

if.else.if.end64_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then36:                                        ; preds = %if.else
  %41 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %ccid_priv.i.i, align 8
  %mul38 = shl i64 %42, 1
  %43 = tail call i64 @llvm.umin.i64(i64 %mul38, i64 %min_rate.0)
  %44 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %ccid_priv.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i129 = icmp eq i32 %40, 0
  br i1 %cmp.i129, label %do.body2.i, label %scaled_div.exit, !prof !161

do.body2.i:                                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/dccp/ccids/lib/tfrc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #8, !srcloc !166
  unreachable

scaled_div.exit:                                  ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %tx_s48 = getelementptr inbounds %struct.ccid, ptr %1, i32 10
  %45 = ptrtoint ptr %tx_s48 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %tx_s48, align 4
  %conv49 = zext i16 %46 to i64
  %mul.i130 = mul nuw nsw i64 %conv49, 64000000
  %call.i131 = tail call i64 @div64_u64(i64 noundef %mul.i130, i64 noundef %conv33) #8
  %47 = tail call i64 @llvm.umax.i64(i64 %43, i64 %call.i131)
  %48 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %ccid_priv.i.i, align 8
  %49 = ptrtoint ptr %tx_t_ld to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %cond, ptr %tx_t_ld, align 8
  br label %if.end64

if.end64:                                         ; preds = %scaled_div.exit, %if.else.if.end64_crit_edge, %if.then12
  %50 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %ccid_priv.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %51, i64 %5)
  %cmp66.not = icmp eq i64 %51, %5
  br i1 %cmp66.not, label %if.end64.if.end85_crit_edge, label %do.body

if.end64.if.end85_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

do.body:                                          ; preds = %if.end64
  %52 = load i8, ptr @ccid3_debug, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool69.not = icmp eq i8 %52, 0
  br i1 %tobool69.not, label %do.body.do.end84_crit_edge, label %do.end

do.body.do.end84_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end84

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i64 %5, 6
  %conv73 = trunc i64 %shr to i32
  %shr75 = lshr i64 %51, 6
  %conv76 = trunc i64 %shr75 to i32
  %tx_x_calc77 = getelementptr inbounds %struct.ccid, ptr %1, i32 5
  %53 = ptrtoint ptr %tx_x_calc77 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_x_calc77, align 8
  %55 = ptrtoint ptr %tx_x_recv to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %tx_x_recv, align 8
  %shr79 = lshr i64 %56, 6
  %conv80 = trunc i64 %shr79 to i32
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %conv73, i32 noundef %conv76, i32 noundef %54, i32 noundef %conv80) #12
  br label %do.end84

do.end84:                                         ; preds = %do.end, %do.body.do.end84_crit_edge
  tail call fastcc void @ccid3_update_send_interval(ptr noundef %ccid_priv.i.i)
  br label %if.end85

if.end85:                                         ; preds = %do.end84, %if.end64.if.end85_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_reset_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tfrc_rx_hist_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tfrc_lh_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_stop_timer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tfrc_tx_hist_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccid3_hc_rx_set_state(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_hc_rx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 24
  %0 = ptrtoint ptr %dccps_hc_rx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_rx_ccid.i, align 8
  %ccid_priv.i.i = getelementptr inbounds %struct.ccid, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %ccid_priv.i.i, align 8
  %bf.lshr = lshr i16 %bf.load, 4
  %bf.clear = and i16 %bf.lshr, 255
  %3 = load i8, ptr @ccid3_debug, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.cast = zext i16 %bf.clear to i32
  %dccps_role.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 29
  %4 = ptrtoint ptr %dccps_role.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %dccps_role.i, align 8
  %bf.lshr.i = lshr i8 %bf.load.i, 6
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.ccid3_hc_rx_set_state, i32 0, i32 %bf.cast.i
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %arrayidx.i = getelementptr [3 x ptr], ptr @ccid3_rx_state_name.ccid3_rx_state_names, i32 0, i32 %bf.cast
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.29, ptr noundef nonnull %switch.load, ptr noundef %sk, ptr noundef %7, ptr noundef nonnull @.str.31) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %bf.clear)
  %cmp = icmp eq i16 %bf.clear, 2
  br i1 %cmp, label %do.end19, label %do.end7.if.end25_crit_edge, !prof !161

do.end7.if.end25_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

do.end19:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 585, i32 noundef 9, ptr noundef null) #8
  br label %if.end25

if.end25:                                         ; preds = %do.end19, %do.end7.if.end25_crit_edge
  %8 = ptrtoint ptr %ccid_priv.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load33 = load i16, ptr %ccid_priv.i.i, align 8
  %bf.clear34 = and i16 %bf.load33, -4081
  %bf.set = or i16 %bf.clear34, 32
  store i16 %bf.set, ptr %ccid_priv.i.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tfrc_rx_hist_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tfrc_rx_handle_loss(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccid3_first_li(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_hc_rx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 24
  %0 = ptrtoint ptr %dccps_hc_rx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_rx_ccid.i, align 8
  %rx_rtt = getelementptr inbounds %struct.ccid, ptr %1, i32 4
  %2 = ptrtoint ptr %rx_rtt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_rtt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.body, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.body:                                          ; preds = %entry
  %call1 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %4 = ptrtoint ptr %rx_rtt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 200000, ptr %rx_rtt, align 4
  br label %if.end8

if.end8:                                          ; preds = %do.end6, %entry.if.end8_crit_edge
  %call9 = tail call i64 @ktime_get() #8
  %rx_tstamp_last_feedback = getelementptr inbounds %struct.ccid, ptr %1, i32 5
  %5 = ptrtoint ptr %rx_tstamp_last_feedback to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %rx_tstamp_last_feedback, align 8
  %sub.i = sub i64 %call9, %6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %7 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #8
  %8 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %7, i32 0) #11, !srcloc !162
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %8, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %8, 1
  %9 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %7, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #11, !srcloc !163
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %9, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %10 = tail call i64 @llvm.smax.i64(i64 %cond213.i.i.i, i64 1)
  %rx_bytes_recv = getelementptr inbounds %struct.ccid, ptr %1, i32 2
  %11 = ptrtoint ptr %rx_bytes_recv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_bytes_recv, align 4
  %conv = zext i32 %12 to i64
  %mul.i.i = mul nuw nsw i64 %conv, 1000000
  %call.i.i = tail call i64 @div64_u64(i64 noundef %mul.i.i, i64 noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %call.i.i)
  %cmp.i = icmp ugt i64 %call.i.i, 4294967295
  br i1 %cmp.i, label %scaled_div32.exit.thread, label %scaled_div32.exit

scaled_div32.exit.thread:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i64 noundef %conv, i64 noundef %10, ptr noundef nonnull @.str.26, i32 noundef 39, ptr noundef nonnull @.str.25) #12
  br label %if.end43

scaled_div32.exit:                                ; preds = %if.end8
  %conv.i = trunc i64 %call.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp15 = icmp eq i32 %conv.i, 0
  br i1 %cmp15, label %do.body18, label %scaled_div32.exit.if.end43_crit_edge

scaled_div32.exit.if.end43_crit_edge:             ; preds = %scaled_div32.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

do.body18:                                        ; preds = %scaled_div32.exit
  %call19 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body18.do.end29_crit_edge, label %do.end24

do.body18.do.end29_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

do.end24:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33) #12
  br label %do.end29

do.end29:                                         ; preds = %do.end24, %do.body18.do.end29_crit_edge
  %rx_x_recv = getelementptr inbounds %struct.ccid, ptr %1, i32 3
  %13 = ptrtoint ptr %rx_x_recv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_x_recv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp30 = icmp eq i32 %14, 0
  br i1 %cmp30, label %do.end36, label %do.end29.if.end43_crit_edge

do.end29.if.end43_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

do.end36:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.4, i32 noundef 691, ptr noundef nonnull @.str.33) #12
  tail call void @dump_stack() #12
  br label %cleanup

if.end43:                                         ; preds = %do.end29.if.end43_crit_edge, %scaled_div32.exit.if.end43_crit_edge, %scaled_div32.exit.thread
  %x_recv.0 = phi i32 [ %conv.i, %scaled_div32.exit.if.end43_crit_edge ], [ %14, %do.end29.if.end43_crit_edge ], [ -1, %scaled_div32.exit.thread ]
  %15 = ptrtoint ptr %rx_rtt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_rtt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i89 = icmp eq i32 %16, 0
  br i1 %cmp.i89, label %do.body2.i, label %scaled_div.exit, !prof !161

do.body2.i:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/dccp/ccids/lib/tfrc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #8, !srcloc !166
  unreachable

scaled_div.exit:                                  ; preds = %if.end43
  %conv46 = zext i32 %16 to i64
  %rx_s = getelementptr inbounds %struct.ccid, ptr %1, i32 23
  %17 = ptrtoint ptr %rx_s to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rx_s, align 8
  %conv44 = zext i16 %18 to i64
  %mul.i = mul nuw nsw i64 %conv44, 1000000
  %call.i = tail call i64 @div64_u64(i64 noundef %mul.i, i64 noundef %conv46) #8
  %conv48 = zext i32 %x_recv.0 to i64
  %mul.i.i90 = mul i64 %call.i, 1000000
  %call.i.i91 = tail call i64 @div64_u64(i64 noundef %mul.i.i90, i64 noundef %conv48) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %call.i.i91)
  %cmp.i92 = icmp ugt i64 %call.i.i91, 4294967295
  br i1 %cmp.i92, label %do.end.i94, label %if.end.i96

do.end.i94:                                       ; preds = %scaled_div.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i64 noundef %call.i, i64 noundef %conv48, ptr noundef nonnull @.str.26, i32 noundef 39, ptr noundef nonnull @.str.25) #12
  br label %scaled_div32.exit98

if.end.i96:                                       ; preds = %scaled_div.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i95 = trunc i64 %call.i.i91 to i32
  br label %scaled_div32.exit98

scaled_div32.exit98:                              ; preds = %if.end.i96, %do.end.i94
  %retval.0.i97 = phi i32 [ -1, %do.end.i94 ], [ %conv.i95, %if.end.i96 ]
  %call52 = tail call i32 @tfrc_calc_x_reverse_lookup(i32 noundef %retval.0.i97) #8
  %19 = load i8, ptr @ccid3_debug, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool54.not = icmp eq i8 %19, 0
  br i1 %tobool54.not, label %scaled_div32.exit98.do.end64_crit_edge, label %do.end58

scaled_div32.exit98.do.end64_crit_edge:           ; preds = %scaled_div32.exit98
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end64

do.end58:                                         ; preds = %scaled_div32.exit98
  call void @__sanitizer_cov_trace_pc() #10
  %dccps_role.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 29
  %20 = ptrtoint ptr %dccps_role.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %dccps_role.i, align 8
  %bf.lshr.i = lshr i8 %bf.load.i, 6
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.ccid3_first_li, i32 0, i32 %bf.cast.i
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.33, ptr noundef nonnull %switch.load, ptr noundef %sk, i32 noundef %x_recv.0, i32 noundef %call52) #12
  br label %do.end64

do.end64:                                         ; preds = %do.end58, %scaled_div32.exit98.do.end64_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp65 = icmp eq i32 %call52, 0
  br i1 %cmp65, label %do.end64.cleanup_crit_edge, label %scaled_div.exit103

do.end64.cleanup_crit_edge:                       ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

scaled_div.exit103:                               ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #10
  %conv67 = zext i32 %call52 to i64
  %call.i102 = tail call i64 @div64_u64(i64 noundef 1000000, i64 noundef %conv67) #8
  %extract.t = trunc i64 %call.i102 to i32
  br label %cleanup

cleanup:                                          ; preds = %scaled_div.exit103, %do.end64.cleanup_crit_edge, %do.end36
  %retval.0 = phi i32 [ -1, %do.end36 ], [ %extract.t, %scaled_div.exit103 ], [ -1, %do.end64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tfrc_rx_hist_sample_rtt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tfrc_lh_update_i_mean(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tfrc_rx_hist_add_packet(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tfrc_calc_x_reverse_lookup(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_send_ack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_insert_option(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_sample_rtt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tfrc_calc_x(i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tfrc_invert_loss_event_rate(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tfrc_tx_hist_add(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

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

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !146, !148, !150}
!llvm.named.register.sp = !{!151}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/dccp/ccids/ccid3.c", i32 844, i32 19}
!2 = !{ptr @ccid3_ops, !3, !"ccid3_ops", i1 false, i1 false}
!3 = !{!"../net/dccp/ccids/ccid3.c", i32 842, i32 24}
!4 = !{ptr @__param_ccid3_debug, !5, !"__param_ccid3_debug", i1 false, i1 false}
!5 = !{!"../net/dccp/ccids/ccid3.c", i32 864, i32 1}
!6 = !{ptr @__UNIQUE_ID_ccid3_debugtype621, !5, !"__UNIQUE_ID_ccid3_debugtype621", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_ccid3_debug622, !8, !"__UNIQUE_ID_ccid3_debug622", i1 false, i1 false}
!8 = !{!"../net/dccp/ccids/ccid3.c", i32 865, i32 1}
!9 = !{ptr @ccid3_debug, !10, !"ccid3_debug", i1 false, i1 false}
!10 = !{!"../net/dccp/ccids/ccid3.c", i32 28, i32 13}
!11 = !{ptr @ccid3_hc_tx_init.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../net/dccp/ccids/ccid3.c", i32 501, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/dccp/ccids/ccid3.c", i32 202, i32 2}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ccid3_hc_tx_no_feedback_timer._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @ccid3_hc_tx_no_feedback_timer._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/dccp/ccids/ccid3.c", i32 244, i32 2}
!22 = !{ptr @ccid3_hc_tx_no_feedback_timer._entry.5, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @ccid3_hc_tx_no_feedback_timer._entry_ptr.7, !21, !"_entry_ptr", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/net/sock.h", i32 1750, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/dccp.h", i32 316, i32 35}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/dccp.h", i32 317, i32 34}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/dccp.h", i32 318, i32 34}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/dccp.h", i32 319, i32 34}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/dccp/ccids/ccid3.c", i32 41, i32 27}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/dccp/ccids/ccid3.c", i32 42, i32 27}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/dccp/ccids/ccid3.c", i32 43, i32 27}
!41 = !{ptr @ccid3_tx_state_name.ccid3_state_names, !42, !"ccid3_state_names", i1 false, i1 false}
!42 = !{!"../net/dccp/ccids/ccid3.c", i32 40, i32 27}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/dccp/ccids/ccid3.c", i32 56, i32 2}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ccid3_hc_tx_set_state._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @ccid3_hc_tx_set_state._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/dccp/ccids/ccid3.c", i32 90, i32 2}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ccid3_update_send_interval._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @ccid3_update_send_interval._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/dccp/ccids/ccid3.c", i32 91, i32 2}
!56 = !{ptr @ccid3_update_send_interval._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ccid3_update_send_interval._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/dccp/ccids/lib/tfrc.h", i32 38, i32 3}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @scaled_div32._entry, !59, !"_entry", i1 false, i1 false}
!63 = !{ptr @scaled_div32._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/dccp/ccids/ccid3.c", i32 146, i32 3}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ccid3_hc_tx_update_x._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @ccid3_hc_tx_update_x._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/dccp/ccids/ccid3.c", i32 582, i32 2}
!71 = !{ptr @ccid3_hc_rx_set_state._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ccid3_hc_rx_set_state._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/dccp/ccids/ccid3.c", i32 568, i32 26}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/dccp/ccids/ccid3.c", i32 569, i32 26}
!77 = !{ptr @ccid3_rx_state_name.ccid3_rx_state_names, !78, !"ccid3_rx_state_names", i1 false, i1 false}
!78 = !{!"../net/dccp/ccids/ccid3.c", i32 567, i32 27}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/dccp/ccids/ccid3.c", i32 680, i32 3}
!81 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ccid3_first_li._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @ccid3_first_li._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/dccp/ccids/ccid3.c", i32 689, i32 3}
!86 = !{ptr @ccid3_first_li._entry.34, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @ccid3_first_li._entry_ptr.36, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/dccp/ccids/ccid3.c", i32 691, i32 4}
!90 = !{ptr @ccid3_first_li._entry.37, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @ccid3_first_li._entry_ptr.39, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/dccp/ccids/ccid3.c", i32 701, i32 2}
!94 = !{ptr @ccid3_first_li._entry.40, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ccid3_first_li._entry_ptr.42, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/dccp/ccids/ccid3.c", i32 627, i32 2}
!98 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @ccid3_hc_rx_send_feedback._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @ccid3_hc_rx_send_feedback._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/dccp/ccids/ccid3.c", i32 420, i32 2}
!103 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @ccid3_hc_tx_packet_recv._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @ccid3_hc_tx_packet_recv._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/dccp/ccids/ccid3.c", i32 449, i32 2}
!108 = !{ptr @ccid3_hc_tx_packet_recv._entry.47, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @ccid3_hc_tx_packet_recv._entry_ptr.49, !107, !"_entry_ptr", i1 false, i1 false}
!110 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!111 = !{!"../include/net/sock.h", i32 2067, i32 9}
!112 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../include/net/dst.h", i32 161, i32 2}
!115 = distinct !{null, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/dccp/ccids/ccid3.c", i32 470, i32 4}
!118 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @ccid3_hc_tx_parse_options._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @ccid3_hc_tx_parse_options._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/dccp/ccids/ccid3.c", i32 481, i32 4}
!123 = !{ptr @ccid3_hc_tx_parse_options._entry.54, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @ccid3_hc_tx_parse_options._entry_ptr.56, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/dccp/ccids/ccid3.c", i32 487, i32 4}
!127 = !{ptr @ccid3_hc_tx_parse_options._entry.57, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @ccid3_hc_tx_parse_options._entry_ptr.59, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/dccp/ccids/ccid3.c", i32 304, i32 4}
!131 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @ccid3_hc_tx_send_packet._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @ccid3_hc_tx_send_packet._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../net/dccp/ccids/ccid3.c", i32 325, i32 3}
!136 = !{ptr @ccid3_hc_tx_send_packet._entry.62, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @ccid3_hc_tx_send_packet._entry_ptr.64, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../net/dccp/ccids/ccid3.c", i32 356, i32 3}
!140 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @ccid3_hc_tx_packet_sent._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @ccid3_hc_tx_packet_sent._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = distinct !{null, !144, !"__already_done", i1 false, i1 false}
!144 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!145 = distinct !{null, !144, !"<string literal>", i1 false, i1 false}
!146 = distinct !{null, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!150 = !{ptr @__param_str_ccid3_debug, !5, !"__param_str_ccid3_debug", i1 false, i1 false}
!151 = !{!"sp"}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 1, !"min_enum_size", i32 4}
!154 = !{i32 8, !"branch-target-enforcement", i32 0}
!155 = !{i32 8, !"sign-return-address", i32 0}
!156 = !{i32 8, !"sign-return-address-all", i32 0}
!157 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!161 = !{!"branch_weights", i32 1, i32 2000}
!162 = !{i64 1223785, i64 1223812, i64 1223834, i64 1223862}
!163 = !{i64 1224193, i64 1224220, i64 1224253, i64 1224274, i64 1224301, i64 1224327}
!164 = !{i8 0, i8 2}
!165 = !{!"auto-init"}
!166 = !{i64 2158669269, i64 2158669758, i64 2158669306, i64 2158669362, i64 2158669396, i64 2158669420, i64 2158669461, i64 2158669482, i64 2158669510, i64 2158669544}
!167 = !{!"branch_weights", i32 2000, i32 1}
!168 = !{i64 5594740}
!169 = !{i64 5594937}
!170 = !{i64 2153080170}
!171 = !{i64 2158781443, i64 2158781723, i64 2158782057, i64 2158782391}
!172 = !{i64 2153099866, i64 2153099891}
!173 = !{i64 2158759174, i64 2158759454, i64 2158759788, i64 2158760122}
!174 = !{i64 2148408326}
!175 = !{i64 2148322790, i64 2148322822, i64 2148322851, i64 2148322885, i64 2148322916, i64 2148322939}
!176 = !{i64 2149344606}
