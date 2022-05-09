; ModuleID = '/llk/IR_all_yes/drivers/net/bonding/bond_options.c_pt.bc'
source_filename = "../drivers/net/bonding/bond_options.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bond_option = type { i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.bond_opt_value = type { ptr, i64, i32 }
%struct.atomic_t = type { i32 }
%struct.bonding = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i8, ptr, [16 x i8], %struct.list_head, ptr, %struct.ad_bond_info, %struct.alb_bond_info, %struct.bond_params, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.rtnl_link_stats64, %struct.list_head, %struct.spinlock, ptr }
%struct.ad_bond_info = type { %struct.ad_system, %struct.bond_3ad_stats, %struct.atomic_t, i16 }
%struct.ad_system = type { i16, %struct.mac_addr }
%struct.mac_addr = type { [6 x i8] }
%struct.bond_3ad_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.alb_bond_info = type { ptr, i32, %struct.atomic_t, i32, i32, ptr, i32, i8, ptr, i8, i32, i32, i32, i8 }
%struct.bond_params = type { i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, [16 x i32], i32, i32, i32, i32, i32, i32, %struct.reciprocal_value, i16, i16, [8 x i8] }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.26 }
%union.anon.26 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.22 }
%union.anon.22 = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.87, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.56 }
%struct.llist_node = type { ptr }
%union.anon.56 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.58 }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.87 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.slave = type { ptr, ptr, i32, i32, i32, [16 x i32], i8, i8, i8, i8, i32, i32, i32, i16, [32 x i8], ptr, %struct.tlb_slave_info, ptr, %struct.delayed_work, %struct.kobject, %struct.rtnl_link_stats64 }
%struct.tlb_slave_info = type { i32, i32 }

