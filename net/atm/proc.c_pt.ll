; ModuleID = '/llk/IR_all_yes/net/atm/proc.c_pt.bc'
source_filename = "../net/atm/proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+atm_proc_root\22, \22a\22\09"
module asm "\09.weak\09__crc_atm_proc_root\09\09\09\09"
module asm "\09.long\09__crc_atm_proc_root\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atm_proc_root:\09\09\09\09\09"
module asm "\09.asciz \09\22atm_proc_root\22\09\09\09\09\09"
module asm "__kstrtabns_atm_proc_root:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.68, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.68 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
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
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.atmdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atm_dev = type { ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, %struct.list_head, [6 x i8], %struct.atm_cirange, %struct.k_atm_dev_stats, i8, i32, %struct.refcount_struct, %struct.spinlock, ptr, ptr, %struct.device, %struct.list_head }
%struct.atm_cirange = type { i8, i8 }
%struct.k_atm_dev_stats = type { %struct.k_atm_aal_stats, %struct.k_atm_aal_stats, %struct.k_atm_aal_stats }
%struct.k_atm_aal_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.147, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.148, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.149, ptr, %struct.address_space, %struct.list_head, %union.anon.150, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.147 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.148 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.149 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.150 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.vcc_state = type { i32, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%union.anon.115 = type { i32 }
%union.anon.116 = type { %struct.hlist_node }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%struct.atm_vcc = type { %struct.sock, i32, i16, i32, i32, i32, ptr, %struct.atm_qos, %struct.atm_sap, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.119 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.120 = type { ptr }
%union.anon.121 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.atm_qos = type <{ %struct.atm_trafprm, %struct.atm_trafprm, i8, [3 x i8] }>
%struct.atm_trafprm = type { i8, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.atm_sap = type { %struct.atm_bhli, [3 x %struct.atm_blli] }
%struct.atm_bhli = type { i8, i8, [8 x i8] }
%struct.atm_blli = type { i8, %union.anon.140, i8, %union.anon.142 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { i8, i8 }
%union.anon.142 = type { %struct.anon.145 }
%struct.anon.145 = type { i8, [5 x i8] }
%struct.sockaddr_atmsvc = type { i16, %struct.anon.146 }
%struct.anon.146 = type { [20 x i8], [13 x i8], i8, i32 }
%struct.clip_vcc = type { ptr, ptr, i32, i8, i32, i32, ptr, ptr, ptr }
%struct.atmarp_entry = type { ptr, i32, ptr }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }

@atm_proc_root = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_atm_proc_root = external dso_local constant [0 x i8], align 1
@__kstrtabns_atm_proc_root = external dso_local constant [0 x i8], align 1
@__ksymtab_atm_proc_root = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atm_proc_root to i32), ptr @__kstrtab_atm_proc_root, ptr @__kstrtabns_atm_proc_root }, section "___ksymtab+atm_proc_root", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s:%d\00", [26 x i8] zeroinitializer }, align 32
@atm_dev_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr null, ptr @proc_dev_atm_read, ptr null, ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"atm\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devices\00", [24 x i8] zeroinitializer }, align 32
@atm_dev_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @atm_dev_seq_start, ptr @atm_dev_seq_stop, ptr @atm_dev_seq_next, ptr @atm_dev_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pvc\00", [28 x i8] zeroinitializer }, align 32
@pvc_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @vcc_seq_start, ptr @vcc_seq_stop, ptr @vcc_seq_next, ptr @pvc_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"svc\00", [28 x i8] zeroinitializer }, align 32
@svc_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @vcc_seq_start, ptr @vcc_seq_stop, ptr @vcc_seq_next, ptr @svc_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"vc\00", [29 x i8] zeroinitializer }, align 32
@vcc_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @vcc_seq_start, ptr @vcc_seq_stop, ptr @vcc_seq_next, ptr @vcc_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@atm_dev_seq_show.atm_dev_banner = internal global { [78 x i8], [50 x i8] } { [78 x i8] c"Itf Type    ESI/\22MAC\22addr AAL(TX,err,RX,err,drop) ...               [refcnt]\0A\00", [50 x i8] zeroinitializer }, align 32
@atm_devs = external dso_local global %struct.list_head, align 4
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%3d %-8s\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"  \00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"5\00", [30 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\09[%d]\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s ( %d %d %d %d %d )\00", [42 x i8] zeroinitializer }, align 32
@vcc_sklist_lock = external dso_local global %struct.rwlock_t, align 4
@vcc_hash = external dso_local global [32 x %struct.hlist_head], align 4
@pvc_seq_show.atm_pvc_banner = internal global { [47 x i8], [49 x i8] } { [47 x i8] c"Itf VPI VCI   AAL RX(PCR,Class) TX(PCR,Class)\0A\00", [49 x i8] zeroinitializer }, align 32
@pvc_info.class_name = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UBR\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CBR\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VBR\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ABR\00", [28 x i8] zeroinitializer }, align 32
@pvc_info.aal_name = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.13, ptr @.str.25, ptr @.str.25, ptr @.str.25, ptr @.str.25, ptr @.str.25, ptr @.str.25, ptr @.str.25, ptr @.str.12, ptr @.str.25, ptr @.str.25], [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"---\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3/4\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%3d %3d %5d %-3s %7d %-5s %7d %-6s\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"err\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CLIP, Itf:%s, Encap:\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"none?\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LLC/SNAP\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@svc_seq_show.atm_svc_banner = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Itf VPI VCI           State      Remote\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"N/A@%pK%10s\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%3d %3d %5d         \00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%-10s \00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"+\00", [30 x i8] zeroinitializer }, align 32
@vcc_state.map = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IDLE\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CONNECTED\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLOSING\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LISTEN\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"INUSE\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BOUND\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%-8s%s\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Address \00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Itf VPI VCI   Fam Flags Reply Send buffer     Recv buffer      [refcnt]\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pK \00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Unassigned    \00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%3d %3d %5d \00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PVC\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SVC\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%3d\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c" %04lx  %5d %7d/%7d %7d/%7d [%d]\0A\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 8, i64 20]
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"atm_proc_root\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 344, i32 24 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 357, i32 41 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"atm_dev_proc_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 39, i32 30 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 384, i32 44 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 387, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"atm_dev_seq_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 240, i32 36 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 388, i32 26 }
@___asan_gen_.76 = private unnamed_addr constant [12 x i8] c"pvc_seq_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 263, i32 36 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 390, i32 26 }
@___asan_gen_.82 = private unnamed_addr constant [12 x i8] c"svc_seq_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 308, i32 36 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 392, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"vcc_seq_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 285, i32 36 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 230, i32 6 }
@___asan_gen_.95 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 214, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 174, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [15 x i8] c"atm_dev_banner\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 226, i32 14 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 57, i32 18 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 59, i32 19 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 60, i32 16 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 61, i32 17 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 63, i32 17 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 64, i32 18 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 47, i32 18 }
@___asan_gen_.124 = private unnamed_addr constant [15 x i8] c"atm_pvc_banner\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 249, i32 14 }
@___asan_gen_.127 = private unnamed_addr constant [11 x i8] c"class_name\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 143, i32 27 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 144, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 144, i32 10 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 144, i32 17 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 144, i32 24 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 144, i32 31 }
@___asan_gen_.145 = private unnamed_addr constant [9 x i8] c"aal_name\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 145, i32 27 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 146, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 146, i32 10 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 146, i32 15 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 146, i32 20 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 147, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 151, i32 18 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 153, i32 45 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 163, i32 19 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 164, i32 25 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 165, i32 19 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 165, i32 43 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 165, i32 56 }
@___asan_gen_.184 = private unnamed_addr constant [15 x i8] c"atm_svc_banner\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 294, i32 20 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 208, i32 7 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 208, i32 42 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 210, i32 19 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 212, i32 18 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 213, i32 18 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 214, i32 63 }
@___asan_gen_.205 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 172, i32 27 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 172, i32 37 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 273, i32 41 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 274, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 274, i32 16 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 181, i32 18 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 183, i32 19 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 185, i32 19 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 189, i32 19 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 192, i32 19 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 195, i32 19 }
@___asan_gen_.253 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.254 = private constant [18 x i8] c"../net/atm/proc.c\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 197, i32 18 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__ksymtab_atm_proc_root, ptr @atm_proc_root, ptr @.str, ptr @atm_dev_proc_ops, ptr @.str.1, ptr @.str.2, ptr @atm_dev_seq_ops, ptr @.str.3, ptr @pvc_seq_ops, ptr @.str.4, ptr @svc_seq_ops, ptr @.str.5, ptr @vcc_seq_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @atm_dev_seq_show.atm_dev_banner, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @pvc_seq_show.atm_pvc_banner, ptr @pvc_info.class_name, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @pvc_info.aal_name, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @svc_seq_show.atm_svc_banner, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @vcc_state.map, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_proc_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_dev_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_dev_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvc_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcc_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_dev_seq_show.atm_dev_banner to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvc_seq_show.atm_pvc_banner to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvc_info.class_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvc_info.aal_name to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_seq_show.atm_svc_banner to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcc_state.map to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atm_proc_dev_register(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %proc_read = getelementptr inbounds %struct.atmdev_ops, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %proc_read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_read, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 8
  %number = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, ptr noundef %5, i32 noundef %7) #4
  %proc_name = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 17
  %8 = ptrtoint ptr %proc_name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %proc_name, align 4
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr @atm_proc_root, align 4
  %call6 = tail call ptr @proc_create_data(ptr noundef nonnull %call, i16 noundef zeroext 0, ptr noundef %9, ptr noundef nonnull @atm_dev_proc_ops, ptr noundef %dev) #4
  %proc_entry = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 16
  %10 = ptrtoint ptr %proc_entry to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6, ptr %proc_entry, align 8
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %err_free_name, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err_free_name:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %proc_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %proc_name, align 4
  tail call void @kfree(ptr noundef %12) #4
  br label %cleanup

