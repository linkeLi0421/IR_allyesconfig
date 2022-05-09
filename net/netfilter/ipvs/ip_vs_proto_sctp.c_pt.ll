; ModuleID = '/llk/IR_all_yes/net/netfilter/ipvs/ip_vs_proto_sctp.c_pt.bc'
source_filename = "../net/netfilter/ipvs/ip_vs_proto_sctp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ip_vs_protocol = type { ptr, ptr, i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.skb_checksum_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.netns_ipvs = type { i32, i32, [16 x %struct.hlist_head], %struct.list_head, [32 x ptr], [16 x %struct.list_head], [16 x %struct.list_head], [16 x %struct.list_head], %struct.atomic_t, %struct.ip_vs_stats, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.delayed_work, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.spinlock, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.mutex, %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg, ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.ip_vs_stats = type { %struct.ip_vs_kstats, %struct.ip_vs_estimator, ptr, %struct.spinlock, %struct.ip_vs_kstats }
%struct.ip_vs_estimator = type { %struct.list_head, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ip_vs_kstats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ipvs_sync_daemon_cfg = type { %union.nf_inet_addr, i32, i16, i16, i8, i8, [16 x i8] }
%union.nf_inet_addr = type { [4 x i32] }
%struct.ip_vs_proto_data = type { ptr, ptr, ptr, %struct.atomic_t, ptr }
%struct.sctp_chunkhdr = type { i8, i8, i16 }
%struct.sctphdr = type { i16, i16, i32, i32 }
%struct.ip_vs_iphdr = type { i32, i32, i32, i16, i16, i32, %union.nf_inet_addr, %union.nf_inet_addr }
%struct.sk_buff = type { %union.anon.86, %union.anon.120, %union.anon.121, [48 x i8], %union.anon.122, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.124, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type { ptr, ptr, %union.anon.88 }
%union.anon.88 = type { ptr }
%union.anon.120 = type { ptr }
%union.anon.121 = type { i64 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, ptr }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.126, i32, i32, i32, i16, i16, %union.anon.128, i32, %union.anon.129, %union.anon.130, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.126 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ip_vs_conn = type { %struct.hlist_node, i16, i16, i16, i16, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, i32, i16, i16, ptr, %struct.refcount_struct, %struct.timer_list, i32, %struct.spinlock, i16, i16, i32, i32, ptr, %struct.atomic_t, ptr, %struct.atomic_t, ptr, ptr, ptr, %struct.ip_vs_seq, %struct.ip_vs_seq, ptr, ptr, i8, %struct.callback_head }
%struct.ip_vs_seq = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.89, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.119, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.89 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.119 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ip_vs_dest = type { %struct.list_head, %struct.hlist_node, i16, i16, %union.nf_inet_addr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i16, i16, i16, %struct.refcount_struct, %struct.ip_vs_stats, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, i16, i16, %union.nf_inet_addr, i32, %struct.list_head, i8 }
%struct.ip_vs_app = type { %struct.list_head, i32, ptr, i16, ptr, %struct.list_head, %struct.list_head, ptr, i16, %struct.atomic_t, %struct.callback_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SCTP\00", [27 x i8] zeroinitializer }, align 32
@ip_vs_protocol_sctp = dso_local global { %struct.ip_vs_protocol, [48 x i8] } { %struct.ip_vs_protocol { ptr null, ptr @.str, i16 132, i16 14, i32 0, ptr null, ptr null, ptr @__ip_vs_sctp_init, ptr @__ip_vs_sctp_exit, ptr @sctp_conn_schedule, ptr @ip_vs_conn_in_get_proto, ptr @ip_vs_conn_out_get_proto, ptr @sctp_snat_handler, ptr @sctp_dnat_handler, ptr @sctp_state_name, ptr @sctp_state_transition, ptr @sctp_register_app, ptr @sctp_unregister_app, ptr @sctp_app_conn_bind, ptr @ip_vs_tcpudp_debug_packet, ptr null }, [48 x i8] zeroinitializer }, align 32
@sctp_timeouts = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 200, i32 400, i32 6100, i32 6100, i32 6100, i32 6100, i32 6100, i32 6100, i32 90000, i32 6100, i32 6100, i32 6100, i32 400, i32 6100, i32 200], [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed checksum for\00", [44 x i8] zeroinitializer }, align 32
@sctp_csum_ops = internal constant { %struct.skb_checksum_ops, [24 x i8] } { %struct.skb_checksum_ops { ptr @sctp_csum_update, ptr @sctp_csum_combine }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ERR!\00", [27 x i8] zeroinitializer }, align 32
@sctp_state_name_table = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"INIT1\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INIT\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"C-SENT\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"C-REPLIED\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"C-WAIT\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"COOKIE\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"C-ECHOED\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ESTABLISHED\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"S-SENT\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"S-RECEIVED\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"S-ACK-SENT\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"REJECTED\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CLOSED\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BUG!\00", [27 x i8] zeroinitializer }, align 32
@sctp_events = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\00\01\02\00\00\00\09\05\06\08\03\04\00\00\07", [17 x i8] zeroinitializer }, align 32
@sctp_states = internal constant { [3 x [10 x [14 x i8]]], [124 x i8] } { [3 x [10 x [14 x i8]]] [[10 x [14 x i8]] [[14 x i8] c"\08\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D", [14 x i8] c"\01\02\02\03\04\05\06\07\08\09\0A\0B\02\02", [14 x i8] c"\05\05\05\03\04\06\06\07\08\09\0A\0B\0C\0D", [14 x i8] c"\04\02\02\04\04\05\06\07\08\09\0A\0B\0C\0D", [14 x i8] c"\08\01\02\03\04\05\06\08\08\09\0A\0B\0C\0D", [14 x i8] c"\0A\01\02\03\04\05\06\07\0A\09\0A\0B\0C\0D", [14 x i8] c"\0D\02\02\03\04\05\06\07\08\0D\0A\0D\0C\0D", [14 x i8] c"\0D\0D\0D\03\04\05\06\07\08\09\0A\0D\0C\0D", [14 x i8] c"\0D\01\02\03\04\05\06\0D\08\09\0A\0B\0C\0D", [14 x i8] c"\0D\0D\0D\0D\0D\0C\0D\0D\0D\0D\0D\0D\0D\0D"], [10 x [14 x i8]] [[14 x i8] c"\08\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D", [14 x i8] c"\05\05\05\05\05\05\05\05\08\05\05\05\05\05", [14 x i8] c"\03\03\03\03\04\05\06\07\08\09\0A\0B\0C\0D", [14 x i8] c"\07\07\07\07\07\07\07\07\08\09\0A\0B\0C\0D", [14 x i8] c"\08\08\08\08\08\08\08\08\08\09\0A\0B\0C\0D", [14 x i8] c"\09\09\09\09\09\09\09\09\09\09\0A\0B\0C\0D", [14 x i8] c"\0B\0B\0B\0B\0B\05\06\07\08\0B\0B\0B\0C\0D", [14 x i8] c"\0D\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D", [14 x i8] c"\0D\0D\0D\0D\0D\05\06\07\08\09\0A\0B\0C\0D", [14 x i8] c"\0D\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D"], [10 x [14 x i8]] [[14 x i8] c"\08\01\02\03\04\08\06\07\08\09\0A\0B\0C\0D", [14 x i8] c"\01\02\02\02\02\02\06\07\08\09\0A\0B\02\02", [14 x i8] c"\07\07\07\07\07\07\06\07\08\09\0A\0B\0C\0D", [14 x i8] c"\08\08\08\08\08\08\06\07\08\09\0A\0B\0C\0D", [14 x i8] c"\08\01\02\08\08\05\08\08\08\09\0A\0B\0C\0D", [14 x i8] c"\0A\01\02\03\04\05\06\07\0A\09\0A\0B\0C\0D", [14 x i8] c"\0D\02\02\03\04\05\06\07\0D\0D\0A\0D\0C\0D", [14 x i8] c"\0D\0D\0D\0D\0D\05\06\07\08\09\0D\0D\0C\0D", [14 x i8] c"\0D\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D", [14 x i8] c"\0D\0D\0D\0D\0D\0C\0D\0D\0D\0D\0D\0D\0D\0D"]], [124 x i8] zeroinitializer }, align 32
@set_sctp_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.22, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017%s %s  %s:%d->%s:%d state: %s->%s conn->refcnt:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set_sctp_state\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"net/netfilter/ipvs/ip_vs_proto_sctp.c\00", [58 x i8] zeroinitializer }, align 32
@set_sctp_state._entry_ptr = internal global ptr @set_sctp_state._entry, section ".printk_index", align 4
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"output \00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"input \00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[%pI6c]\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@sctp_app_conn_bind.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@sctp_app_conn_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.22, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s: Binding conn %s:%u->%s:%u to app %s on port %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sctp_app_conn_bind\00", [45 x i8] zeroinitializer }, align 32
@sctp_app_conn_bind._entry_ptr = internal global ptr @sctp_app_conn_bind._entry, section ".printk_index", align 4
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 575, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [20 x i8] c"ip_vs_protocol_sctp\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 574, i32 23 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"sctp_timeouts\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 331, i32 18 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 205, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"sctp_csum_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [31 x i8] c"../include/net/sctp/checksum.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 46, i32 38 }
@___asan_gen_.46 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1011, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 371, i32 10 }
@___asan_gen_.51 = private unnamed_addr constant [22 x i8] c"sctp_state_name_table\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 349, i32 20 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 350, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 351, i32 27 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 352, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 353, i32 32 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 354, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 355, i32 32 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 356, i32 28 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 357, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 358, i32 32 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 359, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 360, i32 37 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 361, i32 37 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 362, i32 30 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 363, i32 28 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 364, i32 26 }
@___asan_gen_.99 = private unnamed_addr constant [12 x i8] c"sctp_events\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 227, i32 13 }
@___asan_gen_.102 = private unnamed_addr constant [12 x i8] c"sctp_states\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 285, i32 19 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 439, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 196, i32 46 }
@___asan_gen_.127 = private unnamed_addr constant [23 x i8] c"../include/net/ip_vs.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 200, i32 46 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 532, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [41 x i8] c"../net/netfilter/ipvs/ip_vs_proto_sctp.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 537, i32 4 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @sctp_app_conn_bind._entry, ptr @sctp_app_conn_bind._entry_ptr, ptr @set_sctp_state._entry, ptr @set_sctp_state._entry_ptr, ptr @.str, ptr @ip_vs_protocol_sctp, ptr @sctp_timeouts, ptr @.str.1, ptr @sctp_csum_ops, ptr @.str.2, ptr @.str.3, ptr @sctp_state_name_table, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @sctp_events, ptr @sctp_states, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_protocol_sctp to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_timeouts to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_csum_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_state_name_table to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_events to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_states to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_sctp_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_app_conn_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__ip_vs_sctp_init(ptr noundef %ipvs, ptr nocapture noundef writeonly %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sctp_apps = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 7
  tail call void @ip_vs_init_hash_table(ptr noundef %sctp_apps, i32 noundef 16) #11
  %call = tail call ptr @ip_vs_create_timeout_table(ptr noundef nonnull @sctp_timeouts, i32 noundef 60) #11
  %timeout_table = getelementptr inbounds %struct.ip_vs_proto_data, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %timeout_table to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %timeout_table, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__ip_vs_sctp_exit(ptr nocapture noundef readnone %ipvs, ptr nocapture noundef readonly %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout_table = getelementptr inbounds %struct.ip_vs_proto_data, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %timeout_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timeout_table, align 4
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_conn_schedule(ptr noundef %ipvs, i32 noundef %af, ptr noundef %skb, ptr noundef %pd, ptr nocapture noundef writeonly %verdict, ptr nocapture noundef writeonly %cpp, ptr noundef %iph) #0 align 64 {
entry:
  %_schunkh = alloca %struct.sctp_chunkhdr, align 4
  %_sctph = alloca %struct.sctphdr, align 4
  %_ports = alloca [2 x i16], align 2
  %ignored = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_schunkh) #11
  %0 = ptrtoint ptr %_schunkh to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %_schunkh, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %_sctph) #11
  %1 = call ptr @memset(ptr %_sctph, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_ports) #11
  %2 = ptrtoint ptr %_ports to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %_ports, align 2, !annotation !81
  %3 = getelementptr inbounds [2 x i16], ptr %_ports, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !81
  %5 = ptrtoint ptr %iph to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iph, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %len = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  br i1 %tobool.i.not, label %if.then, label %if.end23, !prof !82

if.then:                                          ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i, align 8
  %13 = add i32 %8, %12
  %sub.i4.i = sub i32 %10, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 12
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !83

if.end.i.i:                                       ; preds = %if.then
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then25_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then25_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %8, ptr noundef nonnull %_sctph, i32 noundef 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then25_crit_edge, label %lor.lhs.false.i.i.if.then5_crit_edge

lor.lhs.false.i.i.if.then5_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

lor.lhs.false.i.i.if.then25_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

skb_header_pointer.exit:                          ; preds = %if.then
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %8
  %tobool4.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool4.not, label %skb_header_pointer.exit.if.then25_crit_edge, label %skb_header_pointer.exit.if.then5_crit_edge

skb_header_pointer.exit.if.then5_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

skb_header_pointer.exit.if.then25_crit_edge:      ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.then5:                                         ; preds = %skb_header_pointer.exit.if.then5_crit_edge, %lor.lhs.false.i.i.if.then5_crit_edge
  %retval.0.i.i123 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.then5_crit_edge ], [ %_sctph, %lor.lhs.false.i.i.if.then5_crit_edge ]
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %add = add i32 %17, 12
  %18 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i.i, align 4
  %20 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_len.i.i, align 8
  %22 = add i32 %19, -12
  %23 = add i32 %17, %21
  %sub.i4.i103 = sub i32 %22, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i103)
  %cmp.not.i.i104 = icmp slt i32 %sub.i4.i103, 4
  br i1 %cmp.not.i.i104, label %if.end.i.i109, label %skb_header_pointer.exit115, !prof !83