@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/net/bonding/bond_options.c\00", [61 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%32s\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llu\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@__bond_opt_set.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__bond_opt_set_notify.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bond_opts = internal constant { [32 x %struct.bond_option], [224 x i8] } { [32 x %struct.bond_option] [%struct.bond_option { i32 0, ptr @.str.12, ptr @.str.13, i32 3, i32 0, ptr @bond_mode_tbl, ptr @bond_option_mode_set }, %struct.bond_option { i32 1, ptr @.str.14, ptr @.str.15, i32 0, i32 -2, ptr @bond_pps_tbl, ptr @bond_option_pps_set }, %struct.bond_option { i32 2, ptr @.str.16, ptr @.str.17, i32 0, i32 0, ptr @bond_xmit_hashtype_tbl, ptr @bond_option_xmit_hash_policy_set }, %struct.bond_option { i32 3, ptr @.str.18, ptr @.str.19, i32 0, i32 112, ptr @bond_arp_validate_tbl, ptr @bond_option_arp_validate_set }, %struct.bond_option { i32 4, ptr @.str.20, ptr @.str.21, i32 0, i32 0, ptr @bond_arp_all_targets_tbl, ptr @bond_option_arp_all_targets_set }, %struct.bond_option { i32 5, ptr @.str.22, ptr @.str.23, i32 1, i32 0, ptr @bond_fail_over_mac_tbl, ptr @bond_option_fail_over_mac_set }, %struct.bond_option { i32 6, ptr @.str.24, ptr @.str.25, i32 0, i32 112, ptr @bond_intmax_tbl, ptr @bond_option_arp_interval_set }, %struct.bond_option { i32 7, ptr @.str.26, ptr @.str.27, i32 4, i32 0, ptr null, ptr @bond_option_arp_ip_targets_set }, %struct.bond_option { i32 8, ptr @.str.28, ptr @.str.29, i32 0, i32 0, ptr @bond_intmax_tbl, ptr @bond_option_downdelay_set }, %struct.bond_option { i32 9, ptr @.str.30, ptr @.str.31, i32 0, i32 0, ptr @bond_intmax_tbl, ptr @bond_option_updelay_set }, %struct.bond_option { i32 10, ptr @.str.32, ptr @.str.33, i32 2, i32 -17, ptr @bond_lacp_rate_tbl, ptr @bond_option_lacp_rate_set }, %struct.bond_option { i32 11, ptr @.str.34, ptr @.str.35, i32 0, i32 0, ptr @bond_intmax_tbl, ptr @bond_option_min_links_set }, %struct.bond_option { i32 12, ptr @.str.36, ptr @.str.37, i32 2, i32 0, ptr @bond_ad_select_tbl, ptr @bond_option_ad_select_set }, %struct.bond_option { i32 13, ptr @.str.38, ptr @.str.39, i32 0, i32 0, ptr @bond_num_peer_notif_tbl, ptr @bond_option_num_peer_notif_set }, %struct.bond_option { i32 14, ptr @.str.40, ptr @.str.41, i32 0, i32 0, ptr @bond_intmax_tbl, ptr @bond_option_miimon_set }, %struct.bond_option { i32 15, ptr @.str.42, ptr @.str.43, i32 4, i32 -99, ptr null, ptr @bond_option_primary_set }, %struct.bond_option { i32 16, ptr @.str.44, ptr @.str.45, i32 0, i32 0, ptr @bond_primary_reselect_tbl, ptr @bond_option_primary_reselect_set }, %struct.bond_option { i32 17, ptr @.str.46, ptr @.str.47, i32 0, i32 0, ptr @bond_use_carrier_tbl, ptr @bond_option_use_carrier_set }, %struct.bond_option { i32 18, ptr @.str.48, ptr @.str.49, i32 4, i32 -99, ptr null, ptr @bond_option_active_slave_set }, %struct.bond_option { i32 19, ptr @.str.50, ptr @.str.51, i32 4, i32 0, ptr null, ptr @bond_option_queue_id_set }, %struct.bond_option { i32 20, ptr @.str.52, ptr @.str.53, i32 0, i32 0, ptr @bond_all_slaves_active_tbl, ptr @bond_option_all_slaves_active_set }, %struct.bond_option { i32 21, ptr @.str.54, ptr @.str.55, i32 0, i32 0, ptr @bond_resend_igmp_tbl, ptr @bond_option_resend_igmp_set }, %struct.bond_option { i32 22, ptr @.str.56, ptr @.str.57, i32 0, i32 0, ptr @bond_lp_interval_tbl, ptr @bond_option_lp_interval_set }, %struct.bond_option { i32 23, ptr @.str.58, ptr @.str.59, i32 4, i32 0, ptr null, ptr @bond_option_slaves_set }, %struct.bond_option { i32 24, ptr @.str.60, ptr @.str.61, i32 2, i32 -97, ptr @bond_tlb_dynamic_lb_tbl, ptr @bond_option_tlb_dynamic_lb_set }, %struct.bond_option { i32 25, ptr @.str.62, ptr null, i32 0, i32 -17, ptr @bond_ad_actor_sys_prio_tbl, ptr @bond_option_ad_actor_sys_prio_set }, %struct.bond_option { i32 26, ptr @.str.63, ptr null, i32 4, i32 -17, ptr null, ptr @bond_option_ad_actor_system_set }, %struct.bond_option { i32 27, ptr @.str.64, ptr null, i32 2, i32 -17, ptr @bond_ad_user_port_key_tbl, ptr @bond_option_ad_user_port_key_set }, %struct.bond_option { i32 28, ptr @.str.65, ptr @.str.39, i32 0, i32 0, ptr @bond_num_peer_notif_tbl, ptr @bond_option_num_peer_notif_set }, %struct.bond_option { i32 29, ptr @.str.66, ptr @.str.67, i32 0, i32 0, ptr @bond_intmax_tbl, ptr @bond_option_peer_notif_delay_set }, %struct.bond_option { i32 30, ptr @.str.68, ptr @.str.69, i32 2, i32 -17, ptr @bond_lacp_active, ptr @bond_option_lacp_active_set }, %struct.bond_option { i32 31, ptr @.str.70, ptr @.str.71, i32 0, i32 112, ptr @bond_missed_max_tbl, ptr @bond_option_missed_max_set }], [224 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"option %s: invalid value (%s)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"option %s: invalid value (%llu)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"option %s: allowed values %llu - %llu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"option %s: unable to set because the bond device has slaves\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"option %s: unable to set because the bond device is up\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"option %s: interface %s does not exist!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"option %s: mode dependency failed, not supported in mode %s(%llu)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bond device mode\00", [47 x i8] zeroinitializer }, align 32
@bond_mode_tbl = internal constant { [8 x %struct.bond_opt_value], [32 x i8] } { [8 x %struct.bond_opt_value] [%struct.bond_opt_value { ptr @.str.72, i64 0, i32 1 }, %struct.bond_opt_value { ptr @.str.73, i64 1, i32 0 }, %struct.bond_opt_value { ptr @.str.74, i64 2, i32 0 }, %struct.bond_opt_value { ptr @.str.75, i64 3, i32 0 }, %struct.bond_opt_value { ptr @.str.76, i64 4, i32 0 }, %struct.bond_opt_value { ptr @.str.77, i64 5, i32 0 }, %struct.bond_opt_value { ptr @.str.78, i64 6, i32 0 }, %struct.bond_opt_value { ptr null, i64 -1, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"packets_per_slave\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Packets to send per slave in RR mode\00", [59 x i8] zeroinitializer }, align 32
@bond_pps_tbl = internal constant { [3 x %struct.bond_opt_value], [56 x i8] } { [3 x %struct.bond_opt_value] [%struct.bond_opt_value { ptr @.str.3, i64 1, i32 1 }, %struct.bond_opt_value { ptr @.str.83, i64 65535, i32 4 }, %struct.bond_opt_value { ptr null, i64 -1, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xmit_hash_policy\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"balance-xor, 802.3ad, and tlb hashing method\00", [51 x i8] zeroinitializer }, align 32
@bond_xmit_hashtype_tbl = internal constant { [7 x %struct.bond_opt_value], [56 x i8] } { [7 x %struct.bond_opt_value] [%struct.bond_opt_value { ptr @.str.86, i64 0, i32 1 }, %struct.bond_opt_value { ptr @.str.87, i64 1, i32 0 }, %struct.bond_opt_value { ptr @.str.88, i64 2, i32 0 }, %struct.bond_opt_value { ptr @.str.89, i64 3, i32 0 }, %struct.bond_opt_value { ptr @.str.90, i64 4, i32 0 }, %struct.bond_opt_value { ptr @.str.91, i64 5, i32 0 }, %struct.bond_opt_value { ptr null, i64 -1, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"arp_validate\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"validate src/dst of ARP probes\00", [33 x i8] zeroinitializer }, align 32
@bond_arp_validate_tbl = internal constant { [8 x %struct.bond_opt_value], [32 x i8] } { [8 x %struct.bond_opt_value] [%struct.bond_opt_value { ptr @.str.94, i64 0, i32 1 }, %struct.bond_opt_value { ptr @.str.95, i64 1, i32 0 }, %struct.bond_opt_value { ptr @.str.96, i64 2, i32 0 }, %struct.bond_opt_value { ptr @.str.97, i64 3, i32 0 }, %struct.bond_opt_value { ptr @.str.98, i64 4, i32 0 }, %struct.bond_opt_value { ptr @.str.99, i64 5, i32 0 }, %struct.bond_opt_value { ptr @.str.100, i64 6, i32 0 }, %struct.bond_opt_value { ptr null, i64 -1, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arp_all_targets\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"fail on any/all arp targets timeout\00", [60 x i8] zeroinitializer }, align 32
@bond_arp_all_targets_tbl = internal constant { [3 x %struct.bond_opt_value], [56 x i8] } { [3 x %struct.bond_opt_value] [%struct.bond_opt_value { ptr @.str.103, i64 0, i32 1 }, %struct.bond_opt_value { ptr @.str.97, i64 1, i32 0 }, %struct.bond_opt_value { ptr null, i64 -1, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fail_over_mac\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"For active-backup, do not set all slaves to the same MAC\00", [39 x i8] zeroinitializer }, align 32
@bond_fail_over_mac_tbl = internal constant { [4 x %struct.bond_opt_value], [32 x i8] } { [4 x %struct.bond_opt_value] [%struct.bond_opt_value { ptr @.str.94, i64 0, i32 1 }, %struct.bond_opt_value { ptr @.str.95, i64 1, i32 0 }, %struct.bond_opt_value { ptr @.str.106, i64 2, i32 0 }, %struct.bond_opt_value { ptr null, i64 -1, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"arp_interval\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"arp interval in milliseconds\00", [35 x i8] zeroinitializer }, align 32
@bond_intmax_tbl = internal constant { [3 x %struct.bond_opt_value], [56 x i8] } { [3 x %struct.bond_opt_value] [%struct.bond_opt_value { ptr @.str.109, i64 0, i32 1 }, %struct.bond_opt_value { ptr @.str.83, i64 2147483647, i32 4 }, %struct.bond_opt_value { ptr null, i64 -1, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"arp_ip_target\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"arp targets in n.n.n.n form\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"downdelay\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Delay before considering link down, in milliseconds\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"updelay\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Delay before considering link up, in milliseconds\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lacp_rate\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"LACPDU tx rate to request from 802.3ad partner\00", [49 x i8] zeroinitializer }, align 32
@bond_lacp_rate_tbl = internal constant { [3 x %struct.bond_opt_value], [56 x i8] } { [3 x %struct.bond_opt_value] [%struct.bond_opt_value { ptr @.str.132, i64 0, i32 0 }, %struct.bond_opt_value { ptr @.str.133, i64 1, i32 0 }, %struct.bond_opt_value { ptr null, i64 -1, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"min_links\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Minimum number of available links before turning on carrier\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ad_select\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"803.ad aggregation selection logic\00", [61 x i8] zeroinitializer }, align 32
@bond_ad_select_tbl = internal constant { [4 x %struct.bond_opt_value], [32 x i8] } { [4 x %struct.bond_opt_value] [%struct.bond_opt_value { ptr @.str.138, i64 0, i32 1 }, %struct.bond_opt_value { ptr @.str.139, i64 1, i32 0 }, %struct.bond_opt_value { ptr @.str.140, i64 2, i32 0 }, %struct.bond_opt_value { ptr null, i64 -1, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"num_unsol_na\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Number of peer notifications to send on failover event\00", [41 x i8] zeroinitializer }, align 32
@bond_num_peer_notif_tbl = internal constant { [4 x %struct.bond_opt_value], [32 x i8] } { [4 x %struct.bond_opt_value] [%struct.bond_opt_value { ptr @.str.109, i64 0, i32 0 }, %struct.bond_opt_value { ptr @.str.83, i64 255, i32 4 }, %struct.bond_opt_value { ptr @.str.3, i64 1, i32 1 }, %struct.bond_opt_value { ptr null, i64 -1, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"miimon\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Link check interval in milliseconds\00", [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"primary\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Primary network device to use\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"primary_reselect\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Reselect primary slave once it comes up\00", [56 x i8] zeroinitializer }, align 32
@bond_primary_reselect_tbl = internal constant { [4 x %struct.bond_opt_value], [32 x i8] } { [4 x %struct.bond_opt_value] [%struct.bond_opt_value { ptr @.str.154, i64 0, i32 1 }, %struct.bond_opt_value { ptr @.str.155, i64 1, i32 0 }, %struct.bond_opt_value { ptr @.str.156, i64 2, i32 0 }, %struct.bond_opt_value { ptr null, i64 -1, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"use_carrier\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Use netif_carrier_ok (vs MII ioctls) in miimon\00", [49 x i8] zeroinitializer }, align 32
@bond_use_carrier_tbl = internal constant { [3 x %struct.bond_opt_value], [56 x i8] } { [3 x %struct.bond_opt_value] [%struct.bond_opt_value { ptr @.str.109, i64 0, i32 0 }, %struct.bond_opt_value { ptr @.str.159, i64 1, i32 1 }, %struct.bond_opt_value { ptr null, i64 -1, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"active_slave\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Currently active slave\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"queue_id\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Set queue id of a slave\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"all_slaves_active\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Keep all frames received on an interface by setting active flag for all slaves\00", [49 x i8] zeroinitializer }, align 32
@bond_all_slaves_active_tbl = internal constant { [3 x %struct.bond_opt_value], [56 x i8] } { [3 x %struct.bond_opt_value] [%struct.bond_opt_value { ptr @.str.109, i64 0, i32 1 }, %struct.bond_opt_value { ptr @.str.159, i64 1, i32 0 }, %struct.bond_opt_value { ptr null, i64 -1, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"resend_igmp\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Number of IGMP membership reports to send on link failure\00", [38 x i8] zeroinitializer }, align 32
@bond_resend_igmp_tbl = internal constant { [4 x %struct.bond_opt_value], [32 x i8] } { [4 x %struct.bond_opt_value] [%struct.bond_opt_value { ptr @.str.109, i64 0, i32 0 }, %struct.bond_opt_value { ptr @.str.83, i64 255, i32 4 }, %struct.bond_opt_value { ptr @.str.3, i64 1, i32 1 }, %struct.bond_opt_value { ptr null, i64 -1, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lp_interval\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"The number of seconds between instances where the bonding driver sends learning packets to each slave's peer switch\00", [44 x i8] zeroinitializer }, align 32
@bond_lp_interval_tbl = internal constant { [3 x %struct.bond_opt_value], [56 x i8] } { [3 x %struct.bond_opt_value] [%struct.bond_opt_value { ptr @.str.176, i64 1, i32 3 }, %struct.bond_opt_value { ptr @.str.83, i64 2147483647, i32 4 }, %struct.bond_opt_value { ptr null, i64 -1, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"slaves\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Slave membership management\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tlb_dynamic_lb\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Enable dynamic flow shuffling\00", [34 x i8] zeroinitializer }, align 32
@bond_tlb_dynamic_lb_tbl = internal constant { [3 x %struct.bond_opt_value], [56 x i8] } { [3 x %struct.bond_opt_value] [%struct.bond_opt_value { ptr @.str.109, i64 0, i32 0 }, %struct.bond_opt_value { ptr @.str.159, i64 1, i32 1 }, %struct.bond_opt_value { ptr null, i64 -1, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ad_actor_sys_prio\00", [46 x i8] zeroinitializer }, align 32
@bond_ad_actor_sys_prio_tbl = internal constant { [3 x %struct.bond_opt_value], [56 x i8] } { [3 x %struct.bond_opt_value] [%struct.bond_opt_value { ptr @.str.176, i64 1, i32 2 }, %struct.bond_opt_value { ptr @.str.83, i64 65535, i32 5 }, %struct.bond_opt_value { ptr null, i64 -1, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ad_actor_system\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ad_user_port_key\00", [47 x i8] zeroinitializer }, align 32
@bond_ad_user_port_key_tbl = internal constant { [3 x %struct.bond_opt_value], [56 x i8] } { [3 x %struct.bond_opt_value] [%struct.bond_opt_value { ptr @.str.176, i64 0, i32 3 }, %struct.bond_opt_value { ptr @.str.83, i64 1023, i32 4 }, %struct.bond_opt_value { ptr null, i64 -1, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"num_grat_arp\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"peer_notif_delay\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Delay between each peer notification on failover event, in milliseconds\00", [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lacp_active\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Send LACPDU frames with configured lacp rate or acts as speak when spoken to\00", [51 x i8] zeroinitializer }, align 32
@bond_lacp_active = internal constant { [3 x %struct.bond_opt_value], [56 x i8] } { [3 x %struct.bond_opt_value] [%struct.bond_opt_value { ptr @.str.109, i64 0, i32 0 }, %struct.bond_opt_value { ptr @.str.159, i64 1, i32 1 }, %struct.bond_opt_value { ptr null, i64 -1, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arp_missed_max\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Maximum number of missed ARP interval\00", [58 x i8] zeroinitializer }, align 32
@bond_missed_max_tbl = internal constant { [4 x %struct.bond_opt_value], [32 x i8] } { [4 x %struct.bond_opt_value] [%struct.bond_opt_value { ptr @.str.176, i64 1, i32 2 }, %struct.bond_opt_value { ptr @.str.83, i64 255, i32 4 }, %struct.bond_opt_value { ptr @.str.3, i64 2, i32 1 }, %struct.bond_opt_value { ptr null, i64 -1, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"balance-rr\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"active-backup\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"balance-xor\00", [20 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"broadcast\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"802.3ad\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"balance-tlb\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"balance-alb\00", [20 x i8] zeroinitializer }, align 32
@bond_option_mode_set.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.80, ptr @.str, ptr @.str.81, i8 0, i8 -50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bonding\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bond_option_mode_set\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s mode is incompatible with arp monitoring, start mii monitoring\0A\00", [61 x i8] zeroinitializer }, align 32
@bond_option_mode_set.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.80, ptr @.str, ptr @.str.82, i8 0, i8 -48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Setting MII monitoring interval to %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"maxval\00", [25 x i8] zeroinitializer }, align 32
@bond_option_pps_set.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.84, ptr @.str, ptr @.str.85, i8 1, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bond_option_pps_set\00", [44 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Setting packets per slave to %llu\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"layer2\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"layer3+4\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"layer2+3\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"encap2+3\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"encap3+4\00", [23 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vlan+srcmac\00", [20 x i8] zeroinitializer }, align 32
@bond_option_xmit_hash_policy_set.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.92, ptr @.str, ptr @.str.93, i8 1, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bond_option_xmit_hash_policy_set\00", [63 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Setting xmit hash policy to %s (%llu)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"backup\00", [25 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"all\00", [28 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"filter\00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"filter_active\00", [18 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"filter_backup\00", [18 x i8] zeroinitializer }, align 32
@bond_option_arp_validate_set.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.101, ptr @.str, ptr @.str.102, i8 1, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bond_option_arp_validate_set\00", [35 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Setting arp_validate to %s (%llu)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"any\00", [28 x i8] zeroinitializer }, align 32
@bond_option_arp_all_targets_set.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.104, ptr @.str, ptr @.str.105, i8 1, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bond_option_arp_all_targets_set\00", [32 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Setting arp_all_targets to %s (%llu)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"follow\00", [25 x i8] zeroinitializer }, align 32
@bond_option_fail_over_mac_set.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.107, ptr @.str, ptr @.str.108, i8 1, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bond_option_fail_over_mac_set\00", [34 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Setting fail_over_mac to %s (%llu)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@bond_option_arp_interval_set.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.110, ptr @.str, ptr @.str.111, i8 1, i8 2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bond_option_arp_interval_set\00", [35 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Setting ARP monitoring interval to %llu\0A\00", [55 x i8] zeroinitializer }, align 32
@bond_option_arp_interval_set.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.110, ptr @.str, ptr @.str.112, i8 1, i8 3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"ARP monitoring cannot be used with MII monitoring. Disabling MII monitoring\0A\00", [51 x i8] zeroinitializer }, align 32
@bond_option_arp_interval_set.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.110, ptr @.str, ptr @.str.113, i8 1, i8 4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"ARP monitoring has been set up, but no ARP targets have been specified\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid ARP target %pI4 specified\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"no command found in arp_ip_targets file - use +<addr> or -<addr>\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"invalid ARP target %pI4 specified for addition\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ARP target %pI4 is already present\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ARP target table is full!\0A\00", [37 x i8] zeroinitializer }, align 32
@_bond_option_arp_ip_target_add.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.119, ptr @.str, ptr @.str.120, i8 1, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"_bond_option_arp_ip_target_add\00", [33 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Adding ARP target %pI4\0A\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.121 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"invalid ARP target %pI4 specified for removal\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"unable to remove nonexistent ARP target %pI4\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Removing last arp target with arp_interval on\0A\00", [49 x i8] zeroinitializer }, align 32
@bond_option_arp_ip_target_rem.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.124, ptr @.str, ptr @.str.125, i8 1, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bond_option_arp_ip_target_rem\00", [34 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Removing ARP target %pI4\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"down delay\00", [21 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unable to set %s as MII monitoring is disabled\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s (%d) is not a multiple of miimon (%d), value rounded to %d ms\0A\00", [62 x i8] zeroinitializer }, align 32
@_bond_option_delay_set.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.129, ptr @.str, ptr @.str.130, i8 0, i8 -10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_bond_option_delay_set\00", [41 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Setting %s to %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"up delay\00", [23 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"slow\00", [27 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fast\00", [27 x i8] zeroinitializer }, align 32
@bond_option_lacp_rate_set.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.134, ptr @.str, ptr @.str.135, i8 1, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bond_option_lacp_rate_set\00", [38 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Setting LACP rate to %s (%llu)\0A\00", [32 x i8] zeroinitializer }, align 32
@bond_option_min_links_set.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.136, ptr @.str, ptr @.str.137, i8 1, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bond_option_min_links_set\00", [38 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Setting min links value to %llu\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stable\00", [25 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bandwidth\00", [22 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"count\00", [26 x i8] zeroinitializer }, align 32
@bond_option_ad_select_set.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.141, ptr @.str, ptr @.str.142, i8 1, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bond_option_ad_select_set\00", [38 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Setting ad_select to %s (%llu)\0A\00", [32 x i8] zeroinitializer }, align 32
@bond_option_miimon_set.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.143, ptr @.str, ptr @.str.144, i8 0, i8 -25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bond_option_miimon_set\00", [41 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Setting MII monitoring interval to %llu\0A\00", [55 x i8] zeroinitializer }, align 32
@bond_option_miimon_set.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.143, ptr @.str, ptr @.str.145, i8 0, i8 -24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Note: Updating updelay (to %d) since it is a multiple of the miimon value\0A\00", [53 x i8] zeroinitializer }, align 32
@bond_option_miimon_set.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.143, ptr @.str, ptr @.str.146, i8 0, i8 -23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Note: Updating downdelay (to %d) since it is a multiple of the miimon value\0A\00", [51 x i8] zeroinitializer }, align 32
@bond_option_miimon_set.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.143, ptr @.str, ptr @.str.147, i8 0, i8 -22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"Note: Updating peer_notif_delay (to %d) since it is a multiple of the miimon value\0A\00", [44 x i8] zeroinitializer }, align 32
@bond_option_miimon_set.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.143, ptr @.str, ptr @.str.148, i8 0, i8 -22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"MII monitoring cannot be used with ARP monitoring - disabling ARP monitoring...\0A\00", [47 x i8] zeroinitializer }, align 32
@bond_option_primary_set.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.149, ptr @.str, ptr @.str.150, i8 1, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bond_option_primary_set\00", [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Setting primary slave to None\0A\00", [33 x i8] zeroinitializer }, align 32
@bond_option_primary_set.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.149, ptr @.str, ptr @.str.151, i8 1, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(slave %s): Setting as primary slave\0A\00", [58 x i8] zeroinitializer }, align 32
@bond_option_primary_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.152 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@bond_option_primary_set.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.149, ptr @.str, ptr @.str.150, i8 1, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@bond_option_primary_set.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.149, ptr @.str, ptr @.str.153, i8 1, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Recording %s as primary, but it has not been enslaved yet\0A\00", [37 x i8] zeroinitializer }, align 32
@netpoll_block_tx = external dso_local global %struct.atomic_t, align 4
@.str.154 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"always\00", [25 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"better\00", [25 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"failure\00", [24 x i8] zeroinitializer }, align 32
@bond_option_primary_reselect_set.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.157, ptr @.str, ptr @.str.158, i8 1, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.157 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bond_option_primary_reselect_set\00", [63 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Setting primary_reselect to %s (%llu)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@bond_option_use_carrier_set.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.160, ptr @.str, ptr @.str.161, i8 0, i8 -2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.160 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bond_option_use_carrier_set\00", [36 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Setting use_carrier to %llu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%15s\00", [27 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(slave %s): Device is not bonding slave\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(slave %s): Device is not our slave\0A\00", [59 x i8] zeroinitializer }, align 32
@bond_option_active_slave_set.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.165, ptr @.str, ptr @.str.166, i8 0, i8 -34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.165 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bond_option_active_slave_set\00", [35 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Clearing current active slave\0A\00", [33 x i8] zeroinitializer }, align 32
@bond_option_active_slave_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bond_option_active_slave_set.__warned.167 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bond_option_active_slave_set.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.165, ptr @.str, ptr @.str.168, i8 0, i8 -31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.168 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(slave %s): is already the current active slave\0A\00", [47 x i8] zeroinitializer }, align 32
@bond_option_active_slave_set.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.165, ptr @.str, ptr @.str.169, i8 0, i8 -30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.169 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(slave %s): Setting as active slave\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"(slave %s): Could not set as active slave; either %s is down or the link is down\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%hd\0A\00", [27 x i8] zeroinitializer }, align 32
@bond_option_queue_id_set.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.172, ptr @.str, ptr @.str.173, i8 1, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.172 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bond_option_queue_id_set\00", [39 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid input for queue_id set\0A\00", [32 x i8] zeroinitializer }, align 32
@bond_option_resend_igmp_set.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.174, ptr @.str, ptr @.str.175, i8 1, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.174 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bond_option_resend_igmp_set\00", [36 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Setting resend_igmp to %llu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"minval\00", [25 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%16s\00", [27 x i8] zeroinitializer }, align 32
@bond_option_slaves_set.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.178, ptr @.str, ptr @.str.179, i8 1, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.178 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bond_option_slaves_set\00", [41 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"interface %s does not exist!\0A\00", [34 x i8] zeroinitializer }, align 32
@bond_option_slaves_set.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.178, ptr @.str, ptr @.str.180, i8 1, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.180 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(slave %s): Enslaving interface\0A\00", [63 x i8] zeroinitializer }, align 32
@bond_option_slaves_set.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.178, ptr @.str, ptr @.str.181, i8 1, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.181 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(slave %s): Releasing interface\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"no command found in slaves file - use +ifname or -ifname\0A\00", [38 x i8] zeroinitializer }, align 32
@bond_option_tlb_dynamic_lb_set.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.183, ptr @.str, ptr @.str.184, i8 1, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.183 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bond_option_tlb_dynamic_lb_set\00", [33 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Setting dynamic-lb to %s (%llu)\0A\00", [63 x i8] zeroinitializer }, align 32
@bond_option_ad_actor_sys_prio_set.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.185, ptr @.str, ptr @.str.186, i8 1, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.185 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bond_option_ad_actor_sys_prio_set\00", [62 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Setting ad_actor_sys_prio to %llu\0A\00", [61 x i8] zeroinitializer }, align 32
@bond_option_ad_actor_system_set.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.187, ptr @.str, ptr @.str.188, i8 1, i8 -122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.187 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bond_option_ad_actor_system_set\00", [32 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Setting ad_actor_system to %pM\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Invalid ad_actor_system MAC address.\0A\00", [58 x i8] zeroinitializer }, align 32
@bond_option_ad_user_port_key_set.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.190, ptr @.str, ptr @.str.191, i8 1, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.190 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bond_option_ad_user_port_key_set\00", [63 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Setting ad_user_port_key to %llu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"peer notification delay\00", [40 x i8] zeroinitializer }, align 32
@bond_option_lacp_active_set.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.193, ptr @.str, ptr @.str.194, i8 1, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.193 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bond_option_lacp_active_set\00", [36 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Setting LACP active to %s (%llu)\0A\00", [62 x i8] zeroinitializer }, align 32
@bond_option_missed_max_set.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.195, ptr @.str, ptr @.str.196, i8 1, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.195 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bond_option_missed_max_set\00", [37 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Setting missed max to %s (%llu)\0A\00", [63 x i8] zeroinitializer }, align 32
@switch.table.__bond_opt_set = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @bond_mode_tbl, ptr getelementptr inbounds ([8 x %struct.bond_opt_value], ptr @bond_mode_tbl, i32 0, i32 1), ptr getelementptr inbounds ([8 x %struct.bond_opt_value], ptr @bond_mode_tbl, i32 0, i32 2), ptr getelementptr inbounds ([8 x %struct.bond_opt_value], ptr @bond_mode_tbl, i32 0, i32 3), ptr getelementptr inbounds ([8 x %struct.bond_opt_value], ptr @bond_mode_tbl, i32 0, i32 4), ptr getelementptr inbounds ([8 x %struct.bond_opt_value], ptr @bond_mode_tbl, i32 0, i32 5), ptr getelementptr inbounds ([8 x %struct.bond_opt_value], ptr @bond_mode_tbl, i32 0, i32 6)], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 4294967257, i64 4294967274, i64 4294967277, i64 4294967280, i64 4294967283]
@__sancov_gen_cov_switch_values.197 = internal global [4 x i64] [i64 2, i64 8, i64 43, i64 45]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 8, i64 43, i64 45]
@__sancov_gen_cov_switch_values.199 = internal global [4 x i64] [i64 2, i64 8, i64 43, i64 45]
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 497, i32 6 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 576, i32 29 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 578, i32 29 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 591, i32 24 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 709, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [10 x i8] c"bond_opts\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 225, i32 33 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 653, i32 27 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 656, i32 27 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 664, i32 25 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 671, i32 25 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 675, i32 25 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 683, i32 26 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 634, i32 25 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 228, i32 11 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 229, i32 11 }
@___asan_gen_.245 = private unnamed_addr constant [14 x i8] c"bond_mode_tbl\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 85, i32 36 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 236, i32 11 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 237, i32 11 }
@___asan_gen_.254 = private unnamed_addr constant [13 x i8] c"bond_pps_tbl\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 96, i32 36 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 244, i32 11 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 245, i32 11 }
@___asan_gen_.263 = private unnamed_addr constant [23 x i8] c"bond_xmit_hashtype_tbl\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 102, i32 36 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 251, i32 11 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 252, i32 11 }
@___asan_gen_.272 = private unnamed_addr constant [22 x i8] c"bond_arp_validate_tbl\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 112, i32 36 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 260, i32 11 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 261, i32 11 }
@___asan_gen_.281 = private unnamed_addr constant [25 x i8] c"bond_arp_all_targets_tbl\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 123, i32 36 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 267, i32 11 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 268, i32 11 }
@___asan_gen_.290 = private unnamed_addr constant [23 x i8] c"bond_fail_over_mac_tbl\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 129, i32 36 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 275, i32 11 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 276, i32 11 }
@___asan_gen_.299 = private unnamed_addr constant [16 x i8] c"bond_intmax_tbl\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 136, i32 36 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 293, i32 11 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 294, i32 11 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 300, i32 11 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 301, i32 11 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 307, i32 11 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 308, i32 11 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 323, i32 11 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 324, i32 11 }
@___asan_gen_.326 = private unnamed_addr constant [19 x i8] c"bond_lacp_rate_tbl\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 148, i32 36 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 332, i32 11 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 333, i32 11 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 339, i32 11 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 340, i32 11 }
@___asan_gen_.341 = private unnamed_addr constant [19 x i8] c"bond_ad_select_tbl\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 154, i32 36 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 347, i32 11 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 348, i32 11 }
@___asan_gen_.350 = private unnamed_addr constant [24 x i8] c"bond_num_peer_notif_tbl\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 161, i32 36 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 354, i32 11 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 355, i32 11 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 361, i32 11 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 362, i32 11 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 371, i32 11 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 372, i32 11 }
@___asan_gen_.371 = private unnamed_addr constant [26 x i8] c"bond_primary_reselect_tbl\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 168, i32 36 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 378, i32 11 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 379, i32 11 }
@___asan_gen_.380 = private unnamed_addr constant [21 x i8] c"bond_use_carrier_tbl\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 175, i32 36 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 385, i32 11 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 386, i32 11 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 395, i32 11 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 396, i32 11 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 402, i32 11 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 403, i32 11 }
@___asan_gen_.401 = private unnamed_addr constant [27 x i8] c"bond_all_slaves_active_tbl\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 181, i32 36 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 409, i32 11 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 410, i32 11 }
@___asan_gen_.410 = private unnamed_addr constant [21 x i8] c"bond_resend_igmp_tbl\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 187, i32 36 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 416, i32 11 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 417, i32 11 }
@___asan_gen_.419 = private unnamed_addr constant [21 x i8] c"bond_lp_interval_tbl\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 194, i32 36 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 423, i32 11 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 424, i32 11 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 430, i32 11 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 431, i32 11 }
@___asan_gen_.434 = private unnamed_addr constant [24 x i8] c"bond_tlb_dynamic_lb_tbl\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 200, i32 36 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 439, i32 11 }
@___asan_gen_.440 = private unnamed_addr constant [27 x i8] c"bond_ad_actor_sys_prio_tbl\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 206, i32 36 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 446, i32 11 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 453, i32 11 }
@___asan_gen_.449 = private unnamed_addr constant [26 x i8] c"bond_ad_user_port_key_tbl\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 212, i32 36 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 461, i32 11 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 468, i32 11 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 469, i32 11 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 314, i32 11 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 315, i32 11 }
@___asan_gen_.467 = private unnamed_addr constant [17 x i8] c"bond_lacp_active\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 142, i32 36 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 284, i32 11 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 285, i32 11 }
@___asan_gen_.476 = private unnamed_addr constant [20 x i8] c"bond_missed_max_tbl\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 218, i32 36 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 86, i32 4 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 87, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 88, i32 4 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 89, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 90, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 91, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 92, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 824, i32 4 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 833, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 98, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1364, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 103, i32 4 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 104, i32 4 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 105, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 106, i32 4 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 107, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 108, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1292, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 113, i32 4 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 114, i32 4 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 115, i32 4 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 116, i32 4 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 117, i32 4 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 118, i32 4 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 119, i32 4 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1190, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 124, i32 4 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1200, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 132, i32 4 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1282, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 137, i32 4 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1032, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1037, i32 4 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1041, i32 4 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1169, i32 26 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1178, i32 26 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1085, i32 25 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1091, i32 25 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1098, i32 25 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1102, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1123, i32 25 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1130, i32 25 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1136, i32 26 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1138, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1002, i32 46 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 972, i32 25 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 978, i32 8 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 985, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 995, i32 46 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 149, i32 4 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 150, i32 4 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1394, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1345, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 155, i32 4 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 156, i32 4 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 157, i32 4 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1405, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 925, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 929, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 932, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 935, i32 3 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 938, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1231, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1240, i32 4 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1249, i32 6 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1256, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 169, i32 4 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 170, i32 4 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 171, i32 4 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1268, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 177, i32 4 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1018, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 865, i32 25 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 876, i32 4 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 881, i32 4 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 889, i32 3 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 900, i32 4 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 904, i32 5 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 907, i32 5 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1431, i32 22 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1467, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1306, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 195, i32 4 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1481, i32 25 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1490, i32 3 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1498, i32 3 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1503, i32 3 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1516, i32 24 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1524, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1534, i32 2 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1560, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1567, i32 24 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1574, i32 2 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1010, i32 7 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1384, i32 2 }
@___asan_gen_.848 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.849 = private constant [38 x i8] c"../drivers/net/bonding/bond_options.c\00", align 1
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1210, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant [28 x i8] c"switch.table.__bond_opt_set\00", align 1
@llvm.compiler.used = appending global [218 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @bond_opts, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @bond_mode_tbl, ptr @.str.14, ptr @.str.15, ptr @bond_pps_tbl, ptr @.str.16, ptr @.str.17, ptr @bond_xmit_hashtype_tbl, ptr @.str.18, ptr @.str.19, ptr @bond_arp_validate_tbl, ptr @.str.20, ptr @.str.21, ptr @bond_arp_all_targets_tbl, ptr @.str.22, ptr @.str.23, ptr @bond_fail_over_mac_tbl, ptr @.str.24, ptr @.str.25, ptr @bond_intmax_tbl, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @bond_lacp_rate_tbl, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @bond_ad_select_tbl, ptr @.str.38, ptr @.str.39, ptr @bond_num_peer_notif_tbl, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @bond_primary_reselect_tbl, ptr @.str.46, ptr @.str.47, ptr @bond_use_carrier_tbl, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @bond_all_slaves_active_tbl, ptr @.str.54, ptr @.str.55, ptr @bond_resend_igmp_tbl, ptr @.str.56, ptr @.str.57, ptr @bond_lp_interval_tbl, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @bond_tlb_dynamic_lb_tbl, ptr @.str.62, ptr @bond_ad_actor_sys_prio_tbl, ptr @.str.63, ptr @.str.64, ptr @bond_ad_user_port_key_tbl, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @bond_lacp_active, ptr @.str.70, ptr @.str.71, ptr @bond_missed_max_tbl, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @switch.table.__bond_opt_set], section "llvm.metadata"
@0 = internal global [218 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_opts to i32), i32 896, i32 1120, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_mode_tbl to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_pps_tbl to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_xmit_hashtype_tbl to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_arp_validate_tbl to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_arp_all_targets_tbl to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_fail_over_mac_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_intmax_tbl to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_lacp_rate_tbl to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_ad_select_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_num_peer_notif_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_primary_reselect_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_use_carrier_tbl to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_all_slaves_active_tbl to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_resend_igmp_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_lp_interval_tbl to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_tlb_dynamic_lb_tbl to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_ad_actor_sys_prio_tbl to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_ad_user_port_key_tbl to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_lacp_active to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_missed_max_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__bond_opt_set to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bond_opt_get_by_name(ptr nocapture noundef readonly %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %option.09 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx.i = getelementptr [32 x %struct.bond_option], ptr @bond_opts, i32 0, i32 %option.09
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %name1 = getelementptr [32 x %struct.bond_option], ptr @bond_opts, i32 0, i32 %option.09, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 4
  %call2 = tail call i32 @strcmp(ptr noundef %1, ptr noundef %name) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %option.09, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx.i, %land.lhs.true.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @bond_opt_get(i32 noundef %option) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %option)
  %cmp = icmp ult i32 %option, 32
  %arrayidx = getelementptr [32 x %struct.bond_option], ptr @bond_opts, i32 0, i32 %option
  %retval.0 = select i1 %cmp, ptr %arrayidx, ptr null
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bond_opt_get_val(i32 noundef %option, i64 noundef %val) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %option)
  %cmp.i = icmp ugt i32 %option, 31
  %arrayidx.i = getelementptr [32 x %struct.bond_option], ptr @bond_opts, i32 0, i32 %option
  %tobool.not45 = icmp eq ptr %arrayidx.i, null
  %tobool.not = or i1 %cmp.i, %tobool.not45
  br i1 %tobool.not, label %do.end, label %for.cond.preheader, !prof !466

for.cond.preheader:                               ; preds = %entry
  %values = getelementptr [32 x %struct.bond_option], ptr @bond_opts, i32 0, i32 %option, i32 5
  %0 = ptrtoint ptr %values to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %values, align 4
  %2 = lshr i32 76316800, %option
  %3 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool24.not.not = icmp eq i32 %3, 0
  br i1 %tobool24.not.not, label %land.rhs.preheader, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.rhs.preheader:                               ; preds = %for.cond.preheader
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %tobool26.not46 = icmp eq ptr %5, null
  br i1 %tobool26.not46, label %land.rhs.preheader.cleanup_crit_edge, label %land.rhs.preheader.for.body_crit_edge

land.rhs.preheader.for.body_crit_edge:            ; preds = %land.rhs.preheader
  br label %for.body

land.rhs.preheader.cleanup_crit_edge:             ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 497, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

land.rhs:                                         ; preds = %for.body
  %inc = add i32 %i.04247, 1
  %arrayidx = getelementptr %struct.bond_opt_value, ptr %1, i32 %inc
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %tobool26.not = icmp eq ptr %7, null
  br i1 %tobool26.not, label %land.rhs.cleanup_crit_edge, label %land.rhs.for.body_crit_edge

land.rhs.for.body_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %land.rhs.for.body_crit_edge, %land.rhs.preheader.for.body_crit_edge
  %arrayidx48 = phi ptr [ %arrayidx, %land.rhs.for.body_crit_edge ], [ %1, %land.rhs.preheader.for.body_crit_edge ]
  %i.04247 = phi i32 [ %inc, %land.rhs.for.body_crit_edge ], [ 0, %land.rhs.preheader.for.body_crit_edge ]
  %value = getelementptr %struct.bond_opt_value, ptr %1, i32 %i.04247, i32 1
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %val)
  %cmp = icmp eq i64 %9, %val
  br i1 %cmp, label %for.body.cleanup_crit_edge, label %land.rhs

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %do.end, %land.rhs.preheader.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %for.cond.preheader.cleanup_crit_edge ], [ null, %land.rhs.preheader.cleanup_crit_edge ], [ %arrayidx48, %for.body.cleanup_crit_edge ], [ null, %land.rhs.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bond_opt_parse(ptr nocapture noundef readonly %opt, ptr noundef %val) local_unnamed_addr #6 align 64 {
entry:
  %valstr = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %valstr) #14
  %0 = call ptr @memset(ptr %valstr, i32 0, i32 33)
  %flags = getelementptr inbounds %struct.bond_option, ptr %opt, i32 0, i32 3
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %values = getelementptr inbounds %struct.bond_option, ptr %opt, i32 0, i32 5
  %3 = ptrtoint ptr %values to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %values, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %val, i32 0, i32 1
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %6)
  %cmp.not = icmp eq i64 %6, -1
  br i1 %cmp.not, label %if.then5, label %if.end3.if.end35_crit_edge

if.end3.if.end35_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then5:                                         ; preds = %if.end3
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %val, align 8
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %if.then5.cleanup_crit_edge, label %if.end8

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.then5
  %call = tail call ptr @strchr(ptr noundef nonnull %8, i32 noundef 10)
  %tobool10.not = icmp eq ptr %call, null
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %call, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8.if.end12_crit_edge
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %val, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool14.not140 = icmp eq i8 %13, 0
  br i1 %tobool14.not140, label %if.end12.if.else_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

if.end12.if.else_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end12.for.body_crit_edge
  %14 = phi i8 [ %21, %for.inc.for.body_crit_edge ], [ %13, %if.end12.for.body_crit_edge ]
  %p.0141 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %11, %if.end12.for.body_crit_edge ]
  %conv = zext i8 %14 to i32
  %15 = add nsw i32 %conv, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %15)
  %16 = icmp ult i32 %15, -10
  br i1 %16, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %19 = and i8 %18, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp20.not = icmp eq i8 %19, 0
  br i1 %cmp20.not, label %if.then25, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr i8, ptr %p.0141, i32 1
  %20 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr, align 1
  %tobool14.not = icmp eq i8 %21, 0
  br i1 %tobool14.not, label %for.inc.if.else_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.if.else_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then25:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %call27 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef nonnull %valstr)
  br label %if.end31

if.else:                                          ; preds = %for.inc.if.else_crit_edge, %if.end12.if.else_crit_edge
  %call30 = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef %11, ptr noundef nonnull @.str.2, ptr noundef %value)
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then25
  %tobool14.not139 = phi i1 [ false, %if.then25 ], [ true, %if.else ]
  %rv.0 = phi i32 [ %call27, %if.then25 ], [ %call30, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rv.0)
  %tobool32.not = icmp eq i32 %rv.0, 0
  br i1 %tobool32.not, label %if.end31.cleanup_crit_edge, label %if.end31.if.end35_crit_edge

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end35:                                         ; preds = %if.end31.if.end35_crit_edge, %if.end3.if.end35_crit_edge
  %checkval.1.off0 = phi i1 [ true, %if.end3.if.end35_crit_edge ], [ %tobool14.not139, %if.end31.if.end35_crit_edge ]
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %4, align 8
  %tobool39.not143 = icmp eq ptr %23, null
  br i1 %tobool39.not143, label %if.end35.for.end75_crit_edge, label %if.end35.for.body40_crit_edge

if.end35.for.body40_crit_edge:                    ; preds = %if.end35
  br label %for.body40

if.end35.for.end75_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end75

for.body40:                                       ; preds = %for.inc74.for.body40_crit_edge, %if.end35.for.body40_crit_edge
  %24 = phi ptr [ %32, %for.inc74.for.body40_crit_edge ], [ %23, %if.end35.for.body40_crit_edge ]
  %arrayidx37148 = phi ptr [ %arrayidx37, %for.inc74.for.body40_crit_edge ], [ %4, %if.end35.for.body40_crit_edge ]
  %i.0144 = phi i32 [ %inc, %for.inc74.for.body40_crit_edge ], [ 0, %if.end35.for.body40_crit_edge ]
  br i1 %checkval.1.off0, label %if.then42, label %if.else51

if.then42:                                        ; preds = %for.body40
  %25 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %value, align 8
  %value45 = getelementptr %struct.bond_opt_value, ptr %4, i32 %i.0144, i32 1
  %27 = ptrtoint ptr %value45 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %value45, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %28)
  %cmp46 = icmp eq i64 %26, %28
  br i1 %cmp46, label %if.then42.if.end70_crit_edge, label %if.then42.for.inc74_crit_edge

if.then42.for.inc74_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc74

if.then42.if.end70_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

if.else51:                                        ; preds = %for.body40
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %valstr, ptr noundef nonnull dereferenceable(8) @.str.3, i32 8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool54.not = icmp eq i32 %bcmp, 0
  br i1 %tobool54.not, label %land.lhs.true, label %if.else51.if.end61_crit_edge

if.else51.if.end61_crit_edge:                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

land.lhs.true:                                    ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #16
  %flags56 = getelementptr %struct.bond_opt_value, ptr %4, i32 %i.0144, i32 2
  %29 = ptrtoint ptr %flags56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags56, align 8
  %and57 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %spec.select129 = select i1 %tobool58.not, ptr null, ptr %arrayidx37148
  br label %if.end61

if.end61:                                         ; preds = %land.lhs.true, %if.else51.if.end61_crit_edge
  %ret.1 = phi ptr [ null, %if.else51.if.end61_crit_edge ], [ %spec.select129, %land.lhs.true ]
  %call65 = call i32 @strcmp(ptr noundef nonnull %valstr, ptr noundef nonnull %24) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  %spec.select130 = select i1 %tobool66.not, ptr %arrayidx37148, ptr %ret.1
  br label %if.end70

if.end70:                                         ; preds = %if.end61, %if.then42.if.end70_crit_edge
  %ret.2 = phi ptr [ %spec.select130, %if.end61 ], [ %arrayidx37148, %if.then42.if.end70_crit_edge ]
  %tobool71.not = icmp eq ptr %ret.2, null
  br i1 %tobool71.not, label %if.end70.for.inc74_crit_edge, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end70.for.inc74_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc74

for.inc74:                                        ; preds = %if.end70.for.inc74_crit_edge, %if.then42.for.inc74_crit_edge
  %inc = add i32 %i.0144, 1
  %arrayidx37 = getelementptr %struct.bond_opt_value, ptr %4, i32 %inc
  %31 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx37, align 8
  %tobool39.not = icmp eq ptr %32, null
  br i1 %tobool39.not, label %for.inc74.for.end75_crit_edge, label %for.inc74.for.body40_crit_edge

for.inc74.for.body40_crit_edge:                   ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body40

for.inc74.for.end75_crit_edge:                    ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end75

for.end75:                                        ; preds = %for.inc74.for.end75_crit_edge, %if.end35.for.end75_crit_edge
  br i1 %checkval.1.off0, label %land.lhs.true78, label %for.end75.cleanup_crit_edge

for.end75.cleanup_crit_edge:                      ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true78:                                  ; preds = %for.end75
  %33 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %value, align 8
  %35 = ptrtoint ptr %values to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %values, align 4
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %land.lhs.true78.cleanup_crit_edge, label %land.rhs.i.preheader.i

land.lhs.true78.cleanup_crit_edge:                ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.rhs.i.preheader.i:                           ; preds = %land.lhs.true78
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %tobool2.not.i32.i = icmp eq ptr %38, null
  br i1 %tobool2.not.i32.i, label %land.rhs.i.preheader.i.cleanup_crit_edge, label %for.body.i.i.preheader

land.rhs.i.preheader.i.cleanup_crit_edge:         ; preds = %land.rhs.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.i.i.preheader:                           ; preds = %land.rhs.i.preheader.i
  %flags.i.i149 = getelementptr %struct.bond_opt_value, ptr %36, i32 0, i32 2
  %39 = ptrtoint ptr %flags.i.i149 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i.i149, align 8
  %and.i.i150 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i150)
  %tobool5.not.i.i151 = icmp eq i32 %and.i.i150, 0
  br i1 %tobool5.not.i.i151, label %for.body.i.i.preheader.land.rhs.i.i_crit_edge, label %for.body.i.i.preheader.land.rhs.i18.preheader.i_crit_edge

for.body.i.i.preheader.land.rhs.i18.preheader.i_crit_edge: ; preds = %for.body.i.i.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i18.preheader.i

for.body.i.i.preheader.land.rhs.i.i_crit_edge:    ; preds = %for.body.i.i.preheader
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.body.i.i.land.rhs.i.i_crit_edge, %for.body.i.i.preheader.land.rhs.i.i_crit_edge
  %i.014.i33.i152 = phi i32 [ %inc.i.i, %for.body.i.i.land.rhs.i.i_crit_edge ], [ 0, %for.body.i.i.preheader.land.rhs.i.i_crit_edge ]
  %inc.i.i = add i32 %i.014.i33.i152, 1
  %arrayidx.i.i = getelementptr %struct.bond_opt_value, ptr %36, i32 %inc.i.i
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i, align 8
  %tobool2.not.i.i = icmp eq ptr %42, null
  br i1 %tobool2.not.i.i, label %land.rhs.i.i.land.rhs.i18.preheader.i_crit_edge, label %for.body.i.i

land.rhs.i.i.land.rhs.i18.preheader.i_crit_edge:  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i18.preheader.i

for.body.i.i:                                     ; preds = %land.rhs.i.i
  %flags.i.i = getelementptr %struct.bond_opt_value, ptr %36, i32 %inc.i.i, i32 2
  %43 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %44, 2
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %for.body.i.i.land.rhs.i.i_crit_edge, label %for.body.i.i.land.rhs.i18.preheader.i_crit_edge

for.body.i.i.land.rhs.i18.preheader.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i18.preheader.i

for.body.i.i.land.rhs.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i.i

land.rhs.i18.preheader.i:                         ; preds = %for.body.i.i.land.rhs.i18.preheader.i_crit_edge, %land.rhs.i.i.land.rhs.i18.preheader.i_crit_edge, %for.body.i.i.preheader.land.rhs.i18.preheader.i_crit_edge
  %retval.0.i.ph.i = phi ptr [ %36, %for.body.i.i.preheader.land.rhs.i18.preheader.i_crit_edge ], [ %arrayidx.i.i, %for.body.i.i.land.rhs.i18.preheader.i_crit_edge ], [ null, %land.rhs.i.i.land.rhs.i18.preheader.i_crit_edge ]
  %45 = ptrtoint ptr %flags.i.i149 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i.i149, align 8
  %and.i20.i156 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i156)
  %tobool5.not.i21.i157 = icmp eq i32 %and.i20.i156, 0
  br i1 %tobool5.not.i21.i157, label %land.rhs.i18.preheader.i.for.cond.i14.i_crit_edge, label %land.rhs.i18.preheader.i.bond_opt_get_flags.exit24.i_crit_edge

land.rhs.i18.preheader.i.bond_opt_get_flags.exit24.i_crit_edge: ; preds = %land.rhs.i18.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bond_opt_get_flags.exit24.i

land.rhs.i18.preheader.i.for.cond.i14.i_crit_edge: ; preds = %land.rhs.i18.preheader.i
  br label %for.cond.i14.i

for.cond.i14.i:                                   ; preds = %for.body.i22.i.for.cond.i14.i_crit_edge, %land.rhs.i18.preheader.i.for.cond.i14.i_crit_edge
  %i.014.i1537.i158 = phi i32 [ %inc.i13.i, %for.body.i22.i.for.cond.i14.i_crit_edge ], [ 0, %land.rhs.i18.preheader.i.for.cond.i14.i_crit_edge ]
  %inc.i13.i = add i32 %i.014.i1537.i158, 1
  %arrayidx.i16.i = getelementptr %struct.bond_opt_value, ptr %36, i32 %inc.i13.i
  %47 = ptrtoint ptr %arrayidx.i16.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i16.i, align 8
  %tobool2.not.i17.i = icmp eq ptr %48, null
  br i1 %tobool2.not.i17.i, label %for.cond.i14.i.cleanup_crit_edge, label %for.body.i22.i

for.cond.i14.i.cleanup_crit_edge:                 ; preds = %for.cond.i14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.i22.i:                                   ; preds = %for.cond.i14.i
  %flags.i19.i = getelementptr %struct.bond_opt_value, ptr %36, i32 %inc.i13.i, i32 2
  %49 = ptrtoint ptr %flags.i19.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i19.i, align 8
  %and.i20.i = and i32 %50, 4
  %tobool5.not.i21.i = icmp eq i32 %and.i20.i, 0
  br i1 %tobool5.not.i21.i, label %for.body.i22.i.for.cond.i14.i_crit_edge, label %for.body.i22.i.bond_opt_get_flags.exit24.i_crit_edge

for.body.i22.i.bond_opt_get_flags.exit24.i_crit_edge: ; preds = %for.body.i22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bond_opt_get_flags.exit24.i

for.body.i22.i.for.cond.i14.i_crit_edge:          ; preds = %for.body.i22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i14.i

bond_opt_get_flags.exit24.i:                      ; preds = %for.body.i22.i.bond_opt_get_flags.exit24.i_crit_edge, %land.rhs.i18.preheader.i.bond_opt_get_flags.exit24.i_crit_edge
  %arrayidx.i1638.i.lcssa = phi ptr [ %36, %land.rhs.i18.preheader.i.bond_opt_get_flags.exit24.i_crit_edge ], [ %arrayidx.i16.i, %for.body.i22.i.bond_opt_get_flags.exit24.i_crit_edge ]
  %i.014.i1537.i.lcssa = phi i32 [ 0, %land.rhs.i18.preheader.i.bond_opt_get_flags.exit24.i_crit_edge ], [ %inc.i13.i, %for.body.i22.i.bond_opt_get_flags.exit24.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %arrayidx.i1638.i.lcssa, null
  br i1 %tobool.not.i, label %bond_opt_get_flags.exit24.i.cleanup_crit_edge, label %lor.lhs.false.i

bond_opt_get_flags.exit24.i.cleanup_crit_edge:    ; preds = %bond_opt_get_flags.exit24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %bond_opt_get_flags.exit24.i
  %tobool2.not.i = icmp eq ptr %retval.0.i.ph.i, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.bond_opt_check_range.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.bond_opt_check_range.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bond_opt_check_range.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %value.i = getelementptr inbounds %struct.bond_opt_value, ptr %retval.0.i.ph.i, i32 0, i32 1
  %51 = ptrtoint ptr %value.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %value.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %34)
  %cmp.i = icmp ugt i64 %52, %34
  br i1 %cmp.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.bond_opt_check_range.exit_crit_edge

land.lhs.true.i.bond_opt_check_range.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bond_opt_check_range.exit

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

bond_opt_check_range.exit:                        ; preds = %land.lhs.true.i.bond_opt_check_range.exit_crit_edge, %lor.lhs.false.i.bond_opt_check_range.exit_crit_edge
  %value4.i = getelementptr %struct.bond_opt_value, ptr %36, i32 %i.014.i1537.i.lcssa, i32 1
  %53 = ptrtoint ptr %value4.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %value4.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %54, i64 %34)
  %cmp5.i.not = icmp ult i64 %54, %34
  %spec.select = select i1 %cmp5.i.not, ptr null, ptr %val
  br label %cleanup

cleanup:                                          ; preds = %bond_opt_check_range.exit, %land.lhs.true.i.cleanup_crit_edge, %bond_opt_get_flags.exit24.i.cleanup_crit_edge, %for.cond.i14.i.cleanup_crit_edge, %land.rhs.i.preheader.i.cleanup_crit_edge, %land.lhs.true78.cleanup_crit_edge, %for.end75.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %val, %entry.cleanup_crit_edge ], [ null, %for.end75.cleanup_crit_edge ], [ null, %if.end31.cleanup_crit_edge ], [ null, %if.then5.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %land.lhs.true.i.cleanup_crit_edge ], [ null, %bond_opt_get_flags.exit24.i.cleanup_crit_edge ], [ null, %land.lhs.true78.cleanup_crit_edge ], [ null, %land.rhs.i.preheader.i.cleanup_crit_edge ], [ %spec.select, %bond_opt_check_range.exit ], [ null, %for.cond.i14.i.cleanup_crit_edge ], [ %ret.2, %if.end70.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %valstr) #14
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__bond_opt_set(ptr noundef %bond, i32 noundef %option, ptr noundef %val) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b137 = load i1, ptr @__bond_opt_set.__already_done, align 1
  br i1 %.b137, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !467

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__bond_opt_set.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 709, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 709) #14
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %option)
  %cmp.i = icmp ult i32 %option, 32
  %arrayidx.i = getelementptr [32 x %struct.bond_option], ptr @bond_opts, i32 0, i32 %option
  %retval.0.i = select i1 %cmp.i, ptr %arrayidx.i, ptr null
  %tobool40.not = icmp eq ptr %val, null
  br i1 %tobool40.not, label %do.end58, label %lor.lhs.false.critedge, !prof !466

do.end58:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 712, i32 noundef 9, ptr noundef null) #14
  br label %if.end120

lor.lhs.false.critedge:                           ; preds = %if.end30
  %tobool74.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool74.not, label %do.end92, label %if.end108.critedge, !prof !466

do.end92:                                         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 712, i32 noundef 9, ptr noundef null) #14
  br label %if.end120

if.end108.critedge:                               ; preds = %lor.lhs.false.critedge
  %params1.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19
  %0 = ptrtoint ptr %params1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %params1.i, align 4
  %unsuppmodes.i = getelementptr inbounds %struct.bond_option, ptr %retval.0.i, i32 0, i32 4
  %div3.i.i = lshr i32 %1, 5
  %arrayidx.i.i = getelementptr i32, ptr %unsuppmodes.i, i32 %div3.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %1, 31
  %4 = shl nuw i32 1, %and.i.i
  %5 = and i32 %4, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end108.critedge.sw.bb21.i_crit_edge

if.end108.critedge.sw.bb21.i_crit_edge:           ; preds = %if.end108.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb21.i

if.end.i:                                         ; preds = %if.end108.critedge
  %flags.i = getelementptr inbounds %struct.bond_option, ptr %retval.0.i, i32 0, i32 3
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end6.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %8 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bond, align 8
  %lower.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 13, i32 1
  %10 = ptrtoint ptr %lower.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %lower.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, %lower.i
  br i1 %cmp.i.not.i, label %land.lhs.true.i.if.end6.i_crit_edge, label %land.lhs.true.i.sw.bb22.i_crit_edge

land.lhs.true.i.sw.bb22.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb22.i

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.end6.i:                                        ; preds = %land.lhs.true.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %and8.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end6.i.if.end112_crit_edge, label %land.lhs.true10.i

if.end6.i.if.end112_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end112

land.lhs.true10.i:                                ; preds = %if.end6.i
  %12 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bond, align 8
  %flags12.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %flags12.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags12.i, align 8
  %and13.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %land.lhs.true10.i.if.end112_crit_edge, label %land.lhs.true10.i.sw.bb25.i_crit_edge

land.lhs.true10.i.sw.bb25.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb25.i

land.lhs.true10.i.if.end112_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end112

if.end112:                                        ; preds = %land.lhs.true10.i.if.end112_crit_edge, %if.end6.i.if.end112_crit_edge
  %call113 = tail call ptr @bond_opt_parse(ptr noundef nonnull %retval.0.i, ptr noundef nonnull %val)
  %tobool114.not = icmp eq ptr %call113, null
  br i1 %tobool114.not, label %if.end112.if.then.i_crit_edge, label %out

if.end112.if.then.i_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

out:                                              ; preds = %if.end112
  %set = getelementptr inbounds %struct.bond_option, ptr %retval.0.i, i32 0, i32 6
  %16 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set, align 4
  %call117 = tail call i32 %17(ptr noundef %bond, ptr noundef nonnull %call113) #14
  %18 = zext i32 %call117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call117, label %out.if.end120_crit_edge [
    i32 -19, label %land.lhs.true.i144
    i32 -22, label %out.if.then.i_crit_edge
    i32 -13, label %out.sw.bb21.i_crit_edge
    i32 -39, label %out.sw.bb22.i_crit_edge
    i32 -16, label %out.sw.bb25.i_crit_edge
  ]

out.sw.bb25.i_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb25.i

out.sw.bb22.i_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb22.i

out.sw.bb21.i_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb21.i

out.if.then.i_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

out.if.end120_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120

if.then.i:                                        ; preds = %out.if.then.i_crit_edge, %if.end112.if.then.i_crit_edge
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %val, align 8
  %tobool1.not.i = icmp eq ptr %20, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  %call.i = tail call ptr @strchr(ptr noundef nonnull %20, i32 noundef 10) #14
  %tobool4.not.i = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i, label %if.then2.i.if.end.i141_crit_edge, label %if.then5.i

if.then2.i.if.end.i141_crit_edge:                 ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i141

if.then5.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %call.i, align 1
  br label %if.end.i141

if.end.i141:                                      ; preds = %if.then5.i, %if.then2.i.if.end.i141_crit_edge
  %22 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bond, align 8
  %name.i = getelementptr inbounds %struct.bond_option, ptr %retval.0.i, i32 0, i32 1
  %24 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name.i, align 4
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %val, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.5, ptr noundef %25, ptr noundef %27) #18
  br label %if.end10.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bond, align 8
  %name8.i = getelementptr inbounds %struct.bond_option, ptr %retval.0.i, i32 0, i32 1
  %30 = ptrtoint ptr %name8.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name8.i, align 4
  %value.i = getelementptr inbounds %struct.bond_opt_value, ptr %val, i32 0, i32 1
  %32 = ptrtoint ptr %value.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %value.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str.6, ptr noundef %31, i64 noundef %33) #18
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %if.end.i141
  %values.i.i = getelementptr inbounds %struct.bond_option, ptr %retval.0.i, i32 0, i32 5
  %34 = ptrtoint ptr %values.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %values.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %if.end10.i.if.end120_crit_edge, label %land.rhs.i.preheader.i

if.end10.i.if.end120_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120

land.rhs.i.preheader.i:                           ; preds = %if.end10.i
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %tobool2.not.i92.i = icmp eq ptr %37, null
  br i1 %tobool2.not.i92.i, label %land.rhs.i.preheader.i.if.end120_crit_edge, label %for.body.i.i.preheader

land.rhs.i.preheader.i.if.end120_crit_edge:       ; preds = %land.rhs.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120

for.body.i.i.preheader:                           ; preds = %land.rhs.i.preheader.i
  %flags.i.i166 = getelementptr %struct.bond_opt_value, ptr %35, i32 0, i32 2
  %38 = ptrtoint ptr %flags.i.i166 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i.i166, align 8
  %and.i.i143167 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i143167)
  %tobool5.not.i.i168 = icmp eq i32 %and.i.i143167, 0
  br i1 %tobool5.not.i.i168, label %for.body.i.i.preheader.land.rhs.i.i_crit_edge, label %for.body.i.i.preheader.land.rhs.i77.preheader.i_crit_edge

for.body.i.i.preheader.land.rhs.i77.preheader.i_crit_edge: ; preds = %for.body.i.i.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i77.preheader.i

for.body.i.i.preheader.land.rhs.i.i_crit_edge:    ; preds = %for.body.i.i.preheader
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.body.i.i.land.rhs.i.i_crit_edge, %for.body.i.i.preheader.land.rhs.i.i_crit_edge
  %i.014.i93.i169 = phi i32 [ %inc.i.i, %for.body.i.i.land.rhs.i.i_crit_edge ], [ 0, %for.body.i.i.preheader.land.rhs.i.i_crit_edge ]
  %inc.i.i = add i32 %i.014.i93.i169, 1
  %arrayidx.i.i142 = getelementptr %struct.bond_opt_value, ptr %35, i32 %inc.i.i
  %40 = ptrtoint ptr %arrayidx.i.i142 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i142, align 8
  %tobool2.not.i.i = icmp eq ptr %41, null
  br i1 %tobool2.not.i.i, label %land.rhs.i.i.land.rhs.i77.preheader.i_crit_edge, label %for.body.i.i

land.rhs.i.i.land.rhs.i77.preheader.i_crit_edge:  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i77.preheader.i

for.body.i.i:                                     ; preds = %land.rhs.i.i
  %flags.i.i = getelementptr %struct.bond_opt_value, ptr %35, i32 %inc.i.i, i32 2
  %42 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i.i, align 8
  %and.i.i143 = and i32 %43, 2
  %tobool5.not.i.i = icmp eq i32 %and.i.i143, 0
  br i1 %tobool5.not.i.i, label %for.body.i.i.land.rhs.i.i_crit_edge, label %for.body.i.i.land.rhs.i77.preheader.i_crit_edge

for.body.i.i.land.rhs.i77.preheader.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i77.preheader.i

for.body.i.i.land.rhs.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i.i

land.rhs.i77.preheader.i:                         ; preds = %for.body.i.i.land.rhs.i77.preheader.i_crit_edge, %land.rhs.i.i.land.rhs.i77.preheader.i_crit_edge, %for.body.i.i.preheader.land.rhs.i77.preheader.i_crit_edge
  %retval.0.i.ph.i = phi ptr [ %35, %for.body.i.i.preheader.land.rhs.i77.preheader.i_crit_edge ], [ %arrayidx.i.i142, %for.body.i.i.land.rhs.i77.preheader.i_crit_edge ], [ null, %land.rhs.i.i.land.rhs.i77.preheader.i_crit_edge ]
  %44 = ptrtoint ptr %flags.i.i166 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags.i.i166, align 8
  %and.i79.i172 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79.i172)
  %tobool5.not.i80.i173 = icmp eq i32 %and.i79.i172, 0
  br i1 %tobool5.not.i80.i173, label %land.rhs.i77.preheader.i.for.cond.i73.i_crit_edge, label %land.rhs.i77.preheader.i.bond_opt_get_flags.exit83.i_crit_edge

land.rhs.i77.preheader.i.bond_opt_get_flags.exit83.i_crit_edge: ; preds = %land.rhs.i77.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bond_opt_get_flags.exit83.i

land.rhs.i77.preheader.i.for.cond.i73.i_crit_edge: ; preds = %land.rhs.i77.preheader.i
  br label %for.cond.i73.i

for.cond.i73.i:                                   ; preds = %for.body.i81.i.for.cond.i73.i_crit_edge, %land.rhs.i77.preheader.i.for.cond.i73.i_crit_edge
  %i.014.i7497.i174 = phi i32 [ %inc.i72.i, %for.body.i81.i.for.cond.i73.i_crit_edge ], [ 0, %land.rhs.i77.preheader.i.for.cond.i73.i_crit_edge ]
  %inc.i72.i = add i32 %i.014.i7497.i174, 1
  %arrayidx.i75.i = getelementptr %struct.bond_opt_value, ptr %35, i32 %inc.i72.i
  %46 = ptrtoint ptr %arrayidx.i75.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i75.i, align 8
  %tobool2.not.i76.i = icmp eq ptr %47, null
  br i1 %tobool2.not.i76.i, label %for.cond.i73.i.if.end120_crit_edge, label %for.body.i81.i

for.cond.i73.i.if.end120_crit_edge:               ; preds = %for.cond.i73.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120

for.body.i81.i:                                   ; preds = %for.cond.i73.i
  %flags.i78.i = getelementptr %struct.bond_opt_value, ptr %35, i32 %inc.i72.i, i32 2
  %48 = ptrtoint ptr %flags.i78.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.i78.i, align 8
  %and.i79.i = and i32 %49, 4
  %tobool5.not.i80.i = icmp eq i32 %and.i79.i, 0
  br i1 %tobool5.not.i80.i, label %for.body.i81.i.for.cond.i73.i_crit_edge, label %for.body.i81.i.bond_opt_get_flags.exit83.i_crit_edge

for.body.i81.i.bond_opt_get_flags.exit83.i_crit_edge: ; preds = %for.body.i81.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bond_opt_get_flags.exit83.i

for.body.i81.i.for.cond.i73.i_crit_edge:          ; preds = %for.body.i81.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i73.i

bond_opt_get_flags.exit83.i:                      ; preds = %for.body.i81.i.bond_opt_get_flags.exit83.i_crit_edge, %land.rhs.i77.preheader.i.bond_opt_get_flags.exit83.i_crit_edge
  %arrayidx.i7598.i.lcssa = phi ptr [ %35, %land.rhs.i77.preheader.i.bond_opt_get_flags.exit83.i_crit_edge ], [ %arrayidx.i75.i, %for.body.i81.i.bond_opt_get_flags.exit83.i_crit_edge ]
  %i.014.i7497.i.lcssa = phi i32 [ 0, %land.rhs.i77.preheader.i.bond_opt_get_flags.exit83.i_crit_edge ], [ %inc.i72.i, %for.body.i81.i.bond_opt_get_flags.exit83.i_crit_edge ]
  %tobool13.not.i = icmp eq ptr %arrayidx.i7598.i.lcssa, null
  br i1 %tobool13.not.i, label %bond_opt_get_flags.exit83.i.if.end120_crit_edge, label %if.end15.i

bond_opt_get_flags.exit83.i.if.end120_crit_edge:  ; preds = %bond_opt_get_flags.exit83.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120

if.end15.i:                                       ; preds = %bond_opt_get_flags.exit83.i
  %50 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bond, align 8
  %name17.i = getelementptr inbounds %struct.bond_option, ptr %retval.0.i, i32 0, i32 1
  %52 = ptrtoint ptr %name17.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name17.i, align 4
  %tobool18.not.i = icmp eq ptr %retval.0.i.ph.i, null
  br i1 %tobool18.not.i, label %if.end15.i.cond.end.i_crit_edge, label %cond.true.i

if.end15.i.cond.end.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  %value19.i = getelementptr inbounds %struct.bond_opt_value, ptr %retval.0.i.ph.i, i32 0, i32 1
  %54 = ptrtoint ptr %value19.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %value19.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end15.i.cond.end.i_crit_edge
  %cond.i = phi i64 [ %55, %cond.true.i ], [ 0, %if.end15.i.cond.end.i_crit_edge ]
  %value20.i = getelementptr %struct.bond_opt_value, ptr %35, i32 %i.014.i7497.i.lcssa, i32 1
  %56 = ptrtoint ptr %value20.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %value20.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %51, ptr noundef nonnull @.str.7, ptr noundef %53, i64 noundef %cond.i, i64 noundef %57) #18
  br label %if.end120

sw.bb21.i:                                        ; preds = %out.sw.bb21.i_crit_edge, %if.end108.critedge.sw.bb21.i_crit_edge
  %58 = ptrtoint ptr %params1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %params1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %59)
  %60 = icmp ult i32 %59, 7
  br i1 %60, label %switch.lookup, label %sw.bb21.i.bond_opt_get_val.exit.i.i_crit_edge

sw.bb21.i.bond_opt_get_val.exit.i.i_crit_edge:    ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bond_opt_get_val.exit.i.i

switch.lookup:                                    ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.__bond_opt_set, i32 0, i32 %59
  %61 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %61)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %bond_opt_get_val.exit.i.i

bond_opt_get_val.exit.i.i:                        ; preds = %switch.lookup, %sw.bb21.i.bond_opt_get_val.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %switch.load, %switch.lookup ], [ null, %sw.bb21.i.bond_opt_get_val.exit.i.i_crit_edge ]
  %div3.i.i.i = lshr i32 %59, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %unsuppmodes.i, i32 %div3.i.i.i
  %62 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %59, 31
  %64 = shl nuw i32 1, %and.i.i.i
  %65 = and i32 %63, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i84.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i84.i, label %bond_opt_get_val.exit.i.i.if.end120_crit_edge, label %if.then.i.i

bond_opt_get_val.exit.i.i.if.end120_crit_edge:    ; preds = %bond_opt_get_val.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120

if.then.i.i:                                      ; preds = %bond_opt_get_val.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %66 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bond, align 8
  %name.i.i = getelementptr inbounds %struct.bond_option, ptr %retval.0.i, i32 0, i32 1
  %68 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %name.i.i, align 4
  %70 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %retval.0.i.i.i, align 8
  %value.i.i = getelementptr inbounds %struct.bond_opt_value, ptr %retval.0.i.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %value.i.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %67, ptr noundef nonnull @.str.11, ptr noundef %69, ptr noundef %71, i64 noundef %73) #18
  br label %if.end120

sw.bb22.i:                                        ; preds = %out.sw.bb22.i_crit_edge, %land.lhs.true.i.sw.bb22.i_crit_edge
  %74 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bond, align 8
  %name24.i = getelementptr inbounds %struct.bond_option, ptr %retval.0.i, i32 0, i32 1
  %76 = ptrtoint ptr %name24.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %name24.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %75, ptr noundef nonnull @.str.8, ptr noundef %77) #18
  br label %if.end120

sw.bb25.i:                                        ; preds = %out.sw.bb25.i_crit_edge, %land.lhs.true10.i.sw.bb25.i_crit_edge
  %78 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bond, align 8
  %name27.i = getelementptr inbounds %struct.bond_option, ptr %retval.0.i, i32 0, i32 1
  %80 = ptrtoint ptr %name27.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %name27.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %79, ptr noundef nonnull @.str.9, ptr noundef %81) #18
  br label %if.end120

land.lhs.true.i144:                               ; preds = %out
  %82 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %val, align 8
  %tobool31.not.i = icmp eq ptr %83, null
  br i1 %tobool31.not.i, label %land.lhs.true.i144.if.end120_crit_edge, label %if.then32.i

land.lhs.true.i144.if.end120_crit_edge:           ; preds = %land.lhs.true.i144
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120

if.then32.i:                                      ; preds = %land.lhs.true.i144
  %call34.i = tail call ptr @strchr(ptr noundef nonnull %83, i32 noundef 10) #14
  %tobool35.not.i = icmp eq ptr %call34.i, null
  br i1 %tobool35.not.i, label %if.then32.i.if.end37.i_crit_edge, label %if.then36.i

if.then32.i.if.end37.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37.i

if.then36.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  %84 = ptrtoint ptr %call34.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %call34.i, align 1
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then36.i, %if.then32.i.if.end37.i_crit_edge
  %85 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bond, align 8
  %name39.i = getelementptr inbounds %struct.bond_option, ptr %retval.0.i, i32 0, i32 1
  %87 = ptrtoint ptr %name39.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %name39.i, align 4
  %89 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %val, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %86, ptr noundef nonnull @.str.10, ptr noundef %88, ptr noundef %90) #18
  br label %if.end120