cleanup:                                          ; preds = %err_free_name, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %err_free_name ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atm_proc_dev_deregister(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %proc_read = getelementptr inbounds %struct.atmdev_ops, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %proc_read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_read, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %proc_name = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %proc_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proc_name, align 4
  %6 = load ptr, ptr @atm_proc_root, align 4
  tail call void @remove_proc_entry(ptr noundef %5, ptr noundef %6) #4
  %7 = ptrtoint ptr %proc_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %proc_name, align 4
  tail call void @kfree(ptr noundef %8) #4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atm_proc_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call.i = tail call ptr @_proc_mkdir(ptr noundef nonnull @.str.1, i16 noundef zeroext 0, ptr noundef %0, ptr noundef nonnull @init_net, i1 noundef zeroext true) #4
  store ptr %call.i, ptr @atm_proc_root, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef nonnull %call.i, ptr noundef nonnull @atm_dev_seq_ops, i32 noundef 0, ptr noundef null) #4
  %1 = load ptr, ptr @atm_proc_root, align 4
  %call2 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull @pvc_seq_ops, i32 noundef 8, ptr noundef nonnull inttoptr (i32 8 to ptr)) #4
  %2 = load ptr, ptr @atm_proc_root, align 4
  %call3 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %2, ptr noundef nonnull @svc_seq_ops, i32 noundef 8, ptr noundef nonnull inttoptr (i32 20 to ptr)) #4
  %3 = load ptr, ptr @atm_proc_root, align 4
  %call4 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @vcc_seq_ops, i32 noundef 8, ptr noundef null) #4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atm_proc_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call = tail call i32 @remove_proc_subtree(ptr noundef nonnull @.str.1, ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_proc_subtree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_dev_atm_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @get_zeroed_page(i32 noundef 3264) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %proc_read = getelementptr inbounds %struct.atmdev_ops, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %proc_read to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %proc_read, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end2.if.end20_crit_edge, label %if.else