if.end.i.i109:                                    ; preds = %if.then5
  %tobool2.not.i.i108 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i108, label %if.end.i.i109.if.then25_crit_edge, label %lor.lhs.false.i.i113

if.end.i.i109.if.then25_crit_edge:                ; preds = %if.end.i.i109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

lor.lhs.false.i.i113:                             ; preds = %if.end.i.i109
  %call.i.i110 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef nonnull %_schunkh, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i110)
  %cmp3.i.i111 = icmp slt i32 %call.i.i110, 0
  br i1 %cmp3.i.i111, label %lor.lhs.false.i.i113.if.then25_crit_edge, label %lor.lhs.false.i.i113.if.then9_crit_edge

lor.lhs.false.i.i113.if.then9_crit_edge:          ; preds = %lor.lhs.false.i.i113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

lor.lhs.false.i.i113.if.then25_crit_edge:         ; preds = %lor.lhs.false.i.i113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

skb_header_pointer.exit115:                       ; preds = %if.then5
  %data.i105 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %24 = ptrtoint ptr %data.i105 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i105, align 4
  %add.ptr.i.i106 = getelementptr i8, ptr %25, i32 %add
  %tobool8.not = icmp eq ptr %add.ptr.i.i106, null
  br i1 %tobool8.not, label %skb_header_pointer.exit115.if.then25_crit_edge, label %skb_header_pointer.exit115.if.then9_crit_edge

skb_header_pointer.exit115.if.then9_crit_edge:    ; preds = %skb_header_pointer.exit115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

skb_header_pointer.exit115.if.then25_crit_edge:   ; preds = %skb_header_pointer.exit115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.then9:                                         ; preds = %skb_header_pointer.exit115.if.then9_crit_edge, %lor.lhs.false.i.i113.if.then9_crit_edge
  %retval.0.i.i114130 = phi ptr [ %add.ptr.i.i106, %skb_header_pointer.exit115.if.then9_crit_edge ], [ %_schunkh, %lor.lhs.false.i.i113.if.then9_crit_edge ]
  %26 = ptrtoint ptr %retval.0.i.i114130 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %retval.0.i.i114130, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %27)
  %cmp = icmp eq i8 %27, 6
  br i1 %cmp, label %if.then9.cleanup61_crit_edge, label %lor.lhs.false

if.then9.cleanup61_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup61

lor.lhs.false:                                    ; preds = %if.then9
  %sysctl_sloppy_sctp.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 44
  %28 = ptrtoint ptr %sysctl_sloppy_sctp.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sysctl_sloppy_sctp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool12.not = icmp ne i32 %29, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp16 = icmp eq i8 %27, 1
  %or.cond = select i1 %tobool12.not, i1 true, i1 %cmp16
  br i1 %or.cond, label %lor.lhs.false.if.end26_crit_edge, label %lor.lhs.false.cleanup61_crit_edge

lor.lhs.false.cleanup61_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup61

