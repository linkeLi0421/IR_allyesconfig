; ModuleID = '/llk/IR_all_yes/net/netfilter/ipvs/ip_vs_ftp.c_pt.bc'
source_filename = "../net/netfilter/ipvs/ip_vs_ftp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.174 }
%union.anon.174 = type { ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ip_vs_app = type { %struct.list_head, i32, ptr, i16, ptr, %struct.list_head, %struct.list_head, ptr, i16, %struct.atomic_t, %struct.callback_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.136, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.136 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_ieee802154_lowpan = type { %struct.netns_sysctl_lowpan, ptr }
%struct.netns_sysctl_lowpan = type { ptr }
%struct.netns_sctp = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netns_nf = type { ptr, [13 x ptr], ptr, [5 x ptr], [5 x ptr], [3 x ptr], [5 x ptr], [7 x ptr], i32, i32 }
%struct.netns_ct = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.nf_ip_net, i32 }
%struct.nf_ip_net = type { %struct.nf_generic_net, %struct.nf_tcp_net, %struct.nf_udp_net, %struct.nf_icmp_net, %struct.nf_icmp_net, %struct.nf_dccp_net, %struct.nf_sctp_net, %struct.nf_gre_net }
%struct.nf_generic_net = type { i32 }
%struct.nf_tcp_net = type { [14 x i32], i8, i8, i8, i8, i32 }
%struct.nf_udp_net = type { [2 x i32], i32 }
%struct.nf_icmp_net = type { i32 }
%struct.nf_dccp_net = type { i8, [10 x i32] }
%struct.nf_sctp_net = type { [10 x i32] }
%struct.nf_gre_net = type { %struct.list_head, [2 x i32] }
%struct.netns_nftables = type { i8 }
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%union.nf_inet_addr = type { [4 x i32] }
%struct.ip_vs_conn_param = type { ptr, ptr, ptr, i16, i16, i16, i16, ptr, ptr, i8 }
%struct.ip_vs_conn = type { %struct.hlist_node, i16, i16, i16, i16, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, i32, i16, i16, ptr, %struct.refcount_struct, %struct.timer_list, i32, %struct.spinlock, i16, i16, i32, i32, ptr, %struct.atomic_t, ptr, %struct.atomic_t, ptr, ptr, ptr, %struct.ip_vs_seq, %struct.ip_vs_seq, ptr, ptr, i8, %struct.callback_head }
%struct.ip_vs_seq = type { i32, i32, i32 }
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
%struct.ip_vs_iphdr = type { i32, i32, i32, i16, i16, i32, %union.nf_inet_addr, %union.nf_inet_addr }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }

@__param_str_ports = internal constant [16 x i8] c"ip_vs_ftp.ports\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_ports = internal constant %struct.kparam_array { i32 8, i32 2, ptr @ports_count, ptr @param_ops_ushort, ptr @ports }, align 4
@__param_ports = internal constant %struct.kernel_param { ptr @__param_str_ports, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.174 { ptr @__param_arr_ports } }, section "__param", align 4
@__UNIQUE_ID_portstype691 = internal constant [41 x i8] c"ip_vs_ftp.parmtype=ports:array of ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_ports692 = internal constant [63 x i8] c"ip_vs_ftp.parm=ports:Ports to monitor for FTP control commands\00", section ".modinfo", align 1
@ip_vs_ftp_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @__ip_vs_ftp_init, ptr null, ptr @__ip_vs_ftp_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_ip_vs_ftp__693_635_ip_vs_ftp_init6 = internal global ptr @ip_vs_ftp_init, section ".initcall6.init", align 4
@__exitcall_ip_vs_ftp_exit = internal global ptr @ip_vs_ftp_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file694 = internal constant [44 x i8] c"ip_vs_ftp.file=net/netfilter/ipvs/ip_vs_ftp\00", section ".modinfo", align 1
@__UNIQUE_ID_license695 = internal constant [22 x i8] c"ip_vs_ftp.license=GPL\00", section ".modinfo", align 1
@ports_count = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@ports = internal global { [8 x i16], [16 x i8] } { [8 x i16] [i16 21, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0], [16 x i8] zeroinitializer }, align 32
@ip_vs_ftp = internal global { %struct.ip_vs_app, [44 x i8] } { %struct.ip_vs_app { %struct.list_head zeroinitializer, i32 1, ptr @.str, i16 6, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @ip_vs_ftp, i64 24), ptr getelementptr (i8, ptr @ip_vs_ftp, i64 24) }, %struct.list_head zeroinitializer, ptr null, i16 0, %struct.atomic_t zeroinitializer, %struct.callback_head zeroinitializer, ptr @ip_vs_ftp_out, ptr @ip_vs_ftp_in, ptr @ip_vs_ftp_init_conn, ptr @ip_vs_ftp_done_conn, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ftp\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"227 \00", [27 x i8] zeroinitializer }, align 32
@ip_vs_ftp_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017IPVS: PASV response (%pI4:%u) -> %pI4:%u detected\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ip_vs_ftp_out\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"net/netfilter/ipvs/ip_vs_ftp.c\00", [33 x i8] zeroinitializer }, align 32
@ip_vs_ftp_out._entry_ptr = internal global ptr @ip_vs_ftp_out._entry, section ".printk_index", align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"229 \00", [27 x i8] zeroinitializer }, align 32
@ip_vs_ftp_out._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017IPVS: EPSV response (%s:%u) -> %s:%u detected\0A\00", [47 x i8] zeroinitializer }, align 32
@ip_vs_ftp_out._entry_ptr.8 = internal global ptr @ip_vs_ftp_out._entry.6, section ".printk_index", align 4
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%u,%u,%u,%u,%u,%u\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"|||%u|\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[%pI6c]\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@ip_vs_control_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.16, i32 1311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013IPVS: request control ADD for already controlled: %s:%d to %s:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_vs_control_add\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/net/ip_vs.h\00", [44 x i8] zeroinitializer }, align 32
@ip_vs_control_add._entry_ptr = internal global ptr @ip_vs_control_add._entry, section ".printk_index", align 4
@ip_vs_control_add._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.16, i32 1321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017IPVS: ADDing control for: cp.dst=%s:%d ctl_cp.dst=%s:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@ip_vs_control_add._entry_ptr.19 = internal global ptr @ip_vs_control_add._entry.17, section ".printk_index", align 4
@ip_vs_control_del._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.16, i32 1276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013IPVS: request control DEL for uncontrolled: %s:%d to %s:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_vs_control_del\00", [46 x i8] zeroinitializer }, align 32
@ip_vs_control_del._entry_ptr = internal global ptr @ip_vs_control_del._entry, section ".printk_index", align 4
@ip_vs_control_del._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.16, i32 1286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017IPVS: DELeting control for: cp.dst=%s:%d ctl_cp.dst=%s:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@ip_vs_control_del._entry_ptr.24 = internal global ptr @ip_vs_control_del._entry.22, section ".printk_index", align 4
@ip_vs_control_del._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.16, i32 1295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013IPVS: BUG control DEL with n=0 : %s:%d to %s:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@ip_vs_control_del._entry_ptr.27 = internal global ptr @ip_vs_control_del._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PASV\0D\0A\00", [25 x i8] zeroinitializer }, align 32
@ip_vs_ftp_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017IPVS: got PASV at %td of %td\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ip_vs_ftp_in\00", [19 x i8] zeroinitializer }, align 32
@ip_vs_ftp_in._entry_ptr = internal global ptr @ip_vs_ftp_in._entry, section ".printk_index", align 4
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EPSV\00", [27 x i8] zeroinitializer }, align 32
@ip_vs_ftp_in._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.4, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017IPVS: got EPSV at %td of %td\0A\00", [32 x i8] zeroinitializer }, align 32
@ip_vs_ftp_in._entry_ptr.34 = internal global ptr @ip_vs_ftp_in._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PORT\00", [27 x i8] zeroinitializer }, align 32
@ip_vs_ftp_in._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.30, ptr @.str.4, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017IPVS: PORT %pI4:%u detected\0A\00", [33 x i8] zeroinitializer }, align 32
@ip_vs_ftp_in._entry_ptr.38 = internal global ptr @ip_vs_ftp_in._entry.36, section ".printk_index", align 4
@ip_vs_ftp_in._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.30, ptr @.str.4, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017IPVS: protocol %s %pI4:%u %pI4:%u\0A\00", [59 x i8] zeroinitializer }, align 32
@ip_vs_ftp_in._entry_ptr.41 = internal global ptr @ip_vs_ftp_in._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EPRT\00", [27 x i8] zeroinitializer }, align 32
@ip_vs_ftp_in._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.30, ptr @.str.4, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017IPVS: EPRT %s:%u detected\0A\00", [35 x i8] zeroinitializer }, align 32
@ip_vs_ftp_in._entry_ptr.45 = internal global ptr @ip_vs_ftp_in._entry.43, section ".printk_index", align 4
@ip_vs_ftp_in._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.30, ptr @.str.4, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017IPVS: protocol %s %s:%u %s:%u\0A\00", [63 x i8] zeroinitializer }, align 32
@ip_vs_ftp_in._entry_ptr.48 = internal global ptr @ip_vs_ftp_in._entry.46, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 13, i64 32]
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"ip_vs_ftp_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 614, i32 33 }
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"ports_count\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 60, i32 21 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 61, i32 23 }
@___asan_gen_.60 = private unnamed_addr constant [10 x i8] c"ip_vs_ftp\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 558, i32 25 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 559, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 281, i32 9 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 288, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 302, i32 9 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 309, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 346, i32 30 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 357, i32 30 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 196, i32 46 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 200, i32 46 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1306, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1316, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1271, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1281, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [23 x i8] c"../include/net/ip_vs.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1290, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 446, i32 25 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 448, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 456, i32 25 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 474, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 493, i32 8 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 499, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 502, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 507, i32 8 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 513, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private constant [34 x i8] c"../net/netfilter/ipvs/ip_vs_ftp.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 517, i32 3 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_file694, ptr @__UNIQUE_ID_license695, ptr @__UNIQUE_ID_ports692, ptr @__UNIQUE_ID_portstype691, ptr @__exitcall_ip_vs_ftp_exit, ptr @__initcall__kmod_ip_vs_ftp__693_635_ip_vs_ftp_init6, ptr @__param_ports, ptr @ip_vs_control_add._entry, ptr @ip_vs_control_add._entry.17, ptr @ip_vs_control_add._entry_ptr, ptr @ip_vs_control_add._entry_ptr.19, ptr @ip_vs_control_del._entry, ptr @ip_vs_control_del._entry.22, ptr @ip_vs_control_del._entry.25, ptr @ip_vs_control_del._entry_ptr, ptr @ip_vs_control_del._entry_ptr.24, ptr @ip_vs_control_del._entry_ptr.27, ptr @ip_vs_ftp_exit, ptr @ip_vs_ftp_in._entry, ptr @ip_vs_ftp_in._entry.32, ptr @ip_vs_ftp_in._entry.36, ptr @ip_vs_ftp_in._entry.39, ptr @ip_vs_ftp_in._entry.43, ptr @ip_vs_ftp_in._entry.46, ptr @ip_vs_ftp_in._entry_ptr, ptr @ip_vs_ftp_in._entry_ptr.34, ptr @ip_vs_ftp_in._entry_ptr.38, ptr @ip_vs_ftp_in._entry_ptr.41, ptr @ip_vs_ftp_in._entry_ptr.45, ptr @ip_vs_ftp_in._entry_ptr.48, ptr @ip_vs_ftp_out._entry, ptr @ip_vs_ftp_out._entry.6, ptr @ip_vs_ftp_out._entry_ptr, ptr @ip_vs_ftp_out._entry_ptr.8, ptr @ip_vs_ftp_ops, ptr @ports_count, ptr @ports, ptr @ip_vs_ftp, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.47], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_ftp_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ports_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ports to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_ftp to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_ftp_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_ftp_out._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_control_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_control_add._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_control_del._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_control_del._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_control_del._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_ftp_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_ftp_in._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_ftp_in._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_ftp_in._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_ftp_in._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_ftp_in._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_ftp_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ip_vs_ftp_ops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_ftp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ip_vs_ftp_ops) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__ip_vs_ftp_init(ptr nocapture noundef readonly %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ipvs.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 48
  %0 = ptrtoint ptr %ipvs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipvs.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @register_ip_vs_app(ptr noundef nonnull %1, ptr noundef nonnull @ip_vs_ftp) #12
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %2 = load i32, ptr @ports_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp27.not = icmp eq i32 %2, 0
  br i1 %cmp27.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %protocol = getelementptr inbounds %struct.ip_vs_app, ptr %call1, i32 0, i32 3
  br label %for.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %call1 to i32
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x i16], ptr @ports, i32 0, i32 %i.028
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool6.not = icmp eq i16 %5, 0
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %if.end8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %6 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %protocol, align 4
  %call10 = tail call i32 @register_ip_vs_app_inc(ptr noundef nonnull %1, ptr noundef %call1, i16 noundef zeroext %7, i16 noundef zeroext %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end8.for.inc_crit_edge, label %err_unreg

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.end8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.028, 1
  %8 = load i32, ptr @ports_count, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

err_unreg:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @unregister_ip_vs_app(ptr noundef nonnull %1, ptr noundef nonnull @ip_vs_ftp) #12
  br label %cleanup

cleanup:                                          ; preds = %err_unreg, %for.inc.cleanup_crit_edge, %if.then3, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then3 ], [ %call10, %err_unreg ], [ -2, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__ip_vs_ftp_exit(ptr nocapture noundef readonly %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ipvs.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 48
  %0 = ptrtoint ptr %ipvs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipvs.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @unregister_ip_vs_app(ptr noundef nonnull %1, ptr noundef nonnull @ip_vs_ftp) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_ip_vs_app(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_ip_vs_app_inc(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_ip_vs_app(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_ftp_out(ptr nocapture noundef readnone %app, ptr noundef %cp, ptr noundef %skb, ptr nocapture noundef writeonly %diff, ptr nocapture noundef readonly %ipvsh) #2 align 64 {
entry:
  %start = alloca ptr, align 4
  %end = alloca ptr, align 4
  %from = alloca %union.nf_inet_addr, align 4
  %port = alloca i16, align 2
  %buf = alloca [24 x i8], align 1
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  %p = alloca %struct.ip_vs_conn_param, align 4
  %p79 = alloca %struct.ip_vs_conn_param, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #12
  %0 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %start, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #12
  %1 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %end, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %from) #12
  %2 = call ptr @memset(ptr %from, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %port) #12
  %3 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %port, align 2, !annotation !111
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf) #12
  %4 = call ptr @memset(ptr %buf, i32 255, i32 24)
  %5 = ptrtoint ptr %diff to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %diff, align 4
  %state = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 16
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load volatile i16, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp.not = icmp eq i16 %7, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup149_crit_edge

entry.cleanup149_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup149

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %call = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup149_crit_edge

if.end.cleanup149_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup149

if.end3:                                          ; preds = %if.end
  %app_data = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 26
  %10 = ptrtoint ptr %app_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %app_data, align 4
  %magicptr = ptrtoint ptr %11 to i32
  %12 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr, label %if.end3.cleanup149_crit_edge [
    i32 1, label %if.then6
    i32 3, label %if.then32
  ]

if.end3.cleanup149_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup149

if.then6:                                         ; preds = %if.end3
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %ipvsh, i32 0, i32 2
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %16
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i, i32 0, i32 4
  %17 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i = load i16, ptr %doff.i, align 4
  %18 = lshr i16 %bf.load.i, 10
  %19 = and i16 %18, 60
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %19)
  %cmp.i = icmp ult i16 %19, 20
  %shl.i = zext i16 %19 to i32
  %add.ptr7.i = getelementptr i8, ptr %add.ptr.i, i32 %shl.i
  %retval.0.i = select i1 %cmp.i, ptr null, ptr %add.ptr7.i
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i, align 8
  %tobool9.not = icmp ne ptr %retval.0.i, null
  %cmp10.not = icmp ult ptr %retval.0.i, %21
  %or.cond = select i1 %tobool9.not, i1 %cmp10.not, i1 false
  br i1 %or.cond, label %if.end13, label %if.then6.cleanup149_crit_edge

if.then6.cleanup149_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup149

if.end13:                                         ; preds = %if.then6
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %22 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %af, align 2
  %call14 = call fastcc i32 @ip_vs_ftp_get_addrport(ptr noundef nonnull %retval.0.i, ptr noundef nonnull %21, ptr noundef nonnull @.str.1, i8 noundef zeroext 40, i1 noundef zeroext false, i32 noundef 1, ptr noundef nonnull %from, ptr noundef nonnull %port, i16 noundef zeroext %23, ptr noundef nonnull %start, ptr noundef nonnull %end)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 1
  br i1 %cmp15.not, label %do.body, label %if.end13.cleanup149_crit_edge

if.end13.cleanup149_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup149

do.body:                                          ; preds = %if.end13
  %call19 = call i32 @ip_vs_get_debug_level() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call19)
  %cmp20 = icmp sgt i32 %call19, 6
  br i1 %cmp20, label %do.end, label %do.body.if.end71_crit_edge

do.body.if.end71_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %port, align 2
  %conv24 = zext i16 %25 to i32
  %caddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %from, i32 noundef %conv24, ptr noundef %caddr, i32 noundef 0) #15
  br label %if.end71