if.end120:                                        ; preds = %if.end37.i, %land.lhs.true.i144.if.end120_crit_edge, %sw.bb25.i, %sw.bb22.i, %if.then.i.i, %bond_opt_get_val.exit.i.i.if.end120_crit_edge, %cond.end.i, %bond_opt_get_flags.exit83.i.if.end120_crit_edge, %for.cond.i73.i.if.end120_crit_edge, %land.rhs.i.preheader.i.if.end120_crit_edge, %if.end10.i.if.end120_crit_edge, %out.if.end120_crit_edge, %do.end92, %do.end58
  %ret.0150 = phi i32 [ -22, %if.end10.i.if.end120_crit_edge ], [ -22, %land.rhs.i.preheader.i.if.end120_crit_edge ], [ -22, %bond_opt_get_flags.exit83.i.if.end120_crit_edge ], [ -22, %cond.end.i ], [ -13, %bond_opt_get_val.exit.i.i.if.end120_crit_edge ], [ -13, %if.then.i.i ], [ -39, %sw.bb22.i ], [ -16, %sw.bb25.i ], [ -19, %land.lhs.true.i144.if.end120_crit_edge ], [ -19, %if.end37.i ], [ -2, %do.end92 ], [ -2, %do.end58 ], [ %call117, %out.if.end120_crit_edge ], [ -22, %for.cond.i73.i.if.end120_crit_edge ]
  ret i32 %ret.0150
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__bond_opt_set_notify(ptr noundef %bond, i32 noundef %option, ptr noundef %val) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b48 = load i1, ptr @__bond_opt_set_notify.__already_done, align 1
  br i1 %.b48, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !467

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__bond_opt_set_notify.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 745, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 745) #14
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call37 = tail call i32 @__bond_opt_set(ptr noundef %bond, i32 noundef %option, ptr noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true, label %if.end29.if.end42_crit_edge

if.end29.if.end42_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

land.lhs.true:                                    ; preds = %if.end29
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %reg_state = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 121
  %2 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load)
  %cmp = icmp eq i8 %bf.load, 1
  br i1 %cmp, label %if.then39, label %land.lhs.true.if.end42_crit_edge

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call41 = tail call i32 @call_netdevice_notifiers(i32 noundef 24, ptr noundef %1) #14
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %land.lhs.true.if.end42_crit_edge, %if.end29.if.end42_crit_edge
  ret i32 %call37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netdevice_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bond_opt_tryset_rtnl(ptr noundef %bond, i32 noundef %option, ptr noundef %buf) local_unnamed_addr #4 align 64 {