if.end2.if.end20_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.else:                                          ; preds = %if.end2
  %8 = inttoptr i32 %call to ptr
  %call9 = tail call i32 %7(ptr noundef %3, ptr noundef %pos, ptr noundef nonnull %8) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9, i32 %count)
  %cmp10 = icmp ugt i32 %call9, %count
  br i1 %cmp10, label %if.else.if.end20_crit_edge, label %if.end13

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %cmp14 = icmp sgt i32 %call9, -1
  br i1 %cmp14, label %if.then.i.i.i, label %if.end13.if.end20_crit_edge

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then.i.i.i:                                    ; preds = %if.end13
  tail call void @__check_object_size(ptr noundef nonnull %8, i32 noundef %call9, i1 noundef zeroext true) #4
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #4
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #4
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit.thread_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %call9, i32 -1226833920) #7, !srcloc !141
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %copy_to_user.exit.thread

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %8, i32 noundef %call9) #4
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %8, i32 noundef %call9) #4
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %if.then.i.i.i.copy_to_user.exit.thread_crit_edge
  %n.addr.0.i = phi i32 [ %call9, %if.then.i.i.i.copy_to_user.exit.thread_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %call9, %if.end.i.i.copy_to_user.exit.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool17.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool17.not, i32 %call9, i32 -14
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pos, align 8
  %inc = add i64 %11, 1
  store i64 %inc, ptr %pos, align 8
  br label %if.end20

if.end20:                                         ; preds = %copy_to_user.exit.thread, %if.end13.if.end20_crit_edge, %if.else.if.end20_crit_edge, %if.end2.if.end20_crit_edge
  %length.2 = phi i32 [ %spec.select, %copy_to_user.exit.thread ], [ %call9, %if.end13.if.end20_crit_edge ], [ -22, %if.end2.if.end20_crit_edge ], [ -22, %if.else.if.end20_crit_edge ]
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %length.2, %if.end20 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_proc_mkdir(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atm_dev_seq_start(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atm_dev_seq_stop(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atm_dev_seq_next(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atm_dev_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, @atm_devs
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @atm_dev_seq_show.atm_dev_banner) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %number.i = getelementptr i8, ptr %v, i32 -1092
  %0 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %number.i, align 4
  %type.i = getelementptr i8, ptr %v, i32 -1096
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, i32 noundef %1, ptr noundef %3) #4
  %arrayidx.i = getelementptr i8, ptr %v, i32 -1060
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv.i) #4
  %arrayidx.1.i = getelementptr i8, ptr %v, i32 -1059
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv.1.i) #4
  %arrayidx.2.i = getelementptr i8, ptr %v, i32 -1058
  %8 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv.2.i) #4
  %arrayidx.3.i = getelementptr i8, ptr %v, i32 -1057
  %10 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv.3.i) #4
  %arrayidx.4.i = getelementptr i8, ptr %v, i32 -1056
  %12 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.4.i, align 1
  %conv.4.i = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv.4.i) #4
  %arrayidx.5.i = getelementptr i8, ptr %v, i32 -1055
  %14 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.5.i, align 1
  %conv.5.i = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv.5.i) #4
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.11) #4
  %stats.i = getelementptr i8, ptr %v, i32 -1052
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %stats.i, i32 noundef 4) #4
  %16 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %stats.i, align 4
  %tx_err.i.i = getelementptr i8, ptr %v, i32 -1048
  %call.i.i9.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_err.i.i, i32 noundef 4) #4
  %18 = ptrtoint ptr %tx_err.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %tx_err.i.i, align 4
  %rx.i.i = getelementptr i8, ptr %v, i32 -1044
  %call.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx.i.i, i32 noundef 4) #4
  %20 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %rx.i.i, align 4
  %rx_err.i.i = getelementptr i8, ptr %v, i32 -1040
  %call.i.i11.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_err.i.i, i32 noundef 4) #4
  %22 = ptrtoint ptr %rx_err.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %rx_err.i.i, align 4
  %rx_drop.i.i = getelementptr i8, ptr %v, i32 -1036
  %call.i.i12.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_drop.i.i, i32 noundef 4) #4
  %24 = ptrtoint ptr %rx_drop.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %rx_drop.i.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25) #4
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.11) #4
  %aal5.i = getelementptr i8, ptr %v, i32 -1012
  %call.i.i.i16.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %aal5.i, i32 noundef 4) #4
  %26 = ptrtoint ptr %aal5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %aal5.i, align 4
  %tx_err.i17.i = getelementptr i8, ptr %v, i32 -1008
  %call.i.i9.i18.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_err.i17.i, i32 noundef 4) #4
  %28 = ptrtoint ptr %tx_err.i17.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %tx_err.i17.i, align 4
  %rx.i19.i = getelementptr i8, ptr %v, i32 -1004
  %call.i.i10.i20.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx.i19.i, i32 noundef 4) #4
  %30 = ptrtoint ptr %rx.i19.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %rx.i19.i, align 4
  %rx_err.i21.i = getelementptr i8, ptr %v, i32 -1000
  %call.i.i11.i22.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_err.i21.i, i32 noundef 4) #4
  %32 = ptrtoint ptr %rx_err.i21.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %rx_err.i21.i, align 4
  %rx_drop.i23.i = getelementptr i8, ptr %v, i32 -996
  %call.i.i12.i24.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_drop.i23.i, i32 noundef 4) #4
  %34 = ptrtoint ptr %rx_drop.i23.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %rx_drop.i23.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35) #4
  %refcnt.i = getelementptr i8, ptr %v, i32 -984
  %call.i.i.i25.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #4
  %36 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %refcnt.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.14, i32 noundef %37) #4
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vcc_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @vcc_sklist_lock) #4
  %sk = getelementptr inbounds %struct.vcc_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %sk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 1 to ptr), ptr %sk, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %entry
  %5 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private, align 8
  %file.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  %7 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %file.i, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f_inode.i.i, align 8
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 54
  %11 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_private.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %sk.i = getelementptr inbounds %struct.vcc_state, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk.i, align 4
  %cmp.i.i = icmp eq ptr %15, inttoptr (i32 1 to ptr)
  br i1 %cmp.i.i, label %for.cond.preheader.i.i, label %cond.true.if.end5.i.i_crit_edge

cond.true.if.end5.i.i_crit_edge:                  ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i.i

for.cond.preheader.i.i:                           ; preds = %cond.true
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %6, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %storemerge56.i.i, 1
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %inc.i.i, ptr %6, align 4
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %for.cond.i.i.for.end.i.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %storemerge56.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [32 x %struct.hlist_head], ptr @vcc_hash, i32 0, i32 %storemerge56.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %19, null
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 -84
  %tobool3.not.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %or.cond.i.i = or i1 %tobool.not.i.i.i, %tobool3.not.i.i
  br i1 %or.cond.i.i, label %for.cond.i.i, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.i.i.for.end.i.i_crit_edge
  %sk.1.i.i = phi ptr [ null, %for.cond.i.i.for.end.i.i_crit_edge ], [ %add.ptr.i.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %dec.i.i = add i64 %3, -1
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %for.end.i.i, %cond.true.if.end5.i.i_crit_edge
  %l.addr.0.i.i = phi i64 [ %dec.i.i, %for.end.i.i ], [ %3, %cond.true.if.end5.i.i_crit_edge ]
  %sk.2.i.i = phi ptr [ %sk.1.i.i, %for.end.i.i ], [ %15, %cond.true.if.end5.i.i_crit_edge ]
  %tobool.not.i47.i.i = icmp eq ptr %12, null
  br label %try_again.i.i

try_again.i.i:                                    ; preds = %if.then21.i.i, %if.end5.i.i
  %l.addr.1.i.i = phi i64 [ %l.addr.0.i.i, %if.end5.i.i ], [ %l.addr.2.lcssa.i.i, %if.then21.i.i ]
  %sk.3.i.i = phi ptr [ %sk.2.i.i, %if.end5.i.i ], [ %sk.3.i.i.be, %if.then21.i.i ]
  %tobool7.not57.i.i = icmp eq ptr %sk.3.i.i, null
  br i1 %tobool7.not57.i.i, label %try_again.i.i.land.lhs.true.i.i_crit_edge, label %try_again.i.i.for.body8.i.i_crit_edge

try_again.i.i.for.body8.i.i_crit_edge:            ; preds = %try_again.i.i
  br label %for.body8.i.i

try_again.i.i.land.lhs.true.i.i_crit_edge:        ; preds = %try_again.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i.i

for.body8.i.i:                                    ; preds = %for.inc14.i.i.for.body8.i.i_crit_edge, %try_again.i.i.for.body8.i.i_crit_edge
  %sk.459.i.i = phi ptr [ %add.ptr.i49.i.i, %for.inc14.i.i.for.body8.i.i_crit_edge ], [ %sk.3.i.i, %try_again.i.i.for.body8.i.i_crit_edge ]
  %l.addr.258.i.i = phi i64 [ %sub.i.i, %for.inc14.i.i.for.body8.i.i_crit_edge ], [ %l.addr.1.i.i, %try_again.i.i.for.body8.i.i_crit_edge ]
  br i1 %tobool.not.i47.i.i, label %for.body8.i.i.compare_family.exit.i.i_crit_edge, label %lor.rhs.i.i.i

for.body8.i.i.compare_family.exit.i.i_crit_edge:  ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %compare_family.exit.i.i

lor.rhs.i.i.i:                                    ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %skc_family.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk.459.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %skc_family.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %skc_family.i.i.i, align 8
  %conv.i.i.i = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %13)
  %cmp.i.i.i = icmp eq i32 %conv.i.i.i, %13
  %phi.cast.i.i.i = zext i1 %cmp.i.i.i to i32
  br label %compare_family.exit.i.i