if.then32:                                        ; preds = %if.end3
  %data.i222 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %26 = ptrtoint ptr %data.i222 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i222, align 4
  %len.i223 = getelementptr inbounds %struct.ip_vs_iphdr, ptr %ipvsh, i32 0, i32 2
  %28 = ptrtoint ptr %len.i223 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i223, align 4
  %add.ptr.i224 = getelementptr i8, ptr %27, i32 %29
  %doff.i225 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i224, i32 0, i32 4
  %30 = ptrtoint ptr %doff.i225 to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i226 = load i16, ptr %doff.i225, align 4
  %31 = lshr i16 %bf.load.i226, 10
  %32 = and i16 %31, 60
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %32)
  %cmp.i227 = icmp ult i16 %32, 20
  %shl.i228 = zext i16 %32 to i32
  %add.ptr7.i229 = getelementptr i8, ptr %add.ptr.i224, i32 %shl.i228
  %retval.0.i230 = select i1 %cmp.i227, ptr null, ptr %add.ptr7.i229
  %tail.i231 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %33 = ptrtoint ptr %tail.i231 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i231, align 8
  %tobool35.not = icmp ne ptr %retval.0.i230, null
  %cmp37.not = icmp ult ptr %retval.0.i230, %34
  %or.cond220 = select i1 %tobool35.not, i1 %cmp37.not, i1 false
  br i1 %or.cond220, label %if.end40, label %if.then32.cleanup149_crit_edge

if.then32.cleanup149_crit_edge:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup149

if.end40:                                         ; preds = %if.then32
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %35 = call ptr @memcpy(ptr %from, ptr %daddr, i32 16)
  %af41 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %36 = ptrtoint ptr %af41 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %af41, align 2
  %call42 = call fastcc i32 @ip_vs_ftp_get_addrport(ptr noundef nonnull %retval.0.i230, ptr noundef nonnull %34, ptr noundef nonnull @.str.5, i8 noundef zeroext 40, i1 noundef zeroext true, i32 noundef 3, ptr noundef nonnull %from, ptr noundef nonnull %port, i16 noundef zeroext %37, ptr noundef nonnull %start, ptr noundef nonnull %end)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call42)
  %cmp43.not = icmp eq i32 %call42, 1
  br i1 %cmp43.not, label %do.body47, label %if.end40.cleanup149_crit_edge

if.end40.cleanup149_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup149

do.body47:                                        ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #12
  %38 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call48 = call i32 @ip_vs_get_debug_level() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call48)
  %cmp49 = icmp sgt i32 %call48, 6
  br i1 %cmp49, label %do.end54, label %do.body47.if.end66_crit_edge

do.body47.if.end66_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

do.end54:                                         ; preds = %do.body47
  %39 = ptrtoint ptr %af41 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %af41, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %40)
  %cmp.i232 = icmp eq i16 %40, 10
  %.str.12..str.13.i = select i1 %cmp.i232, ptr @.str.12, ptr @.str.13
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.12..str.13.i, ptr noundef nonnull %from) #12
  %len.0.i = add i32 %call3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i)
  %cmp7.i = icmp ugt i32 %len.0.i, 161
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !112

do.body10.i:                                      ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #12, !srcloc !113
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end54
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %port, align 2
  %43 = ptrtoint ptr %af41 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %af41, align 2
  %caddr63 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %44)
  %cmp.i233 = icmp eq i16 %44, 10
  %arrayidx.i234 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %len.0.i
  %sub.i235 = sub nsw i32 159, %call3.i
  %.str.12..str.13.i236 = select i1 %cmp.i233, ptr @.str.12, ptr @.str.13
  %call3.i237 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i234, i32 noundef %sub.i235, ptr noundef nonnull %.str.12..str.13.i236, ptr noundef %caddr63) #12
  %len.0.i238 = add nsw i32 %call3.i, 2
  %add5.i239 = add i32 %len.0.i238, %call3.i237
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i239)
  %cmp7.i240 = icmp ugt i32 %add5.i239, 161
  br i1 %cmp7.i240, label %do.body10.i241, label %ip_vs_dbg_addr.exit243, !prof !112

do.body10.i241:                                   ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #12, !srcloc !113
  unreachable

ip_vs_dbg_addr.exit243:                           ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv59 = zext i16 %42 to i32
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef %conv59, ptr noundef %arrayidx.i234, i32 noundef 0) #15
  br label %if.end66

if.end66:                                         ; preds = %ip_vs_dbg_addr.exit243, %do.body47.if.end66_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #12
  br label %if.end71

