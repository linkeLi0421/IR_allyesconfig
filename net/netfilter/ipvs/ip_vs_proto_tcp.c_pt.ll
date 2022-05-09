; ModuleID = '/llk/IR_all_yes/net/netfilter/ipvs/ip_vs_proto_tcp.c_pt.bc'
source_filename = "../net/netfilter/ipvs/ip_vs_proto_tcp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ip_vs_protocol = type { ptr, ptr, i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tcp_states_t = type { [11 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ip_vs_conn = type { %struct.hlist_node, i16, i16, i16, i16, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, i32, i16, i16, ptr, %struct.refcount_struct, %struct.timer_list, i32, %struct.spinlock, i16, i16, i32, i32, ptr, %struct.atomic_t, ptr, %struct.atomic_t, ptr, ptr, ptr, %struct.ip_vs_seq, %struct.ip_vs_seq, ptr, ptr, i8, %struct.callback_head }
%struct.hlist_node = type { ptr, ptr }
%union.nf_inet_addr = type { [4 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.ip_vs_seq = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ip_vs_proto_data = type { ptr, ptr, ptr, %struct.atomic_t, ptr }
%struct.netns_ipvs = type { i32, i32, [16 x %struct.hlist_head], %struct.list_head, [32 x ptr], [16 x %struct.list_head], [16 x %struct.list_head], [16 x %struct.list_head], %struct.atomic_t, %struct.ip_vs_stats, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.delayed_work, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.spinlock, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.mutex, %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg, ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.ip_vs_stats = type { %struct.ip_vs_kstats, %struct.ip_vs_estimator, ptr, %struct.spinlock, %struct.ip_vs_kstats }
%struct.ip_vs_estimator = type { %struct.list_head, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ip_vs_kstats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ipvs_sync_daemon_cfg = type { %union.nf_inet_addr, i32, i16, i16, i8, i8, [16 x i8] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.ip_vs_iphdr = type { i32, i32, i32, i16, i16, i32, %union.nf_inet_addr, %union.nf_inet_addr }
%struct.sk_buff = type { %union.anon.0, %union.anon.178, %union.anon.179, [48 x i8], %union.anon.180, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.182, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.178 = type { ptr }
%union.anon.179 = type { i64 }
%union.anon.180 = type { %struct.anon.181 }
%struct.anon.181 = type { i32, ptr }
%union.anon.182 = type { %struct.anon.183 }
%struct.anon.183 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.184, i32, i32, i32, i16, i16, %union.anon.186, i32, %union.anon.187, %union.anon.188, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.184 = type { i32 }
%union.anon.186 = type { i32 }
%union.anon.187 = type { i32 }
%union.anon.188 = type { i16 }
%struct.ip_vs_dest = type { %struct.list_head, %struct.hlist_node, i16, i16, %union.nf_inet_addr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i16, i16, i16, %struct.refcount_struct, %struct.ip_vs_stats, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, i16, i16, %union.nf_inet_addr, i32, %struct.list_head, i8 }
%struct.ip_vs_app = type { %struct.list_head, i32, ptr, i16, ptr, %struct.list_head, %struct.list_head, ptr, i16, %struct.atomic_t, %struct.callback_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

@tcp_timeouts = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 200, i32 90000, i32 12000, i32 6000, i32 12000, i32 12000, i32 1000, i32 6000, i32 3000, i32 12000, i32 12000, i32 200], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TCP\00", [28 x i8] zeroinitializer }, align 32
@ip_vs_protocol_tcp = dso_local global { %struct.ip_vs_protocol, [48 x i8] } { %struct.ip_vs_protocol { ptr null, ptr @.str, i16 6, i16 11, i32 0, ptr null, ptr null, ptr @__ip_vs_tcp_init, ptr @__ip_vs_tcp_exit, ptr @tcp_conn_schedule, ptr @ip_vs_conn_in_get_proto, ptr @ip_vs_conn_out_get_proto, ptr @tcp_snat_handler, ptr @tcp_dnat_handler, ptr @tcp_state_name, ptr @tcp_state_transition, ptr @tcp_register_app, ptr @tcp_unregister_app, ptr @tcp_app_conn_bind, ptr @ip_vs_tcpudp_debug_packet, ptr @tcp_timeout_change }, [48 x i8] zeroinitializer }, align 32
@tcp_states = internal global { [12 x %struct.tcp_states_t], [144 x i8] } { [12 x %struct.tcp_states_t] [%struct.tcp_states_t { [11 x i32] [i32 3, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3] }, %struct.tcp_states_t { [11 x i32] [i32 6, i32 7, i32 2, i32 5, i32 5, i32 5, i32 6, i32 7, i32 8, i32 9, i32 5] }, %struct.tcp_states_t { [11 x i32] [i32 1, i32 1, i32 2, i32 1, i32 4, i32 5, i32 6, i32 7, i32 6, i32 9, i32 1] }, %struct.tcp_states_t { [11 x i32] [i32 6, i32 6, i32 6, i32 3, i32 6, i32 6, i32 6, i32 6, i32 8, i32 9, i32 3] }, %struct.tcp_states_t { [11 x i32] [i32 2, i32 1, i32 2, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 9, i32 3] }, %struct.tcp_states_t { [11 x i32] [i32 5, i32 4, i32 2, i32 5, i32 4, i32 5, i32 6, i32 5, i32 8, i32 9, i32 5] }, %struct.tcp_states_t { [11 x i32] [i32 1, i32 1, i32 2, i32 1, i32 4, i32 5, i32 6, i32 7, i32 8, i32 1, i32 1] }, %struct.tcp_states_t { [11 x i32] [i32 6, i32 6, i32 2, i32 6, i32 6, i32 5, i32 6, i32 6, i32 6, i32 6, i32 6] }, %struct.tcp_states_t { [11 x i32] [i32 3, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3] }, %struct.tcp_states_t { [11 x i32] [i32 6, i32 4, i32 2, i32 5, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 5] }, %struct.tcp_states_t { [11 x i32] [i32 1, i32 1, i32 2, i32 1, i32 4, i32 5, i32 6, i32 7, i32 6, i32 9, i32 1] }, %struct.tcp_states_t { [11 x i32] [i32 6, i32 6, i32 6, i32 3, i32 6, i32 6, i32 6, i32 6, i32 8, i32 9, i32 6] }], [144 x i8] zeroinitializer }, align 32
@tcp_snat_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017IPVS: O-pkt: %s O-csum=%d (+%zd)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tcp_snat_handler\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"net/netfilter/ipvs/ip_vs_proto_tcp.c\00", [59 x i8] zeroinitializer }, align 32
@tcp_snat_handler._entry_ptr = internal global ptr @tcp_snat_handler._entry, section ".printk_index", align 4
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed checksum for\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ERR!\00", [27 x i8] zeroinitializer }, align 32
@tcp_state_name_table = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ESTABLISHED\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SYN_SENT\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SYN_RECV\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FIN_WAIT\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TIME_WAIT\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CLOSE\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CLOSE_WAIT\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LAST_ACK\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LISTEN\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SYNACK\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BUG!\00", [27 x i8] zeroinitializer }, align 32
@tcp_state_off = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 4, i32 8], [20 x i8] zeroinitializer }, align 32
@set_tcp_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017IPVS: tcp_state_idx=%d!!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set_tcp_state\00", [18 x i8] zeroinitializer }, align 32
@set_tcp_state._entry_ptr = internal global ptr @set_tcp_state._entry, section ".printk_index", align 4
@set_tcp_state._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\017IPVS: %s %s [%c%c%c%c] c:%s:%d v:%s:%d d:%s:%d state: %s->%s conn->refcnt:%d\0A\00", [48 x i8] zeroinitializer }, align 32
@set_tcp_state._entry_ptr.23 = internal global ptr @set_tcp_state._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"output \00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"input \00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[%pI6c]\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@tcp_app_conn_bind.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@tcp_app_conn_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017IPVS: %s(): Binding conn %s:%u->%s:%u to app %s on port %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tcp_app_conn_bind\00", [46 x i8] zeroinitializer }, align 32
@tcp_app_conn_bind._entry_ptr = internal global ptr @tcp_app_conn_bind._entry, section ".printk_index", align 4
@tcp_states_dos = internal global { [12 x %struct.tcp_states_t], [144 x i8] } { [12 x %struct.tcp_states_t] [%struct.tcp_states_t { [11 x i32] [i32 3, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 10] }, %struct.tcp_states_t { [11 x i32] [i32 6, i32 7, i32 2, i32 5, i32 5, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10] }, %struct.tcp_states_t { [11 x i32] [i32 1, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 6, i32 9, i32 10] }, %struct.tcp_states_t { [11 x i32] [i32 6, i32 6, i32 6, i32 3, i32 6, i32 6, i32 6, i32 6, i32 8, i32 9, i32 6] }, %struct.tcp_states_t { [11 x i32] [i32 2, i32 1, i32 2, i32 10, i32 2, i32 2, i32 2, i32 2, i32 2, i32 9, i32 10] }, %struct.tcp_states_t { [11 x i32] [i32 5, i32 4, i32 2, i32 5, i32 4, i32 5, i32 6, i32 5, i32 8, i32 9, i32 5] }, %struct.tcp_states_t { [11 x i32] [i32 1, i32 1, i32 2, i32 1, i32 4, i32 5, i32 6, i32 7, i32 8, i32 1, i32 1] }, %struct.tcp_states_t { [11 x i32] [i32 6, i32 6, i32 2, i32 6, i32 6, i32 5, i32 6, i32 6, i32 6, i32 6, i32 6] }, %struct.tcp_states_t { [11 x i32] [i32 10, i32 1, i32 1, i32 3, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10] }, %struct.tcp_states_t { [11 x i32] [i32 6, i32 4, i32 2, i32 5, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 5] }, %struct.tcp_states_t { [11 x i32] [i32 1, i32 1, i32 2, i32 1, i32 4, i32 5, i32 6, i32 7, i32 6, i32 9, i32 1] }, %struct.tcp_states_t { [11 x i32] [i32 6, i32 6, i32 6, i32 3, i32 6, i32 6, i32 6, i32 6, i32 8, i32 9, i32 6] }], [144 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"tcp_timeouts\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 365, i32 18 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 726, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"ip_vs_protocol_tcp\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 725, i32 23 }
@___asan_gen_.40 = private unnamed_addr constant [11 x i8] c"tcp_states\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 439, i32 28 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 216, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 327, i32 5 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 428, i32 10 }
@___asan_gen_.61 = private unnamed_addr constant [21 x i8] c"tcp_state_name_table\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 380, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 381, i32 24 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 382, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 383, i32 28 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 384, i32 28 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 385, i32 28 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 386, i32 29 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 387, i32 25 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 388, i32 29 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 389, i32 28 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 390, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 391, i32 26 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 392, i32 24 }
@___asan_gen_.100 = private unnamed_addr constant [14 x i8] c"tcp_state_off\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 356, i32 18 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 531, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 542, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 196, i32 46 }
@___asan_gen_.128 = private unnamed_addr constant [23 x i8] c"../include/net/ip_vs.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 200, i32 46 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 665, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 670, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant [15 x i8] c"tcp_states_dos\00", align 1
@___asan_gen_.143 = private constant [40 x i8] c"../net/netfilter/ipvs/ip_vs_proto_tcp.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 462, i32 28 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @set_tcp_state._entry, ptr @set_tcp_state._entry.21, ptr @set_tcp_state._entry_ptr, ptr @set_tcp_state._entry_ptr.23, ptr @tcp_app_conn_bind._entry, ptr @tcp_app_conn_bind._entry_ptr, ptr @tcp_snat_handler._entry, ptr @tcp_snat_handler._entry_ptr, ptr @tcp_timeouts, ptr @.str, ptr @ip_vs_protocol_tcp, ptr @tcp_states, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tcp_state_name_table, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @tcp_state_off, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @tcp_states_dos], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_timeouts to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_protocol_tcp to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_states to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_snat_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_state_name_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_state_off to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_tcp_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_tcp_state._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_app_conn_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_states_dos to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_tcp_conn_listen(ptr noundef %cp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ipvs = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 11
  %0 = ptrtoint ptr %ipvs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipvs, align 4
  %call = tail call ptr @ip_vs_proto_data_get(ptr noundef %1, i16 noundef zeroext 6) #9
  %lock = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 15
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %state = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 16
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %2)
  store volatile i16 9, ptr %state, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %timeout_table = getelementptr inbounds %struct.ip_vs_proto_data, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %timeout_table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %timeout_table, align 4
  %arrayidx = getelementptr i32, ptr %4, i32 9
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %6, %cond.true ], [ 12000, %entry.cond.end_crit_edge ]
  %timeout = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 14
  %7 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %cond, ptr %timeout, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_proto_data_get(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__ip_vs_tcp_init(ptr noundef %ipvs, ptr nocapture noundef writeonly %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tcp_apps = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 5
  tail call void @ip_vs_init_hash_table(ptr noundef %tcp_apps, i32 noundef 16) #9
  %call = tail call ptr @ip_vs_create_timeout_table(ptr noundef nonnull @tcp_timeouts, i32 noundef 48) #9
  %timeout_table = getelementptr inbounds %struct.ip_vs_proto_data, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %timeout_table to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %timeout_table, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tcp_state_table = getelementptr inbounds %struct.ip_vs_proto_data, ptr %pd, i32 0, i32 4
  %1 = ptrtoint ptr %tcp_state_table to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @tcp_states, ptr %tcp_state_table, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__ip_vs_tcp_exit(ptr nocapture noundef readnone %ipvs, ptr nocapture noundef readonly %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout_table = getelementptr inbounds %struct.ip_vs_proto_data, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %timeout_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timeout_table, align 4
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_conn_schedule(ptr noundef %ipvs, i32 noundef %af, ptr noundef %skb, ptr noundef %pd, ptr nocapture noundef writeonly %verdict, ptr nocapture noundef writeonly %cpp, ptr noundef %iph) #0 align 64 {
entry:
  %_tcph = alloca %struct.tcphdr, align 4
  %_ports = alloca [2 x i16], align 2
  %ignored = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcph) #9
  %0 = call ptr @memset(ptr %_tcph, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_ports) #9
  %1 = ptrtoint ptr %_ports to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %_ports, align 2, !annotation !84
  %2 = getelementptr inbounds [2 x i16], ptr %_ports, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %2, align 2, !annotation !84
  %4 = ptrtoint ptr %iph to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iph, align 4
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %len = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  br i1 %tobool.i.not, label %if.then, label %if.end19, !prof !85

if.then:                                          ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  %12 = add i32 %7, %11
  %sub.i4.i = sub i32 %9, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 20
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !86

if.end.i.i:                                       ; preds = %if.then
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then21_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then21_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %7, ptr noundef nonnull %_tcph, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then21_crit_edge, label %lor.lhs.false.i.i.if.then5_crit_edge

lor.lhs.false.i.i.if.then5_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

lor.lhs.false.i.i.if.then21_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

skb_header_pointer.exit:                          ; preds = %if.then
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %7
  %tobool4.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool4.not, label %skb_header_pointer.exit.if.then21_crit_edge, label %skb_header_pointer.exit.if.then5_crit_edge

skb_header_pointer.exit.if.then5_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

skb_header_pointer.exit.if.then21_crit_edge:      ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then5:                                         ; preds = %skb_header_pointer.exit.if.then5_crit_edge, %lor.lhs.false.i.i.if.then5_crit_edge
  %retval.0.i.i99 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.then5_crit_edge ], [ %_tcph, %lor.lhs.false.i.i.if.then5_crit_edge ]
  %rst = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i99, i32 0, i32 4
  %15 = ptrtoint ptr %rst to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %rst, align 4
  %16 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool6.not = icmp eq i16 %16, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then5.cleanup56_crit_edge

if.then5.cleanup56_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup56

lor.lhs.false:                                    ; preds = %if.then5
  %sysctl_sloppy_tcp.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 43
  %17 = ptrtoint ptr %sysctl_sloppy_tcp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sysctl_sloppy_tcp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool8.not = icmp eq i32 %18, 0
  %19 = and i16 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool14.not = icmp eq i16 %19, 0
  %or.cond = select i1 %tobool8.not, i1 %tobool14.not, i1 false
  br i1 %or.cond, label %lor.lhs.false.cleanup56_crit_edge, label %lor.lhs.false.if.end22_crit_edge

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

lor.lhs.false.cleanup56_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup56

if.end19:                                         ; preds = %entry
  %call18 = call fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %7, i32 noundef 4, ptr noundef nonnull %_ports)
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %if.end19.if.then21_crit_edge, label %if.end19.if.end22_crit_edge

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end19.if.then21_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21:                                        ; preds = %if.end19.if.then21_crit_edge, %skb_header_pointer.exit.if.then21_crit_edge, %lor.lhs.false.i.i.if.then21_crit_edge, %if.end.i.i.if.then21_crit_edge
  %20 = ptrtoint ptr %verdict to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %verdict, align 4
  br label %cleanup56

if.end22:                                         ; preds = %if.end19.if.end22_crit_edge, %lor.lhs.false.if.end22_crit_edge
  %ports.0106 = phi ptr [ %call18, %if.end19.if.end22_crit_edge ], [ %retval.0.i.i99, %lor.lhs.false.if.end22_crit_edge ]
  %21 = ptrtoint ptr %iph to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iph, align 4
  %and.i92 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %tobool.i93.not = icmp eq i32 %and.i92, 0
  %23 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %protocol = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 4
  %26 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %protocol, align 2
  br i1 %tobool.i93.not, label %if.then32, label %if.else34, !prof !85

if.then32:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %daddr = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7
  %arrayidx = getelementptr i16, ptr %ports.0106, i32 1
  br label %if.end38

if.else34:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %saddr = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 6
  br label %if.end38

if.end38:                                         ; preds = %if.else34, %if.then32
  %ports.0106.sink = phi ptr [ %ports.0106, %if.else34 ], [ %arrayidx, %if.then32 ]
  %saddr.sink = phi ptr [ %saddr, %if.else34 ], [ %daddr, %if.then32 ]
  %28 = ptrtoint ptr %ports.0106.sink to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ports.0106.sink, align 2
  %call37 = call ptr @ip_vs_service_find(ptr noundef %ipvs, i32 noundef %af, i32 noundef %25, i16 noundef zeroext %27, ptr noundef %saddr.sink, i16 noundef zeroext %29) #9
  %tobool39.not = icmp eq ptr %call37, null
  br i1 %tobool39.not, label %if.end38.cleanup56_crit_edge, label %if.then40

if.end38.cleanup56_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup56

if.then40:                                        ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ignored) #9
  %30 = ptrtoint ptr %ignored to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %ignored, align 4, !annotation !84
  %drop_rate.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 20
  %31 = ptrtoint ptr %drop_rate.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %drop_rate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %if.then40.if.end44_crit_edge, label %ip_vs_todrop.exit

if.then40.if.end44_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

ip_vs_todrop.exit:                                ; preds = %if.then40
  %drop_counter.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 21
  %33 = ptrtoint ptr %drop_counter.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %drop_counter.i, align 4
  %dec.i = add i32 %34, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp sgt i32 %dec.i, 0
  %spec.store.select.i = select i1 %cmp.i, i32 %dec.i, i32 %32
  %35 = ptrtoint ptr %drop_counter.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %spec.store.select.i, ptr %drop_counter.i, align 4
  br i1 %cmp.i, label %ip_vs_todrop.exit.if.end44_crit_edge, label %if.then43

ip_vs_todrop.exit.if.end44_crit_edge:             ; preds = %ip_vs_todrop.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then43:                                        ; preds = %ip_vs_todrop.exit
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %verdict to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %verdict, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ignored) #9
  br label %cleanup56