lor.lhs.false.if.end26_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end23:                                         ; preds = %entry
  %call22 = call fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %8, i32 noundef 4, ptr noundef nonnull %_ports)
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %if.end23.if.then25_crit_edge, label %if.end23.if.end26_crit_edge

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end23.if.then25_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.then25:                                        ; preds = %if.end23.if.then25_crit_edge, %skb_header_pointer.exit115.if.then25_crit_edge, %lor.lhs.false.i.i113.if.then25_crit_edge, %if.end.i.i109.if.then25_crit_edge, %skb_header_pointer.exit.if.then25_crit_edge, %lor.lhs.false.i.i.if.then25_crit_edge, %if.end.i.i.if.then25_crit_edge
  %30 = ptrtoint ptr %verdict to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %verdict, align 4
  br label %cleanup61

if.end26:                                         ; preds = %if.end23.if.end26_crit_edge, %lor.lhs.false.if.end26_crit_edge
  %ports.0137 = phi ptr [ %call22, %if.end23.if.end26_crit_edge ], [ %retval.0.i.i123, %lor.lhs.false.if.end26_crit_edge ]
  %31 = ptrtoint ptr %iph to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iph, align 4
  %and.i116 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116)
  %tobool.i117.not = icmp eq i32 %and.i116, 0
  %33 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %protocol = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 4
  %36 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %protocol, align 2
  br i1 %tobool.i117.not, label %if.then36, label %if.else38, !prof !82

if.then36:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %daddr = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7
  %arrayidx = getelementptr i16, ptr %ports.0137, i32 1
  br label %if.end42

if.else38:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %saddr = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 6
  br label %if.end42

if.end42:                                         ; preds = %if.else38, %if.then36
  %ports.0137.sink = phi ptr [ %ports.0137, %if.else38 ], [ %arrayidx, %if.then36 ]
  %saddr.sink = phi ptr [ %saddr, %if.else38 ], [ %daddr, %if.then36 ]
  %38 = ptrtoint ptr %ports.0137.sink to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ports.0137.sink, align 2
  %call41 = call ptr @ip_vs_service_find(ptr noundef %ipvs, i32 noundef %af, i32 noundef %35, i16 noundef zeroext %37, ptr noundef %saddr.sink, i16 noundef zeroext %39) #11
  %tobool43.not = icmp eq ptr %call41, null
  br i1 %tobool43.not, label %if.end42.cleanup61_crit_edge, label %if.then44

if.end42.cleanup61_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup61

if.then44:                                        ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ignored) #11
  %40 = ptrtoint ptr %ignored to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %ignored, align 4, !annotation !81
  %drop_rate.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 20
  %41 = ptrtoint ptr %drop_rate.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %drop_rate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i, label %if.then44.if.end48_crit_edge, label %ip_vs_todrop.exit

if.then44.if.end48_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

ip_vs_todrop.exit:                                ; preds = %if.then44
  %drop_counter.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 21
  %43 = ptrtoint ptr %drop_counter.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %drop_counter.i, align 4
  %dec.i = add i32 %44, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp sgt i32 %dec.i, 0
  %spec.store.select.i = select i1 %cmp.i, i32 %dec.i, i32 %42
  %45 = ptrtoint ptr %drop_counter.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %spec.store.select.i, ptr %drop_counter.i, align 4
  br i1 %cmp.i, label %ip_vs_todrop.exit.if.end48_crit_edge, label %if.then47

ip_vs_todrop.exit.if.end48_crit_edge:             ; preds = %ip_vs_todrop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then47:                                        ; preds = %ip_vs_todrop.exit
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %verdict to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %verdict, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ignored) #11
  br label %cleanup61

if.end48:                                         ; preds = %ip_vs_todrop.exit.if.end48_crit_edge, %if.then44.if.end48_crit_edge
  %call49 = call ptr @ip_vs_schedule(ptr noundef nonnull %call41, ptr noundef %skb, ptr noundef %pd, ptr noundef nonnull %ignored, ptr noundef %iph) #11
  %47 = ptrtoint ptr %cpp to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call49, ptr %cpp, align 4
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %land.lhs.true, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end48
  %48 = ptrtoint ptr %ignored to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ignored, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp51 = icmp slt i32 %49, 1
  br i1 %cmp51, label %if.then53, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool54.not = icmp eq i32 %49, 0
  br i1 %tobool54.not, label %if.then55, label %if.then53.if.end58_crit_edge

if.then53.if.end58_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then55:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  %call56 = call i32 @ip_vs_leave(ptr noundef nonnull %call41, ptr noundef %skb, ptr noundef %pd, ptr noundef %iph) #11
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.then53.if.end58_crit_edge
  %storemerge = phi i32 [ %call56, %if.then55 ], [ 0, %if.then53.if.end58_crit_edge ]
  %50 = ptrtoint ptr %verdict to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %storemerge, ptr %verdict, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ignored) #11
  br label %cleanup61

cleanup:                                          ; preds = %land.lhs.true.cleanup_crit_edge, %if.end48.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ignored) #11
  br label %cleanup61

cleanup61:                                        ; preds = %cleanup, %if.end58, %if.then47, %if.end42.cleanup61_crit_edge, %if.then25, %lor.lhs.false.cleanup61_crit_edge, %if.then9.cleanup61_crit_edge
  %retval.1 = phi i32 [ 0, %if.then25 ], [ 1, %if.then9.cleanup61_crit_edge ], [ 0, %if.end58 ], [ 0, %if.then47 ], [ 1, %cleanup ], [ 1, %if.end42.cleanup61_crit_edge ], [ 1, %lor.lhs.false.cleanup61_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_ports) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %_sctph) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_schunkh) #11
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_conn_in_get_proto(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_conn_out_get_proto(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_snat_handler(ptr noundef %skb, ptr noundef %pp, ptr noundef %cp, ptr noundef %iph) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fragoffs = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 3
  %4 = ptrtoint ptr %fragoffs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fragoffs, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup45_crit_edge

land.lhs.true.cleanup45_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %add = add i32 %1, 12
  %call = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %add) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup45_crit_edge

if.end.cleanup45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

if.end5:                                          ; preds = %if.end
  %app = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 25
  %6 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %app, align 4
  %cmp6.not = icmp eq ptr %7, null
  br i1 %cmp6.not, label %if.end5.if.end26_crit_edge, label %if.then10, !prof !82

if.end5.if.end26_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then10:                                        ; preds = %if.end5
  %8 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %af, align 2
  %conv12 = zext i16 %9 to i32
  %call13 = tail call fastcc i32 @sctp_csum_check(i32 noundef %conv12, ptr noundef %skb, ptr noundef %pp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then10.cleanup45_crit_edge, label %cleanup

if.then10.cleanup45_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

cleanup:                                          ; preds = %if.then10
  %call17 = tail call i32 @ip_vs_app_pkt_out(ptr noundef %cp, ptr noundef %skb, ptr noundef %iph) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call17)
  %cmp22 = icmp eq i32 %call17, 2
  br i1 %cmp18.not, label %cleanup.cleanup45_crit_edge, label %cleanup.if.end26_crit_edge

cleanup.if.end26_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

cleanup.cleanup45_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

if.end26:                                         ; preds = %cleanup.if.end26_crit_edge, %if.end5.if.end26_crit_edge
  %payload_csum.2.off0 = phi i1 [ %cmp22, %cleanup.if.end26_crit_edge ], [ false, %if.end5.if.end26_crit_edge ]
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %13 to i32
  %add.ptr.i = getelementptr i8, ptr %11, i32 %conv.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %1
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr, align 4
  %vport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 3
  %16 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vport, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp30.not = icmp ne i16 %15, %17
  %brmerge = select i1 %cmp30.not, i1 true, i1 %payload_csum.2.off0
  br i1 %brmerge, label %if.end26.if.then38_crit_edge, label %lor.lhs.false34

if.end26.if.then38_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38

lor.lhs.false34:                                  ; preds = %if.end26
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %18 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load = load i16, ptr %ip_summed, align 8
  %19 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %19)
  %cmp36 = icmp eq i16 %19, 1536
  br i1 %cmp36, label %lor.lhs.false34.if.then38_crit_edge, label %lor.lhs.false34.cleanup45.sink.split_crit_edge

lor.lhs.false34.cleanup45.sink.split_crit_edge:   ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45.sink.split

lor.lhs.false34.if.then38_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38