if.end71:                                         ; preds = %if.end66, %do.end, %do.body.if.end71_crit_edge
  %data.0 = phi ptr [ %add.ptr7.i, %do.end ], [ %add.ptr7.i, %do.body.if.end71_crit_edge ], [ %add.ptr7.i229, %if.end66 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %p) #12
  %45 = getelementptr inbounds i8, ptr %p, i32 28
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %45, align 4
  %ipvs = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 11
  %47 = ptrtoint ptr %ipvs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ipvs, align 4
  %af72 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %49 = ptrtoint ptr %af72 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %af72, align 2
  %protocol = getelementptr inbounds %struct.ip_vs_iphdr, ptr %ipvsh, i32 0, i32 4
  %51 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %protocol, align 2
  %53 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %port, align 2
  %caddr75 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  %55 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %48, ptr %p, align 4
  %af2.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 6
  %56 = ptrtoint ptr %af2.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %50, ptr %af2.i, align 2
  %protocol4.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 5
  %57 = ptrtoint ptr %protocol4.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %52, ptr %protocol4.i, align 4
  %caddr5.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 1
  %58 = ptrtoint ptr %caddr5.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %from, ptr %caddr5.i, align 4
  %cport6.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 3
  %59 = ptrtoint ptr %cport6.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %54, ptr %cport6.i, align 4
  %vaddr7.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 2
  %60 = ptrtoint ptr %vaddr7.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %caddr75, ptr %vaddr7.i, align 4
  %vport8.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 4
  %61 = ptrtoint ptr %vport8.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %vport8.i, align 2
  %pe.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 7
  %62 = ptrtoint ptr %pe.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %pe.i, align 4
  %pe_data.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 8
  %63 = ptrtoint ptr %pe_data.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %pe_data.i, align 4
  %call76 = call ptr @ip_vs_conn_out_get(ptr noundef nonnull %p) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %p) #12
  %tobool77.not = icmp eq ptr %call76, null
  br i1 %tobool77.not, label %if.then78, label %if.end71.if.end92_crit_edge

if.end71.if.end92_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

if.then78:                                        ; preds = %if.end71
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %p79) #12
  %64 = getelementptr inbounds i8, ptr %p79, i32 28
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %64, align 4
  %66 = ptrtoint ptr %ipvs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ipvs, align 4
  %68 = ptrtoint ptr %af72 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %af72, align 2
  %70 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %protocol, align 2
  %vaddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  %72 = ptrtoint ptr %p79 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %67, ptr %p79, align 4
  %af2.i244 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p79, i32 0, i32 6
  %73 = ptrtoint ptr %af2.i244 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %69, ptr %af2.i244, align 2
  %protocol4.i245 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p79, i32 0, i32 5
  %74 = ptrtoint ptr %protocol4.i245 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %71, ptr %protocol4.i245, align 4
  %caddr5.i246 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p79, i32 0, i32 1
  %75 = ptrtoint ptr %caddr5.i246 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %caddr75, ptr %caddr5.i246, align 4
  %cport6.i247 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p79, i32 0, i32 3
  %76 = ptrtoint ptr %cport6.i247 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %cport6.i247, align 4
  %vaddr7.i248 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p79, i32 0, i32 2
  %77 = ptrtoint ptr %vaddr7.i248 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %vaddr, ptr %vaddr7.i248, align 4
  %vport8.i249 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p79, i32 0, i32 4
  %78 = ptrtoint ptr %vport8.i249 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %54, ptr %vport8.i249, align 2
  %pe.i250 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p79, i32 0, i32 7
  %79 = ptrtoint ptr %pe.i250 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %pe.i250, align 4
  %pe_data.i251 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p79, i32 0, i32 8
  %80 = ptrtoint ptr %pe_data.i251 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %pe_data.i251, align 4
  %conv87 = zext i16 %69 to i32
  %dest = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 22
  %81 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dest, align 4
  %83 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %call88 = call ptr @ip_vs_conn_new(ptr noundef nonnull %p79, i32 noundef %conv87, ptr noundef nonnull %from, i16 noundef zeroext %54, i32 noundef 67584, ptr noundef %82, i32 noundef %85) #12
  %tobool89.not = icmp eq ptr %call88, null
  br i1 %tobool89.not, label %cleanup149.critedge, label %if.end91

if.end91:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @ip_vs_control_add(ptr noundef nonnull %call88, ptr noundef %cp)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %p79) #12
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.end71.if.end92_crit_edge
  %n_cp.0 = phi ptr [ %call76, %if.end71.if.end92_crit_edge ], [ %call88, %if.end91 ]
  %86 = ptrtoint ptr %app_data to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %app_data, align 4
  %magicptr221 = ptrtoint ptr %87 to i32
  %88 = zext i32 %magicptr221 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %magicptr221, label %if.else119 [
    i32 1, label %if.then96
    i32 3, label %if.then113
  ]

if.then96:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  %vaddr97 = getelementptr inbounds %struct.ip_vs_conn, ptr %n_cp.0, i32 0, i32 6
  %89 = ptrtoint ptr %vaddr97 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %vaddr97, align 4
  %91 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %from, align 4
  %vport = getelementptr inbounds %struct.ip_vs_conn, ptr %n_cp.0, i32 0, i32 3
  %92 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %vport, align 4
  %94 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %port, align 2
  %95 = lshr i32 %90, 24
  %96 = lshr i32 %90, 16
  %conv101 = and i32 %96, 255
  %97 = lshr i32 %90, 8
  %conv103 = and i32 %97, 255
  %conv105 = and i32 %90, 255
  %conv106 = zext i16 %93 to i32
  %98 = lshr i32 %conv106, 8
  %and = and i32 %conv106, 255
  %call108 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 24, ptr noundef nonnull @.str.10, i32 noundef %95, i32 noundef %conv101, i32 noundef %conv103, i32 noundef %conv105, i32 noundef %98, i32 noundef %and)
  br label %if.end122

if.then113:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  %vaddr114 = getelementptr inbounds %struct.ip_vs_conn, ptr %n_cp.0, i32 0, i32 6
  %99 = call ptr @memcpy(ptr %from, ptr %vaddr114, i32 16)
  %vport115 = getelementptr inbounds %struct.ip_vs_conn, ptr %n_cp.0, i32 0, i32 3
  %100 = ptrtoint ptr %vport115 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %vport115, align 4
  %102 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %port, align 2
  %conv117 = zext i16 %101 to i32
  %call118 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 24, ptr noundef nonnull @.str.11, i32 noundef %conv117)
  br label %if.end122

if.else119:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  %103 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %buf, align 1
  br label %if.end122

if.end122:                                        ; preds = %if.else119, %if.then113, %if.then96
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %104 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %105, -8
  %106 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool126.not = icmp eq i32 %and1.i, 0
  br i1 %tobool126.not, label %if.end122.if.end147_crit_edge, label %if.then127

if.end122.if.end147_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147

if.then127:                                       ; preds = %if.end122
  %and.i = and i32 %105, 7
  %call124 = call i32 @strlen(ptr noundef nonnull %buf) #16
  %len128 = getelementptr inbounds %struct.ip_vs_iphdr, ptr %ipvsh, i32 0, i32 2
  %107 = ptrtoint ptr %len128 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %len128, align 4
  %109 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %start, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %110 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %data.0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %111 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %end, align 4
  %sub.ptr.lhs.cast129 = ptrtoint ptr %112 to i32
  %sub.ptr.sub131 = sub i32 %sub.ptr.lhs.cast129, %sub.ptr.lhs.cast
  %call.i = call zeroext i1 @__nf_nat_mangle_tcp_packet(ptr noundef %skb, ptr noundef nonnull %106, i32 noundef %and.i, i32 noundef %108, i32 noundef %sub.ptr.sub, i32 noundef %sub.ptr.sub131, ptr noundef nonnull %buf, i32 noundef %call124, i1 noundef zeroext true) #12
  br i1 %call.i, label %if.then135, label %if.then127.if.end147_crit_edge

if.then127.if.end147_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147

if.then135:                                       ; preds = %if.then127
  %113 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %protocol, align 2
  %conv137 = trunc i16 %114 to i8
  call void @ip_vs_nfct_expect_related(ptr noundef %skb, ptr noundef nonnull %106, ptr noundef nonnull %n_cp.0, i8 noundef zeroext %conv137, i16 noundef zeroext 0, i32 noundef 0) #12
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %115 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %115)
  %bf.load = load i16, ptr %ip_summed, align 8
  %116 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %116)
  %cmp139 = icmp eq i16 %116, 1024
  br i1 %cmp139, label %if.then141, label %if.then135.if.end147_crit_edge

if.then135.if.end147_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147

if.then141:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear144 = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear144, 512
  %117 = ptrtoint ptr %ip_summed to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %if.end147

if.end147:                                        ; preds = %if.then141, %if.then135.if.end147_crit_edge, %if.then127.if.end147_crit_edge, %if.end122.if.end147_crit_edge
  %ret.1 = phi i32 [ 0, %if.end122.if.end147_crit_edge ], [ 0, %if.then127.if.end147_crit_edge ], [ 1, %if.then141 ], [ 1, %if.then135.if.end147_crit_edge ]
  %118 = ptrtoint ptr %app_data to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %app_data, align 4
  call void @ip_vs_tcp_conn_listen(ptr noundef nonnull %n_cp.0) #12
  call void @ip_vs_conn_put(ptr noundef nonnull %n_cp.0) #12
  br label %cleanup149

cleanup149.critedge:                              ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %p79) #12
  br label %cleanup149

cleanup149:                                       ; preds = %cleanup149.critedge, %if.end147, %if.end40.cleanup149_crit_edge, %if.then32.cleanup149_crit_edge, %if.end13.cleanup149_crit_edge, %if.then6.cleanup149_crit_edge, %if.end3.cleanup149_crit_edge, %if.end.cleanup149_crit_edge, %entry.cleanup149_crit_edge
  %retval.1 = phi i32 [ %ret.1, %if.end147 ], [ 1, %entry.cleanup149_crit_edge ], [ 0, %if.end.cleanup149_crit_edge ], [ 1, %if.then6.cleanup149_crit_edge ], [ 1, %if.end13.cleanup149_crit_edge ], [ 1, %if.then32.cleanup149_crit_edge ], [ 1, %if.end40.cleanup149_crit_edge ], [ 1, %if.end3.cleanup149_crit_edge ], [ 0, %cleanup149.critedge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %from) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #12
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_ftp_in(ptr nocapture noundef readnone %app, ptr noundef %cp, ptr noundef %skb, ptr nocapture noundef writeonly %diff, ptr nocapture noundef readonly %ipvsh) #2 align 64 {
entry:
  %start = alloca ptr, align 4
  %end = alloca ptr, align 4
  %to = alloca %union.nf_inet_addr, align 4
  %port = alloca i16, align 2
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  %ip_vs_dbg_buf170 = alloca [160 x i8], align 1
  %p = alloca %struct.ip_vs_conn_param, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %to) #12
  %0 = call ptr @memset(ptr %to, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %port) #12
  %1 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %port, align 2, !annotation !111
  %2 = ptrtoint ptr %diff to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %diff, align 4
  %state = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 16
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load volatile i16, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %4)
  %cmp.not = icmp eq i16 %4, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup229_crit_edge

entry.cleanup229_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup229

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %call = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup229_crit_edge

if.end.cleanup229_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup229

if.end3:                                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %ipvsh, i32 0, i32 2
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %10
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i, i32 0, i32 4
  %11 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %doff.i, align 4
  %12 = lshr i16 %bf.load.i, 10
  %13 = and i16 %12, 60
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %13)
  %cmp.i = icmp ult i16 %13, 20
  %shl.i = zext i16 %13 to i32
  %add.ptr7.i = getelementptr i8, ptr %add.ptr.i, i32 %shl.i
  %retval.0.i = select i1 %cmp.i, ptr null, ptr %add.ptr7.i
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i, align 8
  %tobool6.not = icmp ne ptr %retval.0.i, null
  %cmp7.not = icmp ult ptr %retval.0.i, %15
  %or.cond = select i1 %tobool6.not, i1 %cmp7.not, i1 false
  br i1 %or.cond, label %while.cond.preheader, label %if.end3.cleanup229_crit_edge

if.end3.cleanup229_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup229