if.end44:                                         ; preds = %ip_vs_todrop.exit.if.end44_crit_edge, %if.then40.if.end44_crit_edge
  %call45 = call ptr @ip_vs_schedule(ptr noundef nonnull %call37, ptr noundef %skb, ptr noundef %pd, ptr noundef nonnull %ignored, ptr noundef %iph) #9
  %37 = ptrtoint ptr %cpp to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call45, ptr %cpp, align 4
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %land.lhs.true, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end44
  %38 = ptrtoint ptr %ignored to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ignored, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp = icmp slt i32 %39, 1
  br i1 %cmp, label %if.then48, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then48:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool49.not = icmp eq i32 %39, 0
  br i1 %tobool49.not, label %if.then50, label %if.then48.if.end53_crit_edge

if.then48.if.end53_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then50:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %call51 = call i32 @ip_vs_leave(ptr noundef nonnull %call37, ptr noundef %skb, ptr noundef %pd, ptr noundef %iph) #9
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.then48.if.end53_crit_edge
  %storemerge = phi i32 [ %call51, %if.then50 ], [ 0, %if.then48.if.end53_crit_edge ]
  %40 = ptrtoint ptr %verdict to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %storemerge, ptr %verdict, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ignored) #9
  br label %cleanup56

cleanup:                                          ; preds = %land.lhs.true.cleanup_crit_edge, %if.end44.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ignored) #9
  br label %cleanup56