entry:
  %optval = alloca %struct.bond_opt_value, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %optval) #14
  %call = tail call i32 @rtnl_trylock() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !456) #14
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %5) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = call ptr @memset(ptr %optval, i32 0, i32 24)
  %value1.i = getelementptr inbounds %struct.bond_opt_value, ptr %optval, i32 0, i32 1
  %7 = ptrtoint ptr %value1.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %value1.i, align 8
  %8 = ptrtoint ptr %optval to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buf, ptr %optval, align 8
  %call.i = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end.if.end29.i_crit_edge

if.end.if.end29.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i

land.rhs.i:                                       ; preds = %if.end
  %.b48.i = load i1, ptr @__bond_opt_set_notify.__already_done, align 1
  br i1 %.b48.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !467

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__bond_opt_set_notify.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 745, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 745) #14
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %if.end.if.end29.i_crit_edge
  %call37.i = call i32 @__bond_opt_set(ptr noundef %bond, i32 noundef %option, ptr noundef nonnull %optval) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %land.lhs.true.i, label %if.end29.i.__bond_opt_set_notify.exit_crit_edge

if.end29.i.__bond_opt_set_notify.exit_crit_edge:  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bond_opt_set_notify.exit

land.lhs.true.i:                                  ; preds = %if.end29.i
  %9 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bond, align 8
  %reg_state.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 121
  %11 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %reg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i)
  %cmp.i = icmp eq i8 %bf.load.i, 1
  br i1 %cmp.i, label %if.then39.i, label %land.lhs.true.i.__bond_opt_set_notify.exit_crit_edge

land.lhs.true.i.__bond_opt_set_notify.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bond_opt_set_notify.exit

if.then39.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %call41.i = call i32 @call_netdevice_notifiers(i32 noundef 24, ptr noundef %10) #14
  br label %__bond_opt_set_notify.exit

__bond_opt_set_notify.exit:                       ; preds = %if.then39.i, %land.lhs.true.i.__bond_opt_set_notify.exit_crit_edge, %if.end29.i.__bond_opt_set_notify.exit_crit_edge
  call void @rtnl_unlock() #14
  br label %cleanup

cleanup:                                          ; preds = %__bond_opt_set_notify.exit, %if.then
  %retval.0 = phi i32 [ %call37.i, %__bond_opt_set_notify.exit ], [ -513, %if.then ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %optval) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_trylock() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bond_option_arp_ip_targets_clear(ptr nocapture noundef %bond) local_unnamed_addr #4 align 64 {
entry:
  %iter.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arp_targets.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 19
  br label %if.then.i

if.then.i:                                        ; preds = %_bond_options_arp_ip_target_set.exit.if.then.i_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %_bond_options_arp_ip_target_set.exit.if.then.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i) #14
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %lower.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %lower.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lower.i, align 8
  %4 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %iter.i, align 4
  %call.i = call ptr @netdev_lower_get_next_private(ptr noundef %1, ptr noundef nonnull %iter.i) #14
  %tobool.not13.i = icmp eq ptr %call.i, null
  br i1 %tobool.not13.i, label %if.then.i._bond_options_arp_ip_target_set.exit_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i._bond_options_arp_ip_target_set.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_bond_options_arp_ip_target_set.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %slave.014.i = phi ptr [ %call4.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.then.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.slave, ptr %slave.014.i, i32 0, i32 5, i32 %i.03
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx.i, align 4
  %6 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bond, align 8
  %call4.i = call ptr @netdev_lower_get_next_private(ptr noundef %7, ptr noundef nonnull %iter.i) #14
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %for.body.i._bond_options_arp_ip_target_set.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i._bond_options_arp_ip_target_set.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_bond_options_arp_ip_target_set.exit

_bond_options_arp_ip_target_set.exit:             ; preds = %for.body.i._bond_options_arp_ip_target_set.exit_crit_edge, %if.then.i._bond_options_arp_ip_target_set.exit_crit_edge
  %arrayidx5.i = getelementptr i32, ptr %arp_targets.i, i32 %i.03
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx5.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #14
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %_bond_options_arp_ip_target_set.exit.if.then.i_crit_edge

_bond_options_arp_ip_target_set.exit.if.then.i_crit_edge: ; preds = %_bond_options_arp_ip_target_set.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

for.end:                                          ; preds = %_bond_options_arp_ip_target_set.exit
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_mode_set(ptr noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %value, align 8
  %conv = trunc i64 %1 to i32
  %2 = add i32 %conv, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %2)
  %switch.i = icmp ult i32 %2, -3
  br i1 %switch.i, label %entry.if.end38_crit_edge, label %if.then

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then:                                          ; preds = %entry
  %arp_interval = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 5
  %3 = ptrtoint ptr %arp_interval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arp_interval, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then.if.end11_crit_edge, label %do.body2

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

do.body2:                                         ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_mode_set.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_mode_set, %if.then7)) #14
          to label %do.end8 [label %if.then7], !srcloc !468

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bond, align 8
  %7 = ptrtoint ptr %newval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %newval, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_mode_set.__UNIQUE_ID_ddebug351, ptr noundef %6, ptr noundef nonnull @.str.81, ptr noundef %8) #14
  br label %do.end8

do.end8:                                          ; preds = %if.then7, %do.body2
  %9 = ptrtoint ptr %arp_interval to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arp_interval, align 8
  br label %if.end11

if.end11:                                         ; preds = %do.end8, %if.then.if.end11_crit_edge
  %miimon = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 2
  %10 = ptrtoint ptr %miimon to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %miimon, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool13.not = icmp eq i32 %11, 0
  br i1 %tobool13.not, label %if.then14, label %if.end11.if.end38_crit_edge

if.end11.if.end38_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %miimon to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 100, ptr %miimon, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_mode_set.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_mode_set, %if.then30)) #14
          to label %if.end38 [label %if.then30], !srcloc !468

if.then30:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bond, align 8
  %15 = ptrtoint ptr %miimon to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %miimon, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_mode_set.__UNIQUE_ID_ddebug352, ptr noundef %14, ptr noundef nonnull @.str.82, i32 noundef %16) #14
  br label %if.end38

if.end38:                                         ; preds = %if.then30, %if.then14, %if.end11.if.end38_crit_edge, %entry.if.end38_crit_edge
  %17 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 6, i64 %18)
  %cmp = icmp eq i64 %18, 6
  br i1 %cmp, label %if.then41, label %if.end38.if.end43_crit_edge

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %tlb_dynamic_lb = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 25
  %19 = ptrtoint ptr %tlb_dynamic_lb to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %tlb_dynamic_lb, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end38.if.end43_crit_edge
  %params44 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19
  %arp_validate = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 6
  %20 = ptrtoint ptr %arp_validate to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arp_validate, align 4
  %21 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %value, align 8
  %conv46 = trunc i64 %22 to i32
  %23 = ptrtoint ptr %params44 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv46, ptr %params44, align 8
  %24 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bond, align 8
  %reg_state = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 121
  %26 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load)
  %cmp49 = icmp eq i8 %bf.load, 1
  br i1 %cmp49, label %if.then51, label %if.end43.if.end69_crit_edge

if.end43.if.end69_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then51:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv46)
  %cmp.i = icmp eq i32 %conv46, 1
  %wanted_features.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 25
  %27 = ptrtoint ptr %wanted_features.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %wanted_features.i, align 32
  %and.i = and i64 %28, -3377701868011521
  %masksel.i = select i1 %cmp.i, i64 3377701868011520, i64 0
  %and.sink.i = or i64 %and.i, %masksel.i
  store i64 %and.sink.i, ptr %wanted_features.i, align 32
  %call.i = tail call zeroext i1 @bond_sk_check(ptr noundef %bond) #14
  %29 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bond, align 8
  %wanted_features.i91 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 25
  %31 = ptrtoint ptr %wanted_features.i91 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %wanted_features.i91, align 32
  %and.i92 = and i64 %32, -27021597764222977
  %masksel.i93 = select i1 %call.i, i64 27021597764222976, i64 0
  %and.sink.i94 = or i64 %and.i92, %masksel.i93
  store i64 %and.sink.i94, ptr %wanted_features.i91, align 32
  %33 = load ptr, ptr %bond, align 8
  tail call void @netdev_update_features(ptr noundef %33) #14
  br label %if.end69

if.end69:                                         ; preds = %if.then51, %if.end43.if.end69_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_pps_set(ptr nocapture noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  %tmp10 = alloca %struct.reciprocal_value, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_pps_set.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_pps_set, %if.then)) #14
          to label %do.end4 [label %if.then], !srcloc !468

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %value, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_pps_set.__UNIQUE_ID_ddebug386, ptr noundef %1, ptr noundef nonnull @.str.85, i64 noundef %3) #14
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %value5 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %4 = ptrtoint ptr %value5 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %value5, align 8
  %conv = trunc i64 %5 to i32
  %packets_per_slave = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 24
  %6 = ptrtoint ptr %packets_per_slave to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %packets_per_slave, align 4
  %7 = load i64, ptr %value5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp.not = icmp eq i64 %7, 0
  %reciprocal_packets_per_slave14 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 26
  br i1 %cmp.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp10) #14
  %conv12 = trunc i64 %7 to i32
  call void @reciprocal_value(ptr nonnull sret(%struct.reciprocal_value) align 4 %tmp10, i32 noundef %conv12) #14
  %8 = ptrtoint ptr %tmp10 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tmp10, align 8
  %10 = ptrtoint ptr %reciprocal_packets_per_slave14 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %reciprocal_packets_per_slave14, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp10) #14
  br label %if.end15

if.else:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %reciprocal_packets_per_slave14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %reciprocal_packets_per_slave14, align 4
  %.compoundliteral.sroa.2.0.reciprocal_packets_per_slave14.sroa_idx = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 26, i32 1
  %12 = ptrtoint ptr %.compoundliteral.sroa.2.0.reciprocal_packets_per_slave14.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %.compoundliteral.sroa.2.0.reciprocal_packets_per_slave14.sroa_idx, align 4
  %.compoundliteral.sroa.3.0.reciprocal_packets_per_slave14.sroa_idx = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 26, i32 2
  %13 = ptrtoint ptr %.compoundliteral.sroa.3.0.reciprocal_packets_per_slave14.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %.compoundliteral.sroa.3.0.reciprocal_packets_per_slave14.sroa_idx, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_xmit_hash_policy_set(ptr noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_xmit_hash_policy_set.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_xmit_hash_policy_set, %if.then)) #14
          to label %do.end4 [label %if.then], !srcloc !468

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %2 = ptrtoint ptr %newval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %newval, align 8
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %value, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_xmit_hash_policy_set.__UNIQUE_ID_ddebug383, ptr noundef %1, ptr noundef nonnull @.str.93, ptr noundef %3, i64 noundef %5) #14
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %value5 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %6 = ptrtoint ptr %value5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %value5, align 8
  %conv = trunc i64 %7 to i32
  %xmit_policy = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 1
  %8 = ptrtoint ptr %xmit_policy to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %xmit_policy, align 4
  %9 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bond, align 8
  %reg_state = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 121
  %11 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load)
  %cmp = icmp eq i8 %bf.load, 1
  br i1 %cmp, label %if.then8, label %do.end4.if.end13_crit_edge

do.end4.if.end13_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then8:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call zeroext i1 @bond_sk_check(ptr noundef %bond) #14
  %12 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bond, align 8
  %wanted_features.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 25
  %14 = ptrtoint ptr %wanted_features.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %wanted_features.i, align 32
  %and.i = and i64 %15, -27021597764222977
  %masksel.i = select i1 %call.i, i64 27021597764222976, i64 0
  %and.sink.i = or i64 %and.i, %masksel.i
  store i64 %and.sink.i, ptr %wanted_features.i, align 32
  %16 = load ptr, ptr %bond, align 8
  tail call void @netdev_update_features(ptr noundef %16) #14
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %do.end4.if.end13_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_arp_validate_set(ptr nocapture noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_arp_validate_set.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_arp_validate_set, %if.then)) #14
          to label %do.end4 [label %if.then], !srcloc !468

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %2 = ptrtoint ptr %newval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %newval, align 8
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %value, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_arp_validate_set.__UNIQUE_ID_ddebug369, ptr noundef %1, ptr noundef nonnull @.str.102, ptr noundef %3, i64 noundef %5) #14
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %value5 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %6 = ptrtoint ptr %value5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %value5, align 8
  %conv = trunc i64 %7 to i32
  %arp_validate = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 6
  %8 = ptrtoint ptr %arp_validate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %arp_validate, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_arp_all_targets_set(ptr nocapture noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_arp_all_targets_set.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_arp_all_targets_set, %if.then)) #14
          to label %do.end4 [label %if.then], !srcloc !468

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %2 = ptrtoint ptr %newval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %newval, align 8
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %value, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_arp_all_targets_set.__UNIQUE_ID_ddebug370, ptr noundef %1, ptr noundef nonnull @.str.105, ptr noundef %3, i64 noundef %5) #14
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %value5 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %6 = ptrtoint ptr %value5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %value5, align 8
  %conv = trunc i64 %7 to i32
  %arp_all_targets = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 7
  %8 = ptrtoint ptr %arp_all_targets to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %arp_all_targets, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_fail_over_mac_set(ptr nocapture noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_fail_over_mac_set.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_fail_over_mac_set, %if.then)) #14
          to label %do.end4 [label %if.then], !srcloc !468

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %2 = ptrtoint ptr %newval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %newval, align 8
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %value, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_fail_over_mac_set.__UNIQUE_ID_ddebug382, ptr noundef %1, ptr noundef nonnull @.str.108, ptr noundef %3, i64 noundef %5) #14
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %value5 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %6 = ptrtoint ptr %value5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %value5, align 8
  %conv = trunc i64 %7 to i32
  %fail_over_mac = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 9
  %8 = ptrtoint ptr %fail_over_mac to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %fail_over_mac, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_arp_interval_set(ptr noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_arp_interval_set.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_arp_interval_set, %if.then)) #14
          to label %do.end4 [label %if.then], !srcloc !468

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %value, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_arp_interval_set.__UNIQUE_ID_ddebug364, ptr noundef %1, ptr noundef nonnull @.str.111, i64 noundef %3) #14
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %value5 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %4 = ptrtoint ptr %value5 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %value5, align 8
  %conv = trunc i64 %5 to i32
  %arp_interval = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 5
  %6 = ptrtoint ptr %arp_interval to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %arp_interval, align 8
  %7 = load i64, ptr %value5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool7.not = icmp eq i64 %7, 0
  br i1 %tobool7.not, label %do.end4.if.end55_crit_edge, label %if.then8

do.end4.if.end55_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.then8:                                         ; preds = %do.end4
  %miimon = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 2
  %8 = ptrtoint ptr %miimon to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %miimon, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %if.then8.if.end32_crit_edge, label %do.body13

if.then8.if.end32_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

do.body13:                                        ; preds = %if.then8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_arp_interval_set.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_arp_interval_set, %if.then25)) #14
          to label %do.end29 [label %if.then25], !srcloc !468

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bond, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_arp_interval_set.__UNIQUE_ID_ddebug365, ptr noundef %11, ptr noundef nonnull @.str.112) #14
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.body13
  %12 = ptrtoint ptr %miimon to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %miimon, align 8
  br label %if.end32

if.end32:                                         ; preds = %do.end29, %if.then8.if.end32_crit_edge
  %arp_targets = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 19
  %13 = ptrtoint ptr %arp_targets to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arp_targets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool34.not = icmp eq i32 %14, 0
  br i1 %tobool34.not, label %do.body37, label %if.end32.if.end55_crit_edge

if.end32.if.end55_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

do.body37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_arp_interval_set.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_arp_interval_set, %if.then49)) #14
          to label %if.end55 [label %if.then49], !srcloc !468

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bond, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_arp_interval_set.__UNIQUE_ID_ddebug366, ptr noundef %16, ptr noundef nonnull @.str.113) #14
  br label %if.end55

if.end55:                                         ; preds = %if.then49, %do.body37, %if.end32.if.end55_crit_edge, %do.end4.if.end55_crit_edge
  %17 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bond, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 8
  %and = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool57.not = icmp eq i32 %and, 0
  br i1 %tobool57.not, label %if.end55.if.end72_crit_edge, label %if.then58

if.end55.if.end72_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

if.then58:                                        ; preds = %if.end55
  %21 = ptrtoint ptr %value5 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %value5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool60.not = icmp eq i64 %22, 0
  br i1 %tobool60.not, label %if.then61, label %if.else

if.then61:                                        ; preds = %if.then58
  %arp_validate = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 6
  %23 = ptrtoint ptr %arp_validate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arp_validate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool63.not = icmp eq i32 %24, 0
  br i1 %tobool63.not, label %if.then61.if.end65_crit_edge, label %if.then64

if.then61.if.end65_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.then64:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #16
  %recv_probe = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 8
  %25 = ptrtoint ptr %recv_probe to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %recv_probe, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.then61.if.end65_crit_edge
  %arp_work = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 22
  %call66 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %arp_work) #14
  br label %if.end72

if.else:                                          ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  %recv_probe67 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 8
  %26 = ptrtoint ptr %recv_probe67 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @bond_arp_rcv, ptr %recv_probe67, align 8
  %mii_work = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 21
  %call68 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mii_work) #14
  %wq = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 20
  %27 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wq, align 8
  %arp_work69 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 22
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %arp_work69, i32 noundef 0) #14
  br label %if.end72

if.end72:                                         ; preds = %if.else, %if.end65, %if.end55.if.end72_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_arp_ip_targets_set(ptr nocapture noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  %target = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %target) #14
  %0 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %target, align 4, !annotation !469
  %1 = ptrtoint ptr %newval to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %newval, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.else19, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %2, i32 1
  %call = call i32 @in4_pton(ptr noundef %add.ptr, i32 noundef -1, ptr noundef nonnull %target, i32 noundef -1, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bond, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.114, ptr noundef nonnull %target) #18
  br label %cleanup