if.then38:                                        ; preds = %lor.lhs.false34.if.then38_crit_edge, %if.end26.if.then38_crit_edge
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %17, ptr %add.ptr, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 %1
  %checksum.i.i = getelementptr inbounds %struct.sctphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %checksum.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %checksum.i.i, align 4
  store i32 0, ptr %checksum.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %25 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i.i, align 4
  %sub.i.i = sub i32 %26, %1
  %call.i.i = tail call i32 @__skb_checksum(ptr noundef %skb, i32 noundef %1, i32 noundef %sub.i.i, i32 noundef -1, ptr noundef nonnull @sctp_csum_ops) #11
  %neg.i.i = xor i32 %call.i.i, -1
  %27 = ptrtoint ptr %checksum.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %checksum.i.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %neg.i.i) #11
  %checksum.i = getelementptr inbounds %struct.sctphdr, ptr %add.ptr, i32 0, i32 3
  %29 = ptrtoint ptr %checksum.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %checksum.i, align 4
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %30 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  br label %cleanup45.sink.split

cleanup45.sink.split:                             ; preds = %if.then38, %lor.lhs.false34.cleanup45.sink.split_crit_edge
  %bf.load.i.sink = phi i16 [ %bf.load.i, %if.then38 ], [ %bf.load, %lor.lhs.false34.cleanup45.sink.split_crit_edge ]
  %ip_summed.i.sink = phi ptr [ %ip_summed.i, %if.then38 ], [ %ip_summed, %lor.lhs.false34.cleanup45.sink.split_crit_edge ]
  %bf.clear.i = and i16 %bf.load.i.sink, -1537
  %bf.set.i = or i16 %bf.clear.i, 512
  %31 = ptrtoint ptr %ip_summed.i.sink to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %bf.set.i, ptr %ip_summed.i.sink, align 8
  br label %cleanup45

cleanup45:                                        ; preds = %cleanup45.sink.split, %cleanup.cleanup45_crit_edge, %if.then10.cleanup45_crit_edge, %if.end.cleanup45_crit_edge, %land.lhs.true.cleanup45_crit_edge
  %retval.1 = phi i32 [ 0, %cleanup.cleanup45_crit_edge ], [ 1, %land.lhs.true.cleanup45_crit_edge ], [ 0, %if.end.cleanup45_crit_edge ], [ 0, %if.then10.cleanup45_crit_edge ], [ 1, %cleanup45.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_dnat_handler(ptr noundef %skb, ptr noundef %pp, ptr noundef %cp, ptr noundef %iph) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fragoffs = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 3
  %4 = ptrtoint ptr %fragoffs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fragoffs, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup58_crit_edge

land.lhs.true.cleanup58_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup58

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %add = add i32 %1, 12
  %call = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %add) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup58_crit_edge

if.end.cleanup58_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup58

if.end5:                                          ; preds = %if.end
  %app = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 25
  %6 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %app, align 4
  %cmp6.not = icmp eq ptr %7, null
  br i1 %cmp6.not, label %if.end5.if.end26_crit_edge, label %if.then10, !prof !82

if.end5.if.end26_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then10:                                        ; preds = %if.end5
  %8 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %af, align 2
  %conv12 = zext i16 %9 to i32
  %call13 = tail call fastcc i32 @sctp_csum_check(i32 noundef %conv12, ptr noundef %skb, ptr noundef %pp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then10.cleanup58_crit_edge, label %cleanup

if.then10.cleanup58_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup58

cleanup:                                          ; preds = %if.then10
  %call17 = tail call i32 @ip_vs_app_pkt_in(ptr noundef %cp, ptr noundef %skb, ptr noundef %iph) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call17)
  %cmp22 = icmp eq i32 %call17, 2
  br i1 %cmp18.not, label %cleanup.cleanup58_crit_edge, label %cleanup.if.end26_crit_edge

cleanup.if.end26_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

cleanup.cleanup58_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup58

if.end26:                                         ; preds = %cleanup.if.end26_crit_edge, %if.end5.if.end26_crit_edge
  %payload_csum.2.off0 = phi i1 [ %cmp22, %cleanup.if.end26_crit_edge ], [ false, %if.end5.if.end26_crit_edge ]
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %13 to i32
  %add.ptr.i = getelementptr i8, ptr %11, i32 %conv.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %1
  %dest = getelementptr inbounds %struct.sctphdr, ptr %add.ptr, i32 0, i32 1
  %14 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dest, align 2
  %dport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 2
  %16 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %dport, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp30.not = icmp ne i16 %15, %17
  %brmerge = select i1 %cmp30.not, i1 true, i1 %payload_csum.2.off0
  br i1 %brmerge, label %if.end26.if.then41_crit_edge, label %lor.lhs.false34

if.end26.if.then41_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then41

lor.lhs.false34:                                  ; preds = %if.end26
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %18 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load = load i16, ptr %ip_summed, align 8
  %19 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %19)
  %cmp36 = icmp eq i16 %19, 1536
  br i1 %cmp36, label %land.lhs.true38, label %lor.lhs.false34.if.else_crit_edge

lor.lhs.false34.if.else_crit_edge:                ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true38:                                  ; preds = %lor.lhs.false34
  %20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true38.skb_dst.exit_crit_edge, label %land.lhs.true.i

land.lhs.true38.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %land.lhs.true38
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !83

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %land.lhs.true38.skb_dst.exit_crit_edge
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %20, align 8
  %and25.i = and i32 %24, -2
  %25 = inttoptr i32 %and25.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 23
  %28 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %features, align 16
  %and = and i64 %29, 68719476736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool40.not = icmp eq i64 %and, 0
  br i1 %tobool40.not, label %skb_dst.exit.if.then41_crit_edge, label %skb_dst.exit.if.else_crit_edge

skb_dst.exit.if.else_crit_edge:                   ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

skb_dst.exit.if.then41_crit_edge:                 ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then41

if.then41:                                        ; preds = %skb_dst.exit.if.then41_crit_edge, %if.end26.if.then41_crit_edge
  %30 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %dport, align 2
  %32 = ptrtoint ptr %dest to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %dest, align 2
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %33 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 %1
  %checksum.i.i = getelementptr inbounds %struct.sctphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %checksum.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %checksum.i.i, align 4
  store i32 0, ptr %checksum.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %37 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i.i, align 4
  %sub.i.i = sub i32 %38, %1
  %call.i.i = tail call i32 @__skb_checksum(ptr noundef %skb, i32 noundef %1, i32 noundef %sub.i.i, i32 noundef -1, ptr noundef nonnull @sctp_csum_ops) #11
  %neg.i.i = xor i32 %call.i.i, -1
  %39 = ptrtoint ptr %checksum.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %checksum.i.i, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %neg.i.i) #11
  %checksum.i = getelementptr inbounds %struct.sctphdr, ptr %add.ptr, i32 0, i32 3
  %41 = ptrtoint ptr %checksum.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %checksum.i, align 4
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %42 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  br label %cleanup58.sink.split

if.else:                                          ; preds = %skb_dst.exit.if.else_crit_edge, %lor.lhs.false34.if.else_crit_edge
  %43 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load45 = load i16, ptr %ip_summed, align 8
  %44 = and i16 %bf.load45, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %44)
  %cmp50.not = icmp eq i16 %44, 1536
  br i1 %cmp50.not, label %if.else.cleanup58_crit_edge, label %if.else.cleanup58.sink.split_crit_edge

if.else.cleanup58.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup58.sink.split

if.else.cleanup58_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup58

cleanup58.sink.split:                             ; preds = %if.else.cleanup58.sink.split_crit_edge, %if.then41
  %bf.load.i.sink = phi i16 [ %bf.load.i, %if.then41 ], [ %bf.load45, %if.else.cleanup58.sink.split_crit_edge ]
  %ip_summed.i.sink = phi ptr [ %ip_summed.i, %if.then41 ], [ %ip_summed, %if.else.cleanup58.sink.split_crit_edge ]
  %bf.clear.i = and i16 %bf.load.i.sink, -1537
  %bf.set.i = or i16 %bf.clear.i, 512
  %45 = ptrtoint ptr %ip_summed.i.sink to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %bf.set.i, ptr %ip_summed.i.sink, align 8
  br label %cleanup58