cleanup56:                                        ; preds = %cleanup, %if.end53, %if.then43, %if.end38.cleanup56_crit_edge, %if.then21, %lor.lhs.false.cleanup56_crit_edge, %if.then5.cleanup56_crit_edge
  %retval.1 = phi i32 [ 0, %if.then21 ], [ 1, %if.then5.cleanup56_crit_edge ], [ 0, %if.end53 ], [ 0, %if.then43 ], [ 1, %cleanup ], [ 1, %if.end38.cleanup56_crit_edge ], [ 1, %lor.lhs.false.cleanup56_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_ports) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph) #9
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_conn_in_get_proto(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_conn_out_get_proto(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_snat_handler(ptr noundef %skb, ptr noundef %pp, ptr noundef %cp, ptr noundef %iph) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %2 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp = icmp eq i16 %3, 10
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fragoffs = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 3
  %4 = ptrtoint ptr %fragoffs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fragoffs, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup107_crit_edge

land.lhs.true.cleanup107_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup107

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len3, align 4
  %sub = sub i32 %7, %1
  %add = add i32 %1, 20
  %call = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %add) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup107_crit_edge

if.end.cleanup107_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup107

if.end6:                                          ; preds = %if.end
  %app = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 25
  %8 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %app, align 4
  %cmp7.not = icmp eq ptr %9, null
  br i1 %cmp7.not, label %if.end6.if.end28_crit_edge, label %if.then11, !prof !85

if.end6.if.end28_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then11:                                        ; preds = %if.end6
  %10 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %af, align 2
  %conv13 = zext i16 %11 to i32
  %call14 = tail call fastcc i32 @tcp_csum_check(i32 noundef %conv13, ptr noundef %skb, ptr noundef %pp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then11.cleanup107_crit_edge, label %if.end17

if.then11.cleanup107_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup107

if.end17:                                         ; preds = %if.then11
  %call18 = tail call i32 @ip_vs_app_pkt_out(ptr noundef %cp, ptr noundef %skb, ptr noundef %iph) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.cleanup107_crit_edge, label %if.end21

if.end17.cleanup107_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup107

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp22 = icmp eq i32 %call18, 1
  br i1 %cmp22, label %if.then24, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len3, align 4
  %sub26 = sub i32 %13, %1
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end21.cleanup_crit_edge
  %oldlen.0 = phi i32 [ %sub26, %if.then24 ], [ %sub, %if.end21.cleanup_crit_edge ]
  %14 = xor i1 %cmp22, true
  br label %if.end28

if.end28:                                         ; preds = %cleanup, %if.end6.if.end28_crit_edge
  %payload_csum.2.off0 = phi i1 [ %14, %cleanup ], [ false, %if.end6.if.end28_crit_edge ]
  %oldlen.2 = phi i32 [ %oldlen.0, %cleanup ], [ %sub, %if.end6.if.end28_crit_edge ]
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %15 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %17 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %18 to i32
  %add.ptr.i = getelementptr i8, ptr %16, i32 %conv.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %1
  %vport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 3
  %19 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vport, align 4
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %add.ptr, align 4
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %22 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load = load i16, ptr %ip_summed, align 8
  %23 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %23)
  %cmp31 = icmp eq i16 %23, 1536
  br i1 %cmp31, label %if.then33, label %if.else40

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %af, align 2
  %conv35 = zext i16 %25 to i32
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %vaddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  %conv36 = trunc i32 %oldlen.2 to i16
  %26 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len3, align 4
  %sub38 = sub i32 %27, %1
  %conv39 = trunc i32 %sub38 to i16
  tail call fastcc void @tcp_partial_csum_update(i32 noundef %conv35, ptr noundef %add.ptr, ptr noundef %daddr, ptr noundef %vaddr, i16 noundef zeroext %conv36, i16 noundef zeroext %conv39)
  br label %cleanup107

if.else40:                                        ; preds = %if.end28
  br i1 %payload_csum.2.off0, label %if.else64, label %if.then42

if.then42:                                        ; preds = %if.else40
  %28 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %af, align 2
  %conv44 = zext i16 %29 to i32
  %daddr45 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %vaddr46 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  %dport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 2
  %30 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %dport, align 2
  %32 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vport, align 4
  tail call fastcc void @tcp_fast_csum_update(i32 noundef %conv44, ptr noundef %add.ptr, ptr noundef %daddr45, ptr noundef %vaddr46, i16 noundef zeroext %31, i16 noundef zeroext %33)
  %34 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load49 = load i16, ptr %ip_summed, align 8
  %35 = and i16 %bf.load49, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %35)
  %cmp54 = icmp eq i16 %35, 1024
  br i1 %cmp54, label %if.then56, label %if.then42.cleanup107_crit_edge

if.then42.cleanup107_crit_edge:                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup107

if.then56:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %app, align 4
  %tobool58.not.not = icmp eq ptr %37, null
  %bf.shl = select i1 %tobool58.not.not, i16 0, i16 512
  %bf.clear62 = and i16 %bf.load49, -1537
  %bf.set = or i16 %bf.shl, %bf.clear62
  %38 = ptrtoint ptr %ip_summed to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %cleanup107

if.else64:                                        ; preds = %if.else40
  %check = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 6
  %39 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %check, align 4
  %40 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len3, align 4
  %sub66 = sub i32 %41, %1
  %call67 = tail call i32 @skb_checksum(ptr noundef %skb, i32 noundef %1, i32 noundef %sub66, i32 noundef 0) #9
  %42 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call67, ptr %42, align 8
  %44 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %45)
  %cmp70 = icmp eq i16 %45, 10
  %vaddr73 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  br i1 %cmp70, label %if.then72, label %if.else.i.i

if.then72:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #11
  %caddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  %46 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len3, align 4
  %sub75 = sub i32 %47, %1
  %protocol = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 9
  %48 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %protocol, align 4
  %50 = and i16 %49, 255
  %conv.i168 = zext i16 %50 to i32
  %call.i = tail call i32 @__csum_ipv6_magic(ptr noundef %vaddr73, ptr noundef %caddr, i32 noundef %sub75, i32 noundef %conv.i168, i32 noundef %call67) #9
  %51 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i) #12, !srcloc !87
  br label %if.end88

if.else.i.i:                                      ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len3, align 4
  %sub83 = sub i32 %53, %1
  %protocol84 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 9
  %54 = ptrtoint ptr %protocol84 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %protocol84, align 4
  %56 = and i16 %55, 255
  %conv.i.i169 = zext i16 %56 to i32
  %add.i.i = add i32 %sub83, %conv.i.i169
  %caddr81 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  %57 = ptrtoint ptr %caddr81 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %caddr81, align 4
  %59 = ptrtoint ptr %vaddr73 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %vaddr73, align 4
  %61 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adcs\09$0, $0, $4\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,r,~{cc}"(i32 %call67, i32 %58, i32 %60, i32 %add.i.i) #12, !srcloc !88
  %62 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %61) #12, !srcloc !87
  br label %if.end88

if.end88:                                         ; preds = %if.else.i.i, %if.then72
  %storemerge.in.in.in = phi i32 [ %62, %if.else.i.i ], [ %51, %if.then72 ]
  %storemerge.in.in = xor i32 %storemerge.in.in.in, -1
  %storemerge.in = lshr i32 %storemerge.in.in, 16
  %storemerge = trunc i32 %storemerge.in to i16
  %63 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %storemerge, ptr %check, align 4
  %64 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load90 = load i16, ptr %ip_summed, align 8
  %bf.clear91 = and i16 %bf.load90, -1537
  %bf.set92 = or i16 %bf.clear91, 512
  store i16 %bf.set92, ptr %ip_summed, align 8
  %call93 = tail call i32 @ip_vs_get_debug_level() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call93)
  %cmp94 = icmp sgt i32 %call93, 10
  br i1 %cmp94, label %do.end, label %if.end88.cleanup107_crit_edge

if.end88.cleanup107_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup107

do.end:                                           ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.ip_vs_protocol, ptr %pp, i32 0, i32 1
  %65 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name, align 4
  %67 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %check, align 4
  %conv99 = zext i16 %68 to i32
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %66, i32 noundef %conv99, i32 noundef 16) #13
  br label %cleanup107

cleanup107:                                       ; preds = %do.end, %if.end88.cleanup107_crit_edge, %if.then56, %if.then42.cleanup107_crit_edge, %if.then33, %if.end17.cleanup107_crit_edge, %if.then11.cleanup107_crit_edge, %if.end.cleanup107_crit_edge, %land.lhs.true.cleanup107_crit_edge
  %retval.1 = phi i32 [ 1, %land.lhs.true.cleanup107_crit_edge ], [ 0, %if.end.cleanup107_crit_edge ], [ 1, %if.then56 ], [ 1, %if.then42.cleanup107_crit_edge ], [ 1, %do.end ], [ 1, %if.end88.cleanup107_crit_edge ], [ 1, %if.then33 ], [ 0, %if.then11.cleanup107_crit_edge ], [ 0, %if.end17.cleanup107_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_dnat_handler(ptr noundef %skb, ptr noundef %pp, ptr noundef %cp, ptr noundef %iph) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %2 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp = icmp eq i16 %3, 10
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fragoffs = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 3
  %4 = ptrtoint ptr %fragoffs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fragoffs, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup95_crit_edge

land.lhs.true.cleanup95_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup95

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len3, align 4
  %sub = sub i32 %7, %1
  %add = add i32 %1, 20
  %call = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %add) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup95_crit_edge

if.end.cleanup95_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup95

if.end6:                                          ; preds = %if.end
  %app = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 25
  %8 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %app, align 4
  %cmp7.not = icmp eq ptr %9, null
  br i1 %cmp7.not, label %if.end6.if.end28_crit_edge, label %if.then11, !prof !85

if.end6.if.end28_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then11:                                        ; preds = %if.end6
  %10 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %af, align 2
  %conv13 = zext i16 %11 to i32
  %call14 = tail call fastcc i32 @tcp_csum_check(i32 noundef %conv13, ptr noundef %skb, ptr noundef %pp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then11.cleanup95_crit_edge, label %if.end17

if.then11.cleanup95_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup95

if.end17:                                         ; preds = %if.then11
  %call18 = tail call i32 @ip_vs_app_pkt_in(ptr noundef %cp, ptr noundef %skb, ptr noundef %iph) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.cleanup95_crit_edge, label %if.end21

if.end17.cleanup95_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup95

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp22 = icmp eq i32 %call18, 1
  br i1 %cmp22, label %if.then24, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len3, align 4
  %sub26 = sub i32 %13, %1
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end21.cleanup_crit_edge
  %oldlen.0 = phi i32 [ %sub26, %if.then24 ], [ %sub, %if.end21.cleanup_crit_edge ]
  %14 = xor i1 %cmp22, true
  br label %if.end28

if.end28:                                         ; preds = %cleanup, %if.end6.if.end28_crit_edge
  %payload_csum.2.off0 = phi i1 [ %14, %cleanup ], [ false, %if.end6.if.end28_crit_edge ]
  %oldlen.2 = phi i32 [ %oldlen.0, %cleanup ], [ %sub, %if.end6.if.end28_crit_edge ]
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %15 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %17 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %18 to i32
  %add.ptr.i = getelementptr i8, ptr %16, i32 %conv.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %1
  %dport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 2
  %19 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %dport, align 2
  %dest = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 1
  %21 = ptrtoint ptr %dest to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %dest, align 2
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %22 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load = load i16, ptr %ip_summed, align 8
  %23 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %23)
  %cmp31 = icmp eq i16 %23, 1536
  br i1 %cmp31, label %if.then33, label %if.else40

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %af, align 2
  %conv35 = zext i16 %25 to i32
  %vaddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %conv36 = trunc i32 %oldlen.2 to i16
  %26 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len3, align 4
  %sub38 = sub i32 %27, %1
  %conv39 = trunc i32 %sub38 to i16
  tail call fastcc void @tcp_partial_csum_update(i32 noundef %conv35, ptr noundef %add.ptr, ptr noundef %vaddr, ptr noundef %daddr, i16 noundef zeroext %conv36, i16 noundef zeroext %conv39)
  br label %cleanup95