while.cond.preheader:                             ; preds = %if.end3
  %add.ptr = getelementptr i8, ptr %15, i32 -6
  %cmp11.not341 = icmp ugt ptr %add.ptr7.i, %add.ptr
  br i1 %cmp11.not341, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %16 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %17)
  %cmp14 = icmp eq i16 %17, 2
  br label %while.body

while.body:                                       ; preds = %if.end104.while.body_crit_edge, %while.body.lr.ph
  %data.0342 = phi ptr [ %add.ptr7.i, %while.body.lr.ph ], [ %incdec.ptr, %if.end104.while.body_crit_edge ]
  br i1 %cmp14, label %land.lhs.true, label %while.body.if.end32_crit_edge

while.body.if.end32_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

land.lhs.true:                                    ; preds = %while.body
  %call16 = tail call i32 @strncasecmp(ptr noundef %data.0342, ptr noundef nonnull @.str.28, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %do.body, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

do.body:                                          ; preds = %land.lhs.true
  %call20 = tail call i32 @ip_vs_get_debug_level() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call20)
  %cmp21 = icmp sgt i32 %call20, 6
  br i1 %cmp21, label %do.end, label %do.body.do.end31_crit_edge

do.body.do.end31_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast = ptrtoint ptr %data.0342 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %retval.0.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.lhs.cast25 = ptrtoint ptr %15 to i32
  %sub.ptr.sub27 = sub i32 %sub.ptr.lhs.cast25, %sub.ptr.rhs.cast
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %sub.ptr.sub, i32 noundef %sub.ptr.sub27) #15
  br label %do.end31

do.end31:                                         ; preds = %do.end, %do.body.do.end31_crit_edge
  %app_data = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 26
  %18 = ptrtoint ptr %app_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 1 to ptr), ptr %app_data, align 4
  br label %cleanup229

if.end32:                                         ; preds = %land.lhs.true.if.end32_crit_edge, %while.body.if.end32_crit_edge
  %call33 = tail call i32 @strncasecmp(ptr noundef %data.0342, ptr noundef nonnull @.str.31, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %land.lhs.true36, label %if.end32.if.end104_crit_edge

if.end32.if.end104_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

land.lhs.true36:                                  ; preds = %if.end32
  %arrayidx = getelementptr i8, ptr %data.0342, i32 4
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %20, label %land.lhs.true36.if.end104_crit_edge [
    i8 32, label %if.then50
    i8 13, label %land.lhs.true36.do.body84_crit_edge
  ]

land.lhs.true36.do.body84_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body84

land.lhs.true36.if.end104_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

if.then50:                                        ; preds = %land.lhs.true36
  %arrayidx51 = getelementptr i8, ptr %data.0342, i32 5
  %22 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx51, align 1
  %add.ptr52 = getelementptr i8, ptr %15, i32 -7
  %cmp53 = icmp ugt ptr %data.0342, %add.ptr52
  br i1 %cmp53, label %if.then50.cleanup229_crit_edge, label %lor.lhs.false55

if.then50.cleanup229_crit_edge:                   ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup229

lor.lhs.false55:                                  ; preds = %if.then50
  %arrayidx56 = getelementptr i8, ptr %data.0342, i32 6
  %24 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx56, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %25)
  %cmp58.not = icmp eq i8 %25, 13
  br i1 %cmp58.not, label %if.end61, label %lor.lhs.false55.cleanup229_crit_edge

lor.lhs.false55.cleanup229_crit_edge:             ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup229

if.end61:                                         ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %17)
  %cmp64 = icmp eq i16 %17, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %23)
  %cmp68 = icmp eq i8 %23, 50
  %or.cond300 = select i1 %cmp64, i1 %cmp68, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %23)
  %cmp77 = icmp eq i8 %23, 49
  %or.cond301 = select i1 %cmp14, i1 %cmp77, i1 false
  %or.cond332 = select i1 %or.cond300, i1 true, i1 %or.cond301
  br i1 %or.cond332, label %if.end61.do.body84_crit_edge, label %if.end61.cleanup229_crit_edge

if.end61.cleanup229_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup229

if.end61.do.body84_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body84

do.body84:                                        ; preds = %if.end61.do.body84_crit_edge, %land.lhs.true36.do.body84_crit_edge
  %call85 = tail call i32 @ip_vs_get_debug_level() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call85)
  %cmp86 = icmp sgt i32 %call85, 6
  br i1 %cmp86, label %do.end91, label %do.body84.do.end102_crit_edge

do.body84.do.end102_crit_edge:                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end102

do.end91:                                         ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast93 = ptrtoint ptr %data.0342 to i32
  %sub.ptr.rhs.cast94 = ptrtoint ptr %retval.0.i to i32
  %sub.ptr.sub95 = sub i32 %sub.ptr.lhs.cast93, %sub.ptr.rhs.cast94
  %sub.ptr.lhs.cast96 = ptrtoint ptr %15 to i32
  %sub.ptr.sub98 = sub i32 %sub.ptr.lhs.cast96, %sub.ptr.rhs.cast94
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %sub.ptr.sub95, i32 noundef %sub.ptr.sub98) #15
  br label %do.end102

do.end102:                                        ; preds = %do.end91, %do.body84.do.end102_crit_edge
  %app_data103 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 26
  %26 = ptrtoint ptr %app_data103 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 3 to ptr), ptr %app_data103, align 4
  br label %cleanup229

if.end104:                                        ; preds = %land.lhs.true36.if.end104_crit_edge, %if.end32.if.end104_crit_edge
  %incdec.ptr = getelementptr i8, ptr %data.0342, i32 1
  %cmp11.not = icmp ugt ptr %incdec.ptr, %add.ptr
  br i1 %cmp11.not, label %if.end104.while.end_crit_edge, label %if.end104.while.body_crit_edge

if.end104.while.body_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end104.while.end_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end104.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %af105 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %27 = ptrtoint ptr %af105 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %af105, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %28)
  %cmp107 = icmp eq i16 %28, 2
  br i1 %cmp107, label %land.lhs.true109, label %while.end.if.else146_crit_edge

while.end.if.else146_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else146

land.lhs.true109:                                 ; preds = %while.end
  %call111 = call fastcc i32 @ip_vs_ftp_get_addrport(ptr noundef nonnull %retval.0.i, ptr noundef nonnull %15, ptr noundef nonnull @.str.35, i8 noundef zeroext 32, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull %to, ptr noundef nonnull %port, i16 noundef zeroext 2, ptr noundef nonnull %start, ptr noundef nonnull %end)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call111)
  %cmp112 = icmp eq i32 %call111, 1
  br i1 %cmp112, label %do.body115, label %land.lhs.true109.if.else146_crit_edge

land.lhs.true109.if.else146_crit_edge:            ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else146

do.body115:                                       ; preds = %land.lhs.true109
  %call116 = call i32 @ip_vs_get_debug_level() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call116)
  %cmp117 = icmp sgt i32 %call116, 6
  br i1 %cmp117, label %do.end122, label %do.body115.do.body129_crit_edge

do.body115.do.body129_crit_edge:                  ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body129

do.end122:                                        ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %port, align 2
  %conv124 = zext i16 %30 to i32
  %call125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull %to, i32 noundef %conv124) #15
  br label %do.body129

do.body129:                                       ; preds = %do.end122, %do.body115.do.body129_crit_edge
  %call130 = call i32 @ip_vs_get_debug_level() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call130)
  %cmp131 = icmp sgt i32 %call130, 6
  br i1 %cmp131, label %do.end136, label %do.body129.if.end202_crit_edge

do.body129.if.end202_crit_edge:                   ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end202

do.end136:                                        ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #14
  %protocol = getelementptr inbounds %struct.ip_vs_iphdr, ptr %ipvsh, i32 0, i32 4
  %31 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %protocol, align 2
  %conv138 = sext i16 %32 to i32
  %call139 = call ptr @ip_vs_proto_name(i32 noundef %conv138) #12
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %port, align 2
  %conv140 = zext i16 %34 to i32
  %vaddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  %vport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 3
  %35 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vport, align 4
  %conv141 = zext i16 %36 to i32
  %sub = add nsw i32 %conv141, -1
  %call142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %call139, ptr noundef nonnull %to, i32 noundef %conv140, ptr noundef %vaddr, i32 noundef %sub) #15
  br label %if.end202

if.else146:                                       ; preds = %land.lhs.true109.if.else146_crit_edge, %while.end.if.else146_crit_edge
  %37 = ptrtoint ptr %af105 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %af105, align 2
  %call148 = call fastcc i32 @ip_vs_ftp_get_addrport(ptr noundef nonnull %retval.0.i, ptr noundef nonnull %15, ptr noundef nonnull @.str.42, i8 noundef zeroext 32, i1 noundef zeroext true, i32 noundef 2, ptr noundef nonnull %to, ptr noundef nonnull %port, i16 noundef zeroext %38, ptr noundef nonnull %start, ptr noundef nonnull %end)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call148)
  %cmp149 = icmp eq i32 %call148, 1
  br i1 %cmp149, label %do.body152, label %if.else146.cleanup229_crit_edge

if.else146.cleanup229_crit_edge:                  ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup229

do.body152:                                       ; preds = %if.else146
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #12
  %39 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call153 = call i32 @ip_vs_get_debug_level() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call153)
  %cmp154 = icmp sgt i32 %call153, 6
  br i1 %cmp154, label %do.end159, label %do.body152.if.end166_crit_edge

do.body152.if.end166_crit_edge:                   ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166

do.end159:                                        ; preds = %do.body152
  %40 = ptrtoint ptr %af105 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %af105, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %41)
  %cmp.i302 = icmp eq i16 %41, 10
  %.str.12..str.13.i = select i1 %cmp.i302, ptr @.str.12, ptr @.str.13
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.12..str.13.i, ptr noundef nonnull %to) #12
  %42 = add i32 %call3.i, -161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -162, i32 %42)
  %cmp7.i = icmp ult i32 %42, -162
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !112

do.body10.i:                                      ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #12, !srcloc !113
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %port, align 2
  %conv164 = zext i16 %44 to i32
  %call165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef %conv164) #15
  br label %if.end166

if.end166:                                        ; preds = %ip_vs_dbg_addr.exit, %do.body152.if.end166_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #12
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf170) #12
  %45 = call ptr @memset(ptr %ip_vs_dbg_buf170, i32 255, i32 160)
  %call172 = call i32 @ip_vs_get_debug_level() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call172)
  %cmp173 = icmp sgt i32 %call172, 6
  br i1 %cmp173, label %do.end178, label %if.end166.if.end197_crit_edge

if.end166.if.end197_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end197

do.end178:                                        ; preds = %if.end166
  %protocol180 = getelementptr inbounds %struct.ip_vs_iphdr, ptr %ipvsh, i32 0, i32 4
  %46 = ptrtoint ptr %protocol180 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %protocol180, align 2
  %conv181 = sext i16 %47 to i32
  %call182 = call ptr @ip_vs_proto_name(i32 noundef %conv181) #12
  %48 = ptrtoint ptr %af105 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %af105, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %49)
  %cmp.i303 = icmp eq i16 %49, 10
  %.str.12..str.13.i306 = select i1 %cmp.i303, ptr @.str.12, ptr @.str.13
  %call3.i307 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf170, i32 noundef 160, ptr noundef nonnull %.str.12..str.13.i306, ptr noundef nonnull %to) #12
  %len.0.i308 = add i32 %call3.i307, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i308)
  %cmp7.i310 = icmp ugt i32 %len.0.i308, 161
  br i1 %cmp7.i310, label %do.body10.i311, label %ip_vs_dbg_addr.exit313, !prof !112