compare_family.exit.i.i:                          ; preds = %lor.rhs.i.i.i, %for.body8.i.i.compare_family.exit.i.i_crit_edge
  %22 = phi i32 [ 1, %for.body8.i.i.compare_family.exit.i.i_crit_edge ], [ %phi.cast.i.i.i, %lor.rhs.i.i.i ]
  %23 = zext i32 %22 to i64
  %sub.i.i = sub i64 %l.addr.258.i.i, %23
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp10.i.i = icmp slt i64 %sub.i.i, 0
  br i1 %cmp10.i.i, label %__vcc_walk.exit.thread.i, label %for.inc14.i.i

__vcc_walk.exit.thread.i:                         ; preds = %compare_family.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %sk.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %sk.459.i.i, ptr %sk.i, align 4
  br label %cond.end

for.inc14.i.i:                                    ; preds = %compare_family.exit.i.i
  %25 = getelementptr inbounds %struct.sock_common, ptr %sk.459.i.i, i32 0, i32 15
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool.not.i48.i.i = icmp eq ptr %27, null
  %add.ptr.i49.i.i = getelementptr i8, ptr %27, i32 -84
  %tobool7.not64.i.i = icmp eq ptr %add.ptr.i49.i.i, null
  %tobool7.not.i.i = or i1 %tobool.not.i48.i.i, %tobool7.not64.i.i
  br i1 %tobool7.not.i.i, label %for.inc14.i.i.land.lhs.true.i.i_crit_edge, label %for.inc14.i.i.for.body8.i.i_crit_edge

for.inc14.i.i.for.body8.i.i_crit_edge:            ; preds = %for.inc14.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body8.i.i

for.inc14.i.i.land.lhs.true.i.i_crit_edge:        ; preds = %for.inc14.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.inc14.i.i.land.lhs.true.i.i_crit_edge, %try_again.i.i.land.lhs.true.i.i_crit_edge
  %l.addr.2.lcssa.i.i = phi i64 [ %l.addr.1.i.i, %try_again.i.i.land.lhs.true.i.i_crit_edge ], [ %sub.i.i, %for.inc14.i.i.land.lhs.true.i.i_crit_edge ]
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %6, align 4
  %inc18.i.i = add i32 %29, 1
  store i32 %inc18.i.i, ptr %6, align 4
  %cmp19.i.i = icmp slt i32 %inc18.i.i, 32
  br i1 %cmp19.i.i, label %if.then21.i.i, label %__vcc_walk.exit.i

if.then21.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx22.i.i = getelementptr [32 x %struct.hlist_head], ptr @vcc_hash, i32 0, i32 %inc18.i.i
  %30 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %arrayidx22.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %31, null
  %add.ptr.i.i.i.i = getelementptr i8, ptr %31, i32 -84
  %sk.3.i.i.be = select i1 %tobool.not.i.not.i.i.i, ptr null, ptr %add.ptr.i.i.i.i
  br label %try_again.i.i

__vcc_walk.exit.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %sk.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 1 to ptr), ptr %sk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %l.addr.2.lcssa.i.i)
  %tobool.not.i = icmp sgt i64 %l.addr.2.lcssa.i.i, -1
  %spec.select9.i = select i1 %tobool.not.i, ptr null, ptr %6
  br label %cond.end