if.else40:                                        ; preds = %if.end28
  br i1 %payload_csum.2.off0, label %if.else64, label %if.then42

if.then42:                                        ; preds = %if.else40
  %28 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %af, align 2
  %conv44 = zext i16 %29 to i32
  %vaddr45 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  %daddr46 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %vport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 3
  %30 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vport, align 4
  %32 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %dport, align 2
  tail call fastcc void @tcp_fast_csum_update(i32 noundef %conv44, ptr noundef %add.ptr, ptr noundef %vaddr45, ptr noundef %daddr46, i16 noundef zeroext %31, i16 noundef zeroext %33)
  %34 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load49 = load i16, ptr %ip_summed, align 8
  %35 = and i16 %bf.load49, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %35)
  %cmp54 = icmp eq i16 %35, 1024
  br i1 %cmp54, label %if.then56, label %if.then42.cleanup95_crit_edge

if.then42.cleanup95_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup95

if.then56:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %app, align 4
  %tobool58.not.not = icmp eq ptr %37, null
  %bf.shl = select i1 %tobool58.not.not, i16 0, i16 512
  %bf.clear62 = and i16 %bf.load49, -1537
  %bf.set = or i16 %bf.shl, %bf.clear62
  %38 = ptrtoint ptr %ip_summed to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %cleanup95

if.else64:                                        ; preds = %if.else40
  %check = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 6
  %39 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %check, align 4
  %40 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len3, align 4
  %sub66 = sub i32 %41, %1
  %call67 = tail call i32 @skb_checksum(ptr noundef %skb, i32 noundef %1, i32 noundef %sub66, i32 noundef 0) #9
  %42 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call67, ptr %42, align 8
  %44 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %45)
  %cmp70 = icmp eq i16 %45, 10
  %caddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  br i1 %cmp70, label %if.then72, label %if.else.i.i

if.then72:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #11
  %daddr73 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %46 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len3, align 4
  %sub75 = sub i32 %47, %1
  %protocol = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 9
  %48 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %protocol, align 4
  %50 = and i16 %49, 255
  %conv.i152 = zext i16 %50 to i32
  %call.i = tail call i32 @__csum_ipv6_magic(ptr noundef %caddr, ptr noundef %daddr73, i32 noundef %sub75, i32 noundef %conv.i152, i32 noundef %call67) #9
  %51 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i) #12, !srcloc !87
  br label %if.end88

if.else.i.i:                                      ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len3, align 4
  %sub83 = sub i32 %53, %1
  %protocol84 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 9
  %54 = ptrtoint ptr %protocol84 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %protocol84, align 4
  %56 = and i16 %55, 255
  %conv.i.i153 = zext i16 %56 to i32
  %add.i.i = add i32 %sub83, %conv.i.i153
  %daddr81 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %57 = ptrtoint ptr %daddr81 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %daddr81, align 4
  %59 = ptrtoint ptr %caddr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %caddr, align 4
  %61 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adcs\09$0, $0, $4\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,r,~{cc}"(i32 %call67, i32 %58, i32 %60, i32 %add.i.i) #12, !srcloc !88
  %62 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %61) #12, !srcloc !87
  br label %if.end88

if.end88:                                         ; preds = %if.else.i.i, %if.then72
  %storemerge.in.in.in = phi i32 [ %62, %if.else.i.i ], [ %51, %if.then72 ]
  %storemerge.in.in = xor i32 %storemerge.in.in.in, -1
  %storemerge.in = lshr i32 %storemerge.in.in, 16
  %storemerge = trunc i32 %storemerge.in to i16
  %63 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %storemerge, ptr %check, align 4
  %64 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load90 = load i16, ptr %ip_summed, align 8
  %bf.clear91 = and i16 %bf.load90, -1537
  %bf.set92 = or i16 %bf.clear91, 512
  store i16 %bf.set92, ptr %ip_summed, align 8
  br label %cleanup95

cleanup95:                                        ; preds = %if.end88, %if.then56, %if.then42.cleanup95_crit_edge, %if.then33, %if.end17.cleanup95_crit_edge, %if.then11.cleanup95_crit_edge, %if.end.cleanup95_crit_edge, %land.lhs.true.cleanup95_crit_edge
  %retval.1 = phi i32 [ 1, %land.lhs.true.cleanup95_crit_edge ], [ 0, %if.end.cleanup95_crit_edge ], [ 1, %if.end88 ], [ 1, %if.then56 ], [ 1, %if.then42.cleanup95_crit_edge ], [ 1, %if.then33 ], [ 0, %if.then11.cleanup95_crit_edge ], [ 0, %if.end17.cleanup95_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @tcp_state_name(i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %state)
  %cmp = icmp sgt i32 %state, 10
  br i1 %cmp, label %entry.return_crit_edge, label %cond.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [12 x ptr], ptr @tcp_state_name_table, i32 0, i32 %state
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %cond.true, %entry.return_crit_edge
  %retval.0 = phi ptr [ %1, %cond.true ], [ @.str.5, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_state_transition(ptr noundef %cp, i32 noundef %direction, ptr noundef %skb, ptr noundef readonly %pd) #0 align 64 {
entry:
  %ip_vs_dbg_buf.i = alloca [160 x i8], align 1
  %_tcph = alloca %struct.tcphdr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcph) #9
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %0 = call ptr @memset(ptr %_tcph, i32 255, i32 20)
  %1 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %2)
  %cmp = icmp eq i16 %2, 2
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %5 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %6 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %conv.i.i.i
  %7 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %8 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %8 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %mul.i, %cond.true ], [ 40, %entry.cond.end_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i, align 8
  %13 = add i32 %cond, %12
  %sub.i4.i = sub i32 %10, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 20
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !86

if.end.i.i:                                       ; preds = %cond.end
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %cond, ptr noundef nonnull %_tcph, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %cond.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %cond
  %cmp3 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp3, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i21 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end_crit_edge ], [ %_tcph, %lor.lhs.false.i.i.if.end_crit_edge ]
  %lock = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 15
  call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %arrayidx.i = getelementptr [3 x i32], ptr @tcp_state_off, i32 0, i32 %direction
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %flags.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i, align 4
  %and.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end4.i_crit_edge, label %if.then.i

if.end.if.end4.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then.i:                                        ; preds = %if.end
  %20 = and i32 %direction, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i = icmp eq i32 %20, 1
  br i1 %cmp.i, label %if.then1.i, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i, align 4
  %and3.i = and i32 %22, -129
  store volatile i32 %and3.i, ptr %flags.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then1.i, %if.then.i.if.end4.i_crit_edge, %if.end.if.end4.i_crit_edge
  %state_off.0.i = phi i32 [ 4, %if.then1.i ], [ %17, %if.end.if.end4.i_crit_edge ], [ 8, %if.then.i.if.end4.i_crit_edge ]
  %rst.i.i = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i21, i32 0, i32 4
  %23 = ptrtoint ptr %rst.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load.i.i = load i16, ptr %rst.i.i, align 4
  %24 = and i16 %bf.load.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not.i.i = icmp eq i16 %24, 0
  br i1 %tobool.not.i.i, label %if.end.i.i13, label %if.end4.i.if.end15.i_crit_edge

if.end4.i.if.end15.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.end.i.i13:                                     ; preds = %if.end4.i
  %25 = and i16 %bf.load.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool4.not.i.i = icmp eq i16 %25, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end.i.i13.if.end15.i_crit_edge

if.end.i.i13.if.end15.i_crit_edge:                ; preds = %if.end.i.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.end6.i.i:                                      ; preds = %if.end.i.i13
  %bf.clear8.i.i = and i16 %bf.load.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear8.i.i)
  %tobool9.not.i.i = icmp eq i16 %bf.clear8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end11.i.i, label %if.end6.i.i.if.end15.i_crit_edge

if.end6.i.i.if.end15.i_crit_edge:                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.end11.i.i:                                     ; preds = %if.end6.i.i
  %26 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool15.not.i.i = icmp eq i16 %26, 0
  br i1 %tobool15.not.i.i, label %do.body.i, label %if.end11.i.i.if.end15.i_crit_edge

if.end11.i.i.if.end15.i_crit_edge:                ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

do.body.i:                                        ; preds = %if.end11.i.i
  %call7.i = call i32 @ip_vs_get_debug_level() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call7.i)
  %cmp8.i = icmp sgt i32 %call7.i, 7
  br i1 %cmp8.i, label %do.end.i, label %do.body.i.tcp_state_out.i_crit_edge

do.body.i.tcp_state_out.i_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_state_out.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef -1) #13
  br label %tcp_state_out.i

if.end15.i:                                       ; preds = %if.end11.i.i.if.end15.i_crit_edge, %if.end6.i.i.if.end15.i_crit_edge, %if.end.i.i13.if.end15.i_crit_edge, %if.end4.i.if.end15.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ 2, %if.end11.i.i.if.end15.i_crit_edge ], [ 1, %if.end6.i.i.if.end15.i_crit_edge ], [ 0, %if.end.i.i13.if.end15.i_crit_edge ], [ 3, %if.end4.i.if.end15.i_crit_edge ]
  %tcp_state_table.i = getelementptr inbounds %struct.ip_vs_proto_data, ptr %pd, i32 0, i32 4
  %27 = ptrtoint ptr %tcp_state_table.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tcp_state_table.i, align 4
  %add.i = add i32 %retval.0.i.ph.i, %state_off.0.i
  %arrayidx16.i = getelementptr %struct.tcp_states_t, ptr %28, i32 %add.i
  %state.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 16
  %29 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load volatile i16, ptr %state.i, align 4
  %idxprom.i = zext i16 %30 to i32
  %arrayidx17.i = getelementptr [11 x i32], ptr %arrayidx16.i, i32 0, i32 %idxprom.i
  %31 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx17.i, align 4
  br label %tcp_state_out.i

tcp_state_out.i:                                  ; preds = %if.end15.i, %do.end.i, %do.body.i.tcp_state_out.i_crit_edge
  %new_state.0.i = phi i32 [ 6, %do.end.i ], [ 6, %do.body.i.tcp_state_out.i_crit_edge ], [ %32, %if.end15.i ]
  %state18.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 16
  %33 = ptrtoint ptr %state18.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load volatile i16, ptr %state18.i, align 4
  %conv.i = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %new_state.0.i, i32 %conv.i)
  %cmp19.not.i = icmp eq i32 %new_state.0.i, %conv.i
  br i1 %cmp19.not.i, label %tcp_state_out.i.if.end102.i_crit_edge, label %if.then21.i