do.body10.i311:                                   ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #12, !srcloc !113
  unreachable

ip_vs_dbg_addr.exit313:                           ; preds = %do.end178
  %50 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %port, align 2
  %52 = ptrtoint ptr %af105 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %af105, align 2
  %vaddr191 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %53)
  %cmp.i314 = icmp eq i16 %53, 10
  %arrayidx.i315 = getelementptr i8, ptr %ip_vs_dbg_buf170, i32 %len.0.i308
  %sub.i316 = sub nsw i32 159, %call3.i307
  %.str.12..str.13.i317 = select i1 %cmp.i314, ptr @.str.12, ptr @.str.13
  %call3.i318 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i315, i32 noundef %sub.i316, ptr noundef nonnull %.str.12..str.13.i317, ptr noundef %vaddr191) #12
  %len.0.i319 = add nsw i32 %call3.i307, 2
  %add5.i320 = add i32 %len.0.i319, %call3.i318
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i320)
  %cmp7.i321 = icmp ugt i32 %add5.i320, 161
  br i1 %cmp7.i321, label %do.body10.i322, label %ip_vs_dbg_addr.exit324, !prof !112

do.body10.i322:                                   ; preds = %ip_vs_dbg_addr.exit313
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #12, !srcloc !113
  unreachable

ip_vs_dbg_addr.exit324:                           ; preds = %ip_vs_dbg_addr.exit313
  call void @__sanitizer_cov_trace_pc() #14
  %conv187 = zext i16 %51 to i32
  %vport193 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 3
  %54 = ptrtoint ptr %vport193 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vport193, align 4
  %conv194 = zext i16 %55 to i32
  %sub195 = add nsw i32 %conv194, -1
  %call196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %call182, ptr noundef nonnull %ip_vs_dbg_buf170, i32 noundef %conv187, ptr noundef %arrayidx.i315, i32 noundef %sub195) #15
  br label %if.end197

if.end197:                                        ; preds = %ip_vs_dbg_addr.exit324, %if.end166.if.end197_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf170) #12
  br label %if.end202

if.end202:                                        ; preds = %if.end197, %do.end136, %do.body129.if.end202_crit_edge
  %app_data203 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 26
  %56 = ptrtoint ptr %app_data203 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %app_data203, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %p) #12
  %57 = getelementptr inbounds i8, ptr %p, i32 28
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %57, align 4
  %ipvs = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 11
  %59 = ptrtoint ptr %ipvs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ipvs, align 4
  %61 = ptrtoint ptr %af105 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %af105, align 2
  %protocol206 = getelementptr inbounds %struct.ip_vs_iphdr, ptr %ipvsh, i32 0, i32 4
  %63 = ptrtoint ptr %protocol206 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %protocol206, align 2
  %65 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %port, align 2
  %vaddr208 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  %vport209 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 3
  %67 = ptrtoint ptr %vport209 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vport209, align 4
  %sub211 = add i16 %68, -1
  %69 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %60, ptr %p, align 4
  %af2.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 6
  %70 = ptrtoint ptr %af2.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %62, ptr %af2.i, align 2
  %protocol4.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 5
  %71 = ptrtoint ptr %protocol4.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %64, ptr %protocol4.i, align 4
  %caddr5.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 1
  %72 = ptrtoint ptr %caddr5.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %to, ptr %caddr5.i, align 4
  %cport6.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 3
  %73 = ptrtoint ptr %cport6.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %66, ptr %cport6.i, align 4
  %vaddr7.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 2
  %74 = ptrtoint ptr %vaddr7.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %vaddr208, ptr %vaddr7.i, align 4
  %vport8.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 4
  %75 = ptrtoint ptr %vport8.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %sub211, ptr %vport8.i, align 2
  %pe.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 7
  %76 = ptrtoint ptr %pe.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %pe.i, align 4
  %pe_data.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 8
  %77 = ptrtoint ptr %pe_data.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %pe_data.i, align 4
  %call213 = call ptr @ip_vs_conn_in_get(ptr noundef nonnull %p) #12
  %tobool214.not = icmp eq ptr %call213, null
  br i1 %tobool214.not, label %if.then215, label %if.end202.cleanup.cont228_crit_edge

if.end202.cleanup.cont228_crit_edge:              ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont228

if.then215:                                       ; preds = %if.end202
  %78 = ptrtoint ptr %af105 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %af105, align 2
  %conv217 = zext i16 %79 to i32
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %dport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 2
  %80 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %dport, align 2
  %sub219 = add i16 %81, -1
  %dest = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 22
  %82 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dest, align 4
  %84 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  %call221 = call ptr @ip_vs_conn_new(ptr noundef nonnull %p, i32 noundef %conv217, ptr noundef %daddr, i16 noundef zeroext %sub219, i32 noundef 65536, ptr noundef %83, i32 noundef %86) #12
  %tobool222.not = icmp eq ptr %call221, null
  br i1 %tobool222.not, label %cleanup226, label %if.end224

if.end224:                                        ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @ip_vs_control_add(ptr noundef nonnull %call221, ptr noundef %cp)
  br label %cleanup.cont228

cleanup226:                                       ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %p) #12
  br label %cleanup229

cleanup.cont228:                                  ; preds = %if.end224, %if.end202.cleanup.cont228_crit_edge
  %n_cp.1.ph = phi ptr [ %call221, %if.end224 ], [ %call213, %if.end202.cleanup.cont228_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %p) #12
  call void @ip_vs_tcp_conn_listen(ptr noundef nonnull %n_cp.1.ph) #12
  call void @ip_vs_conn_put(ptr noundef nonnull %n_cp.1.ph) #12
  br label %cleanup229

cleanup229:                                       ; preds = %cleanup.cont228, %cleanup226, %if.else146.cleanup229_crit_edge, %do.end102, %if.end61.cleanup229_crit_edge, %lor.lhs.false55.cleanup229_crit_edge, %if.then50.cleanup229_crit_edge, %do.end31, %if.end3.cleanup229_crit_edge, %if.end.cleanup229_crit_edge, %entry.cleanup229_crit_edge
  %retval.2 = phi i32 [ 1, %do.end31 ], [ 1, %do.end102 ], [ 1, %cleanup.cont228 ], [ 0, %cleanup226 ], [ 1, %entry.cleanup229_crit_edge ], [ 0, %if.end.cleanup229_crit_edge ], [ 1, %if.end3.cleanup229_crit_edge ], [ 1, %if.then50.cleanup229_crit_edge ], [ 1, %lor.lhs.false55.cleanup229_crit_edge ], [ 1, %if.else146.cleanup229_crit_edge ], [ 1, %if.end61.cleanup229_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %to) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #12
  ret i32 %retval.2
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_ftp_init_conn(ptr nocapture noundef readnone %app, ptr noundef %cp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %or = or i32 %1, 65536
  store volatile i32 %or, ptr %flags, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ip_vs_ftp_done_conn(ptr nocapture noundef readnone %app, ptr nocapture noundef readnone %cp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip_vs_ftp_get_addrport(ptr noundef %data, ptr noundef %data_limit, ptr nocapture noundef readonly %pattern, i8 noundef zeroext %skip, i1 noundef zeroext %ext, i32 noundef %mode, ptr noundef %addr, ptr nocapture noundef writeonly %port, i16 noundef zeroext %af, ptr nocapture noundef writeonly %start, ptr nocapture noundef writeonly %end) unnamed_addr #2 align 64 {
entry:
  %p = alloca [6 x i8], align 4
  %ep = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %p) #12
  %0 = getelementptr inbounds [6 x i8], ptr %p, i32 0, i32 4
  %sub.ptr.lhs.cast = ptrtoint ptr %data_limit to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %data to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub)
  %cmp = icmp ult i32 %sub.ptr.sub, 4
  %1 = call ptr @memset(ptr %p, i32 255, i32 6)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @strncasecmp(ptr noundef %data, ptr noundef %pattern, i32 noundef %sub.ptr.sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp eq i32 %call, 0
  %. = sext i1 %cmp4 to i32
  br label %cleanup220

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @strncasecmp(ptr noundef %data, ptr noundef %pattern, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.then10, label %if.end.cleanup220_crit_edge

if.end.cleanup220_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup220

if.then10:                                        ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %data, i32 4
  %cmp1122 = icmp eq ptr %add.ptr, %data_limit
  br i1 %cmp1122, label %if.then10.cleanup220_crit_edge, label %if.then10.if.end13_crit_edge

if.then10.if.end13_crit_edge:                     ; preds = %if.then10
  br label %if.end13

if.then10.cleanup220_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup220

if.end13:                                         ; preds = %for.inc.if.end13_crit_edge, %if.then10.if.end13_crit_edge
  %s.024 = phi ptr [ %incdec.ptr, %for.inc.if.end13_crit_edge ], [ %add.ptr, %if.then10.if.end13_crit_edge ]
  %found.0.off023 = phi i1 [ %found.1.off0, %for.inc.if.end13_crit_edge ], [ false, %if.then10.if.end13_crit_edge ]
  br i1 %found.0.off023, label %if.else27, label %if.then15

if.then15:                                        ; preds = %if.end13
  br i1 %ext, label %if.then15.if.end20_crit_edge, label %land.lhs.true

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true:                                    ; preds = %if.then15
  %2 = ptrtoint ptr %s.024 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %s.024, align 1
  %conv = zext i8 %3 to i32
  %4 = add nsw i32 %conv, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %4)
  %5 = icmp ult i32 %4, -10
  br i1 %5, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true.if.then37_crit_edge

land.lhs.true.if.then37_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.then15.if.end20_crit_edge
  %6 = ptrtoint ptr %s.024 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %s.024, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %skip)
  %cmp23 = icmp eq i8 %7, %skip
  br label %for.inc

if.else27:                                        ; preds = %if.end13
  %8 = ptrtoint ptr %s.024 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %s.024, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %skip)
  %cmp30.not = icmp eq i8 %9, %skip
  br i1 %cmp30.not, label %if.else27.for.inc_crit_edge, label %if.end35

if.else27.for.inc_crit_edge:                      ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.else27.for.inc_crit_edge, %if.end20
  %found.1.off0 = phi i1 [ true, %if.else27.for.inc_crit_edge ], [ %cmp23, %if.end20 ]
  %incdec.ptr = getelementptr i8, ptr %s.024, i32 1
  %cmp11 = icmp eq ptr %incdec.ptr, %data_limit
  br i1 %cmp11, label %for.inc.cleanup220_crit_edge, label %for.inc.if.end13_crit_edge

for.inc.if.end13_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.cleanup220_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup220

if.end35:                                         ; preds = %if.else27
  br i1 %ext, label %if.end80, label %if.end35.if.then37_crit_edge

if.end35.if.then37_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37

if.then37:                                        ; preds = %if.end35.if.then37_crit_edge, %land.lhs.true.if.then37_crit_edge
  %10 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %p, align 4
  %cmp3927 = icmp eq ptr %s.024, %data_limit
  br i1 %cmp3927, label %if.then37.cleanup220_crit_edge, label %if.then37.if.end42_crit_edge

if.then37.if.end42_crit_edge:                     ; preds = %if.then37
  br label %if.end42

if.then37.cleanup220_crit_edge:                   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup220