cleanup58:                                        ; preds = %cleanup58.sink.split, %if.else.cleanup58_crit_edge, %cleanup.cleanup58_crit_edge, %if.then10.cleanup58_crit_edge, %if.end.cleanup58_crit_edge, %land.lhs.true.cleanup58_crit_edge
  %retval.1 = phi i32 [ 0, %cleanup.cleanup58_crit_edge ], [ 1, %land.lhs.true.cleanup58_crit_edge ], [ 0, %if.end.cleanup58_crit_edge ], [ 1, %if.else.cleanup58_crit_edge ], [ 0, %if.then10.cleanup58_crit_edge ], [ 1, %cleanup58.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @sctp_state_name(i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %state)
  %cmp = icmp sgt i32 %state, 13
  br i1 %cmp, label %entry.return_crit_edge, label %if.then1

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [15 x ptr], ptr @sctp_state_name_table, i32 0, i32 %state
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.then1, %entry.return_crit_edge
  %retval.0 = phi ptr [ %1, %if.then1 ], [ @.str.3, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_state_transition(ptr noundef %cp, i32 noundef %direction, ptr noundef %skb, ptr noundef readonly %pd) #0 align 64 {
entry:
  %_sctpch.i = alloca %struct.sctp_chunkhdr, align 4
  %ip_vs_dbg_buf.i = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 15
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_sctpch.i) #11
  %af.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %0 = ptrtoint ptr %_sctpch.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %_sctpch.i, align 4
  %1 = ptrtoint ptr %af.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %af.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %2)
  %cmp.i = icmp eq i16 %2, 2
  br i1 %cmp.i, label %cond.true.i, label %entry.cond.end.i_crit_edge

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %5 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %6 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %4, i32 %conv.i.i.i.i
  %7 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i.i = load i8, ptr %add.ptr.i.i.i.i, align 4
  %bf.clear.i.i = shl i8 %bf.load.i.i, 2
  %8 = and i8 %bf.clear.i.i, 60
  %mul.i.i = zext i8 %8 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %entry.cond.end.i_crit_edge
  %cond.i = phi i32 [ %mul.i.i, %cond.true.i ], [ 40, %entry.cond.end.i_crit_edge ]
  %add.i = add nuw nsw i32 %cond.i, 12
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i.i, align 8
  %13 = add i32 %10, -12
  %14 = add i32 %cond.i, %12
  %sub.i4.i.i = sub i32 %13, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i.i)
  %cmp.not.i.i.i = icmp slt i32 %sub.i4.i.i, 4
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %skb_header_pointer.exit.i, !prof !83

if.end.i.i.i:                                     ; preds = %cond.end.i
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.set_sctp_state.exit_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.set_sctp_state.exit_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sctp_state.exit

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i187.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add.i, ptr noundef nonnull %_sctpch.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i187.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i187.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.set_sctp_state.exit_crit_edge, label %lor.lhs.false.i.i.i.if.end.i_crit_edge

lor.lhs.false.i.i.i.if.end.i_crit_edge:           ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

lor.lhs.false.i.i.i.set_sctp_state.exit_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sctp_state.exit

skb_header_pointer.exit.i:                        ; preds = %cond.end.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 %add.i
  %cmp3.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %cmp3.i, label %skb_header_pointer.exit.i.set_sctp_state.exit_crit_edge, label %skb_header_pointer.exit.i.if.end.i_crit_edge

skb_header_pointer.exit.i.if.end.i_crit_edge:     ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

skb_header_pointer.exit.i.set_sctp_state.exit_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sctp_state.exit

if.end.i:                                         ; preds = %skb_header_pointer.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.i.i.if.end.i_crit_edge
  %retval.0.i.i229.i = phi ptr [ %add.ptr.i.i.i, %skb_header_pointer.exit.i.if.end.i_crit_edge ], [ %_sctpch.i, %lor.lhs.false.i.i.i.if.end.i_crit_edge ]
  %17 = ptrtoint ptr %retval.0.i.i229.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %retval.0.i.i229.i, align 2
  %19 = and i8 %18, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %19)
  %switch.i = icmp eq i8 %19, 10
  br i1 %switch.i, label %if.then13.i, label %if.end29.i

if.then13.i:                                      ; preds = %if.end.i
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %retval.0.i.i229.i, i32 0, i32 2
  %20 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %length.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %21)
  %cmp15.i = icmp ugt i16 %21, 3
  br i1 %cmp15.i, label %if.then17.i, label %if.then13.i.cond.true33.i_crit_edge

if.then13.i.cond.true33.i_crit_edge:              ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true33.i

if.then17.i:                                      ; preds = %if.then13.i
  %conv14.i = zext i16 %21 to i32
  %add18.i = add nuw nsw i32 %conv14.i, 3
  %and.i = and i32 %add18.i, 131068
  %add19.i = add nuw nsw i32 %and.i, %add.i
  %22 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i.i.i, align 4
  %24 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i.i.i, align 8
  %26 = add i32 %add19.i, %25
  %sub.i4.i190.i = sub i32 %23, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i190.i)
  %cmp.not.i.i191.i = icmp slt i32 %sub.i4.i190.i, 4
  br i1 %cmp.not.i.i191.i, label %if.end.i.i196.i, label %skb_header_pointer.exit202.i, !prof !83

if.end.i.i196.i:                                  ; preds = %if.then17.i
  %tobool2.not.i.i195.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i195.i, label %if.end.i.i196.i.cond.true33.i_crit_edge, label %lor.lhs.false.i.i200.i

if.end.i.i196.i.cond.true33.i_crit_edge:          ; preds = %if.end.i.i196.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true33.i

lor.lhs.false.i.i200.i:                           ; preds = %if.end.i.i196.i
  %call.i.i197.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add19.i, ptr noundef nonnull %_sctpch.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i197.i)
  %cmp3.i.i198.i = icmp slt i32 %call.i.i197.i, 0
  br i1 %cmp3.i.i198.i, label %lor.lhs.false.i.i200.i.cond.true33.i_crit_edge, label %lor.lhs.false.i.i200.i.land.lhs.true.i_crit_edge

lor.lhs.false.i.i200.i.land.lhs.true.i_crit_edge: ; preds = %lor.lhs.false.i.i200.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

lor.lhs.false.i.i200.i.cond.true33.i_crit_edge:   ; preds = %lor.lhs.false.i.i200.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true33.i

skb_header_pointer.exit202.i:                     ; preds = %if.then17.i
  %data.i192.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data.i192.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i192.i, align 4
  %add.ptr.i.i193.i = getelementptr i8, ptr %28, i32 %add19.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i193.i, null
  br i1 %tobool.not.i, label %skb_header_pointer.exit202.i.cond.true33.i_crit_edge, label %skb_header_pointer.exit202.i.land.lhs.true.i_crit_edge

skb_header_pointer.exit202.i.land.lhs.true.i_crit_edge: ; preds = %skb_header_pointer.exit202.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

skb_header_pointer.exit202.i.cond.true33.i_crit_edge: ; preds = %skb_header_pointer.exit202.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true33.i

land.lhs.true.i:                                  ; preds = %skb_header_pointer.exit202.i.land.lhs.true.i_crit_edge, %lor.lhs.false.i.i200.i.land.lhs.true.i_crit_edge
  %retval.0.i.i201236.i = phi ptr [ %add.ptr.i.i193.i, %skb_header_pointer.exit202.i.land.lhs.true.i_crit_edge ], [ %_sctpch.i, %lor.lhs.false.i.i200.i.land.lhs.true.i_crit_edge ]
  %29 = ptrtoint ptr %retval.0.i.i201236.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %retval.0.i.i201236.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %30)
  %cmp23.i = icmp eq i8 %30, 6
  %spec.select.i = select i1 %cmp23.i, i8 6, i8 %18
  br label %cond.true33.i

if.end29.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %18)
  %cmp31.i = icmp ult i8 %18, 15
  br i1 %cmp31.i, label %if.end29.i.cond.true33.i_crit_edge, label %if.end29.i.cond.end36.i_crit_edge

if.end29.i.cond.end36.i_crit_edge:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end36.i

if.end29.i.cond.true33.i_crit_edge:               ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true33.i