tcp_state_out.i.if.end102.i_crit_edge:            ; preds = %tcp_state_out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102.i

if.then21.i:                                      ; preds = %tcp_state_out.i
  %dest22.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 22
  %35 = ptrtoint ptr %dest22.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dest22.i, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf.i) #9
  %37 = call ptr @memset(ptr %ip_vs_dbg_buf.i, i32 255, i32 160)
  %call24.i = call i32 @ip_vs_get_debug_level() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call24.i)
  %cmp25.i = icmp sgt i32 %call24.i, 7
  br i1 %cmp25.i, label %do.end30.i, label %if.then21.i.if.end72.i_crit_edge

if.then21.i.if.end72.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i

do.end30.i:                                       ; preds = %if.then21.i
  %pp.i = getelementptr inbounds %struct.ip_vs_proto_data, ptr %pd, i32 0, i32 1
  %38 = ptrtoint ptr %pp.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pp.i, align 4
  %name.i = getelementptr inbounds %struct.ip_vs_protocol, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %state_off.0.i)
  %cmp32.i = icmp eq i32 %state_off.0.i, 4
  %cond.i = select i1 %cmp32.i, ptr @.str.24, ptr @.str.25
  %42 = ptrtoint ptr %rst.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load.i14 = load i16, ptr %rst.i.i, align 4
  %43 = and i16 %bf.load.i14, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool35.not.i = icmp eq i16 %43, 0
  %cond36.i = select i1 %tobool35.not.i, i32 46, i32 83
  %bf.clear38.i = and i16 %bf.load.i14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear38.i)
  %tobool40.not.i = icmp eq i16 %bf.clear38.i, 0
  %cond41.i = select i1 %tobool40.not.i, i32 46, i32 70
  %44 = and i16 %bf.load.i14, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool46.not.i = icmp eq i16 %44, 0
  %cond47.i = select i1 %tobool46.not.i, i32 46, i32 65
  %45 = and i16 %bf.load.i14, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool52.not.i = icmp eq i16 %45, 0
  %cond53.i = select i1 %tobool52.not.i, i32 46, i32 82
  %46 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %af, align 2
  %caddr.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %47)
  %cmp.i.i = icmp eq i16 %47, 10
  %.str.26..str.27.i.i = select i1 %cmp.i.i, ptr @.str.26, ptr @.str.27
  %call3.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf.i, i32 noundef 160, ptr noundef nonnull %.str.26..str.27.i.i, ptr noundef %caddr.i) #9
  %len.0.i.i = add i32 %call3.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i.i)
  %cmp7.i.i = icmp ugt i32 %len.0.i.i, 161
  br i1 %cmp7.i.i, label %do.body10.i.i, label %ip_vs_dbg_addr.exit.i, !prof !86

do.body10.i.i:                                    ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #9, !srcloc !89
  unreachable

ip_vs_dbg_addr.exit.i:                            ; preds = %do.end30.i
  %cport.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 1
  %48 = ptrtoint ptr %cport.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %cport.i, align 4
  %conv56.i = zext i16 %49 to i32
  %50 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %af, align 2
  %vaddr.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %51)
  %cmp.i166.i = icmp eq i16 %51, 10
  %arrayidx.i167.i = getelementptr i8, ptr %ip_vs_dbg_buf.i, i32 %len.0.i.i
  %sub.i168.i = sub nsw i32 159, %call3.i.i
  %.str.26..str.27.i169.i = select i1 %cmp.i166.i, ptr @.str.26, ptr @.str.27
  %call3.i170.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i167.i, i32 noundef %sub.i168.i, ptr noundef nonnull %.str.26..str.27.i169.i, ptr noundef %vaddr.i) #9
  %len.0.i171.i = add nsw i32 %call3.i.i, 2
  %add5.i172.i = add i32 %len.0.i171.i, %call3.i170.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i172.i)
  %cmp7.i173.i = icmp ugt i32 %add5.i172.i, 161
  br i1 %cmp7.i173.i, label %do.body10.i174.i, label %ip_vs_dbg_addr.exit176.i, !prof !86

do.body10.i174.i:                                 ; preds = %ip_vs_dbg_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #9, !srcloc !89
  unreachable

ip_vs_dbg_addr.exit176.i:                         ; preds = %ip_vs_dbg_addr.exit.i
  %vport.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 3
  %52 = ptrtoint ptr %vport.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vport.i, align 4
  %conv61.i = zext i16 %53 to i32
  %daf.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 10
  %54 = ptrtoint ptr %daf.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %daf.i, align 2
  %daddr.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %55)
  %cmp.i177.i = icmp eq i16 %55, 10
  %arrayidx.i178.i = getelementptr i8, ptr %ip_vs_dbg_buf.i, i32 %add5.i172.i
  %sub.i179.i = sub nsw i32 160, %add5.i172.i
  %.str.26..str.27.i180.i = select i1 %cmp.i177.i, ptr @.str.26, ptr @.str.27
  %call3.i181.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i178.i, i32 noundef %sub.i179.i, ptr noundef nonnull %.str.26..str.27.i180.i, ptr noundef %daddr.i) #9
  %len.0.i182.i = add nuw nsw i32 %add5.i172.i, 1
  %add5.i183.i = add i32 %len.0.i182.i, %call3.i181.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i183.i)
  %cmp7.i184.i = icmp ugt i32 %add5.i183.i, 161
  br i1 %cmp7.i184.i, label %do.body10.i185.i, label %ip_vs_dbg_addr.exit187.i, !prof !86

do.body10.i185.i:                                 ; preds = %ip_vs_dbg_addr.exit176.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #9, !srcloc !89
  unreachable

ip_vs_dbg_addr.exit187.i:                         ; preds = %ip_vs_dbg_addr.exit176.i
  %dport.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 2
  %56 = ptrtoint ptr %dport.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %dport.i, align 2
  %conv65.i = zext i16 %57 to i32
  %58 = ptrtoint ptr %state18.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load volatile i16, ptr %state18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %59)
  %cmp.i188.i = icmp ugt i16 %59, 10
  br i1 %cmp.i188.i, label %ip_vs_dbg_addr.exit187.i.tcp_state_name.exit.i_crit_edge, label %cond.true.i.i

ip_vs_dbg_addr.exit187.i.tcp_state_name.exit.i_crit_edge: ; preds = %ip_vs_dbg_addr.exit187.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_state_name.exit.i

cond.true.i.i:                                    ; preds = %ip_vs_dbg_addr.exit187.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv67.i = zext i16 %59 to i32
  %arrayidx.i189.i = getelementptr [12 x ptr], ptr @tcp_state_name_table, i32 0, i32 %conv67.i
  %60 = ptrtoint ptr %arrayidx.i189.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i189.i, align 4
  br label %tcp_state_name.exit.i

tcp_state_name.exit.i:                            ; preds = %cond.true.i.i, %ip_vs_dbg_addr.exit187.i.tcp_state_name.exit.i_crit_edge
  %retval.0.i190.i = phi ptr [ %61, %cond.true.i.i ], [ @.str.5, %ip_vs_dbg_addr.exit187.i.tcp_state_name.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %new_state.0.i)
  %cmp.i191.i = icmp sgt i32 %new_state.0.i, 10
  br i1 %cmp.i191.i, label %tcp_state_name.exit.i.tcp_state_name.exit195.i_crit_edge, label %cond.true.i193.i

tcp_state_name.exit.i.tcp_state_name.exit195.i_crit_edge: ; preds = %tcp_state_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_state_name.exit195.i

cond.true.i193.i:                                 ; preds = %tcp_state_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i192.i = getelementptr [12 x ptr], ptr @tcp_state_name_table, i32 0, i32 %new_state.0.i
  %62 = ptrtoint ptr %arrayidx.i192.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i192.i, align 4
  br label %tcp_state_name.exit195.i

tcp_state_name.exit195.i:                         ; preds = %cond.true.i193.i, %tcp_state_name.exit.i.tcp_state_name.exit195.i_crit_edge
  %retval.0.i194.i = phi ptr [ %63, %cond.true.i193.i ], [ @.str.5, %tcp_state_name.exit.i.tcp_state_name.exit195.i_crit_edge ]
  %refcnt.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 12
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #9
  %64 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %refcnt.i, align 4
  %call71.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %41, ptr noundef nonnull %cond.i, i32 noundef %cond36.i, i32 noundef %cond41.i, i32 noundef %cond47.i, i32 noundef %cond53.i, ptr noundef nonnull %ip_vs_dbg_buf.i, i32 noundef %conv56.i, ptr noundef %arrayidx.i167.i, i32 noundef %conv61.i, ptr noundef %arrayidx.i178.i, i32 noundef %conv65.i, ptr noundef %retval.0.i190.i, ptr noundef %retval.0.i194.i, i32 noundef %65) #13
  br label %if.end72.i

if.end72.i:                                       ; preds = %tcp_state_name.exit195.i, %if.then21.i.if.end72.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf.i) #9
  %tobool75.not.i = icmp eq ptr %36, null
  br i1 %tobool75.not.i, label %if.end72.i.if.end97.i_crit_edge, label %if.then76.i

if.end72.i.if.end97.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97.i

if.then76.i:                                      ; preds = %if.end72.i
  %66 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %flags.i, align 4
  %and78.i = and i32 %67, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.i)
  %tobool79.not.i = icmp eq i32 %and78.i, 0
  br i1 %tobool79.not.i, label %land.lhs.true.i, label %if.then76.i.if.else83.i_crit_edge

if.then76.i.if.else83.i_crit_edge:                ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else83.i

land.lhs.true.i:                                  ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %new_state.0.i)
  %cmp.i196.i = icmp slt i32 %new_state.0.i, 11
  %68 = lshr i32 1038, %new_state.0.i
  %69 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.i.i = icmp ne i32 %69, 0
  %retval.0.i197.i = select i1 %cmp.i196.i, i1 %tobool.i.i, i1 false
  br i1 %retval.0.i197.i, label %land.lhs.true.i.if.else83.i_crit_edge, label %if.then81.i

land.lhs.true.i.if.else83.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else83.i

if.then81.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %activeconns.i = getelementptr inbounds %struct.ip_vs_dest, ptr %36, i32 0, i32 15
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %activeconns.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %activeconns.i, i32 1, i32 3, i32 1) #9
  %70 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %activeconns.i, ptr %activeconns.i, i32 1, ptr elementtype(i32) %activeconns.i) #9, !srcloc !90
  %inactconns.i = getelementptr inbounds %struct.ip_vs_dest, ptr %36, i32 0, i32 16
  %call.i.i163.i = call zeroext i1 @__kasan_check_write(ptr noundef %inactconns.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %inactconns.i, i32 1, i32 3, i32 1) #9
  %71 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inactconns.i, ptr %inactconns.i, i32 1, ptr elementtype(i32) %inactconns.i) #9, !srcloc !91
  %72 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %flags.i, align 4
  %or.i = or i32 %73, 256
  br label %if.end97.sink.split.i