if.end42:                                         ; preds = %for.inc64.if.end42_crit_edge, %if.then37.if.end42_crit_edge
  %data.addr.029 = phi ptr [ %incdec.ptr65, %for.inc64.if.end42_crit_edge ], [ %s.024, %if.then37.if.end42_crit_edge ]
  %i.028 = phi i32 [ %i.1, %for.inc64.if.end42_crit_edge ], [ 0, %if.then37.if.end42_crit_edge ]
  %11 = ptrtoint ptr %data.addr.029 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data.addr.029, align 1
  %conv43 = zext i8 %12 to i32
  %13 = add nsw i32 %conv43, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %13)
  %14 = icmp ult i32 %13, -10
  br i1 %14, label %if.else52, label %if.then46

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx47 = getelementptr [6 x i8], ptr %p, i32 0, i32 %i.028
  %15 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx47, align 1
  %mul = mul i8 %16, 10
  %add = add i8 %12, -48
  %sub = add i8 %add, %mul
  store i8 %sub, ptr %arrayidx47, align 1
  br label %for.inc64

if.else52:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %12)
  %cmp54 = icmp eq i8 %12, 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.028)
  %cmp57 = icmp slt i32 %i.028, 5
  %or.cond = select i1 %cmp54, i1 %cmp57, i1 false
  br i1 %or.cond, label %if.then59, label %for.end66

if.then59:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add nsw i32 %i.028, 1
  %arrayidx60 = getelementptr [6 x i8], ptr %p, i32 0, i32 %inc
  %17 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx60, align 1
  br label %for.inc64

for.inc64:                                        ; preds = %if.then59, %if.then46
  %i.1 = phi i32 [ %i.028, %if.then46 ], [ %inc, %if.then59 ]
  %incdec.ptr65 = getelementptr i8, ptr %data.addr.029, i32 1
  %cmp39 = icmp eq ptr %incdec.ptr65, %data_limit
  br i1 %cmp39, label %for.inc64.cleanup220_crit_edge, label %for.inc64.if.end42_crit_edge

for.inc64.if.end42_crit_edge:                     ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

for.inc64.cleanup220_crit_edge:                   ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup220

for.end66:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.028)
  %cmp67.not = icmp eq i32 %i.028, 5
  br i1 %cmp67.not, label %if.end70, label %for.end66.cleanup220_crit_edge

for.end66.cleanup220_crit_edge:                   ; preds = %for.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup220

if.end70:                                         ; preds = %for.end66
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %s.024, ptr %start, align 4
  %19 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %data.addr.029, ptr %end, align 4
  %20 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %p, align 4
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %addr, align 4
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %0, align 4
  %25 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %port, align 2
  br label %cleanup220

if.end80:                                         ; preds = %if.end35
  %26 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %s.024, ptr %start, align 4
  %incdec.ptr81 = getelementptr i8, ptr %s.024, i32 1
  %27 = ptrtoint ptr %s.024 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %s.024, align 1
  %conv82 = zext i8 %28 to i32
  %29 = add i8 %28, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %29)
  %30 = icmp ult i8 %29, -94
  %cmp90 = icmp eq ptr %incdec.ptr81, %data_limit
  %or.cond5 = select i1 %30, i1 true, i1 %cmp90
  br i1 %or.cond5, label %if.end80.cleanup220_crit_edge, label %if.end93

if.end80.cleanup220_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup220

if.end93:                                         ; preds = %if.end80
  %31 = ptrtoint ptr %incdec.ptr81 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %incdec.ptr81, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %28)
  %cmp96 = icmp eq i8 %32, %28
  br i1 %cmp96, label %if.then98, label %if.else115

if.then98:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %cmp99.not = icmp eq i32 %mode, 3
  br i1 %cmp99.not, label %if.end102, label %if.then98.cleanup220_crit_edge

if.then98.cleanup220_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup220

if.end102:                                        ; preds = %if.then98
  %incdec.ptr103 = getelementptr i8, ptr %s.024, i32 2
  %cmp104 = icmp eq ptr %incdec.ptr103, %data_limit
  br i1 %cmp104, label %if.end102.cleanup220_crit_edge, label %if.end107

if.end102.cleanup220_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup220

if.end107:                                        ; preds = %if.end102
  %33 = ptrtoint ptr %incdec.ptr103 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %incdec.ptr103, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %28)
  %cmp110.not = icmp eq i8 %34, %28
  br i1 %cmp110.not, label %if.end113, label %if.end107.cleanup220_crit_edge

if.end107.cleanup220_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup220

if.end113:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr114 = getelementptr i8, ptr %s.024, i32 3
  br label %if.end188

if.else115:                                       ; preds = %if.end93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep) #12
  %35 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep, align 4, !annotation !111
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %af)
  %cmp117 = icmp eq i16 %af, 10
  br i1 %cmp117, label %land.lhs.true119, label %if.end124

land.lhs.true119:                                 ; preds = %if.else115
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %32)
  %cmp121.not = icmp eq i8 %32, 50
  br i1 %cmp121.not, label %land.lhs.true119.if.end133_crit_edge, label %land.lhs.true119.cleanup185.thread_crit_edge

land.lhs.true119.cleanup185.thread_crit_edge:     ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup185.thread

land.lhs.true119.if.end133_crit_edge:             ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

if.end124:                                        ; preds = %if.else115
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %af)
  %cmp126 = icmp ne i16 %af, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %32)
  %cmp130.not = icmp eq i8 %32, 49
  %or.cond11 = select i1 %cmp126, i1 true, i1 %cmp130.not
  br i1 %or.cond11, label %if.end124.if.end133_crit_edge, label %if.end124.cleanup185.thread_crit_edge

if.end124.cleanup185.thread_crit_edge:            ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup185.thread

if.end124.if.end133_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

if.end133:                                        ; preds = %if.end124.if.end133_crit_edge, %land.lhs.true119.if.end133_crit_edge
  %incdec.ptr134 = getelementptr i8, ptr %s.024, i32 2
  %cmp135 = icmp eq ptr %incdec.ptr134, %data_limit
  br i1 %cmp135, label %if.end133.cleanup185.thread_crit_edge, label %if.end138

if.end133.cleanup185.thread_crit_edge:            ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup185.thread

if.end138:                                        ; preds = %if.end133
  %36 = ptrtoint ptr %incdec.ptr134 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %incdec.ptr134, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %28)
  %cmp141.not = icmp eq i8 %37, %28
  br i1 %cmp141.not, label %if.end144, label %if.end138.cleanup185.thread_crit_edge

if.end138.cleanup185.thread_crit_edge:            ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup185.thread

if.end144:                                        ; preds = %if.end138
  %incdec.ptr145 = getelementptr i8, ptr %s.024, i32 3
  %cmp146 = icmp eq ptr %incdec.ptr145, %data_limit
  br i1 %cmp146, label %if.end144.cleanup185.thread_crit_edge, label %if.end149

if.end144.cleanup185.thread_crit_edge:            ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup185.thread

if.end149:                                        ; preds = %if.end144
  %sub.ptr.rhs.cast155 = ptrtoint ptr %incdec.ptr145 to i32
  %sub.ptr.sub156 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast155
  br i1 %cmp117, label %if.then153, label %if.else163

if.then153:                                       ; preds = %if.end149
  %call158 = call i32 @in6_pton(ptr noundef %incdec.ptr145, i32 noundef %sub.ptr.sub156, ptr noundef %addr, i32 noundef %conv82, ptr noundef nonnull %ep) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call158)
  %cmp159 = icmp slt i32 %call158, 1
  br i1 %cmp159, label %if.then153.cleanup185.thread_crit_edge, label %if.then153.if.end173_crit_edge

if.then153.if.end173_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end173

if.then153.cleanup185.thread_crit_edge:           ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup185.thread

if.else163:                                       ; preds = %if.end149
  %call168 = call i32 @in4_pton(ptr noundef %incdec.ptr145, i32 noundef %sub.ptr.sub156, ptr noundef %addr, i32 noundef %conv82, ptr noundef nonnull %ep) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call168)
  %cmp169 = icmp slt i32 %call168, 1
  br i1 %cmp169, label %if.else163.cleanup185.thread_crit_edge, label %if.else163.if.end173_crit_edge

if.else163.if.end173_crit_edge:                   ; preds = %if.else163
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end173

if.else163.cleanup185.thread_crit_edge:           ; preds = %if.else163
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup185.thread

if.end173:                                        ; preds = %if.else163.if.end173_crit_edge, %if.then153.if.end173_crit_edge
  %38 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ep, align 4
  %cmp174 = icmp eq ptr %39, %data_limit
  br i1 %cmp174, label %if.end173.cleanup185.thread_crit_edge, label %cleanup185

if.end173.cleanup185.thread_crit_edge:            ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup185.thread

cleanup185.thread:                                ; preds = %if.end173.cleanup185.thread_crit_edge, %if.else163.cleanup185.thread_crit_edge, %if.then153.cleanup185.thread_crit_edge, %if.end144.cleanup185.thread_crit_edge, %if.end138.cleanup185.thread_crit_edge, %if.end133.cleanup185.thread_crit_edge, %if.end124.cleanup185.thread_crit_edge, %land.lhs.true119.cleanup185.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep) #12
  br label %cleanup220

cleanup185:                                       ; preds = %if.end173
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %28)
  %cmp180.not = icmp eq i8 %41, %28
  %incdec.ptr184 = getelementptr i8, ptr %39, i32 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep) #12
  br i1 %cmp180.not, label %cleanup185.if.end188_crit_edge, label %cleanup185.cleanup220_crit_edge

cleanup185.cleanup220_crit_edge:                  ; preds = %cleanup185
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup220

cleanup185.if.end188_crit_edge:                   ; preds = %cleanup185
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188

if.end188:                                        ; preds = %cleanup185.if.end188_crit_edge, %if.end113
  %s.3 = phi ptr [ %incdec.ptr114, %if.end113 ], [ %incdec.ptr184, %cleanup185.if.end188_crit_edge ]
  %cmp19031 = icmp eq ptr %s.3, %data_limit
  br i1 %cmp19031, label %if.end188.cleanup220_crit_edge, label %if.end188.if.end193_crit_edge

if.end188.if.end193_crit_edge:                    ; preds = %if.end188
  br label %if.end193

if.end188.cleanup220_crit_edge:                   ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup220

if.end193:                                        ; preds = %if.end198.if.end193_crit_edge, %if.end188.if.end193_crit_edge
  %s.433 = phi ptr [ %incdec.ptr206, %if.end198.if.end193_crit_edge ], [ %s.3, %if.end188.if.end193_crit_edge ]
  %hport.032 = phi i16 [ %sub203, %if.end198.if.end193_crit_edge ], [ 0, %if.end188.if.end193_crit_edge ]
  %42 = ptrtoint ptr %s.433 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %s.433, align 1
  %conv194 = zext i8 %43 to i32
  %44 = add nsw i32 %conv194, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %44)
  %45 = icmp ult i32 %44, -10
  br i1 %45, label %lor.lhs.false210, label %if.end198

if.end198:                                        ; preds = %if.end193
  %mul200 = mul i16 %hport.032, 10
  %conv201 = zext i8 %43 to i16
  %add202 = add i16 %mul200, -48
  %sub203 = add i16 %add202, %conv201
  %incdec.ptr206 = getelementptr i8, ptr %s.433, i32 1
  %cmp190 = icmp eq ptr %incdec.ptr206, %data_limit
  br i1 %cmp190, label %if.end198.cleanup220_crit_edge, label %if.end198.if.end193_crit_edge

if.end198.if.end193_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end193

if.end198.cleanup220_crit_edge:                   ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup220