cond.end:                                         ; preds = %__vcc_walk.exit.i, %__vcc_walk.exit.thread.i, %entry.cond.end_crit_edge
  %cond = phi ptr [ inttoptr (i32 1 to ptr), %entry.cond.end_crit_edge ], [ %6, %__vcc_walk.exit.thread.i ], [ %spec.select9.i, %__vcc_walk.exit.i ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vcc_seq_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_unlock(ptr noundef nonnull @vcc_sklist_lock) #4
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vcc_seq_next(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %file.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  %2 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file.i, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i.i, align 8
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 54
  %6 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_private.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  %sk.i = getelementptr inbounds %struct.vcc_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk.i, align 4
  %cmp.i.i = icmp eq ptr %10, inttoptr (i32 1 to ptr)
  br i1 %cmp.i.i, label %for.cond.preheader.i.i, label %entry.if.end5.i.i_crit_edge

entry.if.end5.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i.i

for.cond.preheader.i.i:                           ; preds = %entry
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %1, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %storemerge56.i.i, 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %inc.i.i, ptr %1, align 4
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.end5.i.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.cond.i.i.if.end5.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %storemerge56.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [32 x %struct.hlist_head], ptr @vcc_hash, i32 0, i32 %storemerge56.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %14, null
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 -84
  %tobool3.not.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %or.cond.i.i = or i1 %tobool.not.i.i.i, %tobool3.not.i.i
  br i1 %or.cond.i.i, label %for.cond.i.i, label %for.body.i.i.if.end5.i.i_crit_edge

for.body.i.i.if.end5.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %for.body.i.i.if.end5.i.i_crit_edge, %for.cond.i.i.if.end5.i.i_crit_edge, %entry.if.end5.i.i_crit_edge
  %l.addr.0.i.i = phi i64 [ 1, %entry.if.end5.i.i_crit_edge ], [ 0, %for.body.i.i.if.end5.i.i_crit_edge ], [ 0, %for.cond.i.i.if.end5.i.i_crit_edge ]
  %sk.2.i.i = phi ptr [ %10, %entry.if.end5.i.i_crit_edge ], [ null, %for.cond.i.i.if.end5.i.i_crit_edge ], [ %add.ptr.i.i.i, %for.body.i.i.if.end5.i.i_crit_edge ]
  %tobool.not.i47.i.i = icmp eq ptr %7, null
  br label %try_again.i.i

try_again.i.i:                                    ; preds = %if.then21.i.i, %if.end5.i.i
  %l.addr.1.i.i = phi i64 [ %l.addr.0.i.i, %if.end5.i.i ], [ %l.addr.2.lcssa.i.i, %if.then21.i.i ]
  %sk.3.i.i = phi ptr [ %sk.2.i.i, %if.end5.i.i ], [ %sk.3.i.i.be, %if.then21.i.i ]
  %tobool7.not57.i.i = icmp eq ptr %sk.3.i.i, null
  br i1 %tobool7.not57.i.i, label %try_again.i.i.land.lhs.true.i.i_crit_edge, label %try_again.i.i.for.body8.i.i_crit_edge

try_again.i.i.for.body8.i.i_crit_edge:            ; preds = %try_again.i.i
  br label %for.body8.i.i

try_again.i.i.land.lhs.true.i.i_crit_edge:        ; preds = %try_again.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i.i

for.body8.i.i:                                    ; preds = %for.inc14.i.i.for.body8.i.i_crit_edge, %try_again.i.i.for.body8.i.i_crit_edge
  %sk.459.i.i = phi ptr [ %add.ptr.i49.i.i, %for.inc14.i.i.for.body8.i.i_crit_edge ], [ %sk.3.i.i, %try_again.i.i.for.body8.i.i_crit_edge ]
  %l.addr.258.i.i = phi i64 [ %sub.i.i, %for.inc14.i.i.for.body8.i.i_crit_edge ], [ %l.addr.1.i.i, %try_again.i.i.for.body8.i.i_crit_edge ]
  br i1 %tobool.not.i47.i.i, label %for.body8.i.i.compare_family.exit.i.i_crit_edge, label %lor.rhs.i.i.i

for.body8.i.i.compare_family.exit.i.i_crit_edge:  ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %compare_family.exit.i.i

lor.rhs.i.i.i:                                    ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %skc_family.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk.459.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %skc_family.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %skc_family.i.i.i, align 8
  %conv.i.i.i = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %8)
  %cmp.i.i.i = icmp eq i32 %conv.i.i.i, %8
  %phi.cast.i.i.i = zext i1 %cmp.i.i.i to i32
  br label %compare_family.exit.i.i

compare_family.exit.i.i:                          ; preds = %lor.rhs.i.i.i, %for.body8.i.i.compare_family.exit.i.i_crit_edge
  %17 = phi i32 [ 1, %for.body8.i.i.compare_family.exit.i.i_crit_edge ], [ %phi.cast.i.i.i, %lor.rhs.i.i.i ]
  %18 = zext i32 %17 to i64
  %sub.i.i = sub i64 %l.addr.258.i.i, %18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp10.i.i = icmp slt i64 %sub.i.i, 0
  br i1 %cmp10.i.i, label %__vcc_walk.exit.thread.i, label %for.inc14.i.i

__vcc_walk.exit.thread.i:                         ; preds = %compare_family.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %sk.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sk.459.i.i, ptr %sk.i, align 4
  br label %vcc_walk.exit

for.inc14.i.i:                                    ; preds = %compare_family.exit.i.i
  %20 = getelementptr inbounds %struct.sock_common, ptr %sk.459.i.i, i32 0, i32 15
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool.not.i48.i.i = icmp eq ptr %22, null
  %add.ptr.i49.i.i = getelementptr i8, ptr %22, i32 -84
  %tobool7.not64.i.i = icmp eq ptr %add.ptr.i49.i.i, null
  %tobool7.not.i.i = or i1 %tobool.not.i48.i.i, %tobool7.not64.i.i
  br i1 %tobool7.not.i.i, label %for.inc14.i.i.land.lhs.true.i.i_crit_edge, label %for.inc14.i.i.for.body8.i.i_crit_edge

for.inc14.i.i.for.body8.i.i_crit_edge:            ; preds = %for.inc14.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body8.i.i

for.inc14.i.i.land.lhs.true.i.i_crit_edge:        ; preds = %for.inc14.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.inc14.i.i.land.lhs.true.i.i_crit_edge, %try_again.i.i.land.lhs.true.i.i_crit_edge
  %l.addr.2.lcssa.i.i = phi i64 [ %l.addr.1.i.i, %try_again.i.i.land.lhs.true.i.i_crit_edge ], [ %sub.i.i, %for.inc14.i.i.land.lhs.true.i.i_crit_edge ]
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  %inc18.i.i = add i32 %24, 1
  store i32 %inc18.i.i, ptr %1, align 4
  %cmp19.i.i = icmp slt i32 %inc18.i.i, 32
  br i1 %cmp19.i.i, label %if.then21.i.i, label %__vcc_walk.exit.i

if.then21.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx22.i.i = getelementptr [32 x %struct.hlist_head], ptr @vcc_hash, i32 0, i32 %inc18.i.i
  %25 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %arrayidx22.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %26, null
  %add.ptr.i.i.i.i = getelementptr i8, ptr %26, i32 -84
  %sk.3.i.i.be = select i1 %tobool.not.i.not.i.i.i, ptr null, ptr %add.ptr.i.i.i.i
  br label %try_again.i.i

__vcc_walk.exit.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %sk.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 1 to ptr), ptr %sk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %l.addr.2.lcssa.i.i)
  %tobool.not.i = icmp sgt i64 %l.addr.2.lcssa.i.i, -1
  %spec.select9.i = select i1 %tobool.not.i, ptr null, ptr %1
  br label %vcc_walk.exit

vcc_walk.exit:                                    ; preds = %__vcc_walk.exit.i, %__vcc_walk.exit.thread.i
  %28 = phi ptr [ %1, %__vcc_walk.exit.thread.i ], [ %spec.select9.i, %__vcc_walk.exit.i ]
  %29 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %pos, align 8
  %inc = add i64 %30, 1
  store i64 %inc, ptr %pos, align 8
  ret ptr %28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvc_seq_show(ptr noundef %seq, ptr noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @pvc_seq_show.atm_pvc_banner) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %sk = getelementptr inbounds %struct.vcc_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 4
  %dev.i = getelementptr inbounds %struct.atm_vcc, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %number.i = getelementptr inbounds %struct.atm_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number.i, align 4
  %vpi.i = getelementptr inbounds %struct.atm_vcc, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vpi.i, align 4
  %conv.i = sext i16 %9 to i32
  %vci.i = getelementptr inbounds %struct.atm_vcc, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %vci.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vci.i, align 8
  %qos.i = getelementptr inbounds %struct.atm_vcc, ptr %3, i32 0, i32 7
  %aal.i = getelementptr inbounds %struct.atm_vcc, ptr %3, i32 0, i32 7, i32 2
  %12 = ptrtoint ptr %aal.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %aal.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %13)
  %cmp.i = icmp ugt i8 %13, 15
  br i1 %cmp.i, label %if.else.cond.end.i_crit_edge, label %cond.false.i