if.end:                                           ; preds = %if.then
  %5 = ptrtoint ptr %newval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %newval, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.197)
  switch i8 %8, label %if.else15 [
    i8 43, label %if.then6
    i8 45, label %if.then13
  ]

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %target, align 4
  %call.i = call fastcc i32 @_bond_option_arp_ip_target_add(ptr noundef %bond, i32 noundef %11) #14
  br label %cleanup

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %target, align 4
  %call14 = call fastcc i32 @bond_option_arp_ip_target_rem(ptr noundef %bond, i32 noundef %13)
  br label %cleanup

if.else15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bond, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.115) #18
  br label %cleanup

if.else19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %16 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %value, align 8
  %conv20 = trunc i64 %17 to i32
  %call.i33 = tail call fastcc i32 @_bond_option_arp_ip_target_add(ptr noundef %bond, i32 noundef %conv20) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else19, %if.else15, %if.then13, %if.then6, %if.then3
  %retval.0 = phi i32 [ -1, %if.then3 ], [ %call.i, %if.then6 ], [ %call14, %if.then13 ], [ -1, %if.else15 ], [ %call.i33, %if.else19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %target) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_downdelay_set(ptr nocapture noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %downdelay = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 11
  %value1.i = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %0 = ptrtoint ptr %value1.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %value1.i, align 8
  %conv.i = trunc i64 %1 to i32
  %miimon.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 2
  %2 = ptrtoint ptr %miimon.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %miimon.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bond, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.126) #18
  br label %_bond_option_delay_set.exit

if.end.i:                                         ; preds = %entry
  %rem.i = srem i32 %conv.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.not.i, label %if.end.i.if.end13.i_crit_edge, label %if.then5.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bond, align 8
  %mul.i = sub i32 %conv.i, %rem.i
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %7, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.126, i32 noundef %conv.i, i32 noundef %3, i32 noundef %mul.i) #18
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then5.i, %if.end.i.if.end13.i_crit_edge
  %8 = ptrtoint ptr %miimon.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %miimon.i, align 8
  %div16.i = sdiv i32 %conv.i, %9
  %10 = ptrtoint ptr %downdelay to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div16.i, ptr %downdelay, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_bond_option_delay_set.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_downdelay_set, %if.then21.i)) #14
          to label %_bond_option_delay_set.exit [label %if.then21.i], !srcloc !468

if.then21.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bond, align 8
  %13 = ptrtoint ptr %downdelay to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %downdelay, align 4
  %15 = ptrtoint ptr %miimon.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %miimon.i, align 8
  %mul25.i = mul i32 %16, %14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @_bond_option_delay_set.__UNIQUE_ID_ddebug362, ptr noundef %12, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.126, i32 noundef %mul25.i) #14
  br label %_bond_option_delay_set.exit

_bond_option_delay_set.exit:                      ; preds = %if.then21.i, %if.end13.i, %if.then.i
  %retval.0.i = phi i32 [ -1, %if.then.i ], [ 0, %if.then21.i ], [ 0, %if.end13.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_updelay_set(ptr nocapture noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %updelay = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 10
  %value1.i = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %0 = ptrtoint ptr %value1.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %value1.i, align 8
  %conv.i = trunc i64 %1 to i32
  %miimon.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 2
  %2 = ptrtoint ptr %miimon.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %miimon.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bond, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.131) #18
  br label %_bond_option_delay_set.exit

if.end.i:                                         ; preds = %entry
  %rem.i = srem i32 %conv.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.not.i, label %if.end.i.if.end13.i_crit_edge, label %if.then5.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bond, align 8
  %mul.i = sub i32 %conv.i, %rem.i
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %7, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.131, i32 noundef %conv.i, i32 noundef %3, i32 noundef %mul.i) #18
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then5.i, %if.end.i.if.end13.i_crit_edge
  %8 = ptrtoint ptr %miimon.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %miimon.i, align 8
  %div16.i = sdiv i32 %conv.i, %9
  %10 = ptrtoint ptr %updelay to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div16.i, ptr %updelay, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_bond_option_delay_set.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_updelay_set, %if.then21.i)) #14
          to label %_bond_option_delay_set.exit [label %if.then21.i], !srcloc !468

if.then21.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bond, align 8
  %13 = ptrtoint ptr %updelay to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %updelay, align 4
  %15 = ptrtoint ptr %miimon.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %miimon.i, align 8
  %mul25.i = mul i32 %16, %14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @_bond_option_delay_set.__UNIQUE_ID_ddebug362, ptr noundef %12, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.131, i32 noundef %mul25.i) #14
  br label %_bond_option_delay_set.exit

_bond_option_delay_set.exit:                      ; preds = %if.then21.i, %if.end13.i, %if.then.i
  %retval.0.i = phi i32 [ -1, %if.then.i ], [ 0, %if.then21.i ], [ 0, %if.end13.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_lacp_rate_set(ptr noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_lacp_rate_set.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_lacp_rate_set, %if.then)) #14
          to label %do.end4 [label %if.then], !srcloc !468

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %2 = ptrtoint ptr %newval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %newval, align 8
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %value, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_lacp_rate_set.__UNIQUE_ID_ddebug388, ptr noundef %1, ptr noundef nonnull @.str.135, ptr noundef %3, i64 noundef %5) #14
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %value5 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %6 = ptrtoint ptr %value5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %value5, align 8
  %conv = trunc i64 %7 to i32
  %lacp_fast = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 14
  %8 = ptrtoint ptr %lacp_fast to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %lacp_fast, align 4
  tail call void @bond_3ad_update_lacp_rate(ptr noundef %bond) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_min_links_set(ptr noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_min_links_set.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_min_links_set, %if.then)) #14
          to label %do.end4 [label %if.then], !srcloc !468

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %value, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_min_links_set.__UNIQUE_ID_ddebug385, ptr noundef %1, ptr noundef nonnull @.str.137, i64 noundef %3) #14
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %value5 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %4 = ptrtoint ptr %value5 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %value5, align 8
  %conv = trunc i64 %5 to i32
  %min_links = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 15
  %6 = ptrtoint ptr %min_links to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %min_links, align 8
  %call6 = tail call i32 @bond_set_carrier(ptr noundef %bond) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_ad_select_set(ptr nocapture noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_ad_select_set.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_ad_select_set, %if.then)) #14
          to label %do.end4 [label %if.then], !srcloc !468

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %2 = ptrtoint ptr %newval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %newval, align 8
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %value, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_ad_select_set.__UNIQUE_ID_ddebug389, ptr noundef %1, ptr noundef nonnull @.str.142, ptr noundef %3, i64 noundef %5) #14
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %value5 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %6 = ptrtoint ptr %value5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %value5, align 8
  %conv = trunc i64 %7 to i32
  %ad_select = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 16
  %8 = ptrtoint ptr %ad_select to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %ad_select, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bond_option_num_peer_notif_set(ptr nocapture noundef writeonly %bond, ptr nocapture noundef readonly %newval) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %value, align 8
  %conv = trunc i64 %1 to i8
  %num_peer_notif = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 3
  %2 = ptrtoint ptr %num_peer_notif to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %num_peer_notif, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_miimon_set(ptr noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_miimon_set.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_miimon_set, %if.then)) #14
          to label %do.end4 [label %if.then], !srcloc !468

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %value, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_miimon_set.__UNIQUE_ID_ddebug357, ptr noundef %1, ptr noundef nonnull @.str.144, i64 noundef %3) #14
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %value5 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %4 = ptrtoint ptr %value5 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %value5, align 8
  %conv = trunc i64 %5 to i32
  %miimon = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 2
  %6 = ptrtoint ptr %miimon to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %miimon, align 8
  %updelay = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 10
  %7 = ptrtoint ptr %updelay to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %updelay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %do.end4.if.end31_crit_edge, label %do.body10

do.end4.if.end31_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

do.body10:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_miimon_set.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_miimon_set, %if.then22)) #14
          to label %if.end31 [label %if.then22], !srcloc !468

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bond, align 8
  %11 = ptrtoint ptr %updelay to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %updelay, align 4
  %13 = ptrtoint ptr %miimon to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %miimon, align 8
  %mul = mul i32 %14, %12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_miimon_set.__UNIQUE_ID_ddebug358, ptr noundef %10, ptr noundef nonnull @.str.145, i32 noundef %mul) #14
  br label %if.end31

if.end31:                                         ; preds = %if.then22, %do.body10, %do.end4.if.end31_crit_edge
  %downdelay = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 11
  %15 = ptrtoint ptr %downdelay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %downdelay, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool33.not = icmp eq i32 %16, 0
  br i1 %tobool33.not, label %if.end31.if.end58_crit_edge, label %do.body36

if.end31.if.end58_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

do.body36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_miimon_set.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_miimon_set, %if.then48)) #14
          to label %if.end58 [label %if.then48], !srcloc !468

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bond, align 8
  %19 = ptrtoint ptr %downdelay to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %downdelay, align 8
  %21 = ptrtoint ptr %miimon to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %miimon, align 8
  %mul54 = mul i32 %22, %20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_miimon_set.__UNIQUE_ID_ddebug359, ptr noundef %18, ptr noundef nonnull @.str.146, i32 noundef %mul54) #14
  br label %if.end58

if.end58:                                         ; preds = %if.then48, %do.body36, %if.end31.if.end58_crit_edge
  %peer_notif_delay = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 12
  %23 = ptrtoint ptr %peer_notif_delay to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %peer_notif_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool60.not = icmp eq i32 %24, 0
  br i1 %tobool60.not, label %if.end58.if.end85_crit_edge, label %do.body63

if.end58.if.end85_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

do.body63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_miimon_set.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_miimon_set, %if.then75)) #14
          to label %if.end85 [label %if.then75], !srcloc !468

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bond, align 8
  %27 = ptrtoint ptr %peer_notif_delay to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %peer_notif_delay, align 4
  %29 = ptrtoint ptr %miimon to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %miimon, align 8
  %mul81 = mul i32 %30, %28
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_miimon_set.__UNIQUE_ID_ddebug360, ptr noundef %26, ptr noundef nonnull @.str.147, i32 noundef %mul81) #14
  br label %if.end85

if.end85:                                         ; preds = %if.then75, %do.body63, %if.end58.if.end85_crit_edge
  %31 = ptrtoint ptr %value5 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %value5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %tobool87.not = icmp eq i64 %32, 0
  br i1 %tobool87.not, label %if.end85.if.end117_crit_edge, label %land.lhs.true

if.end85.if.end117_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end117

land.lhs.true:                                    ; preds = %if.end85
  %arp_interval = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 5
  %33 = ptrtoint ptr %arp_interval to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arp_interval, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool89.not = icmp eq i32 %34, 0
  br i1 %tobool89.not, label %land.lhs.true.if.end117_crit_edge, label %do.body92

land.lhs.true.if.end117_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end117

do.body92:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_miimon_set.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_miimon_set, %if.then104)) #14
          to label %do.end108 [label %if.then104], !srcloc !468

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bond, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_miimon_set.__UNIQUE_ID_ddebug361, ptr noundef %36, ptr noundef nonnull @.str.148) #14
  br label %do.end108

do.end108:                                        ; preds = %if.then104, %do.body92
  %37 = ptrtoint ptr %arp_interval to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %arp_interval, align 8
  %arp_validate = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 6
  %38 = ptrtoint ptr %arp_validate to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arp_validate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool112.not = icmp eq i32 %39, 0
  br i1 %tobool112.not, label %do.end108.if.end117_crit_edge, label %if.then113

do.end108.if.end117_crit_edge:                    ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end117

if.then113:                                       ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %arp_validate to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arp_validate, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.then113, %do.end108.if.end117_crit_edge, %land.lhs.true.if.end117_crit_edge, %if.end85.if.end117_crit_edge
  %41 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bond, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 14
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags, align 8
  %and = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool119.not = icmp eq i32 %and, 0
  br i1 %tobool119.not, label %if.end117.if.end129_crit_edge, label %if.then120

if.end117.if.end129_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end129

if.then120:                                       ; preds = %if.end117
  %45 = ptrtoint ptr %value5 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %value5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %46)
  %tobool122.not = icmp eq i64 %46, 0
  br i1 %tobool122.not, label %if.then123, label %if.else

if.then123:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #16
  %mii_work = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 21
  %call124 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mii_work) #14
  br label %if.end129

if.else:                                          ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #16
  %arp_work = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 22
  %call125 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %arp_work) #14
  %wq = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 20
  %47 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wq, align 8
  %mii_work126 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 21
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %48, ptr noundef %mii_work126, i32 noundef 0) #14
  br label %if.end129

if.end129:                                        ; preds = %if.else, %if.then123, %if.end117.if.end129_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_primary_set(ptr noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  %iter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %newval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %newval, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter) #14
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !469
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netpoll_block_tx, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr nonnull @netpoll_block_tx, i32 1, i32 3, i32 1) #14
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netpoll_block_tx, ptr nonnull @netpoll_block_tx, i32 1, ptr nonnull elementtype(i32) @netpoll_block_tx) #14, !srcloc !470
  %call = tail call ptr @strchr(ptr noundef %1, i32 noundef 10)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %call, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %char0 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool2.not = icmp eq i8 %char0, 0
  br i1 %tobool2.not, label %do.body4, label %if.end26

do.body4:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_primary_set.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_primary_set, %if.then9)) #14
          to label %do.body18 [label %if.then9], !srcloc !468

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bond, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_primary_set.__UNIQUE_ID_ddebug372, ptr noundef %7, ptr noundef nonnull @.str.150) #14
  br label %do.body18

do.body18:                                        ; preds = %if.then9, %do.body4
  %primary_slave = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 3
  %8 = ptrtoint ptr %primary_slave to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %primary_slave, align 4
  %primary25 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 17
  %9 = call ptr @memset(ptr %primary25, i32 0, i32 16)
  tail call void @bond_select_active_slave(ptr noundef %bond) #14
  br label %out

if.end26:                                         ; preds = %if.end
  %10 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bond, align 8
  %lower = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 13, i32 1
  %12 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lower, align 8
  %14 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %iter, align 4
  %call29 = call ptr @netdev_lower_get_next_private(ptr noundef %11, ptr noundef nonnull %iter) #14
  %tobool30.not222 = icmp eq ptr %call29, null
  br i1 %tobool30.not222, label %if.end26.do.body106_crit_edge, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  br label %for.body

if.end26.do.body106_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body106

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end26.for.body_crit_edge
  %slave.0223 = phi ptr [ %call105, %for.inc.for.body_crit_edge ], [ %call29, %if.end26.for.body_crit_edge ]
  %15 = ptrtoint ptr %slave.0223 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %slave.0223, align 8
  %call33 = call i32 @strncmp(ptr noundef %16, ptr noundef %1, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp = icmp eq i32 %call33, 0
  br i1 %cmp, label %do.body36, label %for.inc

do.body36:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_primary_set.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_primary_set, %if.then48)) #14
          to label %do.body58 [label %if.then48], !srcloc !468

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bond, align 8
  %19 = ptrtoint ptr %slave.0223 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %slave.0223, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_primary_set.__UNIQUE_ID_ddebug374, ptr noundef %18, ptr noundef nonnull @.str.151, ptr noundef %20) #14
  br label %do.body58

do.body58:                                        ; preds = %if.then48, %do.body36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !471
  %primary_slave84 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 3
  %21 = ptrtoint ptr %primary_slave84 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %slave.0223, ptr %primary_slave84, align 4
  %primary97 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 17
  %22 = ptrtoint ptr %slave.0223 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %slave.0223, align 8
  %call102 = call ptr @strcpy(ptr noundef %primary97, ptr noundef %23) #17
  %force_primary = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 6
  %24 = ptrtoint ptr %force_primary to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %force_primary, align 8
  call void @bond_select_active_slave(ptr noundef %bond) #14
  br label %out

for.inc:                                          ; preds = %for.body
  %25 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bond, align 8
  %call105 = call ptr @netdev_lower_get_next_private(ptr noundef %26, ptr noundef nonnull %iter) #14
  %tobool30.not = icmp eq ptr %call105, null
  br i1 %tobool30.not, label %for.inc.do.body106_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.do.body106_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body106

do.body106:                                       ; preds = %for.inc.do.body106_crit_edge, %if.end26.do.body106_crit_edge
  %call107 = call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call107, label %do.body106.do.end116_crit_edge, label %land.lhs.true108

do.body106.do.end116_crit_edge:                   ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end116

land.lhs.true108:                                 ; preds = %do.body106
  %call109 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %land.lhs.true108.do.end116_crit_edge, label %land.lhs.true111

land.lhs.true108.do.end116_crit_edge:             ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end116

land.lhs.true111:                                 ; preds = %land.lhs.true108
  %.b205 = load i1, ptr @bond_option_primary_set.__warned, align 1
  br i1 %.b205, label %land.lhs.true111.do.end116_crit_edge, label %if.then113

land.lhs.true111.do.end116_crit_edge:             ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end116

if.then113:                                       ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @bond_option_primary_set.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1249, ptr noundef nonnull @.str.152) #14
  br label %do.end116

do.end116:                                        ; preds = %if.then113, %land.lhs.true111.do.end116_crit_edge, %land.lhs.true108.do.end116_crit_edge, %do.body106.do.end116_crit_edge
  %primary_slave118 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 3
  %27 = ptrtoint ptr %primary_slave118 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %primary_slave118, align 4
  %tobool119.not = icmp eq ptr %28, null
  br i1 %tobool119.not, label %do.end116.if.end154_crit_edge, label %do.body122

do.end116.if.end154_crit_edge:                    ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end154

do.body122:                                       ; preds = %do.end116
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_primary_set.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_primary_set, %if.then134)) #14
          to label %do.body146 [label %if.then134], !srcloc !468

if.then134:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bond, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_primary_set.__UNIQUE_ID_ddebug378, ptr noundef %30, ptr noundef nonnull @.str.150) #14
  br label %do.body146

do.body146:                                       ; preds = %if.then134, %do.body122
  %31 = ptrtoint ptr %primary_slave118 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr null, ptr %primary_slave118, align 4
  call void @bond_select_active_slave(ptr noundef %bond) #14
  br label %if.end154

if.end154:                                        ; preds = %do.body146, %do.end116.if.end154_crit_edge
  %primary156 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 17
  %call158 = call i32 @strscpy_pad(ptr noundef %primary156, ptr noundef %1, i32 noundef 16) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_primary_set.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_primary_set, %if.then172)) #14
          to label %out [label %if.then172], !srcloc !468

if.then172:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bond, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_primary_set.__UNIQUE_ID_ddebug380, ptr noundef %33, ptr noundef nonnull @.str.153, ptr noundef %1) #14
  br label %out

out:                                              ; preds = %if.then172, %if.end154, %do.body58, %do.body18
  %call.i.i.i215 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netpoll_block_tx, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr nonnull @netpoll_block_tx, i32 1, i32 3, i32 1) #14
  %34 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netpoll_block_tx, ptr nonnull @netpoll_block_tx, i32 1, ptr nonnull elementtype(i32) @netpoll_block_tx) #14, !srcloc !472
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_primary_reselect_set(ptr noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_primary_reselect_set.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_primary_reselect_set, %if.then)) #14
          to label %do.end4 [label %if.then], !srcloc !468

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %2 = ptrtoint ptr %newval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %newval, align 8
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %value, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_primary_reselect_set.__UNIQUE_ID_ddebug381, ptr noundef %1, ptr noundef nonnull @.str.158, ptr noundef %3, i64 noundef %5) #14
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %value5 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %6 = ptrtoint ptr %value5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %value5, align 8
  %conv = trunc i64 %7 to i32
  %primary_reselect = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 18
  %8 = ptrtoint ptr %primary_reselect to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %primary_reselect, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netpoll_block_tx, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr nonnull @netpoll_block_tx, i32 1, i32 3, i32 1) #14
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netpoll_block_tx, ptr nonnull @netpoll_block_tx, i32 1, ptr nonnull elementtype(i32) @netpoll_block_tx) #14, !srcloc !470
  tail call void @bond_select_active_slave(ptr noundef %bond) #14
  %call.i.i.i10 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netpoll_block_tx, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr nonnull @netpoll_block_tx, i32 1, i32 3, i32 1) #14
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netpoll_block_tx, ptr nonnull @netpoll_block_tx, i32 1, ptr nonnull elementtype(i32) @netpoll_block_tx) #14, !srcloc !472
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_use_carrier_set(ptr nocapture noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_use_carrier_set.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_use_carrier_set, %if.then)) #14
          to label %do.end4 [label %if.then], !srcloc !468

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %value, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_use_carrier_set.__UNIQUE_ID_ddebug363, ptr noundef %1, ptr noundef nonnull @.str.161, i64 noundef %3) #14
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %value5 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %4 = ptrtoint ptr %value5 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %value5, align 8
  %conv = trunc i64 %5 to i32
  %use_carrier = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 8
  %6 = ptrtoint ptr %use_carrier to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %use_carrier, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_active_slave_set(ptr noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  %ifname = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ifname) #14
  %0 = call ptr @memset(ptr %ifname, i32 0, i32 16)
  %1 = ptrtoint ptr %newval to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %newval, align 8
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.162, ptr noundef nonnull %ifname)
  %3 = ptrtoint ptr %ifname to i32
  call void @__asan_load1_noabort(i32 %3)
  %char0 = load i8, ptr %ifname, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool.not = icmp eq i8 %char0, 0
  br i1 %tobool.not, label %entry.do.body30.critedge_crit_edge, label %lor.lhs.false

entry.do.body30.critedge_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body30.critedge

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %newval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %newval, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %7)
  %cmp = icmp eq i8 %7, 10
  br i1 %cmp, label %lor.lhs.false.do.body30.critedge_crit_edge, label %if.else

lor.lhs.false.do.body30.critedge_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body30.critedge

if.else:                                          ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bond, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 127
  %10 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nd_net.i, align 4
  %call7 = call ptr @__dev_get_by_name(ptr noundef %11, ptr noundef nonnull %ifname) #14
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.else.cleanup_crit_edge, label %if.then12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then12:                                        ; preds = %if.else
  %flags.i = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 14
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then12.if.then14_crit_edge, label %netif_is_bond_slave.exit

if.then12.if.then14_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then14

netif_is_bond_slave.exit:                         ; preds = %if.then12
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 15
  %14 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %priv_flags.i, align 16
  %and1.i = and i64 %15, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.i.not = icmp eq i64 %and1.i, 0
  br i1 %tobool2.i.not, label %netif_is_bond_slave.exit.if.then14_crit_edge, label %if.end17

netif_is_bond_slave.exit.if.then14_crit_edge:     ; preds = %netif_is_bond_slave.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then14

if.then14:                                        ; preds = %netif_is_bond_slave.exit.if.then14_crit_edge, %if.then12.if.then14_crit_edge
  %16 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bond, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str.163, ptr noundef nonnull %call7) #18
  br label %cleanup

if.end17:                                         ; preds = %netif_is_bond_slave.exit
  %18 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bond, align 8
  %call19 = call ptr @netdev_master_upper_dev_get(ptr noundef nonnull %call7) #14
  %cmp20.not = icmp eq ptr %19, %call19
  br i1 %cmp20.not, label %if.else52.critedge, label %if.then22

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bond, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.164, ptr noundef nonnull %call7) #18
  br label %cleanup

do.body30.critedge:                               ; preds = %lor.lhs.false.do.body30.critedge_crit_edge, %entry.do.body30.critedge_crit_edge
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netpoll_block_tx, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr nonnull @netpoll_block_tx, i32 1, i32 3, i32 1) #14
  %22 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netpoll_block_tx, ptr nonnull @netpoll_block_tx, i32 1, ptr nonnull elementtype(i32) @netpoll_block_tx) #14, !srcloc !470
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_active_slave_set.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_active_slave_set, %if.then35)) #14
          to label %do.body45 [label %if.then35], !srcloc !468

if.then35:                                        ; preds = %do.body30.critedge
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bond, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_active_slave_set.__UNIQUE_ID_ddebug353, ptr noundef %24, ptr noundef nonnull @.str.166) #14
  br label %do.body45

do.body45:                                        ; preds = %if.then35, %do.body30.critedge
  %curr_active_slave = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 1
  %25 = ptrtoint ptr %curr_active_slave to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr null, ptr %curr_active_slave, align 4
  call void @bond_select_active_slave(ptr noundef %bond) #14
  br label %if.end166

if.else52.critedge:                               ; preds = %if.end17
  %call.i.i.i207 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netpoll_block_tx, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr nonnull @netpoll_block_tx, i32 1, i32 3, i32 1) #14
  %26 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netpoll_block_tx, ptr nonnull @netpoll_block_tx, i32 1, ptr nonnull elementtype(i32) @netpoll_block_tx) #14, !srcloc !470
  %call54 = call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call54, label %if.else52.critedge.do.end62_crit_edge, label %land.lhs.true