lor.lhs.false210:                                 ; preds = %if.end193
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %hport.032)
  %tobool211.not = icmp ne i16 %hport.032, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %28)
  %cmp215.not = icmp eq i8 %43, %28
  %or.cond12 = select i1 %tobool211.not, i1 %cmp215.not, i1 false
  br i1 %or.cond12, label %if.end218, label %lor.lhs.false210.cleanup220_crit_edge

lor.lhs.false210.cleanup220_crit_edge:            ; preds = %lor.lhs.false210
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup220

if.end218:                                        ; preds = %lor.lhs.false210
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr219 = getelementptr i8, ptr %s.433, i32 1
  %46 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %incdec.ptr219, ptr %end, align 4
  %47 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %hport.032, ptr %port, align 2
  br label %cleanup220

cleanup220:                                       ; preds = %if.end218, %lor.lhs.false210.cleanup220_crit_edge, %if.end198.cleanup220_crit_edge, %if.end188.cleanup220_crit_edge, %cleanup185.cleanup220_crit_edge, %cleanup185.thread, %if.end107.cleanup220_crit_edge, %if.end102.cleanup220_crit_edge, %if.then98.cleanup220_crit_edge, %if.end80.cleanup220_crit_edge, %if.end70, %for.end66.cleanup220_crit_edge, %for.inc64.cleanup220_crit_edge, %if.then37.cleanup220_crit_edge, %for.inc.cleanup220_crit_edge, %if.then10.cleanup220_crit_edge, %if.end.cleanup220_crit_edge, %if.then
  %retval.3 = phi i32 [ 1, %if.end218 ], [ -1, %cleanup185.cleanup220_crit_edge ], [ 1, %if.end70 ], [ %., %if.then ], [ 0, %if.end.cleanup220_crit_edge ], [ -1, %for.end66.cleanup220_crit_edge ], [ -1, %if.end80.cleanup220_crit_edge ], [ -1, %if.then98.cleanup220_crit_edge ], [ -1, %if.end102.cleanup220_crit_edge ], [ -1, %if.end107.cleanup220_crit_edge ], [ -1, %lor.lhs.false210.cleanup220_crit_edge ], [ -1, %cleanup185.thread ], [ -1, %if.end188.cleanup220_crit_edge ], [ -1, %if.then37.cleanup220_crit_edge ], [ -1, %if.then10.cleanup220_crit_edge ], [ -1, %if.end198.cleanup220_crit_edge ], [ -1, %for.inc64.cleanup220_crit_edge ], [ -1, %for.inc.cleanup220_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %p) #12
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_get_debug_level() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_conn_out_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_conn_new(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip_vs_control_add(ptr noundef %cp, ptr noundef %ctl_cp) unnamed_addr #7 align 64 {
entry:
  %ip_vs_dbg_buf.i = alloca [160 x i8], align 1
  %ip_vs_dbg_buf12.i = alloca [160 x i8], align 1
  %ip_vs_dbg_buf45.i = alloca [160 x i8], align 1
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  %ip_vs_dbg_buf12 = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  %control = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 20
  %0 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %control, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body11_crit_edge, label %do.body

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body11

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #12
  %2 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %3 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %af, align 2
  %caddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %4)
  %cmp.i = icmp eq i16 %4, 10
  %.str.12..str.13.i = select i1 %cmp.i, ptr @.str.12, ptr @.str.13
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.12..str.13.i, ptr noundef %caddr) #12
  %len.0.i = add i32 %call3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i)
  %cmp7.i = icmp ugt i32 %len.0.i, 161
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !112

do.body10.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #12, !srcloc !113
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.body
  %cport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 1
  %5 = ptrtoint ptr %cport to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cport, align 4
  %7 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %af, align 2
  %vaddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %8)
  %cmp.i55 = icmp eq i16 %8, 10
  %arrayidx.i56 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %len.0.i
  %sub.i57 = sub nsw i32 159, %call3.i
  %.str.12..str.13.i58 = select i1 %cmp.i55, ptr @.str.12, ptr @.str.13
  %call3.i59 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i56, i32 noundef %sub.i57, ptr noundef nonnull %.str.12..str.13.i58, ptr noundef %vaddr) #12
  %len.0.i60 = add nsw i32 %call3.i, 2
  %add5.i61 = add i32 %len.0.i60, %call3.i59
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i61)
  %cmp7.i62 = icmp ugt i32 %add5.i61, 161
  br i1 %cmp7.i62, label %do.body10.i63, label %ip_vs_dbg_addr.exit65, !prof !112

do.body10.i63:                                    ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #12, !srcloc !113
  unreachable

ip_vs_dbg_addr.exit65:                            ; preds = %ip_vs_dbg_addr.exit
  %conv2 = zext i16 %6 to i32
  %vport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 3
  %9 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vport, align 4
  %conv7 = zext i16 %10 to i32
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef %conv2, ptr noundef %arrayidx.i56, i32 noundef %conv7) #15
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #12
  %11 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %control, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %do.body.i, label %do.body11.i

do.body.i:                                        ; preds = %ip_vs_dbg_addr.exit65
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf.i) #12
  %13 = call ptr @memset(ptr %ip_vs_dbg_buf.i, i32 255, i32 160)
  %14 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %15)
  %cmp.i.i = icmp eq i16 %15, 10
  %.str.12..str.13.i.i = select i1 %cmp.i.i, ptr @.str.12, ptr @.str.13
  %call3.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf.i, i32 noundef 160, ptr noundef nonnull %.str.12..str.13.i.i, ptr noundef %caddr) #12
  %len.0.i.i = add i32 %call3.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i.i)
  %cmp7.i.i = icmp ugt i32 %len.0.i.i, 161
  br i1 %cmp7.i.i, label %do.body10.i.i, label %ip_vs_dbg_addr.exit.i, !prof !112

do.body10.i.i:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #12, !srcloc !113
  unreachable

ip_vs_dbg_addr.exit.i:                            ; preds = %do.body.i
  %16 = ptrtoint ptr %cport to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cport, align 4
  %18 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %19)
  %cmp.i92.i = icmp eq i16 %19, 10
  %arrayidx.i93.i = getelementptr i8, ptr %ip_vs_dbg_buf.i, i32 %len.0.i.i
  %sub.i94.i = sub nsw i32 159, %call3.i.i
  %.str.12..str.13.i95.i = select i1 %cmp.i92.i, ptr @.str.12, ptr @.str.13
  %call3.i96.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i93.i, i32 noundef %sub.i94.i, ptr noundef nonnull %.str.12..str.13.i95.i, ptr noundef %vaddr) #12
  %len.0.i97.i = add nsw i32 %call3.i.i, 2
  %add5.i98.i = add i32 %len.0.i97.i, %call3.i96.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i98.i)
  %cmp7.i99.i = icmp ugt i32 %add5.i98.i, 161
  br i1 %cmp7.i99.i, label %do.body10.i100.i, label %ip_vs_dbg_addr.exit102.i, !prof !112

do.body10.i100.i:                                 ; preds = %ip_vs_dbg_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #12, !srcloc !113
  unreachable

ip_vs_dbg_addr.exit102.i:                         ; preds = %ip_vs_dbg_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv2.i = zext i16 %17 to i32
  %20 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vport, align 4
  %conv7.i = zext i16 %21 to i32
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %ip_vs_dbg_buf.i, i32 noundef %conv2.i, ptr noundef %arrayidx.i93.i, i32 noundef %conv7.i) #15
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf.i) #12
  br label %do.body11

do.body11.i:                                      ; preds = %ip_vs_dbg_addr.exit65
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf12.i) #12
  %22 = call ptr @memset(ptr %ip_vs_dbg_buf12.i, i32 255, i32 160)
  %call14.i = call i32 @ip_vs_get_debug_level() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call14.i)
  %cmp.i66 = icmp sgt i32 %call14.i, 6
  br i1 %cmp.i66, label %do.end19.i, label %do.body11.i.if.end36.i_crit_edge

do.body11.i.if.end36.i_crit_edge:                 ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i

do.end19.i:                                       ; preds = %do.body11.i
  %23 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %24)
  %cmp.i103.i = icmp eq i16 %24, 10
  %.str.12..str.13.i106.i = select i1 %cmp.i103.i, ptr @.str.12, ptr @.str.13
  %call3.i107.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf12.i, i32 noundef 160, ptr noundef nonnull %.str.12..str.13.i106.i, ptr noundef %caddr) #12
  %len.0.i108.i = add i32 %call3.i107.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i108.i)
  %cmp7.i110.i = icmp ugt i32 %len.0.i108.i, 161
  br i1 %cmp7.i110.i, label %do.body10.i111.i, label %ip_vs_dbg_addr.exit113.i, !prof !112

do.body10.i111.i:                                 ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #12, !srcloc !113
  unreachable

ip_vs_dbg_addr.exit113.i:                         ; preds = %do.end19.i
  %25 = ptrtoint ptr %cport to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %cport, align 4
  %27 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %af, align 2
  %caddr31.i = getelementptr inbounds %struct.ip_vs_conn, ptr %12, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %28)
  %cmp.i114.i = icmp eq i16 %28, 10
  %arrayidx.i115.i = getelementptr i8, ptr %ip_vs_dbg_buf12.i, i32 %len.0.i108.i
  %sub.i116.i = sub nsw i32 159, %call3.i107.i
  %.str.12..str.13.i117.i = select i1 %cmp.i114.i, ptr @.str.12, ptr @.str.13
  %call3.i118.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i115.i, i32 noundef %sub.i116.i, ptr noundef nonnull %.str.12..str.13.i117.i, ptr noundef %caddr31.i) #12
  %len.0.i119.i = add nsw i32 %call3.i107.i, 2
  %add5.i120.i = add i32 %len.0.i119.i, %call3.i118.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i120.i)
  %cmp7.i121.i = icmp ugt i32 %add5.i120.i, 161
  br i1 %cmp7.i121.i, label %do.body10.i122.i, label %ip_vs_dbg_addr.exit124.i, !prof !112

do.body10.i122.i:                                 ; preds = %ip_vs_dbg_addr.exit113.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #12, !srcloc !113
  unreachable

ip_vs_dbg_addr.exit124.i:                         ; preds = %ip_vs_dbg_addr.exit113.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv27.i = zext i16 %26 to i32
  %cport33.i = getelementptr inbounds %struct.ip_vs_conn, ptr %12, i32 0, i32 1
  %29 = ptrtoint ptr %cport33.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %cport33.i, align 4
  %conv34.i = zext i16 %30 to i32
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull %ip_vs_dbg_buf12.i, i32 noundef %conv27.i, ptr noundef %arrayidx.i115.i, i32 noundef %conv34.i) #15
  br label %if.end36.i

if.end36.i:                                       ; preds = %ip_vs_dbg_addr.exit124.i, %do.body11.i.if.end36.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf12.i) #12
  %31 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %control, align 4
  %n_control.i = getelementptr inbounds %struct.ip_vs_conn, ptr %12, i32 0, i32 21
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %n_control.i, i32 noundef 4) #12
  %32 = ptrtoint ptr %n_control.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %n_control.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp41.i = icmp eq i32 %33, 0
  br i1 %cmp41.i, label %do.body44.i, label %if.end68.i