if.else.cond.end.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %conv1.i = zext i8 %13 to i32
  %arrayidx.i = getelementptr [16 x ptr], ptr @pvc_info.aal_name, i32 0, i32 %conv1.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.else.cond.end.i_crit_edge
  %cond.i = phi ptr [ %15, %cond.false.i ], [ @.str.27, %if.else.cond.end.i_crit_edge ]
  %rxtp.i = getelementptr inbounds %struct.atm_vcc, ptr %3, i32 0, i32 7, i32 1
  %min_pcr.i = getelementptr inbounds %struct.atm_vcc, ptr %3, i32 0, i32 7, i32 1, i32 3
  %16 = ptrtoint ptr %min_pcr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %min_pcr.i, align 4
  %18 = ptrtoint ptr %rxtp.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rxtp.i, align 8
  %idxprom8.i = zext i8 %19 to i32
  %arrayidx9.i = getelementptr [5 x ptr], ptr @pvc_info.class_name, i32 0, i32 %idxprom8.i
  %20 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx9.i, align 4
  %min_pcr11.i = getelementptr inbounds %struct.atm_vcc, ptr %3, i32 0, i32 7, i32 0, i32 3
  %22 = ptrtoint ptr %min_pcr11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %min_pcr11.i, align 4
  %24 = ptrtoint ptr %qos.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %qos.i, align 8
  %idxprom15.i = zext i8 %25 to i32
  %arrayidx16.i = getelementptr [5 x ptr], ptr @pvc_info.class_name, i32 0, i32 %idxprom15.i
  %26 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx16.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.26, i32 noundef %7, i32 noundef %conv.i, i32 noundef %11, ptr noundef %cond.i, i32 noundef %17, ptr noundef %21, i32 noundef %23, ptr noundef %27) #4
  %flags.i = getelementptr inbounds %struct.atm_vcc, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags.i, align 4
  %30 = and i32 %29, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %cond.end.i.pvc_info.exit_crit_edge, label %if.then.i

cond.end.i.pvc_info.exit_crit_edge:               ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pvc_info.exit

if.then.i:                                        ; preds = %cond.end.i
  %user_back.i = getelementptr inbounds %struct.atm_vcc, ptr %3, i32 0, i32 22
  %31 = ptrtoint ptr %user_back.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %user_back.i, align 8
  %entry18.i = getelementptr inbounds %struct.clip_vcc, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %entry18.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %entry18.i, align 4
  %tobool19.not.i = icmp eq ptr %34, null
  br i1 %tobool19.not.i, label %if.then.i.cond.end24.i_crit_edge, label %cond.true20.i

if.then.i.cond.end24.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end24.i

cond.true20.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %neigh.i = getelementptr inbounds %struct.atmarp_entry, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %neigh.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %neigh.i, align 4
  %dev22.i = getelementptr inbounds %struct.neighbour, ptr %36, i32 0, i32 25
  %37 = ptrtoint ptr %dev22.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev22.i, align 4
  br label %cond.end24.i

cond.end24.i:                                     ; preds = %cond.true20.i, %if.then.i.cond.end24.i_crit_edge
  %cond25.i = phi ptr [ %38, %cond.true20.i ], [ null, %if.then.i.cond.end24.i_crit_edge ]
  %tobool26.not.i = icmp eq ptr %cond25.i, null
  %spec.select.i = select i1 %tobool26.not.i, ptr @.str.29, ptr %cond25.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.28, ptr noundef nonnull %spec.select.i) #4
  %encap.i = getelementptr inbounds %struct.clip_vcc, ptr %32, i32 0, i32 3
  %39 = ptrtoint ptr %encap.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %encap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool32.not.i = icmp eq i8 %40, 0
  %cond33.i = select i1 %tobool32.not.i, ptr @.str.32, ptr @.str.31
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond33.i) #4
  br label %pvc_info.exit

pvc_info.exit:                                    ; preds = %cond.end24.i, %cond.end.i.pvc_info.exit_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #4
  br label %if.end

if.end:                                           ; preds = %pvc_info.exit, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_seq_show(ptr noundef %seq, ptr noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @svc_seq_show.atm_svc_banner) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %sk = getelementptr inbounds %struct.vcc_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 4
  %dev.i = getelementptr inbounds %struct.atm_vcc, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.33, ptr noundef %3, ptr noundef nonnull @.str.34) #4
  br label %if.end.i

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %number.i = getelementptr inbounds %struct.atm_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number.i, align 4
  %vpi.i = getelementptr inbounds %struct.atm_vcc, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vpi.i, align 4
  %conv.i = sext i16 %9 to i32
  %vci.i = getelementptr inbounds %struct.atm_vcc, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %vci.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vci.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.35, i32 noundef %7, i32 noundef %conv.i, i32 noundef %11) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %flags.i.i = getelementptr inbounds %struct.atm_vcc, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags.i.i, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %if.end.i.vcc_state.exit.i_crit_edge

if.end.i.vcc_state.exit.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vcc_state.exit.i

cond.false.i.i:                                   ; preds = %if.end.i
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i.i, align 4
  %17 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool3.not.i.i, label %cond.false5.i.i, label %cond.false.i.i.vcc_state.exit.i_crit_edge

cond.false.i.i.vcc_state.exit.i_crit_edge:        ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vcc_state.exit.i

cond.false5.i.i:                                  ; preds = %cond.false.i.i
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i.i, align 4
  %20 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool8.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool8.not.i.i, label %cond.false10.i.i, label %cond.false5.i.i.vcc_state.exit.i_crit_edge

cond.false5.i.i.vcc_state.exit.i_crit_edge:       ; preds = %cond.false5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vcc_state.exit.i

cond.false10.i.i:                                 ; preds = %cond.false5.i.i
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i.i, align 4
  %23 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool13.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool13.not.i.i, label %cond.false15.i.i, label %cond.false10.i.i.vcc_state.exit.i_crit_edge

cond.false10.i.i.vcc_state.exit.i_crit_edge:      ; preds = %cond.false10.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vcc_state.exit.i

cond.false15.i.i:                                 ; preds = %cond.false10.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags.i.i, align 4
  %26 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool18.not.i.i = icmp eq i32 %26, 0
  %cond.i.i = select i1 %tobool18.not.i.i, i32 0, i32 5
  br label %vcc_state.exit.i