if.else83.i:                                      ; preds = %land.lhs.true.i.if.else83.i_crit_edge, %if.then76.i.if.else83.i_crit_edge
  %74 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %flags.i, align 4
  %and85.i = and i32 %75, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i)
  %tobool86.not.i = icmp eq i32 %and85.i, 0
  br i1 %tobool86.not.i, label %if.else83.i.if.end97.i_crit_edge, label %land.lhs.true87.i

if.else83.i.if.end97.i_crit_edge:                 ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97.i

land.lhs.true87.i:                                ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %new_state.0.i)
  %cmp.i198.i = icmp slt i32 %new_state.0.i, 11
  %76 = lshr i32 1038, %new_state.0.i
  %77 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.i199.i = icmp ne i32 %77, 0
  %retval.0.i200.i = select i1 %cmp.i198.i, i1 %tobool.i199.i, i1 false
  br i1 %retval.0.i200.i, label %if.then90.i, label %land.lhs.true87.i.if.end97.i_crit_edge

land.lhs.true87.i.if.end97.i_crit_edge:           ; preds = %land.lhs.true87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97.i

if.then90.i:                                      ; preds = %land.lhs.true87.i
  call void @__sanitizer_cov_trace_pc() #11
  %activeconns91.i = getelementptr inbounds %struct.ip_vs_dest, ptr %36, i32 0, i32 15
  %call.i.i164.i = call zeroext i1 @__kasan_check_write(ptr noundef %activeconns91.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %activeconns91.i, i32 1, i32 3, i32 1) #9
  %78 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %activeconns91.i, ptr %activeconns91.i, i32 1, ptr elementtype(i32) %activeconns91.i) #9, !srcloc !91
  %inactconns92.i = getelementptr inbounds %struct.ip_vs_dest, ptr %36, i32 0, i32 16
  %call.i.i165.i = call zeroext i1 @__kasan_check_write(ptr noundef %inactconns92.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %inactconns92.i, i32 1, i32 3, i32 1) #9
  %79 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inactconns92.i, ptr %inactconns92.i, i32 1, ptr elementtype(i32) %inactconns92.i) #9, !srcloc !90
  %80 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %flags.i, align 4
  %and94.i = and i32 %81, -257
  br label %if.end97.sink.split.i

if.end97.sink.split.i:                            ; preds = %if.then90.i, %if.then81.i
  %or.sink.i = phi i32 [ %or.i, %if.then81.i ], [ %and94.i, %if.then90.i ]
  %82 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile i32 %or.sink.i, ptr %flags.i, align 4
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.end97.sink.split.i, %land.lhs.true87.i.if.end97.i_crit_edge, %if.else83.i.if.end97.i_crit_edge, %if.end72.i.if.end97.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %new_state.0.i)
  %cmp98.i = icmp eq i32 %new_state.0.i, 1
  br i1 %cmp98.i, label %if.then100.i, label %if.end97.i.if.end102.i_crit_edge

if.end97.i.if.end102.i_crit_edge:                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102.i

if.then100.i:                                     ; preds = %if.end97.i
  %control.i.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 20
  %83 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %control.i.i, align 4
  %tobool.not.i201.i = icmp eq ptr %84, null
  br i1 %tobool.not.i201.i, label %if.then100.i.if.end102.i_crit_edge, label %land.lhs.true.i.i

if.then100.i.if.end102.i_crit_edge:               ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102.i

land.lhs.true.i.i:                                ; preds = %if.then100.i
  %state.i.i = getelementptr inbounds %struct.ip_vs_conn, ptr %84, i32 0, i32 16
  %85 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load volatile i16, ptr %state.i.i, align 4
  %87 = and i16 %86, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool1.not.i.i = icmp eq i16 %87, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true2.i.i, label %land.lhs.true.i.i.if.end102.i_crit_edge

land.lhs.true.i.i.if.end102.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %flags.i.i = getelementptr inbounds %struct.ip_vs_conn, ptr %84, i32 0, i32 8
  %88 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %flags.i.i, align 4
  %and3.i.i = and i32 %89, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i202.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i202.i, label %land.lhs.true2.i.i.if.end102.i_crit_edge, label %if.then.i.i15

land.lhs.true2.i.i.if.end102.i_crit_edge:         ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102.i

if.then.i.i15:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load volatile i16, ptr %state.i.i, align 4
  %92 = or i16 %91, 1
  store volatile i16 %92, ptr %state.i.i, align 4
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then.i.i15, %land.lhs.true2.i.i.if.end102.i_crit_edge, %land.lhs.true.i.i.if.end102.i_crit_edge, %if.then100.i.if.end102.i_crit_edge, %if.end97.i.if.end102.i_crit_edge, %tcp_state_out.i.if.end102.i_crit_edge
  %tobool103.not.i = icmp eq ptr %pd, null
  br i1 %tobool103.not.i, label %if.else111.i, label %if.then106.i, !prof !86

if.then106.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #11
  %timeout_table.i = getelementptr inbounds %struct.ip_vs_proto_data, ptr %pd, i32 0, i32 2
  %93 = ptrtoint ptr %timeout_table.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %timeout_table.i, align 4
  %conv107.i = trunc i32 %new_state.0.i to i16
  %95 = ptrtoint ptr %state18.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store volatile i16 %conv107.i, ptr %state18.i, align 4
  %idxprom109.i = and i32 %new_state.0.i, 65535
  %arrayidx110.i = getelementptr i32, ptr %94, i32 %idxprom109.i
  br label %set_tcp_state.exit

if.else111.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv112.i = trunc i32 %new_state.0.i to i16
  %96 = ptrtoint ptr %state18.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store volatile i16 %conv112.i, ptr %state18.i, align 4
  %idxprom114.i = and i32 %new_state.0.i, 65535
  %arrayidx115.i = getelementptr [12 x i32], ptr @tcp_timeouts, i32 0, i32 %idxprom114.i
  br label %set_tcp_state.exit

set_tcp_state.exit:                               ; preds = %if.else111.i, %if.then106.i
  %arrayidx115.sink.i = phi ptr [ %arrayidx115.i, %if.else111.i ], [ %arrayidx110.i, %if.then106.i ]
  %97 = ptrtoint ptr %arrayidx115.sink.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx115.sink.i, align 4
  %timeout116.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 14
  %99 = ptrtoint ptr %timeout116.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile i32 %98, ptr %timeout116.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %set_tcp_state.exit, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_register_app(ptr noundef %ipvs, ptr noundef %inc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.ip_vs_app, ptr %inc, i32 0, i32 8
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %port1, align 4
  %call = tail call ptr @ip_vs_proto_data_get(ptr noundef %ipvs, i16 noundef zeroext 6) #9
  %2 = lshr i16 %1, 4
  %xor.i = xor i16 %2, %1
  %and.i = and i16 %xor.i, 15
  %idxprom = zext i16 %and.i to i32
  %arrayidx = getelementptr %struct.netns_ipvs, ptr %ipvs, i32 0, i32 5, i32 %idxprom
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %arrayidx, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %3 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %arrayidx
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %port6 = getelementptr i8, ptr %.pn, i32 12
  %4 = ptrtoint ptr %port6 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %port6, align 4
  %cmp8 = icmp eq i16 %5, %1
  br i1 %cmp8, label %for.body.out_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.end:                                          ; preds = %for.cond
  %p_list15 = getelementptr inbounds %struct.ip_vs_app, ptr %inc, i32 0, i32 6
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i.i28 = tail call zeroext i1 @__list_add_valid(ptr noundef %p_list15, ptr noundef %arrayidx, ptr noundef %7) #9
  br i1 %call.i.i28, label %if.end.i.i, label %for.end.list_add_rcu.exit_crit_edge

for.end.list_add_rcu.exit_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_rcu.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %p_list15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %p_list15, align 4
  %prev2.i.i = getelementptr inbounds %struct.ip_vs_app, ptr %inc, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !92
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %p_list15, ptr %arrayidx, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %p_list15, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i, %for.end.list_add_rcu.exit_crit_edge
  %appcnt = getelementptr inbounds %struct.ip_vs_proto_data, ptr %call, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %appcnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %appcnt, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %appcnt, ptr %appcnt, i32 1, ptr elementtype(i32) %appcnt) #9, !srcloc !91
  br label %out

out:                                              ; preds = %list_add_rcu.exit, %for.body.out_crit_edge
  %ret.0 = phi i32 [ 0, %list_add_rcu.exit ], [ -17, %for.body.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_unregister_app(ptr noundef %ipvs, ptr noundef %inc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ip_vs_proto_data_get(ptr noundef %ipvs, i16 noundef zeroext 6) #9
  %appcnt = getelementptr inbounds %struct.ip_vs_proto_data, ptr %call, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %appcnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %appcnt, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %appcnt, ptr %appcnt, i32 1, ptr elementtype(i32) %appcnt) #9, !srcloc !90
  %p_list = getelementptr inbounds %struct.ip_vs_app, ptr %inc, i32 0, i32 6
  %call.i.i1 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p_list) #9
  br i1 %call.i.i1, label %if.end.i.i, label %entry.list_del_rcu.exit_crit_edge

entry.list_del_rcu.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.ip_vs_app, ptr %inc, i32 0, i32 6, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %p_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %entry.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.ip_vs_app, ptr %inc, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_app_conn_bind(ptr noundef %cp) #0 align 64 {
entry:
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ipvs1 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 11
  %0 = ptrtoint ptr %ipvs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipvs1, align 4
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %vport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 3
  %4 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vport, align 4
  %6 = lshr i16 %5, 4
  %xor.i = xor i16 %6, %5
  %and.i = and i16 %xor.i, 15
  %conv = zext i16 %and.i to i32
  %call2 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b94 = load i1, ptr @tcp_app_conn_bind.__warned, align 1
  br i1 %.b94, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcp_app_conn_bind.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 665, ptr noundef nonnull @.str.28) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %arrayidx = getelementptr %struct.netns_ipvs, ptr %1, i32 0, i32 5, i32 %conv
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %arrayidx, %do.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %7 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp15.not = icmp eq ptr %.pn, %arrayidx
  br i1 %cmp15.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %port = getelementptr i8, ptr %.pn, i32 12
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %port, align 4
  %10 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vport, align 4
  %cmp20 = icmp eq i16 %9, %11
  br i1 %cmp20, label %if.then22, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then22:                                        ; preds = %for.body
  %port.le = getelementptr i8, ptr %.pn, i32 12
  %inc.0.le = getelementptr i8, ptr %.pn, i32 -32
  %call23 = tail call i32 @ip_vs_app_inc_get(ptr noundef %inc.0.le) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.cleanup_crit_edge, label %do.body30, !prof !86

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body30:                                        ; preds = %if.then22
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #9
  %12 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call31 = tail call i32 @ip_vs_get_debug_level() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call31)
  %cmp32 = icmp sgt i32 %call31, 8
  br i1 %cmp32, label %do.end37, label %do.body30.if.end51_crit_edge