do.body44.i:                                      ; preds = %if.end36.i
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf45.i) #12
  %34 = call ptr @memset(ptr %ip_vs_dbg_buf45.i, i32 255, i32 160)
  %35 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %36)
  %cmp.i125.i = icmp eq i16 %36, 10
  %.str.12..str.13.i128.i = select i1 %cmp.i125.i, ptr @.str.12, ptr @.str.13
  %call3.i129.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf45.i, i32 noundef 160, ptr noundef nonnull %.str.12..str.13.i128.i, ptr noundef %caddr) #12
  %len.0.i130.i = add i32 %call3.i129.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i130.i)
  %cmp7.i132.i = icmp ugt i32 %len.0.i130.i, 161
  br i1 %cmp7.i132.i, label %do.body10.i133.i, label %ip_vs_dbg_addr.exit135.i, !prof !112

do.body10.i133.i:                                 ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #12, !srcloc !113
  unreachable

ip_vs_dbg_addr.exit135.i:                         ; preds = %do.body44.i
  %37 = ptrtoint ptr %cport to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %cport, align 4
  %39 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %40)
  %cmp.i136.i = icmp eq i16 %40, 10
  %arrayidx.i137.i = getelementptr i8, ptr %ip_vs_dbg_buf45.i, i32 %len.0.i130.i
  %sub.i138.i = sub nsw i32 159, %call3.i129.i
  %.str.12..str.13.i139.i = select i1 %cmp.i136.i, ptr @.str.12, ptr @.str.13
  %call3.i140.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i137.i, i32 noundef %sub.i138.i, ptr noundef nonnull %.str.12..str.13.i139.i, ptr noundef %vaddr) #12
  %len.0.i141.i = add nsw i32 %call3.i129.i, 2
  %add5.i142.i = add i32 %len.0.i141.i, %call3.i140.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i142.i)
  %cmp7.i143.i = icmp ugt i32 %add5.i142.i, 161
  br i1 %cmp7.i143.i, label %do.body10.i144.i, label %ip_vs_dbg_addr.exit146.i, !prof !112

do.body10.i144.i:                                 ; preds = %ip_vs_dbg_addr.exit135.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #12, !srcloc !113
  unreachable

ip_vs_dbg_addr.exit146.i:                         ; preds = %ip_vs_dbg_addr.exit135.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv57.i = zext i16 %38 to i32
  %41 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vport, align 4
  %conv64.i = zext i16 %42 to i32
  %call65.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull %ip_vs_dbg_buf45.i, i32 noundef %conv57.i, ptr noundef %arrayidx.i137.i, i32 noundef %conv64.i) #15
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf45.i) #12
  br label %do.body11

if.end68.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i91.i = call zeroext i1 @__kasan_check_write(ptr noundef %n_control.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %n_control.i, i32 1, i32 3, i32 1) #12
  %43 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_control.i, ptr %n_control.i, i32 1, ptr elementtype(i32) %n_control.i) #12, !srcloc !114
  br label %do.body11

do.body11:                                        ; preds = %if.end68.i, %ip_vs_dbg_addr.exit146.i, %ip_vs_dbg_addr.exit102.i, %entry.do.body11_crit_edge
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf12) #12
  %44 = call ptr @memset(ptr %ip_vs_dbg_buf12, i32 255, i32 160)
  %call14 = call i32 @ip_vs_get_debug_level() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call14)
  %cmp = icmp sgt i32 %call14, 6
  br i1 %cmp, label %do.end19, label %do.body11.if.end36_crit_edge

do.body11.if.end36_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.end19:                                         ; preds = %do.body11
  %af21 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %45 = ptrtoint ptr %af21 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %af21, align 2
  %caddr24 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %46)
  %cmp.i67 = icmp eq i16 %46, 10
  %.str.12..str.13.i70 = select i1 %cmp.i67, ptr @.str.12, ptr @.str.13
  %call3.i71 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf12, i32 noundef 160, ptr noundef nonnull %.str.12..str.13.i70, ptr noundef %caddr24) #12
  %len.0.i72 = add i32 %call3.i71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i72)
  %cmp7.i74 = icmp ugt i32 %len.0.i72, 161
  br i1 %cmp7.i74, label %do.body10.i75, label %ip_vs_dbg_addr.exit77, !prof !112

do.body10.i75:                                    ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #12, !srcloc !113
  unreachable

ip_vs_dbg_addr.exit77:                            ; preds = %do.end19
  %cport26 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 1
  %47 = ptrtoint ptr %cport26 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %cport26, align 4
  %49 = ptrtoint ptr %af21 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %af21, align 2
  %caddr31 = getelementptr inbounds %struct.ip_vs_conn, ptr %ctl_cp, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %50)
  %cmp.i78 = icmp eq i16 %50, 10
  %arrayidx.i79 = getelementptr i8, ptr %ip_vs_dbg_buf12, i32 %len.0.i72
  %sub.i80 = sub nsw i32 159, %call3.i71
  %.str.12..str.13.i81 = select i1 %cmp.i78, ptr @.str.12, ptr @.str.13
  %call3.i82 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i79, i32 noundef %sub.i80, ptr noundef nonnull %.str.12..str.13.i81, ptr noundef %caddr31) #12
  %len.0.i83 = add nsw i32 %call3.i71, 2
  %add5.i84 = add i32 %len.0.i83, %call3.i82
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i84)
  %cmp7.i85 = icmp ugt i32 %add5.i84, 161
  br i1 %cmp7.i85, label %do.body10.i86, label %ip_vs_dbg_addr.exit88, !prof !112

do.body10.i86:                                    ; preds = %ip_vs_dbg_addr.exit77
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #12, !srcloc !113
  unreachable

ip_vs_dbg_addr.exit88:                            ; preds = %ip_vs_dbg_addr.exit77
  call void @__sanitizer_cov_trace_pc() #14
  %conv27 = zext i16 %48 to i32
  %cport33 = getelementptr inbounds %struct.ip_vs_conn, ptr %ctl_cp, i32 0, i32 1
  %51 = ptrtoint ptr %cport33 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %cport33, align 4
  %conv34 = zext i16 %52 to i32
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %ip_vs_dbg_buf12, i32 noundef %conv27, ptr noundef %arrayidx.i79, i32 noundef %conv34) #15
  br label %if.end36

if.end36:                                         ; preds = %ip_vs_dbg_addr.exit88, %do.body11.if.end36_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf12) #12
  %53 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %ctl_cp, ptr %control, align 4
  %n_control = getelementptr inbounds %struct.ip_vs_conn, ptr %ctl_cp, i32 0, i32 21
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %n_control, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %n_control, i32 1, i32 3, i32 1) #12
  %54 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_control, ptr %n_control, i32 1, ptr elementtype(i32) %n_control) #12, !srcloc !115
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_nfct_expect_related(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_tcp_conn_listen(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_conn_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in6_pton(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in4_pton(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__nf_nat_mangle_tcp_packet(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_proto_name(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_conn_in_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !36, !37, !38, !40, !42, !44, !46, !48, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !74, !75, !76, !78, !80, !81, !82, !84, !86, !87, !88, !90, !91, !92, !94, !96, !97, !98, !100, !101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__param_ports, !1, !"__param_ports", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 62, i32 1}
!2 = !{ptr @__UNIQUE_ID_portstype691, !1, !"__UNIQUE_ID_portstype691", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_ports692, !4, !"__UNIQUE_ID_ports692", i1 false, i1 false}
!4 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 63, i32 1}
!5 = !{ptr @__initcall__kmod_ip_vs_ftp__693_635_ip_vs_ftp_init6, !6, !"__initcall__kmod_ip_vs_ftp__693_635_ip_vs_ftp_init6", i1 false, i1 false}
!6 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 635, i32 1}
!7 = !{ptr @__exitcall_ip_vs_ftp_exit, !8, !"__exitcall_ip_vs_ftp_exit", i1 false, i1 false}
!8 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 636, i32 1}
!9 = !{ptr @__UNIQUE_ID_file694, !10, !"__UNIQUE_ID_file694", i1 false, i1 false}
!10 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 637, i32 1}
!11 = !{ptr @__UNIQUE_ID_license695, !10, !"__UNIQUE_ID_license695", i1 false, i1 false}
!12 = !{ptr @__param_str_ports, !1, !"__param_str_ports", i1 false, i1 false}
!13 = !{ptr @__param_arr_ports, !1, !"__param_arr_ports", i1 false, i1 false}
!14 = !{ptr @ports_count, !15, !"ports_count", i1 false, i1 false}
!15 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 60, i32 21}
!16 = !{ptr @ports, !17, !"ports", i1 false, i1 false}
!17 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 61, i32 23}
!18 = !{ptr @ip_vs_ftp_ops, !19, !"ip_vs_ftp_ops", i1 false, i1 false}
!19 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 614, i32 33}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 559, i32 11}
!22 = !{ptr @ip_vs_ftp, !23, !"ip_vs_ftp", i1 false, i1 false}
!23 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 558, i32 25}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 281, i32 9}
!26 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 288, i32 3}
!28 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ip_vs_ftp_out._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @ip_vs_ftp_out._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 302, i32 9}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 309, i32 3}
!36 = !{ptr @ip_vs_ftp_out._entry.6, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ip_vs_ftp_out._entry_ptr.8, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 346, i32 30}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 357, i32 30}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/net/ip_vs.h", i32 196, i32 46}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/net/ip_vs.h", i32 200, i32 46}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/net/ip_vs.h", i32 1306, i32 3}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ip_vs_control_add._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @ip_vs_control_add._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/net/ip_vs.h", i32 1316, i32 2}
!54 = !{ptr @ip_vs_control_add._entry.17, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ip_vs_control_add._entry_ptr.19, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/net/ip_vs.h", i32 1271, i32 3}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ip_vs_control_del._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @ip_vs_control_del._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/net/ip_vs.h", i32 1281, i32 2}
!63 = !{ptr @ip_vs_control_del._entry.22, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @ip_vs_control_del._entry_ptr.24, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/net/ip_vs.h", i32 1290, i32 3}
!67 = !{ptr @ip_vs_control_del._entry.25, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @ip_vs_control_del._entry_ptr.27, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 446, i32 25}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 448, i32 4}
!73 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ip_vs_ftp_in._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @ip_vs_ftp_in._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 456, i32 25}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 474, i32 4}
!80 = !{ptr @ip_vs_ftp_in._entry.32, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ip_vs_ftp_in._entry_ptr.34, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 493, i32 8}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 499, i32 3}
!86 = !{ptr @ip_vs_ftp_in._entry.36, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @ip_vs_ftp_in._entry_ptr.38, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 502, i32 3}
!90 = !{ptr @ip_vs_ftp_in._entry.39, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @ip_vs_ftp_in._entry_ptr.41, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 507, i32 8}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 513, i32 3}
!96 = !{ptr @ip_vs_ftp_in._entry.43, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ip_vs_ftp_in._entry_ptr.45, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/netfilter/ipvs/ip_vs_ftp.c", i32 517, i32 3}
!100 = !{ptr @ip_vs_ftp_in._entry.46, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @ip_vs_ftp_in._entry_ptr.48, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{!"auto-init"}
!112 = !{!"branch_weights", i32 1, i32 2000}
!113 = !{i64 2159116429, i64 2159116913, i64 2159116466, i64 2159116522, i64 2159116556, i64 2159116580, i64 2159116621, i64 2159116642, i64 2159116670, i64 2159116704}
!114 = !{i64 2148356429, i64 2148356455, i64 2148356484, i64 2148356518, i64 2148356549, i64 2148356572}
!115 = !{i64 2148353964, i64 2148353990, i64 2148354019, i64 2148354053, i64 2148354084, i64 2148354107}