vcc_state.exit.i:                                 ; preds = %cond.false15.i.i, %cond.false10.i.i.vcc_state.exit.i_crit_edge, %cond.false5.i.i.vcc_state.exit.i_crit_edge, %cond.false.i.i.vcc_state.exit.i_crit_edge, %if.end.i.vcc_state.exit.i_crit_edge
  %cond25.i.i = phi i32 [ 1, %if.end.i.vcc_state.exit.i_crit_edge ], [ 2, %cond.false.i.i.vcc_state.exit.i_crit_edge ], [ 3, %cond.false5.i.i.vcc_state.exit.i_crit_edge ], [ %cond.i.i, %cond.false15.i.i ], [ 4, %cond.false10.i.i.vcc_state.exit.i_crit_edge ]
  %arrayidx.i.i = getelementptr [6 x ptr], ptr @vcc_state.map, i32 0, i32 %cond25.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.36, ptr noundef %28) #4
  %sas_addr.i = getelementptr inbounds %struct.atm_vcc, ptr %3, i32 0, i32 20, i32 1
  %pub.i = getelementptr inbounds %struct.atm_vcc, ptr %3, i32 0, i32 20, i32 1, i32 1
  %29 = ptrtoint ptr %pub.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pub.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool7.not.i = icmp eq i8 %30, 0
  br i1 %tobool7.not.i, label %vcc_state.exit.i.land.end.i_crit_edge, label %land.rhs.i

vcc_state.exit.i.land.end.i_crit_edge:            ; preds = %vcc_state.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

land.rhs.i:                                       ; preds = %vcc_state.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sas_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool12.not.i = icmp eq i8 %32, 0
  %phi.sel.i = select i1 %tobool12.not.i, ptr @.str.34, ptr @.str.38
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %vcc_state.exit.i.land.end.i_crit_edge
  %33 = phi ptr [ @.str.34, %vcc_state.exit.i.land.end.i_crit_edge ], [ %phi.sel.i, %land.rhs.i ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.37, ptr noundef %pub.i, ptr noundef nonnull %33) #4
  %34 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sas_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool17.not.i = icmp eq i8 %35, 0
  br i1 %tobool17.not.i, label %land.end.i.svc_info.exit_crit_edge, label %for.body.preheader.i

land.end.i.svc_info.exit_crit_edge:               ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %svc_info.exit

for.body.preheader.i:                             ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv23.i = zext i8 %35 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv23.i) #4
  %arrayidx.1.i = getelementptr %struct.atm_vcc, ptr %3, i32 0, i32 20, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.1.i, align 1
  %conv23.1.i = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv23.1.i) #4
  %arrayidx.2.i = getelementptr %struct.atm_vcc, ptr %3, i32 0, i32 20, i32 1, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.2.i, align 1
  %conv23.2.i = zext i8 %39 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv23.2.i) #4
  %arrayidx.3.i = getelementptr %struct.atm_vcc, ptr %3, i32 0, i32 20, i32 1, i32 0, i32 3
  %40 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.3.i, align 1
  %conv23.3.i = zext i8 %41 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv23.3.i) #4
  %arrayidx.4.i = getelementptr %struct.atm_vcc, ptr %3, i32 0, i32 20, i32 1, i32 0, i32 4
  %42 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.4.i, align 1
  %conv23.4.i = zext i8 %43 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv23.4.i) #4
  %arrayidx.5.i = getelementptr %struct.atm_vcc, ptr %3, i32 0, i32 20, i32 1, i32 0, i32 5
  %44 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.5.i, align 1
  %conv23.5.i = zext i8 %45 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv23.5.i) #4
  %arrayidx.6.i = getelementptr %struct.atm_vcc, ptr %3, i32 0, i32 20, i32 1, i32 0, i32 6
  %46 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.6.i, align 1
  %conv23.6.i = zext i8 %47 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv23.6.i) #4
  %arrayidx.7.i = getelementptr %struct.atm_vcc, ptr %3, i32 0, i32 20, i32 1, i32 0, i32 7
  %48 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.7.i, align 1
  %conv23.7.i = zext i8 %49 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv23.7.i) #4
  %arrayidx.8.i = getelementptr %struct.atm_vcc, ptr %3, i32 0, i32 20, i32 1, i32 0, i32 8
  %50 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.8.i, align 1
  %conv23.8.i = zext i8 %51 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv23.8.i) #4
  %arrayidx.9.i = getelementptr %struct.atm_vcc, ptr %3, i32 0, i32 20, i32 1, i32 0, i32 9
  %52 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.9.i, align 1
  %conv23.9.i = zext i8 %53 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv23.9.i) #4
  %arrayidx.10.i = getelementptr %struct.atm_vcc, ptr %3, i32 0, i32 20, i32 1, i32 0, i32 10
  %54 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.10.i, align 1
  %conv23.10.i = zext i8 %55 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv23.10.i) #4
  %arrayidx.11.i = getelementptr %struct.atm_vcc, ptr %3, i32 0, i32 20, i32 1, i32 0, i32 11
  %56 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.11.i, align 1
  %conv23.11.i = zext i8 %57 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv23.11.i) #4
  %arrayidx.12.i = getelementptr %struct.atm_vcc, ptr %3, i32 0, i32 20, i32 1, i32 0, i32 12
  %58 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.12.i, align 1
  %conv23.12.i = zext i8 %59 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv23.12.i) #4
  %arrayidx.13.i = getelementptr %struct.atm_vcc, ptr %3, i32 0, i32 20, i32 1, i32 0, i32 13
  %60 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.13.i, align 1
  %conv23.13.i = zext i8 %61 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv23.13.i) #4
  %arrayidx.14.i = getelementptr %struct.atm_vcc, ptr %3, i32 0, i32 20, i32 1, i32 0, i32 14
  %62 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.14.i, align 1
  %conv23.14.i = zext i8 %63 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv23.14.i) #4
  %arrayidx.15.i = getelementptr %struct.atm_vcc, ptr %3, i32 0, i32 20, i32 1, i32 0, i32 15
  %64 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.15.i, align 1
  %conv23.15.i = zext i8 %65 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv23.15.i) #4
  %arrayidx.16.i = getelementptr %struct.atm_vcc, ptr %3, i32 0, i32 20, i32 1, i32 0, i32 16
  %66 = ptrtoint ptr %arrayidx.16.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.16.i, align 1
  %conv23.16.i = zext i8 %67 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv23.16.i) #4
  %arrayidx.17.i = getelementptr %struct.atm_vcc, ptr %3, i32 0, i32 20, i32 1, i32 0, i32 17
  %68 = ptrtoint ptr %arrayidx.17.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.17.i, align 1
  %conv23.17.i = zext i8 %69 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv23.17.i) #4
  %arrayidx.18.i = getelementptr %struct.atm_vcc, ptr %3, i32 0, i32 20, i32 1, i32 0, i32 18
  %70 = ptrtoint ptr %arrayidx.18.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.18.i, align 1
  %conv23.18.i = zext i8 %71 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv23.18.i) #4
  %arrayidx.19.i = getelementptr %struct.atm_vcc, ptr %3, i32 0, i32 20, i32 1, i32 0, i32 19
  %72 = ptrtoint ptr %arrayidx.19.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.19.i, align 1
  %conv23.19.i = zext i8 %73 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv23.19.i) #4
  br label %svc_info.exit

svc_info.exit:                                    ; preds = %for.body.preheader.i, %land.end.i.svc_info.exit_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #4
  br label %if.end