do.body30.if.end51_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

do.end37:                                         ; preds = %do.body30
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %13 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %af, align 2
  %caddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %14)
  %cmp.i = icmp eq i16 %14, 10
  %.str.26..str.27.i = select i1 %cmp.i, ptr @.str.26, ptr @.str.27
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.26..str.27.i, ptr noundef %caddr) #9
  %len.0.i = add i32 %call3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i)
  %cmp7.i = icmp ugt i32 %len.0.i, 161
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !86

do.body10.i:                                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #9, !srcloc !89
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end37
  %cport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 1
  %15 = ptrtoint ptr %cport to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cport, align 4
  %17 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %af, align 2
  %vaddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %18)
  %cmp.i95 = icmp eq i16 %18, 10
  %arrayidx.i96 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %len.0.i
  %sub.i97 = sub nsw i32 159, %call3.i
  %.str.26..str.27.i98 = select i1 %cmp.i95, ptr @.str.26, ptr @.str.27
  %call3.i99 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i96, i32 noundef %sub.i97, ptr noundef nonnull %.str.26..str.27.i98, ptr noundef %vaddr) #9
  %len.0.i100 = add nsw i32 %call3.i, 2
  %add5.i101 = add i32 %len.0.i100, %call3.i99
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i101)
  %cmp7.i102 = icmp ugt i32 %add5.i101, 161
  br i1 %cmp7.i102, label %do.body10.i103, label %ip_vs_dbg_addr.exit105, !prof !86

do.body10.i103:                                   ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #9, !srcloc !89
  unreachable

ip_vs_dbg_addr.exit105:                           ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv41 = zext i16 %16 to i32
  %19 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vport, align 4
  %conv47 = zext i16 %20 to i32
  %name = getelementptr i8, ptr %.pn, i32 -20
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 4
  %23 = ptrtoint ptr %port.le to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %port.le, align 4
  %conv49 = zext i16 %24 to i32
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef %conv41, ptr noundef %arrayidx.i96, i32 noundef %conv47, ptr noundef %22, i32 noundef %conv49) #13
  br label %if.end51

if.end51:                                         ; preds = %ip_vs_dbg_addr.exit105, %do.body30.if.end51_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #9
  %app = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 25
  %25 = ptrtoint ptr %app to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %inc.0.le, ptr %app, align 4
  %init_conn = getelementptr i8, ptr %.pn, i32 36
  %26 = ptrtoint ptr %init_conn to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_conn, align 4
  %tobool54.not = icmp eq ptr %27, null
  br i1 %tobool54.not, label %if.end51.cleanup_crit_edge, label %if.then55

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %call57 = call i32 %27(ptr noundef %inc.0.le, ptr noundef %cp) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end51.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then22.cleanup_crit_edge ], [ %call57, %if.then55 ], [ 0, %if.end51.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_tcpudp_debug_packet(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @tcp_timeout_change(ptr nocapture noundef writeonly %pd, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @tcp_states, ptr @tcp_states_dos
  %tcp_state_table = getelementptr inbounds %struct.ip_vs_proto_data, ptr %pd, i32 0, i32 4
  %0 = ptrtoint ptr %tcp_state_table to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cond, ptr %tcp_state_table, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_init_hash_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_create_timeout_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %offset, i32 noundef %len, ptr noundef %buffer) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %4 = add i32 %3, %offset
  %sub.i4 = sub i32 %1, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4, i32 %len)
  %cmp.not.i = icmp slt i32 %sub.i4, %len
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !86

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %offset
  br label %__skb_header_pointer.exit

if.end.i:                                         ; preds = %entry
  %tobool2.not.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i, label %if.end.i.__skb_header_pointer.exit_crit_edge, label %lor.lhs.false.i

if.end.i.__skb_header_pointer.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__skb_header_pointer.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset, ptr noundef %buffer, i32 noundef %len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp3.i, ptr null, ptr %buffer, !prof !86
  br label %__skb_header_pointer.exit

__skb_header_pointer.exit:                        ; preds = %lor.lhs.false.i, %if.end.i.__skb_header_pointer.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %if.end.i.__skb_header_pointer.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_service_find(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_schedule(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_leave(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcp_csum_check(i32 noundef %af, ptr noundef %skb, ptr noundef %pp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %af)
  %cmp = icmp eq i32 %af, 10
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %5 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %5 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %tcphoff.0 = phi i32 [ %mul.i, %if.else ], [ 40, %entry.if.end_crit_edge ]
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %6 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.lshr = lshr i16 %bf.load, 9
  %7 = and i16 %bf.lshr, 3
  %bf.cast = zext i16 %7 to i32
  %8 = zext i32 %bf.cast to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bf.cast, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %if.end.sw.bb2_crit_edge
  ]

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %sub = sub i32 %10, %tcphoff.0
  %call1 = tail call i32 @skb_checksum(ptr noundef %skb, i32 noundef %tcphoff.0, i32 noundef %sub, i32 noundef 0) #9
  %11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call1, ptr %11, align 8
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %if.end.sw.bb2_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %15 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %16 to i32
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %conv.i.i
  br i1 %cmp, label %if.then5, label %if.else.i.i

if.then5:                                         ; preds = %sw.bb2
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %len8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len8, align 4
  %sub9 = sub i32 %18, %tcphoff.0
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %nexthdr, align 2
  %21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %conv.i = zext i8 %20 to i32
  %call.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr, ptr noundef %daddr, i32 noundef %sub9, i32 noundef %conv.i, i32 noundef %23) #9
  %24 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i) #12, !srcloc !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %24)
  %tobool.not = icmp ugt i32 %24, -65537
  br i1 %tobool.not, label %if.then5.cleanup_crit_edge, label %do.body

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.then5
  %call13 = tail call i32 @ip_vs_get_debug_level() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call13)
  %cmp14 = icmp sgt i32 %call13, -1
  br i1 %cmp14, label %land.lhs.true, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %do.body
  %call16 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i.i:                                      ; preds = %sw.bb2
  %len26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %25 = ptrtoint ptr %len26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len26, align 4
  %sub27 = sub i32 %26, %tcphoff.0
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %protocol, align 1
  %conv.i.i92 = zext i8 %28 to i32
  %add.i.i = add i32 %sub27, %conv.i.i92
  %29 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %daddr25 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %32 = ptrtoint ptr %daddr25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %daddr25, align 4
  %saddr23 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %34 = ptrtoint ptr %saddr23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %saddr23, align 4
  %36 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adcs\09$0, $0, $4\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,r,~{cc}"(i32 %31, i32 %33, i32 %35, i32 %add.i.i) #12, !srcloc !88
  %37 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %36) #12, !srcloc !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %37)
  %tobool30.not = icmp ugt i32 %37, -65537
  br i1 %tobool30.not, label %if.else.i.i.cleanup_crit_edge, label %do.body32

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body32:                                        ; preds = %if.else.i.i
  %call33 = tail call i32 @ip_vs_get_debug_level() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call33)
  %cmp34 = icmp sgt i32 %call33, -1
  br i1 %cmp34, label %land.lhs.true36, label %do.body32.cleanup_crit_edge

do.body32.cleanup_crit_edge:                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true36:                                  ; preds = %do.body32
  %call37 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true36.cleanup_crit_edge, label %land.lhs.true36.cleanup.sink.split_crit_edge

land.lhs.true36.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.lhs.true36.cleanup_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.lhs.true36.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge
  %af.sink = phi i32 [ 10, %land.lhs.true.cleanup.sink.split_crit_edge ], [ %af, %land.lhs.true36.cleanup.sink.split_crit_edge ]
  %debug_packet40 = getelementptr inbounds %struct.ip_vs_protocol, ptr %pp, i32 0, i32 19
  %38 = ptrtoint ptr %debug_packet40 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %debug_packet40, align 4
  tail call void %39(i32 noundef %af.sink, ptr noundef %pp, ptr noundef %skb, i32 noundef 0, ptr noundef nonnull @.str.4) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true36.cleanup_crit_edge, %do.body32.cleanup_crit_edge, %if.else.i.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %land.lhs.true36.cleanup_crit_edge ], [ 0, %do.body32.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.then5.cleanup_crit_edge ], [ 1, %if.else.i.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_app_pkt_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcp_partial_csum_update(i32 noundef %af, ptr nocapture noundef %tcph, ptr nocapture noundef readonly %oldip, ptr nocapture noundef readonly %newip, i16 noundef zeroext %oldlen, i16 noundef zeroext %newlen) unnamed_addr #5 align 64 {
entry:
  %diff.i32 = alloca [2 x i32], align 4
  %diff.i29 = alloca [2 x i16], align 2
  %diff.i24 = alloca [8 x i32], align 4
  %diff.i = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %af)
  %cmp = icmp eq i32 %af, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %check = getelementptr inbounds %struct.tcphdr, ptr %tcph, i32 0, i32 6
  %0 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %check, align 4
  %conv.i = zext i16 %1 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff.i) #9
  %2 = getelementptr inbounds [2 x i16], ptr %diff.i, i32 0, i32 1
  %neg.i = xor i16 %oldlen, -1
  %3 = ptrtoint ptr %diff.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %neg.i, ptr %diff.i, align 2
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %newlen, ptr %2, align 2
  %call.i = call i32 @csum_partial(ptr noundef nonnull %diff.i, i32 noundef 4, i32 noundef %conv.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff.i) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %diff.i24) #9
  %5 = getelementptr inbounds [8 x i32], ptr %diff.i24, i32 0, i32 1
  %6 = getelementptr inbounds [8 x i32], ptr %diff.i24, i32 0, i32 2
  %7 = getelementptr inbounds [8 x i32], ptr %diff.i24, i32 0, i32 3
  %8 = getelementptr inbounds [8 x i32], ptr %diff.i24, i32 0, i32 4
  %9 = getelementptr inbounds [8 x i32], ptr %diff.i24, i32 0, i32 5
  %10 = getelementptr inbounds [8 x i32], ptr %diff.i24, i32 0, i32 6
  %11 = getelementptr inbounds [8 x i32], ptr %diff.i24, i32 0, i32 7
  %arrayidx.i = getelementptr i32, ptr %oldip, i32 3
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %neg.i25 = xor i32 %13, -1
  %14 = ptrtoint ptr %diff.i24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %neg.i25, ptr %diff.i24, align 4
  %arrayidx1.i = getelementptr i32, ptr %oldip, i32 2
  %15 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx1.i, align 4
  %neg2.i = xor i32 %16, -1
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %neg2.i, ptr %5, align 4
  %arrayidx4.i = getelementptr i32, ptr %oldip, i32 1
  %18 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx4.i, align 4
  %neg5.i = xor i32 %19, -1
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %neg5.i, ptr %6, align 4
  %21 = ptrtoint ptr %oldip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %oldip, align 4
  %neg8.i = xor i32 %22, -1
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %neg8.i, ptr %7, align 4
  %arrayidx10.i = getelementptr i32, ptr %newip, i32 3
  %24 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx10.i, align 4
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %8, align 4
  %arrayidx12.i = getelementptr i32, ptr %newip, i32 2
  %27 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx12.i, align 4
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %9, align 4
  %arrayidx14.i = getelementptr i32, ptr %newip, i32 1
  %30 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx14.i, align 4
  %32 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %10, align 4
  %33 = ptrtoint ptr %newip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %newip, align 4
  %35 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %11, align 4
  %call.i26 = call i32 @csum_partial(ptr noundef nonnull %diff.i24, i32 noundef 32, i32 noundef %call.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %diff.i24) #9
  %36 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i26) #12, !srcloc !87
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %oldip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %oldip, align 4
  %39 = ptrtoint ptr %newip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %newip, align 4
  %check7 = getelementptr inbounds %struct.tcphdr, ptr %tcph, i32 0, i32 6
  %41 = ptrtoint ptr %check7 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %check7, align 4
  %conv.i23 = zext i16 %42 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff.i29) #9
  %43 = getelementptr inbounds [2 x i16], ptr %diff.i29, i32 0, i32 1
  %neg.i30 = xor i16 %oldlen, -1
  %44 = ptrtoint ptr %diff.i29 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %neg.i30, ptr %diff.i29, align 2
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %newlen, ptr %43, align 2
  %call.i31 = call i32 @csum_partial(ptr noundef nonnull %diff.i29, i32 noundef 4, i32 noundef %conv.i23) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff.i29) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %diff.i32) #9
  %46 = getelementptr inbounds [2 x i32], ptr %diff.i32, i32 0, i32 1
  %neg.i33 = xor i32 %38, -1
  %47 = ptrtoint ptr %diff.i32 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %neg.i33, ptr %diff.i32, align 4
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %40, ptr %46, align 4
  %call.i34 = call i32 @csum_partial(ptr noundef nonnull %diff.i32, i32 noundef 8, i32 noundef %call.i31) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %diff.i32) #9
  %49 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i34) #12, !srcloc !87
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ %49, %if.else ], [ %36, %if.then ]
  %check7.sink = phi ptr [ %check7, %if.else ], [ %check, %if.then ]
  %neg.i35 = xor i32 %.sink, -1
  %shr.i36 = lshr i32 %neg.i35, 16
  %conv.i37 = trunc i32 %shr.i36 to i16
  %neg13 = xor i16 %conv.i37, -1
  %50 = ptrtoint ptr %check7.sink to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %neg13, ptr %check7.sink, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcp_fast_csum_update(i32 noundef %af, ptr nocapture noundef %tcph, ptr nocapture noundef readonly %oldip, ptr nocapture noundef readonly %newip, i16 noundef zeroext %oldport, i16 noundef zeroext %newport) unnamed_addr #5 align 64 {