if.else52.critedge.do.end62_crit_edge:            ; preds = %if.else52.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end62

land.lhs.true:                                    ; preds = %if.else52.critedge
  %call55 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true.do.end62_crit_edge, label %land.lhs.true57

land.lhs.true.do.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end62

land.lhs.true57:                                  ; preds = %land.lhs.true
  %.b200 = load i1, ptr @bond_option_active_slave_set.__warned, align 1
  br i1 %.b200, label %land.lhs.true57.do.end62_crit_edge, label %if.then59

land.lhs.true57.do.end62_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end62

if.then59:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @bond_option_active_slave_set.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 893, ptr noundef nonnull @.str.152) #14
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %land.lhs.true57.do.end62_crit_edge, %land.lhs.true.do.end62_crit_edge, %if.else52.critedge.do.end62_crit_edge
  %curr_active_slave64 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 1
  %27 = ptrtoint ptr %curr_active_slave64 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %curr_active_slave64, align 4
  %call66 = call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call66, label %do.end62.do.end75_crit_edge, label %land.lhs.true67

do.end62.do.end75_crit_edge:                      ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end75

land.lhs.true67:                                  ; preds = %do.end62
  %call68 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %land.lhs.true67.do.end75_crit_edge, label %land.lhs.true70

land.lhs.true67.do.end75_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end75

land.lhs.true70:                                  ; preds = %land.lhs.true67
  %.b198199 = load i1, ptr @bond_option_active_slave_set.__warned.167, align 1
  br i1 %.b198199, label %land.lhs.true70.do.end75_crit_edge, label %if.then72

land.lhs.true70.do.end75_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end75

if.then72:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @bond_option_active_slave_set.__warned.167, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 894, ptr noundef nonnull @.str.152) #14
  br label %do.end75

do.end75:                                         ; preds = %if.then72, %land.lhs.true70.do.end75_crit_edge, %land.lhs.true67.do.end75_crit_edge, %do.end62.do.end75_crit_edge
  %rx_handler_data = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 95
  %29 = ptrtoint ptr %rx_handler_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_handler_data, align 4
  %tobool78.not = icmp eq ptr %30, null
  br i1 %tobool78.not, label %do.body88, label %do.end96, !prof !466

do.body88:                                        ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/bonding/bond_options.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 896, 0\0A.popsection", ""() #14, !srcloc !473
  unreachable

do.end96:                                         ; preds = %do.end75
  %cmp97 = icmp eq ptr %30, %28
  br i1 %cmp97, label %do.body101, label %if.else123

do.body101:                                       ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_active_slave_set.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_active_slave_set, %if.then113)) #14
          to label %if.end166 [label %if.then113], !srcloc !468

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bond, align 8
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %28, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_active_slave_set.__UNIQUE_ID_ddebug355, ptr noundef %32, ptr noundef nonnull @.str.168, ptr noundef %34) #14
  br label %if.end166

if.else123:                                       ; preds = %do.end96
  %tobool124.not = icmp eq ptr %28, null
  br i1 %tobool124.not, label %if.else123.if.else156_crit_edge, label %land.lhs.true125

if.else123.if.else156_crit_edge:                  ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else156

land.lhs.true125:                                 ; preds = %if.else123
  %link = getelementptr inbounds %struct.slave, ptr %30, i32 0, i32 6
  %35 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %link, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp127 = icmp eq i8 %36, 0
  br i1 %cmp127, label %land.lhs.true129, label %land.lhs.true125.if.else156_crit_edge

land.lhs.true125.if.else156_crit_edge:            ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else156

land.lhs.true129:                                 ; preds = %land.lhs.true125
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %30, align 8
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true129.if.else156_crit_edge, label %bond_slave_is_up.exit

land.lhs.true129.if.else156_crit_edge:            ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else156

bond_slave_is_up.exit:                            ; preds = %land.lhs.true129
  %41 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %state.i.i, align 4
  %43 = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i.i, label %do.body134, label %bond_slave_is_up.exit.if.else156_crit_edge

bond_slave_is_up.exit.if.else156_crit_edge:       ; preds = %bond_slave_is_up.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else156

do.body134:                                       ; preds = %bond_slave_is_up.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_active_slave_set.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_active_slave_set, %if.then146)) #14
          to label %do.end155 [label %if.then146], !srcloc !468

if.then146:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bond, align 8
  %46 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %30, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_active_slave_set.__UNIQUE_ID_ddebug356, ptr noundef %45, ptr noundef nonnull @.str.169, ptr noundef %47) #14
  br label %do.end155

do.end155:                                        ; preds = %if.then146, %do.body134
  call void @bond_change_active_slave(ptr noundef %bond, ptr noundef nonnull %30) #14
  br label %if.end166

if.else156:                                       ; preds = %bond_slave_is_up.exit.if.else156_crit_edge, %land.lhs.true129.if.else156_crit_edge, %land.lhs.true125.if.else156_crit_edge, %if.else123.if.else156_crit_edge
  %48 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bond, align 8
  %50 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %30, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %49, ptr noundef nonnull @.str.170, ptr noundef %51, ptr noundef %51) #18
  br label %if.end166

if.end166:                                        ; preds = %if.else156, %do.end155, %if.then113, %do.body101, %do.body45
  %ret.1 = phi i32 [ 0, %do.body45 ], [ 0, %if.then113 ], [ 0, %do.end155 ], [ -22, %if.else156 ], [ 0, %do.body101 ]
  %call.i.i.i209 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netpoll_block_tx, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr nonnull @netpoll_block_tx, i32 1, i32 3, i32 1) #14
  %52 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netpoll_block_tx, ptr nonnull @netpoll_block_tx, i32 1, ptr nonnull elementtype(i32) @netpoll_block_tx) #14, !srcloc !472
  br label %cleanup

cleanup:                                          ; preds = %if.end166, %if.then22, %if.then14, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then22 ], [ %ret.1, %if.end166 ], [ -22, %if.then14 ], [ -19, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ifname) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_queue_id_set(ptr nocapture noundef readonly %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  %iter = alloca ptr, align 4
  %qid = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter) #14
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !469
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %qid) #14
  %1 = ptrtoint ptr %qid to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %qid, align 2, !annotation !469
  %2 = ptrtoint ptr %newval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %newval, align 8
  %call = tail call ptr @strchr(ptr noundef %3, i32 noundef 58)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.body40_crit_edge, label %if.end

entry.do.body40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body40

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %call, align 1
  %incdec.ptr = getelementptr i8, ptr %call, i32 1
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %incdec.ptr, ptr noundef nonnull @.str.171, ptr noundef nonnull %qid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end3, label %if.end.do.body40_crit_edge

if.end.do.body40_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body40

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %newval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %newval, align 8
  %call5 = call zeroext i1 @dev_valid_name(ptr noundef %6) #14
  br i1 %call5, label %lor.lhs.false, label %if.end3.do.body40_crit_edge

if.end3.do.body40_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body40

lor.lhs.false:                                    ; preds = %if.end3
  %7 = ptrtoint ptr %qid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %qid, align 2
  %conv = zext i16 %8 to i32
  %9 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bond, align 8
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 105
  %11 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %real_num_tx_queues, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv)
  %cmp6 = icmp ult i32 %12, %conv
  br i1 %cmp6, label %lor.lhs.false.do.body40_crit_edge, label %if.end9

lor.lhs.false.do.body40_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body40

if.end9:                                          ; preds = %lor.lhs.false
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 127
  %13 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nd_net.i, align 4
  %15 = ptrtoint ptr %newval to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %newval, align 8
  %call13 = call ptr @__dev_get_by_name(ptr noundef %14, ptr noundef %16) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end9.do.body40_crit_edge, label %if.end16

if.end9.do.body40_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body40

if.end16:                                         ; preds = %if.end9
  %17 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bond, align 8
  %lower = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 13, i32 1
  %19 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lower, align 8
  %21 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %iter, align 4
  %call19 = call ptr @netdev_lower_get_next_private(ptr noundef %18, ptr noundef nonnull %iter) #14
  %tobool20.not66 = icmp eq ptr %call19, null
  br i1 %tobool20.not66, label %if.end16.do.body40_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

if.end16.do.body40_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body40

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end16.for.body_crit_edge
  %slave.068 = phi ptr [ %call35, %for.inc.for.body_crit_edge ], [ %call19, %if.end16.for.body_crit_edge ]
  %update_slave.067 = phi ptr [ %update_slave.1, %for.inc.for.body_crit_edge ], [ null, %if.end16.for.body_crit_edge ]
  %22 = ptrtoint ptr %slave.068 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %slave.068, align 8
  %cmp22 = icmp eq ptr %call13, %23
  br i1 %cmp22, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.else:                                          ; preds = %for.body
  %24 = ptrtoint ptr %qid to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %qid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool26.not = icmp eq i16 %25, 0
  br i1 %tobool26.not, label %if.else.for.inc_crit_edge, label %land.lhs.true

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %if.else
  %queue_id = getelementptr inbounds %struct.slave, ptr %slave.068, i32 0, i32 13
  %26 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %queue_id, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp29 = icmp eq i16 %25, %27
  br i1 %cmp29, label %land.lhs.true.do.body40_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true.do.body40_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body40

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %update_slave.1 = phi ptr [ %update_slave.067, %land.lhs.true.for.inc_crit_edge ], [ %update_slave.067, %if.else.for.inc_crit_edge ], [ %slave.068, %for.body.for.inc_crit_edge ]
  %28 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bond, align 8
  %call35 = call ptr @netdev_lower_get_next_private(ptr noundef %29, ptr noundef nonnull %iter) #14
  %tobool20.not = icmp eq ptr %call35, null
  br i1 %tobool20.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool36.not = icmp eq ptr %update_slave.1, null
  br i1 %tobool36.not, label %for.end.do.body40_crit_edge, label %if.end38

for.end.do.body40_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body40

if.end38:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %qid to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %qid, align 2
  %queue_id39 = getelementptr inbounds %struct.slave, ptr %update_slave.1, i32 0, i32 13
  %32 = ptrtoint ptr %queue_id39 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %queue_id39, align 4
  br label %out

out:                                              ; preds = %if.then45, %do.body40, %if.end38
  %ret.0 = phi i32 [ 0, %if.end38 ], [ -1, %if.then45 ], [ -1, %do.body40 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %qid) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter) #14
  ret i32 %ret.0

do.body40:                                        ; preds = %for.end.do.body40_crit_edge, %land.lhs.true.do.body40_crit_edge, %if.end16.do.body40_crit_edge, %if.end9.do.body40_crit_edge, %lor.lhs.false.do.body40_crit_edge, %if.end3.do.body40_crit_edge, %if.end.do.body40_crit_edge, %entry.do.body40_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_queue_id_set.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_queue_id_set, %if.then45)) #14
          to label %out [label %if.then45], !srcloc !468

if.then45:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bond, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_queue_id_set.__UNIQUE_ID_ddebug390, ptr noundef %34, ptr noundef nonnull @.str.173) #14
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_all_slaves_active_set(ptr nocapture noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  %iter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter) #14
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %value, align 8
  %all_slaves_active = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 21
  %2 = ptrtoint ptr %all_slaves_active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %all_slaves_active, align 8
  %conv = sext i32 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv)
  %cmp = icmp eq i64 %1, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv3 = trunc i64 %1 to i32
  %4 = ptrtoint ptr %all_slaves_active to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv3, ptr %all_slaves_active, align 8
  %5 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bond, align 8
  %lower = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 13, i32 1
  %7 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lower, align 8
  %9 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %iter, align 4
  %call = call ptr @netdev_lower_get_next_private(ptr noundef %6, ptr noundef nonnull %iter) #14
  %tobool.not30 = icmp eq ptr %call, null
  br i1 %tobool.not30, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %slave.031 = phi ptr [ %call19, %for.inc.for.body_crit_edge ], [ %call, %if.end.for.body_crit_edge ]
  %backup.i.i = getelementptr inbounds %struct.slave, ptr %slave.031, i32 0, i32 8
  %10 = ptrtoint ptr %backup.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i.i = load i8, ptr %backup.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %if.then8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool10.not = icmp eq i64 %12, 0
  %bf.clear = and i8 %bf.load.i.i, -65
  %masksel = select i1 %tobool10.not, i8 64, i8 0
  %bf.set15.sink = or i8 %bf.clear, %masksel
  %13 = ptrtoint ptr %backup.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %bf.set15.sink, ptr %backup.i.i, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %for.body.for.inc_crit_edge
  %14 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bond, align 8
  %call19 = call ptr @netdev_lower_get_next_private(ptr noundef %15, ptr noundef nonnull %iter) #14
  %tobool.not = icmp eq ptr %call19, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_resend_igmp_set(ptr nocapture noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_resend_igmp_set.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_resend_igmp_set, %if.then)) #14
          to label %do.end4 [label %if.then], !srcloc !468

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %value, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_resend_igmp_set.__UNIQUE_ID_ddebug384, ptr noundef %1, ptr noundef nonnull @.str.175, i64 noundef %3) #14
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %value5 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %4 = ptrtoint ptr %value5 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %value5, align 8
  %conv = trunc i64 %5 to i32
  %resend_igmp = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 22
  %6 = ptrtoint ptr %resend_igmp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %resend_igmp, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bond_option_lp_interval_set(ptr nocapture noundef writeonly %bond, ptr nocapture noundef readonly %newval) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %value, align 8
  %conv = trunc i64 %1 to i32
  %lp_interval = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 23
  %2 = ptrtoint ptr %lp_interval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %lp_interval, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_slaves_set(ptr nocapture noundef readonly %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  %command = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %command) #14
  %0 = call ptr @memset(ptr %command, i32 0, i32 17)
  %1 = ptrtoint ptr %newval to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %newval, align 8
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.177, ptr noundef nonnull %command)
  %add.ptr = getelementptr inbounds i8, ptr %command, i32 1
  %call3 = call i32 @strlen(ptr noundef nonnull %command) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3)
  %cmp = icmp ult i32 %call3, 2
  br i1 %cmp, label %entry.err_no_cmd_crit_edge, label %lor.lhs.false

entry.err_no_cmd_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_no_cmd

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %command, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.198)
  switch i8 %4, label %lor.lhs.false.err_no_cmd_crit_edge [
    i8 43, label %lor.lhs.false.lor.lhs.false10_crit_edge
    i8 45, label %lor.lhs.false.lor.lhs.false10_crit_edge99
  ]

lor.lhs.false.lor.lhs.false10_crit_edge99:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false10

lor.lhs.false.lor.lhs.false10_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false10

lor.lhs.false.err_no_cmd_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_no_cmd

lor.lhs.false10:                                  ; preds = %lor.lhs.false.lor.lhs.false10_crit_edge, %lor.lhs.false.lor.lhs.false10_crit_edge99
  %call11 = call zeroext i1 @dev_valid_name(ptr noundef %add.ptr) #14
  br i1 %call11, label %if.end, label %lor.lhs.false10.err_no_cmd_crit_edge

lor.lhs.false10.err_no_cmd_crit_edge:             ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_no_cmd

if.end:                                           ; preds = %lor.lhs.false10
  %6 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bond, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 127
  %8 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nd_net.i, align 4
  %call14 = call ptr @__dev_get_by_name(ptr noundef %9, ptr noundef %add.ptr) #14
  %tobool.not = icmp eq ptr %call14, null
  br i1 %tobool.not, label %do.body16, label %if.end26

do.body16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_slaves_set.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_slaves_set, %if.then21)) #14
          to label %out [label %if.then21], !srcloc !468

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bond, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_slaves_set.__UNIQUE_ID_ddebug391, ptr noundef %11, ptr noundef nonnull @.str.179, ptr noundef %add.ptr) #14
  br label %out

if.end26:                                         ; preds = %if.end
  %12 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %command, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.199)
  switch i8 %13, label %if.end26.err_no_cmd_crit_edge [
    i8 43, label %do.body30
    i8 45, label %do.body54
  ]

if.end26.err_no_cmd_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_no_cmd

do.body30:                                        ; preds = %if.end26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_slaves_set.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_slaves_set, %if.then42)) #14
          to label %do.end49 [label %if.then42], !srcloc !468

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bond, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_slaves_set.__UNIQUE_ID_ddebug392, ptr noundef %16, ptr noundef nonnull @.str.180, ptr noundef nonnull %call14) #14
  br label %do.end49

do.end49:                                         ; preds = %if.then42, %do.body30
  %17 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bond, align 8
  %call51 = call i32 @bond_enslave(ptr noundef %18, ptr noundef nonnull %call14, ptr noundef null) #14
  br label %out

do.body54:                                        ; preds = %if.end26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_slaves_set.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_slaves_set, %if.then66)) #14
          to label %do.end74 [label %if.then66], !srcloc !468

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bond, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_slaves_set.__UNIQUE_ID_ddebug393, ptr noundef %20, ptr noundef nonnull @.str.181, ptr noundef nonnull %call14) #14
  br label %do.end74

do.end74:                                         ; preds = %if.then66, %do.body54
  %21 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bond, align 8
  %call76 = call i32 @bond_release(ptr noundef %22, ptr noundef nonnull %call14) #14
  br label %out

out:                                              ; preds = %err_no_cmd, %do.end74, %do.end49, %if.then21, %do.body16
  %ret.0 = phi i32 [ -1, %err_no_cmd ], [ %call76, %do.end74 ], [ %call51, %do.end49 ], [ -19, %if.then21 ], [ -19, %do.body16 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %command) #14
  ret i32 %ret.0

err_no_cmd:                                       ; preds = %if.end26.err_no_cmd_crit_edge, %lor.lhs.false10.err_no_cmd_crit_edge, %lor.lhs.false.err_no_cmd_crit_edge, %entry.err_no_cmd_crit_edge
  %23 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bond, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %24, ptr noundef nonnull @.str.182) #18
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_tlb_dynamic_lb_set(ptr nocapture noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_tlb_dynamic_lb_set.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_tlb_dynamic_lb_set, %if.then)) #14
          to label %do.end4 [label %if.then], !srcloc !468

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %2 = ptrtoint ptr %newval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %newval, align 8
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %value, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_tlb_dynamic_lb_set.__UNIQUE_ID_ddebug394, ptr noundef %1, ptr noundef nonnull @.str.184, ptr noundef %3, i64 noundef %5) #14
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %value5 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %6 = ptrtoint ptr %value5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %value5, align 8
  %conv = trunc i64 %7 to i32
  %tlb_dynamic_lb = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 25
  %8 = ptrtoint ptr %tlb_dynamic_lb to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %tlb_dynamic_lb, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_ad_actor_sys_prio_set(ptr noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_ad_actor_sys_prio_set.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_ad_actor_sys_prio_set, %if.then)) #14
          to label %do.end4 [label %if.then], !srcloc !468

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %value, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_ad_actor_sys_prio_set.__UNIQUE_ID_ddebug395, ptr noundef %1, ptr noundef nonnull @.str.186, i64 noundef %3) #14
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %value5 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %4 = ptrtoint ptr %value5 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %value5, align 8
  %conv = trunc i64 %5 to i16
  %ad_actor_sys_prio = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 27
  %6 = ptrtoint ptr %ad_actor_sys_prio to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %ad_actor_sys_prio, align 4
  tail call void @bond_3ad_update_ad_actor_settings(ptr noundef %bond) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_ad_actor_system_set(ptr noundef %bond, ptr noundef %newval) #4 align 64 {
entry:
  %macaddr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %macaddr) #14
  %0 = call ptr @memset(ptr %macaddr, i32 255, i32 6)
  %1 = ptrtoint ptr %newval to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %newval, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call zeroext i1 @mac_pton(ptr noundef nonnull %2, ptr noundef nonnull %macaddr) #14
  br i1 %call, label %if.then.if.end4_crit_edge, label %if.then.err_crit_edge

if.then.err_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then.if.end4_crit_edge
  %mac.0 = phi ptr [ %value, %if.else ], [ %macaddr, %if.then.if.end4_crit_edge ]
  %3 = ptrtoint ptr %mac.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mac.0, align 4
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %do.body8, label %if.end4.err_crit_edge

if.end4.err_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

do.body8:                                         ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_ad_actor_system_set.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_ad_actor_system_set, %if.then13)) #14
          to label %do.end16 [label %if.then13], !srcloc !468

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bond, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_ad_actor_system_set.__UNIQUE_ID_ddebug396, ptr noundef %7, ptr noundef nonnull @.str.188, ptr noundef %mac.0) #14
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %do.body8
  %ad_actor_system = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 29
  %8 = ptrtoint ptr %mac.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mac.0, align 4
  %10 = ptrtoint ptr %ad_actor_system to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ad_actor_system, align 4
  %add.ptr.i = getelementptr i8, ptr %mac.0, i32 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.bonding, ptr %bond, i32 0, i32 19, i32 29, i32 4
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %add.ptr1.i, align 2
  call void @bond_3ad_update_ad_actor_settings(ptr noundef %bond) #14
  br label %cleanup

err:                                              ; preds = %if.end4.err_crit_edge, %if.then.err_crit_edge
  %14 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bond, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.189) #18
  br label %cleanup

cleanup:                                          ; preds = %err, %do.end16
  %retval.0 = phi i32 [ -22, %err ], [ 0, %do.end16 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %macaddr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_ad_user_port_key_set(ptr nocapture noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_ad_user_port_key_set.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_ad_user_port_key_set, %if.then)) #14
          to label %do.end4 [label %if.then], !srcloc !468

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %value, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_ad_user_port_key_set.__UNIQUE_ID_ddebug397, ptr noundef %1, ptr noundef nonnull @.str.191, i64 noundef %3) #14
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %value5 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %4 = ptrtoint ptr %value5 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %value5, align 8
  %conv = trunc i64 %5 to i16
  %ad_user_port_key = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 28
  %6 = ptrtoint ptr %ad_user_port_key to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %ad_user_port_key, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_peer_notif_delay_set(ptr nocapture noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_notif_delay = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 12
  %value1.i = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %0 = ptrtoint ptr %value1.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %value1.i, align 8
  %conv.i = trunc i64 %1 to i32
  %miimon.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 2
  %2 = ptrtoint ptr %miimon.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %miimon.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bond, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.192) #18
  br label %_bond_option_delay_set.exit

if.end.i:                                         ; preds = %entry
  %rem.i = srem i32 %conv.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.not.i, label %if.end.i.if.end13.i_crit_edge, label %if.then5.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bond, align 8
  %mul.i = sub i32 %conv.i, %rem.i
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %7, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.192, i32 noundef %conv.i, i32 noundef %3, i32 noundef %mul.i) #18
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then5.i, %if.end.i.if.end13.i_crit_edge
  %8 = ptrtoint ptr %miimon.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %miimon.i, align 8
  %div16.i = sdiv i32 %conv.i, %9
  %10 = ptrtoint ptr %peer_notif_delay to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div16.i, ptr %peer_notif_delay, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_bond_option_delay_set.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_peer_notif_delay_set, %if.then21.i)) #14
          to label %_bond_option_delay_set.exit [label %if.then21.i], !srcloc !468

if.then21.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bond, align 8
  %13 = ptrtoint ptr %peer_notif_delay to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %peer_notif_delay, align 4
  %15 = ptrtoint ptr %miimon.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %miimon.i, align 8
  %mul25.i = mul i32 %16, %14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @_bond_option_delay_set.__UNIQUE_ID_ddebug362, ptr noundef %12, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.192, i32 noundef %mul25.i) #14
  br label %_bond_option_delay_set.exit