cond.true33.i:                                    ; preds = %if.end29.i.cond.true33.i_crit_edge, %land.lhs.true.i, %skb_header_pointer.exit202.i.cond.true33.i_crit_edge, %lor.lhs.false.i.i200.i.cond.true33.i_crit_edge, %if.end.i.i196.i.cond.true33.i_crit_edge, %if.then13.i.cond.true33.i_crit_edge
  %chunk_type.1240.i = phi i8 [ %18, %if.end29.i.cond.true33.i_crit_edge ], [ %18, %if.then13.i.cond.true33.i_crit_edge ], [ %18, %skb_header_pointer.exit202.i.cond.true33.i_crit_edge ], [ %18, %if.end.i.i196.i.cond.true33.i_crit_edge ], [ %18, %lor.lhs.false.i.i200.i.cond.true33.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %conv30.i = zext i8 %chunk_type.1240.i to i32
  %arrayidx.i = getelementptr [15 x i8], ptr @sctp_events, i32 0, i32 %conv30.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i, align 1
  %conv34.i = zext i8 %32 to i32
  br label %cond.end36.i

cond.end36.i:                                     ; preds = %cond.true33.i, %if.end29.i.cond.end36.i_crit_edge
  %cond37.i = phi i32 [ %conv34.i, %cond.true33.i ], [ 0, %if.end29.i.cond.end36.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags.i, align 4
  %and38.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %cond.end36.i.if.end47.i_crit_edge, label %if.then40.i

cond.end36.i.if.end47.i_crit_edge:                ; preds = %cond.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47.i

if.then40.i:                                      ; preds = %cond.end36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp41.i = icmp eq i32 %direction, 1
  br i1 %cmp41.i, label %if.then43.i, label %if.then40.i.if.end47.i_crit_edge

if.then40.i.if.end47.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47.i

if.then43.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags.i, align 4
  %and45.i = and i32 %36, -129
  store volatile i32 %and45.i, ptr %flags.i, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then43.i, %if.then40.i.if.end47.i_crit_edge, %cond.end36.i.if.end47.i_crit_edge
  %direction.addr.0.i = phi i32 [ 1, %if.then43.i ], [ %direction, %cond.end36.i.if.end47.i_crit_edge ], [ 2, %if.then40.i.if.end47.i_crit_edge ]
  %state.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 16
  %37 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load volatile i16, ptr %state.i, align 4
  %idxprom50.i = zext i16 %38 to i32
  %arrayidx51.i = getelementptr [3 x [10 x [14 x i8]]], ptr @sctp_states, i32 0, i32 %direction.addr.0.i, i32 %cond37.i, i32 %idxprom50.i
  %39 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx51.i, align 1
  %conv52.i = zext i8 %40 to i32
  %41 = load volatile i16, ptr %state.i, align 4
  %42 = zext i8 %40 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %42)
  %cmp55.not.i = icmp eq i16 %41, %42
  br i1 %cmp55.not.i, label %if.end47.i.if.end113.i_crit_edge, label %if.then57.i

if.end47.i.if.end113.i_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113.i

if.then57.i:                                      ; preds = %if.end47.i
  %dest58.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 22
  %43 = ptrtoint ptr %dest58.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dest58.i, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf.i) #11
  %45 = call ptr @memset(ptr %ip_vs_dbg_buf.i, i32 255, i32 160)
  %call59.i = call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call59.i)
  %cmp60.i = icmp sgt i32 %call59.i, 7
  br i1 %cmp60.i, label %do.end.i, label %if.then57.i.if.end81.i_crit_edge

if.then57.i.if.end81.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81.i

do.end.i:                                         ; preds = %if.then57.i
  %pp.i = getelementptr inbounds %struct.ip_vs_proto_data, ptr %pd, i32 0, i32 1
  %46 = ptrtoint ptr %pp.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pp.i, align 4
  %name.i = getelementptr inbounds %struct.ip_vs_protocol, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction.addr.0.i)
  %cmp64.i = icmp eq i32 %direction.addr.0.i, 1
  %cond66.i = select i1 %cmp64.i, ptr @.str.23, ptr @.str.24
  %daf.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 10
  %50 = ptrtoint ptr %daf.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %daf.i, align 2
  %daddr.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %51)
  %cmp.i.i = icmp eq i16 %51, 10
  %.str.25..str.26.i.i = select i1 %cmp.i.i, ptr @.str.25, ptr @.str.26
  %call3.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf.i, i32 noundef 160, ptr noundef nonnull %.str.25..str.26.i.i, ptr noundef %daddr.i) #11
  %len.0.i.i = add i32 %call3.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i.i)
  %cmp7.i.i = icmp ugt i32 %len.0.i.i, 161
  br i1 %cmp7.i.i, label %do.body10.i.i, label %ip_vs_dbg_addr.exit.i, !prof !83

do.body10.i.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #11, !srcloc !84
  unreachable

ip_vs_dbg_addr.exit.i:                            ; preds = %do.end.i
  %dport.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 2
  %52 = ptrtoint ptr %dport.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %dport.i, align 2
  %conv69.i = zext i16 %53 to i32
  %54 = ptrtoint ptr %af.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %af.i, align 2
  %caddr.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %55)
  %cmp.i203.i = icmp eq i16 %55, 10
  %arrayidx.i204.i = getelementptr i8, ptr %ip_vs_dbg_buf.i, i32 %len.0.i.i
  %sub.i205.i = sub nsw i32 159, %call3.i.i
  %.str.25..str.26.i206.i = select i1 %cmp.i203.i, ptr @.str.25, ptr @.str.26
  %call3.i207.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i204.i, i32 noundef %sub.i205.i, ptr noundef nonnull %.str.25..str.26.i206.i, ptr noundef %caddr.i) #11
  %len.0.i208.i = add nsw i32 %call3.i.i, 2
  %add5.i209.i = add i32 %len.0.i208.i, %call3.i207.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i209.i)
  %cmp7.i210.i = icmp ugt i32 %add5.i209.i, 161
  br i1 %cmp7.i210.i, label %do.body10.i211.i, label %ip_vs_dbg_addr.exit213.i, !prof !83

do.body10.i211.i:                                 ; preds = %ip_vs_dbg_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #11, !srcloc !84
  unreachable

ip_vs_dbg_addr.exit213.i:                         ; preds = %ip_vs_dbg_addr.exit.i
  %cport.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 1
  %56 = ptrtoint ptr %cport.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %cport.i, align 4
  %conv74.i = zext i16 %57 to i32
  %58 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load volatile i16, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %59)
  %cmp.i214.i = icmp ugt i16 %59, 13
  br i1 %cmp.i214.i, label %ip_vs_dbg_addr.exit213.i.sctp_state_name.exit.i_crit_edge, label %if.then1.i.i

ip_vs_dbg_addr.exit213.i.sctp_state_name.exit.i_crit_edge: ; preds = %ip_vs_dbg_addr.exit213.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_state_name.exit.i

if.then1.i.i:                                     ; preds = %ip_vs_dbg_addr.exit213.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv76.i = zext i16 %59 to i32
  %arrayidx.i215.i = getelementptr [15 x ptr], ptr @sctp_state_name_table, i32 0, i32 %conv76.i
  %60 = ptrtoint ptr %arrayidx.i215.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i215.i, align 4
  br label %sctp_state_name.exit.i

sctp_state_name.exit.i:                           ; preds = %if.then1.i.i, %ip_vs_dbg_addr.exit213.i.sctp_state_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %61, %if.then1.i.i ], [ @.str.3, %ip_vs_dbg_addr.exit213.i.sctp_state_name.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %40)
  %cmp.i216.i = icmp ugt i8 %40, 13
  br i1 %cmp.i216.i, label %sctp_state_name.exit.i.sctp_state_name.exit220.i_crit_edge, label %if.then1.i218.i

sctp_state_name.exit.i.sctp_state_name.exit220.i_crit_edge: ; preds = %sctp_state_name.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_state_name.exit220.i

if.then1.i218.i:                                  ; preds = %sctp_state_name.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i217.i = getelementptr [15 x ptr], ptr @sctp_state_name_table, i32 0, i32 %conv52.i
  %62 = ptrtoint ptr %arrayidx.i217.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i217.i, align 4
  br label %sctp_state_name.exit220.i

sctp_state_name.exit220.i:                        ; preds = %if.then1.i218.i, %sctp_state_name.exit.i.sctp_state_name.exit220.i_crit_edge
  %retval.0.i219.i = phi ptr [ %63, %if.then1.i218.i ], [ @.str.3, %sctp_state_name.exit.i.sctp_state_name.exit220.i_crit_edge ]
  %refcnt.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 12
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #11
  %64 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %refcnt.i, align 4
  %call80.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %49, ptr noundef nonnull %cond66.i, ptr noundef nonnull %ip_vs_dbg_buf.i, i32 noundef %conv69.i, ptr noundef %arrayidx.i204.i, i32 noundef %conv74.i, ptr noundef %retval.0.i.i, ptr noundef %retval.0.i219.i, i32 noundef %65) #14
  br label %if.end81.i

if.end81.i:                                       ; preds = %sctp_state_name.exit220.i, %if.then57.i.if.end81.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf.i) #11
  %tobool84.not.i = icmp eq ptr %44, null
  br i1 %tobool84.not.i, label %if.end81.i.if.end108.i_crit_edge, label %if.then85.i

if.end81.i.if.end108.i_crit_edge:                 ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108.i