entry:
  %diff.i29 = alloca [2 x i32], align 4
  %diff.i26 = alloca [2 x i16], align 2
  %diff.i21 = alloca [8 x i32], align 4
  %diff.i = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %af)
  %cmp = icmp eq i32 %af, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %check = getelementptr inbounds %struct.tcphdr, ptr %tcph, i32 0, i32 6
  %0 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %check, align 4
  %conv.i = zext i16 %1 to i32
  %neg = xor i32 %conv.i, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff.i) #9
  %2 = getelementptr inbounds [2 x i16], ptr %diff.i, i32 0, i32 1
  %neg.i = xor i16 %oldport, -1
  %3 = ptrtoint ptr %diff.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %neg.i, ptr %diff.i, align 2
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %newport, ptr %2, align 2
  %call.i = call i32 @csum_partial(ptr noundef nonnull %diff.i, i32 noundef 4, i32 noundef %neg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff.i) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %diff.i21) #9
  %5 = getelementptr inbounds [8 x i32], ptr %diff.i21, i32 0, i32 1
  %6 = getelementptr inbounds [8 x i32], ptr %diff.i21, i32 0, i32 2
  %7 = getelementptr inbounds [8 x i32], ptr %diff.i21, i32 0, i32 3
  %8 = getelementptr inbounds [8 x i32], ptr %diff.i21, i32 0, i32 4
  %9 = getelementptr inbounds [8 x i32], ptr %diff.i21, i32 0, i32 5
  %10 = getelementptr inbounds [8 x i32], ptr %diff.i21, i32 0, i32 6
  %11 = getelementptr inbounds [8 x i32], ptr %diff.i21, i32 0, i32 7
  %arrayidx.i = getelementptr i32, ptr %oldip, i32 3
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %neg.i22 = xor i32 %13, -1
  %14 = ptrtoint ptr %diff.i21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %neg.i22, ptr %diff.i21, align 4
  %arrayidx1.i = getelementptr i32, ptr %oldip, i32 2
  %15 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx1.i, align 4
  %neg2.i = xor i32 %16, -1
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %neg2.i, ptr %5, align 4
  %arrayidx4.i = getelementptr i32, ptr %oldip, i32 1
  %18 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx4.i, align 4
  %neg5.i = xor i32 %19, -1
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %neg5.i, ptr %6, align 4
  %21 = ptrtoint ptr %oldip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %oldip, align 4
  %neg8.i = xor i32 %22, -1
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %neg8.i, ptr %7, align 4
  %arrayidx10.i = getelementptr i32, ptr %newip, i32 3
  %24 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx10.i, align 4
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %8, align 4
  %arrayidx12.i = getelementptr i32, ptr %newip, i32 2
  %27 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx12.i, align 4
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %9, align 4
  %arrayidx14.i = getelementptr i32, ptr %newip, i32 1
  %30 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx14.i, align 4
  %32 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %10, align 4
  %33 = ptrtoint ptr %newip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %newip, align 4
  %35 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %11, align 4
  %call.i23 = call i32 @csum_partial(ptr noundef nonnull %diff.i21, i32 noundef 32, i32 noundef %call.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %diff.i21) #9
  %36 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i23) #12, !srcloc !87
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %oldip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %oldip, align 4
  %39 = ptrtoint ptr %newip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %newip, align 4
  %check6 = getelementptr inbounds %struct.tcphdr, ptr %tcph, i32 0, i32 6
  %41 = ptrtoint ptr %check6 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %check6, align 4
  %conv.i20 = zext i16 %42 to i32
  %neg8 = xor i32 %conv.i20, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff.i26) #9
  %43 = getelementptr inbounds [2 x i16], ptr %diff.i26, i32 0, i32 1
  %neg.i27 = xor i16 %oldport, -1
  %44 = ptrtoint ptr %diff.i26 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %neg.i27, ptr %diff.i26, align 2
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %newport, ptr %43, align 2
  %call.i28 = call i32 @csum_partial(ptr noundef nonnull %diff.i26, i32 noundef 4, i32 noundef %neg8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff.i26) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %diff.i29) #9
  %46 = getelementptr inbounds [2 x i32], ptr %diff.i29, i32 0, i32 1
  %neg.i30 = xor i32 %38, -1
  %47 = ptrtoint ptr %diff.i29 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %neg.i30, ptr %diff.i29, align 4
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %40, ptr %46, align 4
  %call.i31 = call i32 @csum_partial(ptr noundef nonnull %diff.i29, i32 noundef 8, i32 noundef %call.i28) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %diff.i29) #9
  %49 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i31) #12, !srcloc !87
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ %49, %if.else ], [ %36, %if.then ]
  %check6.sink = phi ptr [ %check6, %if.else ], [ %check, %if.then ]
  %neg.i32 = xor i32 %.sink, -1
  %shr.i33 = lshr i32 %neg.i32, 16
  %conv.i34 = trunc i32 %shr.i33 to i16
  %50 = ptrtoint ptr %check6.sink to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i34, ptr %check6.sink, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_get_debug_level() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_app_pkt_in(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_app_inc_get(ptr noundef) local_unnamed_addr #2

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !56, !57, !59, !61, !63, !65, !67, !68, !70, !71, !72, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 726, i32 12}
!2 = !{ptr @ip_vs_protocol_tcp, !3, !"ip_vs_protocol_tcp", i1 false, i1 false}
!3 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 725, i32 23}
!4 = !{ptr @tcp_timeouts, !5, !"tcp_timeouts", i1 false, i1 false}
!5 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 365, i32 18}
!6 = !{ptr @tcp_states, !7, !"tcp_states", i1 false, i1 false}
!7 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 439, i32 28}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 216, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @tcp_snat_handler._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @tcp_snat_handler._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 327, i32 5}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 428, i32 10}
!18 = distinct !{null, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 429, i32 69}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 381, i32 24}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 382, i32 30}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 383, i32 28}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 384, i32 28}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 385, i32 28}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 386, i32 29}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 387, i32 25}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 388, i32 29}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 389, i32 28}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 390, i32 26}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 391, i32 26}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 392, i32 24}
!44 = !{ptr @tcp_state_name_table, !45, !"tcp_state_name_table", i1 false, i1 false}
!45 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 380, i32 26}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 531, i32 3}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @set_tcp_state._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @set_tcp_state._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 542, i32 3}
!53 = !{ptr @set_tcp_state._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @set_tcp_state._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @tcp_state_off, !58, !"tcp_state_off", i1 false, i1 false}
!58 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 356, i32 18}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/net/ip_vs.h", i32 196, i32 46}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/net/ip_vs.h", i32 200, i32 46}
!63 = distinct !{null, !64, !"tcp_state_active_table", i1 false, i1 false}
!64 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 395, i32 19}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 665, i32 2}
!67 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 670, i32 4}
!70 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @tcp_app_conn_bind._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @tcp_app_conn_bind._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @tcp_states_dos, !74, !"tcp_states_dos", i1 false, i1 false}
!74 = !{!"../net/netfilter/ipvs/ip_vs_proto_tcp.c", i32 462, i32 28}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{!"auto-init"}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{!"branch_weights", i32 1, i32 2000}
!87 = !{i64 6469105}
!88 = !{i64 6470458, i64 6470498, i64 6470526, i64 6470571}
!89 = !{i64 2159084659, i64 2159085143, i64 2159084696, i64 2159084752, i64 2159084786, i64 2159084810, i64 2159084851, i64 2159084872, i64 2159084900, i64 2159084934}
!90 = !{i64 2148230462, i64 2148230488, i64 2148230517, i64 2148230551, i64 2148230582, i64 2148230605}
!91 = !{i64 2148227997, i64 2148228023, i64 2148228052, i64 2148228086, i64 2148228117, i64 2148228140}
!92 = !{i64 2149690025}