_bond_option_delay_set.exit:                      ; preds = %if.then21.i, %if.end13.i, %if.then.i
  %retval.0.i = phi i32 [ -1, %if.then.i ], [ 0, %if.then21.i ], [ 0, %if.end13.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_lacp_active_set(ptr nocapture noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_lacp_active_set.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_lacp_active_set, %if.then)) #14
          to label %do.end4 [label %if.then], !srcloc !468

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %2 = ptrtoint ptr %newval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %newval, align 8
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %value, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_lacp_active_set.__UNIQUE_ID_ddebug387, ptr noundef %1, ptr noundef nonnull @.str.194, ptr noundef %3, i64 noundef %5) #14
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %value5 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %6 = ptrtoint ptr %value5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %value5, align 8
  %conv = trunc i64 %7 to i32
  %lacp_active = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 13
  %8 = ptrtoint ptr %lacp_active to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %lacp_active, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_option_missed_max_set(ptr nocapture noundef %bond, ptr nocapture noundef readonly %newval) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_missed_max_set.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_missed_max_set, %if.then)) #14
          to label %do.end4 [label %if.then], !srcloc !468

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %2 = ptrtoint ptr %newval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %newval, align 8
  %value = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %value, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_missed_max_set.__UNIQUE_ID_ddebug371, ptr noundef %1, ptr noundef nonnull @.str.196, ptr noundef %3, i64 noundef %5) #14
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %value5 = getelementptr inbounds %struct.bond_opt_value, ptr %newval, i32 0, i32 1
  %6 = ptrtoint ptr %value5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %value5, align 8
  %conv = trunc i64 %7 to i8
  %missed_max = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 4
  %8 = ptrtoint ptr %missed_max to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %missed_max, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bond_sk_check(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @reciprocal_value(ptr sret(%struct.reciprocal_value) align 4, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bond_arp_rcv(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in4_pton(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bond_option_arp_ip_target_rem(ptr nocapture noundef %bond, i32 noundef %target) unnamed_addr #4 align 64 {
entry:
  %target.addr = alloca i32, align 4
  %iter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %target.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %target, ptr %target.addr, align 4
  %arp_targets = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter) #14
  %1 = add i32 %target, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %if.then, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bond, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.121, ptr noundef nonnull %target.addr) #18
  br label %cleanup

for.body.i:                                       ; preds = %if.else.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %if.else.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %arp_targets, i32 %i.011.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %target)
  %cmp1.i = icmp eq i32 %6, %target
  br i1 %cmp1.i, label %bond_get_targets_ip.exit, label %if.else.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3.i = icmp ne i32 %6, 0
  %inc.i = add nuw nsw i32 %i.011.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.011.i)
  %cmp.i = icmp ult i32 %i.011.i, 15
  %or.cond.i = select i1 %cmp3.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.else.i.for.body.i_crit_edge, label %if.then2

if.else.i.for.body.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

bond_get_targets_ip.exit:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.011.i)
  %cond = icmp eq i32 %i.011.i, 0
  br i1 %cond, label %land.lhs.true, label %bond_get_targets_ip.exit.do.body13_crit_edge

bond_get_targets_ip.exit.do.body13_crit_edge:     ; preds = %bond_get_targets_ip.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body13

if.then2:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bond, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.122, ptr noundef nonnull %target.addr) #18
  br label %cleanup

land.lhs.true:                                    ; preds = %bond_get_targets_ip.exit
  %arrayidx = getelementptr %struct.bonding, ptr %bond, i32 0, i32 19, i32 19, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %land.lhs.true.do.body13_crit_edge

land.lhs.true.do.body13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body13

land.lhs.true7:                                   ; preds = %land.lhs.true
  %arp_interval = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 5
  %11 = ptrtoint ptr %arp_interval to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arp_interval, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not = icmp eq i32 %12, 0
  br i1 %tobool9.not, label %land.lhs.true7.do.body13_crit_edge, label %if.then10

land.lhs.true7.do.body13_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body13

if.then10:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bond, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.123) #18
  br label %do.body13

do.body13:                                        ; preds = %if.then10, %land.lhs.true7.do.body13_crit_edge, %land.lhs.true.do.body13_crit_edge, %bond_get_targets_ip.exit.do.body13_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_option_arp_ip_target_rem.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_option_arp_ip_target_rem, %if.then18)) #14
          to label %do.end22 [label %if.then18], !srcloc !468

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bond, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_option_arp_ip_target_rem.__UNIQUE_ID_ddebug368, ptr noundef %16, ptr noundef nonnull @.str.125, ptr noundef nonnull %target.addr) #14
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %do.body13
  %17 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bond, align 8
  %lower = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 13, i32 1
  %19 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lower, align 8
  %21 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %iter, align 4
  %call25 = call ptr @netdev_lower_get_next_private(ptr noundef %18, ptr noundef nonnull %iter) #14
  %tobool26.not99 = icmp eq ptr %call25, null
  br i1 %tobool26.not99, label %do.end22.for.cond41.preheader_crit_edge, label %for.body.lr.ph

do.end22.for.cond41.preheader_crit_edge:          ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond41.preheader

for.body.lr.ph:                                   ; preds = %do.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.011.i)
  %cmp2996 = icmp ult i32 %i.011.i, 15
  br label %for.body

for.cond41.preheader:                             ; preds = %for.end.for.cond41.preheader_crit_edge, %do.end22.for.cond41.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.011.i)
  %cmp42101 = icmp ult i32 %i.011.i, 15
  br i1 %cmp42101, label %for.cond41.preheader.land.rhs43_crit_edge, label %for.cond41.preheader.for.end54_crit_edge

for.cond41.preheader.for.end54_crit_edge:         ; preds = %for.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end54

for.cond41.preheader.land.rhs43_crit_edge:        ; preds = %for.cond41.preheader
  br label %land.rhs43

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %slave.0100 = phi ptr [ %call25, %for.body.lr.ph ], [ %call39, %for.end.for.body_crit_edge ]
  %target_last_arp_rx = getelementptr inbounds %struct.slave, ptr %slave.0100, i32 0, i32 5
  br i1 %cmp2996, label %for.body.land.rhs_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

land.rhs:                                         ; preds = %for.body32.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %i.097 = phi i32 [ %add, %for.body32.land.rhs_crit_edge ], [ %i.011.i, %for.body.land.rhs_crit_edge ]
  %add = add nuw nsw i32 %i.097, 1
  %arrayidx30 = getelementptr i32, ptr %arp_targets, i32 %add
  %22 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool31.not = icmp eq i32 %23, 0
  br i1 %tobool31.not, label %land.rhs.for.end_crit_edge, label %for.body32

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body32:                                       ; preds = %land.rhs
  %arrayidx34 = getelementptr i32, ptr %target_last_arp_rx, i32 %add
  %24 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx34, align 4
  %arrayidx35 = getelementptr i32, ptr %target_last_arp_rx, i32 %i.097
  %26 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx35, align 4
  %exitcond.not = icmp eq i32 %add, 15
  br i1 %exitcond.not, label %for.body32.for.end_crit_edge, label %for.body32.land.rhs_crit_edge

for.body32.land.rhs_crit_edge:                    ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

for.body32.for.end_crit_edge:                     ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body32.for.end_crit_edge, %land.rhs.for.end_crit_edge, %for.body.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %i.011.i, %for.body.for.end_crit_edge ], [ 15, %for.body32.for.end_crit_edge ], [ %i.097, %land.rhs.for.end_crit_edge ]
  %arrayidx36 = getelementptr i32, ptr %target_last_arp_rx, i32 %i.0.lcssa
  %27 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx36, align 4
  %28 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bond, align 8
  %call39 = call ptr @netdev_lower_get_next_private(ptr noundef %29, ptr noundef nonnull %iter) #14
  %tobool26.not = icmp eq ptr %call39, null
  br i1 %tobool26.not, label %for.end.for.cond41.preheader_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end.for.cond41.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond41.preheader

land.rhs43:                                       ; preds = %for.body48.land.rhs43_crit_edge, %for.cond41.preheader.land.rhs43_crit_edge
  %i.1102 = phi i32 [ %add44, %for.body48.land.rhs43_crit_edge ], [ %i.011.i, %for.cond41.preheader.land.rhs43_crit_edge ]
  %add44 = add nuw nsw i32 %i.1102, 1
  %arrayidx45 = getelementptr i32, ptr %arp_targets, i32 %add44
  %30 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool46.not = icmp eq i32 %31, 0
  br i1 %tobool46.not, label %land.rhs43.for.end54_crit_edge, label %for.body48

land.rhs43.for.end54_crit_edge:                   ; preds = %land.rhs43
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end54

for.body48:                                       ; preds = %land.rhs43
  %arrayidx51 = getelementptr i32, ptr %arp_targets, i32 %i.1102
  %32 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx51, align 4
  %exitcond107.not = icmp eq i32 %add44, 15
  br i1 %exitcond107.not, label %for.body48.for.end54_crit_edge, label %for.body48.land.rhs43_crit_edge

for.body48.land.rhs43_crit_edge:                  ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs43

for.body48.for.end54_crit_edge:                   ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end54

for.end54:                                        ; preds = %for.body48.for.end54_crit_edge, %land.rhs43.for.end54_crit_edge, %for.cond41.preheader.for.end54_crit_edge
  %i.1.lcssa = phi i32 [ %i.011.i, %for.cond41.preheader.for.end54_crit_edge ], [ 15, %for.body48.for.end54_crit_edge ], [ %i.1102, %land.rhs43.for.end54_crit_edge ]
  %arrayidx55 = getelementptr i32, ptr %arp_targets, i32 %i.1.lcssa
  %33 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx55, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end54, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then2 ], [ 0, %for.end54 ], [ -22, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_bond_option_arp_ip_target_add(ptr nocapture noundef %bond, i32 noundef %target) unnamed_addr #4 align 64 {
entry:
  %iter.i = alloca ptr, align 4
  %target.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %target.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %target, ptr %target.addr, align 4
  %arp_targets = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 19
  %1 = add i32 %target, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %if.then, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bond, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.116, ptr noundef nonnull %target.addr) #18
  br label %cleanup

for.body.i:                                       ; preds = %if.else.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %if.else.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %arp_targets, i32 %i.011.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %target)
  %cmp1.i = icmp eq i32 %6, %target
  br i1 %cmp1.i, label %if.then2, label %if.else.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3.i = icmp ne i32 %6, 0
  %inc.i = add nuw nsw i32 %i.011.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.011.i)
  %cmp.i = icmp ult i32 %i.011.i, 15
  %or.cond.i = select i1 %cmp3.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.else.i.for.body.i_crit_edge, label %for.body.i32.preheader

if.else.i.for.body.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i32.preheader:                           ; preds = %if.else.i
  %7 = ptrtoint ptr %arp_targets to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arp_targets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1.i31 = icmp eq i32 %8, 0
  br i1 %cmp1.i31, label %for.body.i32.preheader.do.body10_crit_edge, label %if.else.i37

for.body.i32.preheader.do.body10_crit_edge:       ; preds = %for.body.i32.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

if.then2:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bond, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.117, ptr noundef nonnull %target.addr) #18
  br label %cleanup

if.else.i37:                                      ; preds = %for.body.i32.preheader
  %arrayidx.i30.1 = getelementptr %struct.bonding, ptr %bond, i32 0, i32 19, i32 19, i32 1
  %11 = ptrtoint ptr %arrayidx.i30.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i30.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1.i31.1 = icmp eq i32 %12, 0
  br i1 %cmp1.i31.1, label %if.else.i37.do.body10_crit_edge, label %if.else.i37.1

if.else.i37.do.body10_crit_edge:                  ; preds = %if.else.i37
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

if.else.i37.1:                                    ; preds = %if.else.i37
  %arrayidx.i30.2 = getelementptr %struct.bonding, ptr %bond, i32 0, i32 19, i32 19, i32 2
  %13 = ptrtoint ptr %arrayidx.i30.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i30.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1.i31.2 = icmp eq i32 %14, 0
  br i1 %cmp1.i31.2, label %if.else.i37.1.do.body10_crit_edge, label %if.else.i37.2

if.else.i37.1.do.body10_crit_edge:                ; preds = %if.else.i37.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

if.else.i37.2:                                    ; preds = %if.else.i37.1
  %arrayidx.i30.3 = getelementptr %struct.bonding, ptr %bond, i32 0, i32 19, i32 19, i32 3
  %15 = ptrtoint ptr %arrayidx.i30.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i30.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp1.i31.3 = icmp eq i32 %16, 0
  br i1 %cmp1.i31.3, label %if.else.i37.2.do.body10_crit_edge, label %if.else.i37.3

if.else.i37.2.do.body10_crit_edge:                ; preds = %if.else.i37.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

if.else.i37.3:                                    ; preds = %if.else.i37.2
  %arrayidx.i30.4 = getelementptr %struct.bonding, ptr %bond, i32 0, i32 19, i32 19, i32 4
  %17 = ptrtoint ptr %arrayidx.i30.4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i30.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp1.i31.4 = icmp eq i32 %18, 0
  br i1 %cmp1.i31.4, label %if.else.i37.3.do.body10_crit_edge, label %if.else.i37.4

if.else.i37.3.do.body10_crit_edge:                ; preds = %if.else.i37.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

if.else.i37.4:                                    ; preds = %if.else.i37.3
  %arrayidx.i30.5 = getelementptr %struct.bonding, ptr %bond, i32 0, i32 19, i32 19, i32 5
  %19 = ptrtoint ptr %arrayidx.i30.5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i30.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp1.i31.5 = icmp eq i32 %20, 0
  br i1 %cmp1.i31.5, label %if.else.i37.4.do.body10_crit_edge, label %if.else.i37.5

if.else.i37.4.do.body10_crit_edge:                ; preds = %if.else.i37.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

if.else.i37.5:                                    ; preds = %if.else.i37.4
  %arrayidx.i30.6 = getelementptr %struct.bonding, ptr %bond, i32 0, i32 19, i32 19, i32 6
  %21 = ptrtoint ptr %arrayidx.i30.6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i30.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1.i31.6 = icmp eq i32 %22, 0
  br i1 %cmp1.i31.6, label %if.else.i37.5.do.body10_crit_edge, label %if.else.i37.6

if.else.i37.5.do.body10_crit_edge:                ; preds = %if.else.i37.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

if.else.i37.6:                                    ; preds = %if.else.i37.5
  %arrayidx.i30.7 = getelementptr %struct.bonding, ptr %bond, i32 0, i32 19, i32 19, i32 7
  %23 = ptrtoint ptr %arrayidx.i30.7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i30.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp1.i31.7 = icmp eq i32 %24, 0
  br i1 %cmp1.i31.7, label %if.else.i37.6.do.body10_crit_edge, label %if.else.i37.7

if.else.i37.6.do.body10_crit_edge:                ; preds = %if.else.i37.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

if.else.i37.7:                                    ; preds = %if.else.i37.6
  %arrayidx.i30.8 = getelementptr %struct.bonding, ptr %bond, i32 0, i32 19, i32 19, i32 8
  %25 = ptrtoint ptr %arrayidx.i30.8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i30.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1.i31.8 = icmp eq i32 %26, 0
  br i1 %cmp1.i31.8, label %if.else.i37.7.do.body10_crit_edge, label %if.else.i37.8

if.else.i37.7.do.body10_crit_edge:                ; preds = %if.else.i37.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

if.else.i37.8:                                    ; preds = %if.else.i37.7
  %arrayidx.i30.9 = getelementptr %struct.bonding, ptr %bond, i32 0, i32 19, i32 19, i32 9
  %27 = ptrtoint ptr %arrayidx.i30.9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i30.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp1.i31.9 = icmp eq i32 %28, 0
  br i1 %cmp1.i31.9, label %if.else.i37.8.do.body10_crit_edge, label %if.else.i37.9

if.else.i37.8.do.body10_crit_edge:                ; preds = %if.else.i37.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

if.else.i37.9:                                    ; preds = %if.else.i37.8
  %arrayidx.i30.10 = getelementptr %struct.bonding, ptr %bond, i32 0, i32 19, i32 19, i32 10
  %29 = ptrtoint ptr %arrayidx.i30.10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i30.10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp1.i31.10 = icmp eq i32 %30, 0
  br i1 %cmp1.i31.10, label %if.else.i37.9.do.body10_crit_edge, label %if.else.i37.10

if.else.i37.9.do.body10_crit_edge:                ; preds = %if.else.i37.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

if.else.i37.10:                                   ; preds = %if.else.i37.9
  %arrayidx.i30.11 = getelementptr %struct.bonding, ptr %bond, i32 0, i32 19, i32 19, i32 11
  %31 = ptrtoint ptr %arrayidx.i30.11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i30.11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp1.i31.11 = icmp eq i32 %32, 0
  br i1 %cmp1.i31.11, label %if.else.i37.10.do.body10_crit_edge, label %if.else.i37.11

if.else.i37.10.do.body10_crit_edge:               ; preds = %if.else.i37.10
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

if.else.i37.11:                                   ; preds = %if.else.i37.10
  %arrayidx.i30.12 = getelementptr %struct.bonding, ptr %bond, i32 0, i32 19, i32 19, i32 12
  %33 = ptrtoint ptr %arrayidx.i30.12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i30.12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp1.i31.12 = icmp eq i32 %34, 0
  br i1 %cmp1.i31.12, label %if.else.i37.11.do.body10_crit_edge, label %if.else.i37.12

if.else.i37.11.do.body10_crit_edge:               ; preds = %if.else.i37.11
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

if.else.i37.12:                                   ; preds = %if.else.i37.11
  %arrayidx.i30.13 = getelementptr %struct.bonding, ptr %bond, i32 0, i32 19, i32 19, i32 13
  %35 = ptrtoint ptr %arrayidx.i30.13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i30.13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp1.i31.13 = icmp eq i32 %36, 0
  br i1 %cmp1.i31.13, label %if.else.i37.12.do.body10_crit_edge, label %if.else.i37.13

if.else.i37.12.do.body10_crit_edge:               ; preds = %if.else.i37.12
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

if.else.i37.13:                                   ; preds = %if.else.i37.12
  %arrayidx.i30.14 = getelementptr %struct.bonding, ptr %bond, i32 0, i32 19, i32 19, i32 14
  %37 = ptrtoint ptr %arrayidx.i30.14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i30.14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp1.i31.14 = icmp eq i32 %38, 0
  br i1 %cmp1.i31.14, label %if.else.i37.13.do.body10_crit_edge, label %if.else.i37.14

if.else.i37.13.do.body10_crit_edge:               ; preds = %if.else.i37.13
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

if.else.i37.14:                                   ; preds = %if.else.i37.13
  %arrayidx.i30.15 = getelementptr %struct.bonding, ptr %bond, i32 0, i32 19, i32 19, i32 15
  %39 = ptrtoint ptr %arrayidx.i30.15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i30.15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp1.i31.15 = icmp eq i32 %40, 0
  br i1 %cmp1.i31.15, label %if.else.i37.14.do.body10_crit_edge, label %if.else.i37.15

if.else.i37.14.do.body10_crit_edge:               ; preds = %if.else.i37.14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

if.else.i37.15:                                   ; preds = %if.else.i37.14
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bond, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %42, ptr noundef nonnull @.str.118) #18
  br label %cleanup

do.body10:                                        ; preds = %if.else.i37.14.do.body10_crit_edge, %if.else.i37.13.do.body10_crit_edge, %if.else.i37.12.do.body10_crit_edge, %if.else.i37.11.do.body10_crit_edge, %if.else.i37.10.do.body10_crit_edge, %if.else.i37.9.do.body10_crit_edge, %if.else.i37.8.do.body10_crit_edge, %if.else.i37.7.do.body10_crit_edge, %if.else.i37.6.do.body10_crit_edge, %if.else.i37.5.do.body10_crit_edge, %if.else.i37.4.do.body10_crit_edge, %if.else.i37.3.do.body10_crit_edge, %if.else.i37.2.do.body10_crit_edge, %if.else.i37.1.do.body10_crit_edge, %if.else.i37.do.body10_crit_edge, %for.body.i32.preheader.do.body10_crit_edge
  %i.011.i29.lcssa = phi i32 [ 0, %for.body.i32.preheader.do.body10_crit_edge ], [ 1, %if.else.i37.do.body10_crit_edge ], [ 2, %if.else.i37.1.do.body10_crit_edge ], [ 3, %if.else.i37.2.do.body10_crit_edge ], [ 4, %if.else.i37.3.do.body10_crit_edge ], [ 5, %if.else.i37.4.do.body10_crit_edge ], [ 6, %if.else.i37.5.do.body10_crit_edge ], [ 7, %if.else.i37.6.do.body10_crit_edge ], [ 8, %if.else.i37.7.do.body10_crit_edge ], [ 9, %if.else.i37.8.do.body10_crit_edge ], [ 10, %if.else.i37.9.do.body10_crit_edge ], [ 11, %if.else.i37.10.do.body10_crit_edge ], [ 12, %if.else.i37.11.do.body10_crit_edge ], [ 13, %if.else.i37.12.do.body10_crit_edge ], [ 14, %if.else.i37.13.do.body10_crit_edge ], [ 15, %if.else.i37.14.do.body10_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_bond_option_arp_ip_target_add.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_bond_option_arp_ip_target_add, %if.then15)) #14
          to label %if.then.i [label %if.then15], !srcloc !468

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bond, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @_bond_option_arp_ip_target_add.__UNIQUE_ID_ddebug367, ptr noundef %44, ptr noundef nonnull @.str.120, ptr noundef nonnull %target.addr) #14
  br label %if.then.i

if.then.i:                                        ; preds = %if.then15, %do.body10
  %45 = ptrtoint ptr %target.addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %target.addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i) #14
  %48 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bond, align 8
  %lower.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 13, i32 1
  %50 = ptrtoint ptr %lower.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lower.i, align 8
  %52 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %iter.i, align 4
  %call.i = call ptr @netdev_lower_get_next_private(ptr noundef %49, ptr noundef nonnull %iter.i) #14
  %tobool.not13.i = icmp eq ptr %call.i, null
  br i1 %tobool.not13.i, label %if.then.i._bond_options_arp_ip_target_set.exit_crit_edge, label %if.then.i.for.body.i41_crit_edge

if.then.i.for.body.i41_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i41

if.then.i._bond_options_arp_ip_target_set.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_bond_options_arp_ip_target_set.exit

for.body.i41:                                     ; preds = %for.body.i41.for.body.i41_crit_edge, %if.then.i.for.body.i41_crit_edge
  %slave.014.i = phi ptr [ %call4.i, %for.body.i41.for.body.i41_crit_edge ], [ %call.i, %if.then.i.for.body.i41_crit_edge ]
  %arrayidx.i40 = getelementptr %struct.slave, ptr %slave.014.i, i32 0, i32 5, i32 %i.011.i29.lcssa
  %53 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %47, ptr %arrayidx.i40, align 4
  %54 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bond, align 8
  %call4.i = call ptr @netdev_lower_get_next_private(ptr noundef %55, ptr noundef nonnull %iter.i) #14
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %for.body.i41._bond_options_arp_ip_target_set.exit_crit_edge, label %for.body.i41.for.body.i41_crit_edge

for.body.i41.for.body.i41_crit_edge:              ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i41

for.body.i41._bond_options_arp_ip_target_set.exit_crit_edge: ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #16
  br label %_bond_options_arp_ip_target_set.exit

_bond_options_arp_ip_target_set.exit:             ; preds = %for.body.i41._bond_options_arp_ip_target_set.exit_crit_edge, %if.then.i._bond_options_arp_ip_target_set.exit_crit_edge
  %arrayidx5.i = getelementptr i32, ptr %arp_targets, i32 %i.011.i29.lcssa
  %56 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %46, ptr %arrayidx5.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #14
  br label %cleanup