if.then85.i:                                      ; preds = %if.end81.i
  %66 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %flags.i, align 4
  %and87.i = and i32 %67, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp ne i32 %and87.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %40)
  %cmp90.not.i = icmp eq i8 %40, 8
  %or.cond.i = select i1 %tobool88.not.i, i1 true, i1 %cmp90.not.i
  br i1 %or.cond.i, label %if.else94.i, label %if.end108.thread242.i

if.end108.thread242.i:                            ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #13
  %activeconns.i = getelementptr inbounds %struct.ip_vs_dest, ptr %44, i32 0, i32 15
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %activeconns.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %activeconns.i, i32 1, i32 3, i32 1) #11
  %68 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %activeconns.i, ptr %activeconns.i, i32 1, ptr elementtype(i32) %activeconns.i) #11, !srcloc !85
  %inactconns.i = getelementptr inbounds %struct.ip_vs_dest, ptr %44, i32 0, i32 16
  %call.i.i184.i = call zeroext i1 @__kasan_check_write(ptr noundef %inactconns.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %inactconns.i, i32 1, i32 3, i32 1) #11
  %69 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inactconns.i, ptr %inactconns.i, i32 1, ptr elementtype(i32) %inactconns.i) #11, !srcloc !86
  %70 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %flags.i, align 4
  %or.i = or i32 %71, 256
  store volatile i32 %or.i, ptr %flags.i, align 4
  br label %if.end113.i

if.else94.i:                                      ; preds = %if.then85.i
  %72 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %flags.i, align 4
  %and96.i = and i32 %73, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.i)
  %tobool97.not.i = icmp ne i32 %and96.i, 0
  %or.cond183.i = select i1 %tobool97.not.i, i1 %cmp90.not.i, i1 false
  br i1 %or.cond183.i, label %if.end108.thread.i, label %if.else94.i.if.end108.i_crit_edge

if.else94.i.if.end108.i_crit_edge:                ; preds = %if.else94.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108.i

if.end108.thread.i:                               ; preds = %if.else94.i
  call void @__sanitizer_cov_trace_pc() #13
  %activeconns102.i = getelementptr inbounds %struct.ip_vs_dest, ptr %44, i32 0, i32 15
  %call.i.i185.i = call zeroext i1 @__kasan_check_write(ptr noundef %activeconns102.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %activeconns102.i, i32 1, i32 3, i32 1) #11
  %74 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %activeconns102.i, ptr %activeconns102.i, i32 1, ptr elementtype(i32) %activeconns102.i) #11, !srcloc !86
  %inactconns103.i = getelementptr inbounds %struct.ip_vs_dest, ptr %44, i32 0, i32 16
  %call.i.i186.i = call zeroext i1 @__kasan_check_write(ptr noundef %inactconns103.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %inactconns103.i, i32 1, i32 3, i32 1) #11
  %75 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inactconns103.i, ptr %inactconns103.i, i32 1, ptr elementtype(i32) %inactconns103.i) #11, !srcloc !85
  %76 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %flags.i, align 4
  %and105.i = and i32 %77, -257
  store volatile i32 %and105.i, ptr %flags.i, align 4
  br label %if.then111.i

if.end108.i:                                      ; preds = %if.else94.i.if.end108.i_crit_edge, %if.end81.i.if.end108.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %40)
  %cmp109.i = icmp eq i8 %40, 8
  br i1 %cmp109.i, label %if.end108.i.if.then111.i_crit_edge, label %if.end108.i.if.end113.i_crit_edge

if.end108.i.if.end113.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113.i

if.end108.i.if.then111.i_crit_edge:               ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then111.i

if.then111.i:                                     ; preds = %if.end108.i.if.then111.i_crit_edge, %if.end108.thread.i
  %control.i.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 20
  %78 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %control.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %79, null
  br i1 %tobool.not.i.i, label %if.then111.i.if.end113.i_crit_edge, label %land.lhs.true.i.i

if.then111.i.if.end113.i_crit_edge:               ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113.i

land.lhs.true.i.i:                                ; preds = %if.then111.i
  %state.i.i = getelementptr inbounds %struct.ip_vs_conn, ptr %79, i32 0, i32 16
  %80 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load volatile i16, ptr %state.i.i, align 4
  %82 = and i16 %81, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool1.not.i.i = icmp eq i16 %82, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true2.i.i, label %land.lhs.true.i.i.if.end113.i_crit_edge

land.lhs.true.i.i.if.end113.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %flags.i.i = getelementptr inbounds %struct.ip_vs_conn, ptr %79, i32 0, i32 8
  %83 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %flags.i.i, align 4
  %and3.i.i = and i32 %84, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true2.i.i.if.end113.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.if.end113.i_crit_edge:         ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load volatile i16, ptr %state.i.i, align 4
  %87 = or i16 %86, 1
  store volatile i16 %87, ptr %state.i.i, align 4
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.then.i.i, %land.lhs.true2.i.i.if.end113.i_crit_edge, %land.lhs.true.i.i.if.end113.i_crit_edge, %if.then111.i.if.end113.i_crit_edge, %if.end108.i.if.end113.i_crit_edge, %if.end108.thread242.i, %if.end47.i.if.end113.i_crit_edge
  %tobool114.not.i = icmp eq ptr %pd, null
  br i1 %tobool114.not.i, label %if.else122.i, label %if.then117.i, !prof !83

if.then117.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #13
  %timeout_table.i = getelementptr inbounds %struct.ip_vs_proto_data, ptr %pd, i32 0, i32 2
  %88 = ptrtoint ptr %timeout_table.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %timeout_table.i, align 4
  %90 = ptrtoint ptr %state.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store volatile i16 %42, ptr %state.i, align 4
  %arrayidx121.i = getelementptr i32, ptr %89, i32 %conv52.i
  br label %cleanup.sink.split.i

if.else122.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %state.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store volatile i16 %42, ptr %state.i, align 4
  %arrayidx126.i = getelementptr [15 x i32], ptr @sctp_timeouts, i32 0, i32 %conv52.i
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else122.i, %if.then117.i
  %arrayidx121.sink.i = phi ptr [ %arrayidx121.i, %if.then117.i ], [ %arrayidx126.i, %if.else122.i ]
  %92 = ptrtoint ptr %arrayidx121.sink.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx121.sink.i, align 4
  %timeout.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 14
  %94 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 %93, ptr %timeout.i, align 4
  br label %set_sctp_state.exit

set_sctp_state.exit:                              ; preds = %cleanup.sink.split.i, %skb_header_pointer.exit.i.set_sctp_state.exit_crit_edge, %lor.lhs.false.i.i.i.set_sctp_state.exit_crit_edge, %if.end.i.i.i.set_sctp_state.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_sctpch.i) #11
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_register_app(ptr noundef %ipvs, ptr noundef %inc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.ip_vs_app, ptr %inc, i32 0, i32 8
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %port1, align 4
  %call = tail call ptr @ip_vs_proto_data_get(ptr noundef %ipvs, i16 noundef zeroext 132) #11
  %2 = lshr i16 %1, 4
  %xor.i = xor i16 %2, %1
  %and.i = and i16 %xor.i, 15
  %idxprom = zext i16 %and.i to i32
  %arrayidx = getelementptr %struct.netns_ipvs, ptr %ipvs, i32 0, i32 7, i32 %idxprom
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.end:                                          ; preds = %for.cond
  %p_list15 = getelementptr inbounds %struct.ip_vs_app, ptr %inc, i32 0, i32 6
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i.i28 = tail call zeroext i1 @__list_add_valid(ptr noundef %p_list15, ptr noundef %arrayidx, ptr noundef %7) #11
  br i1 %call.i.i28, label %if.end.i.i, label %for.end.list_add_rcu.exit_crit_edge

for.end.list_add_rcu.exit_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_rcu.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %p_list15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %p_list15, align 4
  %prev2.i.i = getelementptr inbounds %struct.ip_vs_app, ptr %inc, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !87
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
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %appcnt, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %appcnt, i32 1, i32 3, i32 1) #11
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %appcnt, ptr %appcnt, i32 1, ptr elementtype(i32) %appcnt) #11, !srcloc !86
  br label %out

out:                                              ; preds = %list_add_rcu.exit, %for.body.out_crit_edge
  %ret.0 = phi i32 [ 0, %list_add_rcu.exit ], [ -17, %for.body.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_unregister_app(ptr noundef %ipvs, ptr noundef %inc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ip_vs_proto_data_get(ptr noundef %ipvs, i16 noundef zeroext 132) #11
  %appcnt = getelementptr inbounds %struct.ip_vs_proto_data, ptr %call, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %appcnt, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %appcnt, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %appcnt, ptr %appcnt, i32 1, ptr elementtype(i32) %appcnt) #11, !srcloc !85
  %p_list = getelementptr inbounds %struct.ip_vs_app, ptr %inc, i32 0, i32 6
  %call.i.i1 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p_list) #11
  br i1 %call.i.i1, label %if.end.i.i, label %entry.list_del_rcu.exit_crit_edge