if.end:                                           ; preds = %svc_info.exit, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcc_seq_show(ptr noundef %seq, ptr noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %sk = getelementptr inbounds %struct.vcc_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.48, ptr noundef %3) #4
  %dev.i = getelementptr inbounds %struct.atm_vcc, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.49) #4
  br label %if.end.i

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %number.i = getelementptr inbounds %struct.atm_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number.i, align 4
  %vpi.i = getelementptr inbounds %struct.atm_vcc, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vpi.i, align 4
  %conv.i = sext i16 %9 to i32
  %vci.i = getelementptr inbounds %struct.atm_vcc, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %vci.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vci.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.50, i32 noundef %7, i32 noundef %conv.i, i32 noundef %11) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %skc_family.i, align 8
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i16 %13, label %sw.default.i [
    i16 8, label %sw.bb.i
    i16 20, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.51) #4
  br label %vcc_info.exit

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.52) #4
  br label %vcc_info.exit

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv2.i = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.53, i32 noundef %conv2.i) #4
  br label %vcc_info.exit

vcc_info.exit:                                    ; preds = %sw.default.i, %sw.bb3.i, %sw.bb.i
  %flags.i = getelementptr inbounds %struct.atm_vcc, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 8
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 51
  %17 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sk_err.i, align 4
  %sk_wmem_alloc.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 23
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i.i, i32 noundef 4) #4
  %19 = ptrtoint ptr %sk_wmem_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %sk_wmem_alloc.i.i, align 4
  %sub.i.i = add i32 %20, -1
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 21
  %21 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sk_sndbuf.i, align 4
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i, i32 noundef 4) #4
  %23 = ptrtoint ptr %sk_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %sk_backlog.i.i, align 4
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 15
  %25 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sk_rcvbuf.i, align 8
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 19
  %call.i.i.i30.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #4
  %27 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %skc_refcnt.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.54, i32 noundef %16, i32 noundef %18, i32 noundef %sub.i.i, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28) #4
  br label %if.end

if.end:                                           ; preds = %vcc_info.exit, %if.then
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !107, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @__ksymtab_atm_proc_root, !1, !"__ksymtab_atm_proc_root", i1 false, i1 false}
!1 = !{!"../net/atm/proc.c", i32 345, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/atm/proc.c", i32 357, i32 41}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/atm/proc.c", i32 384, i32 44}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/atm/proc.c", i32 387, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/atm/proc.c", i32 388, i32 26}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/atm/proc.c", i32 390, i32 26}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/atm/proc.c", i32 392, i32 26}
!14 = !{ptr @atm_proc_root, !15, !"atm_proc_root", i1 false, i1 false}
!15 = !{!"../net/atm/proc.c", i32 344, i32 24}
!16 = !{ptr @atm_dev_proc_ops, !17, !"atm_dev_proc_ops", i1 false, i1 false}
!17 = !{!"../net/atm/proc.c", i32 39, i32 30}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!25 = !{ptr @atm_dev_seq_ops, !26, !"atm_dev_seq_ops", i1 false, i1 false}
!26 = !{!"../net/atm/proc.c", i32 240, i32 36}
!27 = !{ptr @atm_dev_seq_show.atm_dev_banner, !28, !"atm_dev_banner", i1 false, i1 false}
!28 = !{!"../net/atm/proc.c", i32 226, i32 14}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/atm/proc.c", i32 57, i32 18}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/atm/proc.c", i32 59, i32 19}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/atm/proc.c", i32 60, i32 16}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/atm/proc.c", i32 61, i32 17}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/atm/proc.c", i32 63, i32 17}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/atm/proc.c", i32 64, i32 18}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/atm/proc.c", i32 47, i32 18}
!43 = !{ptr @pvc_seq_ops, !44, !"pvc_seq_ops", i1 false, i1 false}
!44 = !{!"../net/atm/proc.c", i32 263, i32 36}
!45 = !{ptr @pvc_seq_show.atm_pvc_banner, !46, !"atm_pvc_banner", i1 false, i1 false}
!46 = !{!"../net/atm/proc.c", i32 249, i32 14}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/atm/proc.c", i32 144, i32 3}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/atm/proc.c", i32 144, i32 10}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/atm/proc.c", i32 144, i32 17}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/atm/proc.c", i32 144, i32 24}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/atm/proc.c", i32 144, i32 31}
!57 = !{ptr @pvc_info.class_name, !58, !"class_name", i1 false, i1 false}
!58 = !{!"../net/atm/proc.c", i32 143, i32 27}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/atm/proc.c", i32 146, i32 3}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/atm/proc.c", i32 146, i32 10}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/atm/proc.c", i32 146, i32 15}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/atm/proc.c", i32 146, i32 20}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/atm/proc.c", i32 147, i32 3}
!69 = !{ptr @pvc_info.aal_name, !70, !"aal_name", i1 false, i1 false}
!70 = !{!"../net/atm/proc.c", i32 145, i32 27}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/atm/proc.c", i32 151, i32 18}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/atm/proc.c", i32 153, i32 45}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/atm/proc.c", i32 163, i32 19}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/atm/proc.c", i32 164, i32 25}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/atm/proc.c", i32 165, i32 19}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/atm/proc.c", i32 165, i32 43}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/atm/proc.c", i32 165, i32 56}
!85 = !{ptr @svc_seq_ops, !86, !"svc_seq_ops", i1 false, i1 false}
!86 = !{!"../net/atm/proc.c", i32 308, i32 36}
!87 = !{ptr @svc_seq_show.atm_svc_banner, !88, !"atm_svc_banner", i1 false, i1 false}
!88 = !{!"../net/atm/proc.c", i32 294, i32 20}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/atm/proc.c", i32 208, i32 7}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/atm/proc.c", i32 208, i32 42}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/atm/proc.c", i32 210, i32 19}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/atm/proc.c", i32 212, i32 18}
!97 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/atm/proc.c", i32 213, i32 18}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/atm/proc.c", i32 214, i32 63}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/atm/proc.c", i32 172, i32 37}
!103 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @vcc_state.map, !109, !"map", i1 false, i1 false}
!109 = !{!"../net/atm/proc.c", i32 172, i32 27}
!110 = !{ptr @vcc_seq_ops, !111, !"vcc_seq_ops", i1 false, i1 false}
!111 = !{!"../net/atm/proc.c", i32 285, i32 36}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/atm/proc.c", i32 273, i32 41}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../net/atm/proc.c", i32 274, i32 4}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/atm/proc.c", i32 274, i32 16}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/atm/proc.c", i32 181, i32 18}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../net/atm/proc.c", i32 183, i32 19}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../net/atm/proc.c", i32 185, i32 19}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../net/atm/proc.c", i32 189, i32 19}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../net/atm/proc.c", i32 192, i32 19}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../net/atm/proc.c", i32 195, i32 19}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../net/atm/proc.c", i32 197, i32 18}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{i64 2152971545, i64 2152971570}