cleanup:                                          ; preds = %_bond_options_arp_ip_target_set.exit, %if.else.i37.15, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then2 ], [ -22, %if.else.i37.15 ], [ 0, %_bond_options_arp_ip_target_set.exit ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_lower_get_next_private(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bond_3ad_update_lacp_rate(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bond_set_carrier(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bond_select_active_slave(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bond_change_active_slave(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dev_valid_name(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bond_enslave(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bond_release(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bond_3ad_update_ad_actor_settings(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mac_pton(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 218)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 218)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nobuiltin }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !168, !169, !170, !172, !173, !175, !177, !179, !180, !181, !183, !185, !187, !189, !191, !193, !195, !197, !198, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !218, !219, !221, !223, !225, !226, !227, !229, !231, !233, !234, !235, !237, !239, !241, !242, !243, !245, !246, !248, !249, !251, !253, !255, !257, !259, !261, !262, !263, !265, !267, !269, !271, !272, !273, !275, !277, !279, !281, !282, !283, !285, !287, !289, !291, !293, !294, !295, !297, !298, !299, !301, !303, !305, !307, !309, !310, !311, !313, !315, !316, !317, !319, !320, !322, !323, !325, !326, !328, !329, !331, !332, !333, !335, !336, !338, !339, !341, !343, !344, !346, !348, !350, !352, !354, !355, !356, !358, !360, !362, !363, !364, !366, !368, !370, !372, !373, !374, !376, !378, !380, !381, !383, !384, !386, !388, !390, !391, !392, !394, !396, !398, !399, !400, !402, !404, !406, !408, !409, !410, !412, !413, !415, !416, !418, !420, !422, !423, !424, !426, !428, !429, !430, !432, !433, !434, !436, !438, !440, !441, !442, !444, !446, !448, !449, !450, !452, !454, !455}
!llvm.named.register.sp = !{!456}
!llvm.module.flags = !{!457, !458, !459, !460, !461, !462, !463, !464}
!llvm.ident = !{!465}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/bonding/bond_options.c", i32 497, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/bonding/bond_options.c", i32 576, i32 29}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/bonding/bond_options.c", i32 578, i32 29}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/bonding/bond_options.c", i32 591, i32 24}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/net/bonding/bond_options.c", i32 709, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../drivers/net/bonding/bond_options.c", i32 745, i32 2}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/bonding/bond_options.c", i32 653, i32 27}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/bonding/bond_options.c", i32 656, i32 27}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/bonding/bond_options.c", i32 664, i32 25}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/bonding/bond_options.c", i32 671, i32 25}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/bonding/bond_options.c", i32 675, i32 25}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/bonding/bond_options.c", i32 683, i32 26}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/bonding/bond_options.c", i32 634, i32 25}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/bonding/bond_options.c", i32 228, i32 11}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/bonding/bond_options.c", i32 229, i32 11}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/bonding/bond_options.c", i32 236, i32 11}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/bonding/bond_options.c", i32 237, i32 11}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/bonding/bond_options.c", i32 244, i32 11}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/bonding/bond_options.c", i32 245, i32 11}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/bonding/bond_options.c", i32 251, i32 11}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/bonding/bond_options.c", i32 252, i32 11}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/bonding/bond_options.c", i32 260, i32 11}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/bonding/bond_options.c", i32 261, i32 11}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/bonding/bond_options.c", i32 267, i32 11}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/bonding/bond_options.c", i32 268, i32 11}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/bonding/bond_options.c", i32 275, i32 11}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/bonding/bond_options.c", i32 276, i32 11}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/bonding/bond_options.c", i32 293, i32 11}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/bonding/bond_options.c", i32 294, i32 11}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/bonding/bond_options.c", i32 300, i32 11}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/bonding/bond_options.c", i32 301, i32 11}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/bonding/bond_options.c", i32 307, i32 11}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/bonding/bond_options.c", i32 308, i32 11}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/bonding/bond_options.c", i32 323, i32 11}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/bonding/bond_options.c", i32 324, i32 11}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/bonding/bond_options.c", i32 332, i32 11}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/bonding/bond_options.c", i32 333, i32 11}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/bonding/bond_options.c", i32 339, i32 11}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/bonding/bond_options.c", i32 340, i32 11}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/bonding/bond_options.c", i32 347, i32 11}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/bonding/bond_options.c", i32 348, i32 11}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/bonding/bond_options.c", i32 354, i32 11}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/bonding/bond_options.c", i32 355, i32 11}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/bonding/bond_options.c", i32 361, i32 11}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/bonding/bond_options.c", i32 362, i32 11}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/bonding/bond_options.c", i32 371, i32 11}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/bonding/bond_options.c", i32 372, i32 11}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/bonding/bond_options.c", i32 378, i32 11}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/bonding/bond_options.c", i32 379, i32 11}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/bonding/bond_options.c", i32 385, i32 11}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/bonding/bond_options.c", i32 386, i32 11}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/bonding/bond_options.c", i32 395, i32 11}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/bonding/bond_options.c", i32 396, i32 11}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/bonding/bond_options.c", i32 402, i32 11}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/bonding/bond_options.c", i32 403, i32 11}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/bonding/bond_options.c", i32 409, i32 11}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/bonding/bond_options.c", i32 410, i32 11}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/bonding/bond_options.c", i32 416, i32 11}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/bonding/bond_options.c", i32 417, i32 11}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/bonding/bond_options.c", i32 423, i32 11}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/bonding/bond_options.c", i32 424, i32 11}
!123 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/bonding/bond_options.c", i32 430, i32 11}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/bonding/bond_options.c", i32 431, i32 11}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/bonding/bond_options.c", i32 439, i32 11}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/bonding/bond_options.c", i32 446, i32 11}
!131 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/bonding/bond_options.c", i32 453, i32 11}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/bonding/bond_options.c", i32 461, i32 11}
!135 = !{ptr @.str.66, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/bonding/bond_options.c", i32 468, i32 11}
!137 = !{ptr @.str.67, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/bonding/bond_options.c", i32 469, i32 11}
!139 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/bonding/bond_options.c", i32 314, i32 11}
!141 = !{ptr @.str.69, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/bonding/bond_options.c", i32 315, i32 11}
!143 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/bonding/bond_options.c", i32 284, i32 11}
!145 = !{ptr @.str.71, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/bonding/bond_options.c", i32 285, i32 11}
!147 = !{ptr @bond_opts, !148, !"bond_opts", i1 false, i1 false}
!148 = !{!"../drivers/net/bonding/bond_options.c", i32 225, i32 33}
!149 = !{ptr @.str.72, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/bonding/bond_options.c", i32 86, i32 4}
!151 = !{ptr @.str.73, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/bonding/bond_options.c", i32 87, i32 4}
!153 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/bonding/bond_options.c", i32 88, i32 4}
!155 = !{ptr @.str.75, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/bonding/bond_options.c", i32 89, i32 4}
!157 = !{ptr @.str.76, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/bonding/bond_options.c", i32 90, i32 4}
!159 = !{ptr @.str.77, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/bonding/bond_options.c", i32 91, i32 4}
!161 = !{ptr @.str.78, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/bonding/bond_options.c", i32 92, i32 4}
!163 = !{ptr @bond_mode_tbl, !164, !"bond_mode_tbl", i1 false, i1 false}
!164 = !{!"../drivers/net/bonding/bond_options.c", i32 85, i32 36}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/bonding/bond_options.c", i32 824, i32 4}
!167 = !{ptr @.str.80, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.81, !166, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @bond_option_mode_set.__UNIQUE_ID_ddebug351, !166, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/bonding/bond_options.c", i32 833, i32 4}
!172 = !{ptr @bond_option_mode_set.__UNIQUE_ID_ddebug352, !171, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/bonding/bond_options.c", i32 98, i32 4}
!175 = !{ptr @bond_pps_tbl, !176, !"bond_pps_tbl", i1 false, i1 false}
!176 = !{!"../drivers/net/bonding/bond_options.c", i32 96, i32 36}
!177 = !{ptr @.str.84, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/bonding/bond_options.c", i32 1364, i32 2}
!179 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @bond_option_pps_set.__UNIQUE_ID_ddebug386, !178, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!181 = !{ptr @.str.86, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/bonding/bond_options.c", i32 103, i32 4}
!183 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/bonding/bond_options.c", i32 104, i32 4}
!185 = !{ptr @.str.88, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/bonding/bond_options.c", i32 105, i32 4}
!187 = !{ptr @.str.89, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/bonding/bond_options.c", i32 106, i32 4}
!189 = !{ptr @.str.90, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/bonding/bond_options.c", i32 107, i32 4}
!191 = !{ptr @.str.91, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/bonding/bond_options.c", i32 108, i32 4}
!193 = !{ptr @bond_xmit_hashtype_tbl, !194, !"bond_xmit_hashtype_tbl", i1 false, i1 false}
!194 = !{!"../drivers/net/bonding/bond_options.c", i32 102, i32 36}
!195 = !{ptr @.str.92, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/bonding/bond_options.c", i32 1292, i32 2}
!197 = !{ptr @.str.93, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @bond_option_xmit_hash_policy_set.__UNIQUE_ID_ddebug383, !196, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!199 = !{ptr @.str.94, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/bonding/bond_options.c", i32 113, i32 4}
!201 = !{ptr @.str.95, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/bonding/bond_options.c", i32 114, i32 4}
!203 = !{ptr @.str.96, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/bonding/bond_options.c", i32 115, i32 4}
!205 = !{ptr @.str.97, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/bonding/bond_options.c", i32 116, i32 4}
!207 = !{ptr @.str.98, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/bonding/bond_options.c", i32 117, i32 4}
!209 = !{ptr @.str.99, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/bonding/bond_options.c", i32 118, i32 4}
!211 = !{ptr @.str.100, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/bonding/bond_options.c", i32 119, i32 4}
!213 = !{ptr @bond_arp_validate_tbl, !214, !"bond_arp_validate_tbl", i1 false, i1 false}
!214 = !{!"../drivers/net/bonding/bond_options.c", i32 112, i32 36}
!215 = !{ptr @.str.101, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/bonding/bond_options.c", i32 1190, i32 2}
!217 = !{ptr @.str.102, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @bond_option_arp_validate_set.__UNIQUE_ID_ddebug369, !216, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!219 = !{ptr @.str.103, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/bonding/bond_options.c", i32 124, i32 4}
!221 = !{ptr @bond_arp_all_targets_tbl, !222, !"bond_arp_all_targets_tbl", i1 false, i1 false}
!222 = !{!"../drivers/net/bonding/bond_options.c", i32 123, i32 36}
!223 = !{ptr @.str.104, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/bonding/bond_options.c", i32 1200, i32 2}
!225 = !{ptr @.str.105, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @bond_option_arp_all_targets_set.__UNIQUE_ID_ddebug370, !224, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!227 = !{ptr @.str.106, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/bonding/bond_options.c", i32 132, i32 4}
!229 = !{ptr @bond_fail_over_mac_tbl, !230, !"bond_fail_over_mac_tbl", i1 false, i1 false}
!230 = !{!"../drivers/net/bonding/bond_options.c", i32 129, i32 36}
!231 = !{ptr @.str.107, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/bonding/bond_options.c", i32 1282, i32 2}
!233 = !{ptr @.str.108, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @bond_option_fail_over_mac_set.__UNIQUE_ID_ddebug382, !232, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!235 = !{ptr @.str.109, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/bonding/bond_options.c", i32 137, i32 4}
!237 = !{ptr @bond_intmax_tbl, !238, !"bond_intmax_tbl", i1 false, i1 false}
!238 = !{!"../drivers/net/bonding/bond_options.c", i32 136, i32 36}
!239 = !{ptr @.str.110, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/bonding/bond_options.c", i32 1032, i32 2}
!241 = !{ptr @.str.111, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @bond_option_arp_interval_set.__UNIQUE_ID_ddebug364, !240, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!243 = !{ptr @.str.112, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/bonding/bond_options.c", i32 1037, i32 4}
!245 = !{ptr @bond_option_arp_interval_set.__UNIQUE_ID_ddebug365, !244, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!246 = !{ptr @.str.113, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/bonding/bond_options.c", i32 1041, i32 4}
!248 = !{ptr @bond_option_arp_interval_set.__UNIQUE_ID_ddebug366, !247, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!249 = !{ptr @.str.114, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/bonding/bond_options.c", i32 1169, i32 26}
!251 = !{ptr @.str.115, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/bonding/bond_options.c", i32 1178, i32 26}
!253 = !{ptr @.str.116, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/bonding/bond_options.c", i32 1085, i32 25}
!255 = !{ptr @.str.117, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/bonding/bond_options.c", i32 1091, i32 25}
!257 = !{ptr @.str.118, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/bonding/bond_options.c", i32 1098, i32 25}
!259 = !{ptr @.str.119, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/bonding/bond_options.c", i32 1102, i32 2}
!261 = !{ptr @.str.120, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @_bond_option_arp_ip_target_add.__UNIQUE_ID_ddebug367, !260, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!263 = !{ptr @.str.121, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/bonding/bond_options.c", i32 1123, i32 25}
!265 = !{ptr @.str.122, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/bonding/bond_options.c", i32 1130, i32 25}
!267 = !{ptr @.str.123, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/bonding/bond_options.c", i32 1136, i32 26}
!269 = !{ptr @.str.124, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/bonding/bond_options.c", i32 1138, i32 2}
!271 = !{ptr @.str.125, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @bond_option_arp_ip_target_rem.__UNIQUE_ID_ddebug368, !270, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!273 = !{ptr @.str.126, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/bonding/bond_options.c", i32 1002, i32 46}
!275 = !{ptr @.str.127, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/bonding/bond_options.c", i32 972, i32 25}
!277 = !{ptr @.str.128, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/bonding/bond_options.c", i32 978, i32 8}
!279 = !{ptr @.str.129, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/bonding/bond_options.c", i32 985, i32 2}
!281 = !{ptr @.str.130, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @_bond_option_delay_set.__UNIQUE_ID_ddebug362, !280, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!283 = !{ptr @.str.131, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/bonding/bond_options.c", i32 995, i32 46}
!285 = !{ptr @.str.132, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/bonding/bond_options.c", i32 149, i32 4}
!287 = !{ptr @.str.133, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/bonding/bond_options.c", i32 150, i32 4}
!289 = !{ptr @bond_lacp_rate_tbl, !290, !"bond_lacp_rate_tbl", i1 false, i1 false}
!290 = !{!"../drivers/net/bonding/bond_options.c", i32 148, i32 36}
!291 = !{ptr @.str.134, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/bonding/bond_options.c", i32 1394, i32 2}
!293 = !{ptr @.str.135, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @bond_option_lacp_rate_set.__UNIQUE_ID_ddebug388, !292, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!295 = !{ptr @.str.136, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/bonding/bond_options.c", i32 1345, i32 2}
!297 = !{ptr @.str.137, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @bond_option_min_links_set.__UNIQUE_ID_ddebug385, !296, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!299 = !{ptr @.str.138, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/bonding/bond_options.c", i32 155, i32 4}
!301 = !{ptr @.str.139, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/bonding/bond_options.c", i32 156, i32 4}
!303 = !{ptr @.str.140, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/bonding/bond_options.c", i32 157, i32 4}
!305 = !{ptr @bond_ad_select_tbl, !306, !"bond_ad_select_tbl", i1 false, i1 false}
!306 = !{!"../drivers/net/bonding/bond_options.c", i32 154, i32 36}
!307 = !{ptr @.str.141, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/bonding/bond_options.c", i32 1405, i32 2}
!309 = !{ptr @.str.142, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @bond_option_ad_select_set.__UNIQUE_ID_ddebug389, !308, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!311 = !{ptr @bond_num_peer_notif_tbl, !312, !"bond_num_peer_notif_tbl", i1 false, i1 false}
!312 = !{!"../drivers/net/bonding/bond_options.c", i32 161, i32 36}
!313 = !{ptr @.str.143, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/bonding/bond_options.c", i32 925, i32 2}
!315 = !{ptr @.str.144, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @bond_option_miimon_set.__UNIQUE_ID_ddebug357, !314, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!317 = !{ptr @.str.145, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/bonding/bond_options.c", i32 929, i32 3}
!319 = !{ptr @bond_option_miimon_set.__UNIQUE_ID_ddebug358, !318, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!320 = !{ptr @.str.146, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/bonding/bond_options.c", i32 932, i32 3}
!322 = !{ptr @bond_option_miimon_set.__UNIQUE_ID_ddebug359, !321, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!323 = !{ptr @.str.147, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/bonding/bond_options.c", i32 935, i32 3}
!325 = !{ptr @bond_option_miimon_set.__UNIQUE_ID_ddebug360, !324, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!326 = !{ptr @.str.148, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/bonding/bond_options.c", i32 938, i32 3}
!328 = !{ptr @bond_option_miimon_set.__UNIQUE_ID_ddebug361, !327, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!329 = !{ptr @.str.149, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/bonding/bond_options.c", i32 1231, i32 3}
!331 = !{ptr @.str.150, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @bond_option_primary_set.__UNIQUE_ID_ddebug372, !330, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!333 = !{ptr @.str.151, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/bonding/bond_options.c", i32 1240, i32 4}
!335 = !{ptr @bond_option_primary_set.__UNIQUE_ID_ddebug374, !334, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!336 = distinct !{null, !337, !"__warned", i1 false, i1 false}
!337 = !{!"../drivers/net/bonding/bond_options.c", i32 1249, i32 6}
!338 = !{ptr @.str.152, !337, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @bond_option_primary_set.__UNIQUE_ID_ddebug378, !340, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!340 = !{!"../drivers/net/bonding/bond_options.c", i32 1250, i32 3}
!341 = !{ptr @.str.153, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/bonding/bond_options.c", i32 1256, i32 2}
!343 = !{ptr @bond_option_primary_set.__UNIQUE_ID_ddebug380, !342, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!344 = !{ptr @.str.154, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/bonding/bond_options.c", i32 169, i32 4}
!346 = !{ptr @.str.155, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/bonding/bond_options.c", i32 170, i32 4}
!348 = !{ptr @.str.156, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/bonding/bond_options.c", i32 171, i32 4}
!350 = !{ptr @bond_primary_reselect_tbl, !351, !"bond_primary_reselect_tbl", i1 false, i1 false}
!351 = !{!"../drivers/net/bonding/bond_options.c", i32 168, i32 36}
!352 = !{ptr @.str.157, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/bonding/bond_options.c", i32 1268, i32 2}
!354 = !{ptr @.str.158, !353, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @bond_option_primary_reselect_set.__UNIQUE_ID_ddebug381, !353, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!356 = !{ptr @.str.159, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/bonding/bond_options.c", i32 177, i32 4}
!358 = !{ptr @bond_use_carrier_tbl, !359, !"bond_use_carrier_tbl", i1 false, i1 false}
!359 = !{!"../drivers/net/bonding/bond_options.c", i32 175, i32 36}
!360 = !{ptr @.str.160, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/bonding/bond_options.c", i32 1018, i32 2}
!362 = !{ptr @.str.161, !361, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @bond_option_use_carrier_set.__UNIQUE_ID_ddebug363, !361, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!364 = !{ptr @.str.162, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/bonding/bond_options.c", i32 865, i32 25}
!366 = !{ptr @.str.163, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/bonding/bond_options.c", i32 876, i32 4}
!368 = !{ptr @.str.164, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/bonding/bond_options.c", i32 881, i32 4}
!370 = !{ptr @.str.165, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/net/bonding/bond_options.c", i32 889, i32 3}
!372 = !{ptr @.str.166, !371, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @bond_option_active_slave_set.__UNIQUE_ID_ddebug353, !371, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!374 = distinct !{null, !375, !"__warned", i1 false, i1 false}
!375 = !{!"../drivers/net/bonding/bond_options.c", i32 893, i32 30}
!376 = distinct !{null, !377, !"__warned", i1 false, i1 false}
!377 = !{!"../drivers/net/bonding/bond_options.c", i32 894, i32 30}
!378 = !{ptr @.str.168, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/bonding/bond_options.c", i32 900, i32 4}
!380 = !{ptr @bond_option_active_slave_set.__UNIQUE_ID_ddebug355, !379, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!381 = !{ptr @.str.169, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/bonding/bond_options.c", i32 904, i32 5}
!383 = !{ptr @bond_option_active_slave_set.__UNIQUE_ID_ddebug356, !382, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!384 = !{ptr @.str.170, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/net/bonding/bond_options.c", i32 907, i32 5}
!386 = !{ptr @.str.171, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/bonding/bond_options.c", i32 1431, i32 22}
!388 = !{ptr @.str.172, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/net/bonding/bond_options.c", i32 1467, i32 2}
!390 = !{ptr @.str.173, !389, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @bond_option_queue_id_set.__UNIQUE_ID_ddebug390, !389, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!392 = !{ptr @bond_all_slaves_active_tbl, !393, !"bond_all_slaves_active_tbl", i1 false, i1 false}
!393 = !{!"../drivers/net/bonding/bond_options.c", i32 181, i32 36}
!394 = !{ptr @bond_resend_igmp_tbl, !395, !"bond_resend_igmp_tbl", i1 false, i1 false}
!395 = !{!"../drivers/net/bonding/bond_options.c", i32 187, i32 36}
!396 = !{ptr @.str.174, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/net/bonding/bond_options.c", i32 1306, i32 2}
!398 = !{ptr @.str.175, !397, !"<string literal>", i1 false, i1 false}
!399 = !{ptr @bond_option_resend_igmp_set.__UNIQUE_ID_ddebug384, !397, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!400 = !{ptr @.str.176, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/net/bonding/bond_options.c", i32 195, i32 4}
!402 = !{ptr @bond_lp_interval_tbl, !403, !"bond_lp_interval_tbl", i1 false, i1 false}
!403 = !{!"../drivers/net/bonding/bond_options.c", i32 194, i32 36}
!404 = !{ptr @.str.177, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/net/bonding/bond_options.c", i32 1481, i32 25}
!406 = !{ptr @.str.178, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/net/bonding/bond_options.c", i32 1490, i32 3}
!408 = !{ptr @.str.179, !407, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @bond_option_slaves_set.__UNIQUE_ID_ddebug391, !407, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!410 = !{ptr @.str.180, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/net/bonding/bond_options.c", i32 1498, i32 3}
!412 = !{ptr @bond_option_slaves_set.__UNIQUE_ID_ddebug392, !411, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!413 = !{ptr @.str.181, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/net/bonding/bond_options.c", i32 1503, i32 3}
!415 = !{ptr @bond_option_slaves_set.__UNIQUE_ID_ddebug393, !414, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!416 = !{ptr @.str.182, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/net/bonding/bond_options.c", i32 1516, i32 24}
!418 = !{ptr @bond_tlb_dynamic_lb_tbl, !419, !"bond_tlb_dynamic_lb_tbl", i1 false, i1 false}
!419 = !{!"../drivers/net/bonding/bond_options.c", i32 200, i32 36}
!420 = !{ptr @.str.183, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/net/bonding/bond_options.c", i32 1524, i32 2}
!422 = !{ptr @.str.184, !421, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @bond_option_tlb_dynamic_lb_set.__UNIQUE_ID_ddebug394, !421, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!424 = !{ptr @bond_ad_actor_sys_prio_tbl, !425, !"bond_ad_actor_sys_prio_tbl", i1 false, i1 false}
!425 = !{!"../drivers/net/bonding/bond_options.c", i32 206, i32 36}
!426 = !{ptr @.str.185, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/net/bonding/bond_options.c", i32 1534, i32 2}
!428 = !{ptr @.str.186, !427, !"<string literal>", i1 false, i1 false}
!429 = !{ptr @bond_option_ad_actor_sys_prio_set.__UNIQUE_ID_ddebug395, !427, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!430 = !{ptr @.str.187, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/net/bonding/bond_options.c", i32 1560, i32 2}
!432 = !{ptr @.str.188, !431, !"<string literal>", i1 false, i1 false}
!433 = !{ptr @bond_option_ad_actor_system_set.__UNIQUE_ID_ddebug396, !431, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!434 = !{ptr @.str.189, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/net/bonding/bond_options.c", i32 1567, i32 24}
!436 = !{ptr @bond_ad_user_port_key_tbl, !437, !"bond_ad_user_port_key_tbl", i1 false, i1 false}
!437 = !{!"../drivers/net/bonding/bond_options.c", i32 212, i32 36}
!438 = !{ptr @.str.190, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/net/bonding/bond_options.c", i32 1574, i32 2}
!440 = !{ptr @.str.191, !439, !"<string literal>", i1 false, i1 false}
!441 = !{ptr @bond_option_ad_user_port_key_set.__UNIQUE_ID_ddebug397, !439, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!442 = !{ptr @.str.192, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/net/bonding/bond_options.c", i32 1010, i32 7}
!444 = !{ptr @bond_lacp_active, !445, !"bond_lacp_active", i1 false, i1 false}
!445 = !{!"../drivers/net/bonding/bond_options.c", i32 142, i32 36}
!446 = !{ptr @.str.193, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/net/bonding/bond_options.c", i32 1384, i32 2}
!448 = !{ptr @.str.194, !447, !"<string literal>", i1 false, i1 false}
!449 = !{ptr @bond_option_lacp_active_set.__UNIQUE_ID_ddebug387, !447, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!450 = !{ptr @bond_missed_max_tbl, !451, !"bond_missed_max_tbl", i1 false, i1 false}
!451 = !{!"../drivers/net/bonding/bond_options.c", i32 218, i32 36}
!452 = !{ptr @.str.195, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/net/bonding/bond_options.c", i32 1210, i32 2}
!454 = !{ptr @.str.196, !453, !"<string literal>", i1 false, i1 false}
!455 = !{ptr @bond_option_missed_max_set.__UNIQUE_ID_ddebug371, !453, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!456 = !{!"sp"}
!457 = !{i32 1, !"wchar_size", i32 2}
!458 = !{i32 1, !"min_enum_size", i32 4}
!459 = !{i32 8, !"branch-target-enforcement", i32 0}
!460 = !{i32 8, !"sign-return-address", i32 0}
!461 = !{i32 8, !"sign-return-address-all", i32 0}
!462 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!463 = !{i32 7, !"uwtable", i32 1}
!464 = !{i32 7, !"frame-pointer", i32 2}
!465 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!466 = !{!"branch_weights", i32 1, i32 2000}
!467 = !{!"branch_weights", i32 2000, i32 1}
!468 = !{i64 2148791903, i64 2148791908, i64 2148791921, i64 2148791965, i64 2148791999, i64 2148792020}
!469 = !{!"auto-init"}
!470 = !{i64 2148310088, i64 2148310114, i64 2148310143, i64 2148310177, i64 2148310208, i64 2148310231}
!471 = !{i64 2156238460}
!472 = !{i64 2148312553, i64 2148312579, i64 2148312608, i64 2148312642, i64 2148312673, i64 2148312696}
!473 = !{i64 2156175134, i64 2156175633, i64 2156175171, i64 2156175227, i64 2156175261, i64 2156175285, i64 2156175326, i64 2156175347, i64 2156175375, i64 2156175409}