entry.list_del_rcu.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
define internal i32 @sctp_app_conn_bind(ptr noundef %cp) #0 align 64 {
entry:
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
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
  %call2 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b94 = load i1, ptr @sctp_app_conn_bind.__warned, align 1
  br i1 %.b94, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @sctp_app_conn_bind.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 532, ptr noundef nonnull @.str.27) #11
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %arrayidx = getelementptr %struct.netns_ipvs, ptr %1, i32 0, i32 7, i32 %conv
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %arrayidx, %do.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %7 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp15.not = icmp eq ptr %.pn, %arrayidx
  br i1 %cmp15.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then22:                                        ; preds = %for.body
  %port.le = getelementptr i8, ptr %.pn, i32 12
  %inc.0.le = getelementptr i8, ptr %.pn, i32 -32
  %call23 = tail call i32 @ip_vs_app_inc_get(ptr noundef %inc.0.le) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.cleanup_crit_edge, label %do.body30, !prof !83

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body30:                                        ; preds = %if.then22
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #11
  %12 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call31 = tail call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call31)
  %cmp32 = icmp sgt i32 %call31, 8
  br i1 %cmp32, label %do.end37, label %do.body30.if.end51_crit_edge

do.body30.if.end51_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

do.end37:                                         ; preds = %do.body30
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %13 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %af, align 2
  %caddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %14)
  %cmp.i = icmp eq i16 %14, 10
  %.str.25..str.26.i = select i1 %cmp.i, ptr @.str.25, ptr @.str.26
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.25..str.26.i, ptr noundef %caddr) #11
  %len.0.i = add i32 %call3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i)
  %cmp7.i = icmp ugt i32 %len.0.i, 161
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !83

do.body10.i:                                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #11, !srcloc !84
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
  %.str.25..str.26.i98 = select i1 %cmp.i95, ptr @.str.25, ptr @.str.26
  %call3.i99 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i96, i32 noundef %sub.i97, ptr noundef nonnull %.str.25..str.26.i98, ptr noundef %vaddr) #11
  %len.0.i100 = add nsw i32 %call3.i, 2
  %add5.i101 = add i32 %len.0.i100, %call3.i99
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i101)
  %cmp7.i102 = icmp ugt i32 %add5.i101, 161
  br i1 %cmp7.i102, label %do.body10.i103, label %ip_vs_dbg_addr.exit105, !prof !83

do.body10.i103:                                   ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #11, !srcloc !84
  unreachable

ip_vs_dbg_addr.exit105:                           ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
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
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef %conv41, ptr noundef %arrayidx.i96, i32 noundef %conv47, ptr noundef %22, i32 noundef %conv49) #14
  br label %if.end51

if.end51:                                         ; preds = %ip_vs_dbg_addr.exit105, %do.body30.if.end51_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %call57 = call i32 %27(ptr noundef %inc.0.le, ptr noundef %cp) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end51.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then22.cleanup_crit_edge ], [ %call57, %if.then55 ], [ 0, %if.end51.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_tcpudp_debug_packet(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_init_hash_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_create_timeout_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %offset, i32 noundef %len, ptr noundef %buffer) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !83

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_header_pointer.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset, ptr noundef %buffer, i32 noundef %len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp3.i, ptr null, ptr %buffer, !prof !83
  br label %__skb_header_pointer.exit

__skb_header_pointer.exit:                        ; preds = %lor.lhs.false.i, %if.end.i.__skb_header_pointer.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %if.end.i.__skb_header_pointer.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_service_find(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_schedule(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_leave(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sctp_csum_check(i32 noundef %af, ptr noundef %skb, ptr noundef %pp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %af)
  %cmp1 = icmp eq i32 %af, 10
  br i1 %cmp1, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  %sctphoff.0 = phi i32 [ %mul.i, %if.else ], [ 40, %entry.if.end_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %sctphoff.0
  %checksum = getelementptr inbounds %struct.sctphdr, ptr %add.ptr, i32 0, i32 3
  %8 = ptrtoint ptr %checksum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %checksum, align 4
  store i32 0, ptr %checksum, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  %sub.i = sub i32 %11, %sctphoff.0
  %call.i = tail call i32 @__skb_checksum(ptr noundef %skb, i32 noundef %sctphoff.0, i32 noundef %sub.i, i32 noundef -1, ptr noundef nonnull @sctp_csum_ops) #11
  %neg.i = xor i32 %call.i, -1
  %12 = ptrtoint ptr %checksum to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %checksum, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %neg.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp3.not = icmp eq i32 %13, %9
  br i1 %cmp3.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  %call5 = tail call i32 @ip_vs_get_debug_level() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5)
  %cmp6 = icmp sgt i32 %call5, -1
  br i1 %cmp6, label %land.lhs.true, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %do.body
  %call7 = tail call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %if.then8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %debug_packet = getelementptr inbounds %struct.ip_vs_protocol, ptr %pp, i32 0, i32 19
  %14 = ptrtoint ptr %debug_packet to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %debug_packet, align 4
  tail call void %15(i32 noundef %af, ptr noundef %pp, ptr noundef %skb, i32 noundef 0, ptr noundef nonnull @.str.1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %land.lhs.true.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_app_pkt_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_get_debug_level() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_csum_update(ptr noundef %buff, i32 noundef %len, i32 noundef %sum) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @crc32c(i32 noundef %sum, ptr noundef %buff, i32 noundef %len) #11
  ret i32 %call
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_csum_combine(i32 noundef %csum, i32 noundef %csum2, i32 noundef %offset, i32 noundef %len) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @__crc32c_le_shift(i32 noundef %csum, i32 noundef %len) #15
  %xor.i = xor i32 %call.i, %csum2
  ret i32 %xor.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @__crc32c_le_shift(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_app_pkt_in(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_proto_data_get(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_app_inc_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !54, !55, !56, !58, !60, !62, !64, !66, !67, !69, !70, !71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 575, i32 11}
!2 = !{ptr @ip_vs_protocol_sctp, !3, !"ip_vs_protocol_sctp", i1 false, i1 false}
!3 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 574, i32 23}
!4 = !{ptr @sctp_timeouts, !5, !"sctp_timeouts", i1 false, i1 false}
!5 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 331, i32 18}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 205, i32 3}
!8 = !{ptr @sctp_csum_ops, !9, !"sctp_csum_ops", i1 false, i1 false}
!9 = !{!"../include/net/sctp/checksum.h", i32 46, i32 38}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 371, i32 10}
!14 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 374, i32 9}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 350, i32 26}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 351, i32 27}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 352, i32 26}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 353, i32 32}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 354, i32 35}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 355, i32 32}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 356, i32 28}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 357, i32 34}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 358, i32 32}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 359, i32 34}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 360, i32 37}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 361, i32 37}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 362, i32 30}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 363, i32 28}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 364, i32 26}
!46 = !{ptr @sctp_state_name_table, !47, !"sctp_state_name_table", i1 false, i1 false}
!47 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 349, i32 20}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 439, i32 3}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @set_sctp_state._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @set_sctp_state._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @sctp_events, !57, !"sctp_events", i1 false, i1 false}
!57 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 227, i32 13}
!58 = !{ptr @sctp_states, !59, !"sctp_states", i1 false, i1 false}
!59 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 285, i32 19}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/net/ip_vs.h", i32 196, i32 46}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../include/net/ip_vs.h", i32 200, i32 46}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 532, i32 2}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/netfilter/ipvs/ip_vs_proto_sctp.c", i32 537, i32 4}
!69 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @sctp_app_conn_bind._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @sctp_app_conn_bind._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"auto-init"}
!82 = !{!"branch_weights", i32 2000, i32 1}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{i64 2158544600, i64 2158545084, i64 2158544637, i64 2158544693, i64 2158544727, i64 2158544751, i64 2158544792, i64 2158544813, i64 2158544841, i64 2158544875}
!85 = !{i64 2148228570, i64 2148228596, i64 2148228625, i64 2148228659, i64 2148228690, i64 2148228713}
!86 = !{i64 2148226105, i64 2148226131, i64 2148226160, i64 2148226194, i64 2148226225, i64 2148226248}
!87 = !{i64 2149688133}
