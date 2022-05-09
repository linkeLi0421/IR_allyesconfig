; ModuleID = '/llk/IR_all_yes/drivers/leds/trigger/ledtrig-netdev.c_pt.bc'
source_filename = "../drivers/leds/trigger/ledtrig-netdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.38, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.63, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.63 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
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
%struct.led_netdev_data = type { %struct.spinlock, %struct.delayed_work, %struct.notifier_block, ptr, ptr, [16 x i8], %struct.atomic_t, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@netdev_led_trigger = internal global { %struct.led_trigger, [48 x i8] } { %struct.led_trigger { ptr @.str, ptr @netdev_trig_activate, ptr @netdev_trig_deactivate, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr @netdev_trig_groups }, [48 x i8] zeroinitializer }, align 32
@__initcall__kmod_ledtrig_netdev__337_456_netdev_trig_init6 = internal global ptr @netdev_trig_init, section ".initcall6.init", align 4
@__exitcall_netdev_trig_exit = internal global ptr @netdev_trig_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author338 = internal constant [58 x i8] c"ledtrig_netdev.author=Ben Whitten <ben.whitten@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author339 = internal constant [59 x i8] c"ledtrig_netdev.author=Oliver Jowett <oliver@opencloud.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description340 = internal constant [46 x i8] c"ledtrig_netdev.description=Netdev LED trigger\00", section ".modinfo", align 1
@__UNIQUE_ID_file341 = internal constant [56 x i8] c"ledtrig_netdev.file=drivers/leds/trigger/ledtrig-netdev\00", section ".modinfo", align 1
@__UNIQUE_ID_license342 = internal constant [30 x i8] c"ledtrig_netdev.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"netdev\00", [25 x i8] zeroinitializer }, align 32
@netdev_trig_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @netdev_trig_group, ptr null], [24 x i8] zeroinitializer }, align 32
@netdev_trig_activate.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&trigger_data->lock\00", [44 x i8] zeroinitializer }, align 32
@netdev_trig_activate.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&trigger_data->work)->work)\00", [48 x i8] zeroinitializer }, align 32
@netdev_trig_activate.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&trigger_data->work)->timer\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@netdev_trig_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @netdev_trig_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@netdev_trig_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dev_attr_device_name, ptr @dev_attr_link, ptr @dev_attr_rx, ptr @dev_attr_tx, ptr @dev_attr_interval, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_device_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @device_name_show, ptr @device_name_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_link = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @link_show, ptr @link_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rx = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rx_show, ptr @rx_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tx = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tx_show, ptr @tx_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_interval = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @interval_show, ptr @interval_store }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device_name\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"interval\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 5, i64 6, i64 11]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 11]
@__sancov_gen_cov_switch_values.14 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 4, i64 5, i64 6, i64 11]
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"netdev_led_trigger\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 439, i32 27 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 440, i32 10 }
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"netdev_trig_groups\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 401, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 406, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"netdev_trig_group\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 294, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"netdev_trig_attrs\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 286, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"dev_attr_device_name\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"dev_attr_link\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"dev_attr_rx\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [12 x i8] c"dev_attr_tx\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [18 x i8] c"dev_attr_interval\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 147, i32 8 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 101, i32 21 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 222, i32 8 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 169, i32 22 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 250, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 236, i32 8 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [41 x i8] c"../drivers/leds/trigger/ledtrig-netdev.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 284, i32 8 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author338, ptr @__UNIQUE_ID_author339, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_file341, ptr @__UNIQUE_ID_license342, ptr @__exitcall_netdev_trig_exit, ptr @__initcall__kmod_ledtrig_netdev__337_456_netdev_trig_init6, ptr @netdev_trig_exit, ptr @netdev_led_trigger, ptr @.str, ptr @netdev_trig_groups, ptr @netdev_trig_activate.__key, ptr @.str.1, ptr @netdev_trig_activate.__key.2, ptr @.str.3, ptr @netdev_trig_activate.__key.4, ptr @.str.5, ptr @netdev_trig_group, ptr @netdev_trig_attrs, ptr @dev_attr_device_name, ptr @dev_attr_link, ptr @dev_attr_rx, ptr @dev_attr_tx, ptr @dev_attr_interval, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_led_trigger to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_trig_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_trig_activate.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_trig_activate.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_trig_activate.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_trig_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_trig_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_device_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_link to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rx to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tx to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_interval to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @netdev_trig_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @led_trigger_unregister(ptr noundef nonnull @netdev_led_trigger) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_trig_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @led_trigger_register(ptr noundef nonnull @netdev_led_trigger) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_trig_activate(ptr noundef %led_cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 192) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @netdev_trig_activate.__key, i16 noundef signext 3) #9
  %notifier = getelementptr inbounds %struct.led_netdev_data, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @netdev_trig_notify, ptr %notifier, align 8
  %priority = getelementptr inbounds %struct.led_netdev_data, ptr %call7.i.i, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 10, ptr %priority, align 8
  %work = getelementptr inbounds %struct.led_netdev_data, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %3 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.led_netdev_data, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @netdev_trig_activate.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry12 = getelementptr inbounds %struct.led_netdev_data, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry12, ptr %entry12, align 8
  %prev.i = getelementptr inbounds %struct.led_netdev_data, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.led_netdev_data, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @netdev_trig_work, ptr %func, align 8
  %timer = getelementptr inbounds %struct.led_netdev_data, ptr %call7.i.i, i32 0, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.5, ptr noundef nonnull @netdev_trig_activate.__key.4) #9
  %led_cdev23 = getelementptr inbounds %struct.led_netdev_data, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %led_cdev23 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %led_cdev, ptr %led_cdev23, align 4
  %net_dev = getelementptr inbounds %struct.led_netdev_data, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %net_dev, align 8
  %device_name = getelementptr inbounds %struct.led_netdev_data, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %device_name to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %device_name, align 4
  %mode = getelementptr inbounds %struct.led_netdev_data, ptr %call7.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %mode, align 4
  %interval = getelementptr inbounds %struct.led_netdev_data, ptr %call7.i.i, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %interval, i32 noundef 4) #9
  %11 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 5, ptr %interval, align 4
  %last_activity = getelementptr inbounds %struct.led_netdev_data, ptr %call7.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %last_activity to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %last_activity, align 8
  %trigger_data1.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 26
  %13 = ptrtoint ptr %trigger_data1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %trigger_data1.i, align 4
  %call26 = tail call i32 @register_netdevice_notifier(ptr noundef %notifier) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.body.cleanup_crit_edge, label %if.then28

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call26, %if.then28 ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_trig_deactivate(ptr nocapture noundef readonly %led_cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger_data.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 26
  %0 = ptrtoint ptr %trigger_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger_data.i, align 4
  %notifier = getelementptr inbounds %struct.led_netdev_data, ptr %1, i32 0, i32 2
  %call1 = tail call i32 @unregister_netdevice_notifier(ptr noundef %notifier) #9
  %work = getelementptr inbounds %struct.led_netdev_data, ptr %1, i32 0, i32 1
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #9
  %net_dev = getelementptr inbounds %struct.led_netdev_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body1.i:                                       ; preds = %entry
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !59
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 118
  %5 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcpu_refcnt.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, %7
  %14 = inttoptr i32 %add.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add13.i = add i32 %16, -1
  store i32 %add13.i, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !60
  %and.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !61

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #9, !srcloc !62
  br label %if.end

if.end:                                           ; preds = %dev_put.exit, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_trig_notify(ptr noundef %nb, i32 noundef %evt, ptr nocapture noundef readonly %dv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dv, align 4
  %add.ptr = getelementptr i8, ptr %nb, i32 -144
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %evt, label %entry.cleanup_crit_edge [
    i32 1, label %entry.if.end_crit_edge
    i32 2, label %entry.if.end_crit_edge98
    i32 4, label %entry.if.end_crit_edge99
    i32 5, label %entry.if.end_crit_edge100
    i32 6, label %entry.if.end_crit_edge101
    i32 11, label %entry.if.end_crit_edge102
  ]

entry.if.end_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge98, %entry.if.end_crit_edge99, %entry.if.end_crit_edge100, %entry.if.end_crit_edge101, %entry.if.end_crit_edge102
  %net_dev = getelementptr i8, ptr %nb, i32 16
  %3 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net_dev, align 4
  %cmp10 = icmp eq ptr %1, %4
  br i1 %cmp10, label %if.end25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %evt, label %lor.lhs.false.cleanup_crit_edge [
    i32 11, label %land.lhs.true12
    i32 5, label %land.lhs.true17
  ]

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true12:                                  ; preds = %lor.lhs.false
  %device_name = getelementptr i8, ptr %nb, i32 20
  %call14 = tail call i32 @strcmp(ptr noundef %1, ptr noundef %device_name) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %land.lhs.true12.if.end25.thread_crit_edge, label %land.lhs.true12.cleanup_crit_edge

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true12.if.end25.thread_crit_edge:        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.thread

land.lhs.true17:                                  ; preds = %lor.lhs.false
  %device_name20 = getelementptr i8, ptr %nb, i32 20
  %call22 = tail call i32 @strcmp(ptr noundef %1, ptr noundef %device_name20) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true17.if.end25.thread_crit_edge, label %land.lhs.true17.cleanup_crit_edge

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true17.if.end25.thread_crit_edge:        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.thread

if.end25.thread:                                  ; preds = %land.lhs.true17.if.end25.thread_crit_edge, %land.lhs.true12.if.end25.thread_crit_edge
  %work95 = getelementptr i8, ptr %nb, i32 -100
  %call2696 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work95) #9
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr) #9
  %mode97 = getelementptr i8, ptr %nb, i32 44
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %mode97) #9
  br label %sw.bb

if.end25:                                         ; preds = %if.end
  %work = getelementptr i8, ptr %nb, i32 -100
  %call26 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #9
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr) #9
  %mode = getelementptr i8, ptr %nb, i32 44
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %mode) #9
  %6 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %evt, label %if.end25.sw.epilog_crit_edge [
    i32 11, label %if.end25.sw.bb_crit_edge
    i32 5, label %if.end25.sw.bb_crit_edge103
    i32 6, label %sw.bb33
    i32 1, label %if.end25.sw.bb36_crit_edge
    i32 4, label %if.end25.sw.bb36_crit_edge104
  ]

if.end25.sw.bb36_crit_edge104:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36

if.end25.sw.bb36_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36

if.end25.sw.bb_crit_edge103:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end25.sw.bb_crit_edge:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end25.sw.epilog_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end25.sw.bb_crit_edge, %if.end25.sw.bb_crit_edge103, %if.end25.thread
  %7 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net_dev, align 4
  %tobool28.not = icmp eq ptr %8, null
  br i1 %tobool28.not, label %sw.bb.if.end31_crit_edge, label %do.body1.i

sw.bb.if.end31_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

do.body1.i:                                       ; preds = %sw.bb
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !59
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 118
  %10 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcpu_refcnt.i, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %18, %12
  %19 = inttoptr i32 %add.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add13.i = add i32 %21, -1
  store i32 %add13.i, ptr %19, align 4
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !60
  %and.i.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !61

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #9, !srcloc !62
  br label %if.end31

if.end31:                                         ; preds = %dev_put.exit, %sw.bb.if.end31_crit_edge
  %tobool.not.i69 = icmp eq ptr %1, null
  br i1 %tobool.not.i69, label %if.end31.dev_hold.exit_crit_edge, label %do.body1.i78

if.end31.dev_hold.exit_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_hold.exit

do.body1.i78:                                     ; preds = %if.end31
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !59
  %pcpu_refcnt.i70 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %24 = ptrtoint ptr %pcpu_refcnt.i70 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcpu_refcnt.i70, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i71 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i71 to ptr
  %cpu.i72 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu.i72 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu.i72, align 4
  %arrayidx.i73 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i73, align 4
  %add.i74 = add i32 %32, %26
  %33 = inttoptr i32 %add.i74 to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %add13.i75 = add i32 %35, 1
  store i32 %add13.i75, ptr %33, align 4
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !60
  %and.i.i.i76 = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i76)
  %tobool24.not.i77 = icmp eq i32 %and.i.i.i76, 0
  br i1 %tobool24.not.i77, label %if.then28.i79, label %do.body1.i78.do.end30.i80_crit_edge, !prof !61

do.body1.i78.do.end30.i80_crit_edge:              ; preds = %do.body1.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i80

if.then28.i79:                                    ; preds = %do.body1.i78
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end30.i80

do.end30.i80:                                     ; preds = %if.then28.i79, %do.body1.i78.do.end30.i80_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %23) #9, !srcloc !62
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i80, %if.end31.dev_hold.exit_crit_edge
  %37 = ptrtoint ptr %net_dev to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %1, ptr %net_dev, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end25
  %38 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net_dev, align 4
  %tobool.not.i81 = icmp eq ptr %39, null
  br i1 %tobool.not.i81, label %sw.bb33.dev_put.exit93_crit_edge, label %do.body1.i90

sw.bb33.dev_put.exit93_crit_edge:                 ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put.exit93

do.body1.i90:                                     ; preds = %sw.bb33
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !59
  %pcpu_refcnt.i82 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 118
  %41 = ptrtoint ptr %pcpu_refcnt.i82 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pcpu_refcnt.i82, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i83 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i83 to ptr
  %cpu.i84 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu.i84 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i84, align 4
  %arrayidx.i85 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i85, align 4
  %add.i86 = add i32 %49, %43
  %50 = inttoptr i32 %add.i86 to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add13.i87 = add i32 %52, -1
  store i32 %add13.i87, ptr %50, align 4
  %53 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !60
  %and.i.i.i88 = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i88)
  %tobool24.not.i89 = icmp eq i32 %and.i.i.i88, 0
  br i1 %tobool24.not.i89, label %if.then28.i91, label %do.body1.i90.do.end30.i92_crit_edge, !prof !61

do.body1.i90.do.end30.i92_crit_edge:              ; preds = %do.body1.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i92

if.then28.i91:                                    ; preds = %do.body1.i90
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end30.i92

do.end30.i92:                                     ; preds = %if.then28.i91, %do.body1.i90.do.end30.i92_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %40) #9, !srcloc !62
  br label %dev_put.exit93

dev_put.exit93:                                   ; preds = %do.end30.i92, %sw.bb33.dev_put.exit93_crit_edge
  %54 = ptrtoint ptr %net_dev to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %net_dev, align 4
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end25.sw.bb36_crit_edge, %if.end25.sw.bb36_crit_edge104
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %55 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %state.i, align 4
  %57 = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i94 = icmp eq i32 %57, 0
  br i1 %tobool.not.i94, label %if.then38, label %sw.bb36.sw.epilog_crit_edge

sw.bb36.sw.epilog_crit_edge:                      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then38:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 3, ptr noundef %mode) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then38, %sw.bb36.sw.epilog_crit_edge, %dev_put.exit93, %dev_hold.exit, %if.end25.sw.epilog_crit_edge
  tail call fastcc void @set_baseline_state(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %land.lhs.true17.cleanup_crit_edge, %land.lhs.true12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_trig_work(ptr noundef %work) #2 align 64 {
entry:
  %temp = alloca %struct.rtnl_link_stats64, align 8
  %interval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp) #9
  %0 = call ptr @memset(ptr %temp, i32 255, i32 192)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %interval) #9
  %1 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %interval, align 4, !annotation !63
  %net_dev = getelementptr i8, ptr %work, i32 116
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %led_cdev = getelementptr i8, ptr %work, i32 112
  %4 = ptrtoint ptr %led_cdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %led_cdev, align 4
  tail call void @led_set_brightness(ptr noundef %5, i32 noundef 0) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr i8, ptr %work, i32 144
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %mode, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not = icmp eq i32 %8, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %mode, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %call8 = call ptr @dev_get_stats(ptr noundef nonnull %3, ptr noundef nonnull %temp) #9
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %mode, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11.not = icmp eq i32 %14, 0
  br i1 %tobool11.not, label %if.end6.cond.end_crit_edge, label %cond.true

if.end6.cond.end_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call8, i32 0, i32 1
  %15 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tx_packets, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end6.cond.end_crit_edge
  %cond = phi i64 [ %16, %cond.true ], [ 0, %if.end6.cond.end_crit_edge ]
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %mode, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool14.not = icmp eq i32 %19, 0
  br i1 %tobool14.not, label %cond.end.cond.end17_crit_edge, label %cond.true15

cond.end.cond.end17_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end17

cond.true15:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %call8 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %call8, align 8
  br label %cond.end17

cond.end17:                                       ; preds = %cond.true15, %cond.end.cond.end17_crit_edge
  %cond18 = phi i64 [ %21, %cond.true15 ], [ 0, %cond.end.cond.end17_crit_edge ]
  %add = add i64 %cond18, %cond
  %conv = trunc i64 %add to i32
  %last_activity = getelementptr i8, ptr %work, i32 140
  %22 = ptrtoint ptr %last_activity to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %last_activity, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv)
  %cmp.not = icmp eq i32 %23, %conv
  br i1 %cmp.not, label %cond.end17.if.end29_crit_edge, label %if.then20

cond.end17.if.end29_crit_edge:                    ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then20:                                        ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #11
  %led_cdev21 = getelementptr i8, ptr %work, i32 112
  %24 = ptrtoint ptr %led_cdev21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %led_cdev21, align 4
  call void @led_stop_software_blink(ptr noundef %25) #9
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %mode, align 4
  %and1.i61 = and i32 %27, 1
  %interval24 = getelementptr i8, ptr %work, i32 136
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %interval24, i32 noundef 4) #9
  %28 = ptrtoint ptr %interval24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %interval24, align 4
  %call26 = call i32 @jiffies_to_msecs(i32 noundef %29) #9
  %30 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call26, ptr %interval, align 4
  %31 = ptrtoint ptr %led_cdev21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %led_cdev21, align 4
  call void @led_blink_set_oneshot(ptr noundef %32, ptr noundef nonnull %interval, ptr noundef nonnull %interval, i32 noundef %and1.i61) #9
  %33 = ptrtoint ptr %last_activity to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv, ptr %last_activity, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then20, %cond.end17.if.end29_crit_edge
  %interval31 = getelementptr i8, ptr %work, i32 136
  %call.i.i62 = call zeroext i1 @__kasan_check_read(ptr noundef %interval31, i32 noundef 4) #9
  %34 = ptrtoint ptr %interval31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %interval31, align 4
  %mul = shl i32 %35, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %36 = load ptr, ptr @system_wq, align 4
  %call.i.i63 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %work, i32 noundef %mul) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %land.lhs.true.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %interval) #9
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_baseline_state(ptr noundef %trigger_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %led_cdev1 = getelementptr inbounds %struct.led_netdev_data, ptr %trigger_data, i32 0, i32 3
  %0 = ptrtoint ptr %led_cdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %led_cdev1, align 4
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %blink_brightness = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %blink_brightness to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %blink_brightness, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %blink_brightness2 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %blink_brightness2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %blink_brightness2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_brightness, align 4
  %9 = ptrtoint ptr %blink_brightness2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %blink_brightness2, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %mode = getelementptr inbounds %struct.led_netdev_data, ptr %trigger_data, i32 0, i32 8
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %mode, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not = icmp eq i32 %12, 0
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @led_set_brightness(ptr noundef %1, i32 noundef 0) #9
  br label %if.end25

if.else:                                          ; preds = %if.end6
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %mode, align 4
  %and1.i40 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i40)
  %tobool11.not = icmp eq i32 %and1.i40, 0
  br i1 %tobool11.not, label %if.else.if.end15_crit_edge, label %if.then12

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %blink_brightness2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %blink_brightness2, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.else.if.end15_crit_edge
  %.sink = phi i32 [ %16, %if.then12 ], [ 0, %if.else.if.end15_crit_edge ]
  tail call void @led_set_brightness(ptr noundef %1, i32 noundef %.sink) #9
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %mode, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool18.not = icmp eq i32 %19, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %if.end15.if.then22_crit_edge

if.end15.if.then22_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

lor.lhs.false:                                    ; preds = %if.end15
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %mode, align 4
  %22 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool21.not = icmp eq i32 %22, 0
  br i1 %tobool21.not, label %lor.lhs.false.if.end25_crit_edge, label %lor.lhs.false.if.then22_crit_edge

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %if.end15.if.then22_crit_edge
  %work = getelementptr inbounds %struct.led_netdev_data, ptr %trigger_data, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %23 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %work, i32 noundef 0) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %lor.lhs.false.if.end25_crit_edge, %if.then8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_set_brightness(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_stop_software_blink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_blink_set_oneshot(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %trigger_data.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trigger_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger_data.i, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #9
  %device_name = getelementptr inbounds %struct.led_netdev_data, ptr %3, i32 0, i32 5
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.7, ptr noundef %device_name)
  tail call void @_raw_spin_unlock_bh(ptr noundef %3) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_name_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %trigger_data.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trigger_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %size)
  %cmp = icmp ugt i32 %size, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %work = getelementptr inbounds %struct.led_netdev_data, ptr %3, i32 0, i32 1
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #9
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #9
  %net_dev = getelementptr inbounds %struct.led_netdev_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %do.body1.i

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

do.body1.i:                                       ; preds = %if.end
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !59
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 118
  %7 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcpu_refcnt.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add13.i = add i32 %18, -1
  store i32 %add13.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !60
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !61

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #9, !srcloc !62
  %20 = ptrtoint ptr %net_dev to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %net_dev, align 4
  br label %if.end6

if.end6:                                          ; preds = %dev_put.exit, %if.end.if.end6_crit_edge
  %device_name = getelementptr inbounds %struct.led_netdev_data, ptr %3, i32 0, i32 5
  %21 = call ptr @memcpy(ptr %device_name, ptr %buf, i32 %size)
  %arrayidx = getelementptr %struct.led_netdev_data, ptr %3, i32 0, i32 5, i32 %size
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp8.not = icmp eq i32 %size, 0
  br i1 %cmp8.not, label %if.end6.if.end17_crit_edge, label %land.lhs.true

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end6
  %sub = add nsw i32 %size, -1
  %arrayidx10 = getelementptr %struct.led_netdev_data, ptr %3, i32 0, i32 5, i32 %sub
  %23 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %24)
  %cmp11 = icmp eq i8 %24, 10
  br i1 %cmp11, label %if.then13, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx10, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %land.lhs.true.if.end17_crit_edge, %if.end6.if.end17_crit_edge
  %26 = ptrtoint ptr %device_name to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %device_name, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp21.not = icmp eq i8 %27, 0
  br i1 %cmp21.not, label %if.end17.if.end28_crit_edge, label %if.then23

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call ptr @dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef %device_name) #9
  %28 = ptrtoint ptr %net_dev to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call26, ptr %net_dev, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end17.if.end28_crit_edge
  %mode = getelementptr inbounds %struct.led_netdev_data, ptr %3, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %mode) #9
  %29 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net_dev, align 4
  %cmp30.not = icmp eq ptr %30, null
  br i1 %cmp30.not, label %if.end28.if.end38_crit_edge, label %if.then32

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then32:                                        ; preds = %if.end28
  %state.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %state.i, align 4
  %33 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i65 = icmp eq i32 %33, 0
  br i1 %tobool.not.i65, label %if.then35, label %if.then32.if.end38_crit_edge

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then35:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 3, ptr noundef %mode) #9
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.then32.if.end38_crit_edge, %if.end28.if.end38_crit_edge
  %last_activity = getelementptr inbounds %struct.led_netdev_data, ptr %3, i32 0, i32 7
  %34 = ptrtoint ptr %last_activity to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %last_activity, align 4
  tail call fastcc void @set_baseline_state(ptr noundef %3)
  tail call void @_raw_spin_unlock_bh(ptr noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end38 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @link_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %trigger_data.i.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trigger_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger_data.i.i, align 4
  %mode.i = getelementptr inbounds %struct.led_netdev_data, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %mode.i, align 4
  %and1.i.i = and i32 %5, 1
  %call5.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %and1.i.i) #9
  ret i32 %call5.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @link_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %state.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %trigger_data.i.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trigger_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state.i) #9
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %state.i, align 4, !annotation !63
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.netdev_led_attr_store.exit_crit_edge

entry.netdev_led_attr_store.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %netdev_led_attr_store.exit

if.end.i:                                         ; preds = %entry
  %work.i = getelementptr inbounds %struct.led_netdev_data, ptr %3, i32 0, i32 1
  %call5.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work.i) #9
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not.i = icmp eq i32 %6, 0
  %mode8.i = getelementptr inbounds %struct.led_netdev_data, ptr %3, i32 0, i32 8
  br i1 %tobool6.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 0, ptr noundef %mode8.i) #9
  br label %if.end9.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 0, ptr noundef %mode8.i) #9
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i, %if.then7.i
  call fastcc void @set_baseline_state(ptr noundef %3) #9
  br label %netdev_led_attr_store.exit

netdev_led_attr_store.exit:                       ; preds = %if.end9.i, %entry.netdev_led_attr_store.exit_crit_edge
  %retval.0.i = phi i32 [ %size, %if.end9.i ], [ %call.i.i, %entry.netdev_led_attr_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %trigger_data.i.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trigger_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger_data.i.i, align 4
  %mode.i = getelementptr inbounds %struct.led_netdev_data, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %mode.i, align 4
  %shr.i.i = lshr i32 %5, 2
  %and1.i.i = and i32 %shr.i.i, 1
  %call5.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %and1.i.i) #9
  ret i32 %call5.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %state.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %trigger_data.i.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trigger_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state.i) #9
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %state.i, align 4, !annotation !63
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.netdev_led_attr_store.exit_crit_edge

entry.netdev_led_attr_store.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %netdev_led_attr_store.exit

if.end.i:                                         ; preds = %entry
  %work.i = getelementptr inbounds %struct.led_netdev_data, ptr %3, i32 0, i32 1
  %call5.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work.i) #9
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not.i = icmp eq i32 %6, 0
  %mode8.i = getelementptr inbounds %struct.led_netdev_data, ptr %3, i32 0, i32 8
  br i1 %tobool6.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 2, ptr noundef %mode8.i) #9
  br label %if.end9.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 2, ptr noundef %mode8.i) #9
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i, %if.then7.i
  call fastcc void @set_baseline_state(ptr noundef %3) #9
  br label %netdev_led_attr_store.exit

netdev_led_attr_store.exit:                       ; preds = %if.end9.i, %entry.netdev_led_attr_store.exit_crit_edge
  %retval.0.i = phi i32 [ %size, %if.end9.i ], [ %call.i.i, %entry.netdev_led_attr_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %trigger_data.i.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trigger_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger_data.i.i, align 4
  %mode.i = getelementptr inbounds %struct.led_netdev_data, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %mode.i, align 4
  %shr.i.i = lshr i32 %5, 1
  %and1.i.i = and i32 %shr.i.i, 1
  %call5.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %and1.i.i) #9
  ret i32 %call5.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %state.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %trigger_data.i.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trigger_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state.i) #9
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %state.i, align 4, !annotation !63
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.netdev_led_attr_store.exit_crit_edge

entry.netdev_led_attr_store.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %netdev_led_attr_store.exit

if.end.i:                                         ; preds = %entry
  %work.i = getelementptr inbounds %struct.led_netdev_data, ptr %3, i32 0, i32 1
  %call5.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work.i) #9
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not.i = icmp eq i32 %6, 0
  %mode8.i = getelementptr inbounds %struct.led_netdev_data, ptr %3, i32 0, i32 8
  br i1 %tobool6.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 1, ptr noundef %mode8.i) #9
  br label %if.end9.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 1, ptr noundef %mode8.i) #9
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i, %if.then7.i
  call fastcc void @set_baseline_state(ptr noundef %3) #9
  br label %netdev_led_attr_store.exit

netdev_led_attr_store.exit:                       ; preds = %if.end9.i, %entry.netdev_led_attr_store.exit_crit_edge
  %retval.0.i = phi i32 [ %size, %if.end9.i ], [ %call.i.i, %entry.netdev_led_attr_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interval_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %trigger_data.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trigger_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger_data.i, align 4
  %interval = getelementptr inbounds %struct.led_netdev_data, ptr %3, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %interval, i32 noundef 4) #9
  %4 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %interval, align 4
  %call3 = tail call i32 @jiffies_to_msecs(i32 noundef %5) #9
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %call3)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interval_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %trigger_data.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trigger_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %value, align 4, !annotation !63
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  %7 = add i32 %6, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 9996, i32 %7)
  %8 = icmp ult i32 %7, 9996
  br i1 %8, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %work = getelementptr inbounds %struct.led_netdev_data, ptr %3, i32 0, i32 1
  %call5 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #9
  %interval = getelementptr inbounds %struct.led_netdev_data, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %10) #9
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %interval, i32 noundef 4) #9
  %11 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %call2.i, ptr %interval, align 4
  call fastcc void @set_baseline_state(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %size, %if.then4 ], [ %size, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_trigger_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !22, !23, !24, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !43, !45, !46, !48}
!llvm.named.register.sp = !{!49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_ledtrig_netdev__337_456_netdev_trig_init6, !1, !"__initcall__kmod_ledtrig_netdev__337_456_netdev_trig_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/trigger/ledtrig-netdev.c", i32 456, i32 1}
!2 = !{ptr @__exitcall_netdev_trig_exit, !3, !"__exitcall_netdev_trig_exit", i1 false, i1 false}
!3 = !{!"../drivers/leds/trigger/ledtrig-netdev.c", i32 457, i32 1}
!4 = !{ptr @__UNIQUE_ID_author338, !5, !"__UNIQUE_ID_author338", i1 false, i1 false}
!5 = !{!"../drivers/leds/trigger/ledtrig-netdev.c", i32 459, i32 1}
!6 = !{ptr @__UNIQUE_ID_author339, !7, !"__UNIQUE_ID_author339", i1 false, i1 false}
!7 = !{!"../drivers/leds/trigger/ledtrig-netdev.c", i32 460, i32 1}
!8 = !{ptr @__UNIQUE_ID_description340, !9, !"__UNIQUE_ID_description340", i1 false, i1 false}
!9 = !{!"../drivers/leds/trigger/ledtrig-netdev.c", i32 461, i32 1}
!10 = !{ptr @__UNIQUE_ID_file341, !11, !"__UNIQUE_ID_file341", i1 false, i1 false}
!11 = !{!"../drivers/leds/trigger/ledtrig-netdev.c", i32 462, i32 1}
!12 = !{ptr @__UNIQUE_ID_license342, !11, !"__UNIQUE_ID_license342", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/leds/trigger/ledtrig-netdev.c", i32 440, i32 10}
!15 = !{ptr @netdev_led_trigger, !16, !"netdev_led_trigger", i1 false, i1 false}
!16 = !{!"../drivers/leds/trigger/ledtrig-netdev.c", i32 439, i32 27}
!17 = !{ptr @netdev_trig_activate.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/leds/trigger/ledtrig-netdev.c", i32 401, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @netdev_trig_activate.__key.2, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/leds/trigger/ledtrig-netdev.c", i32 406, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @netdev_trig_activate.__key.4, !21, !"__key", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @netdev_trig_groups, !26, !"netdev_trig_groups", i1 false, i1 false}
!26 = !{!"../drivers/leds/trigger/ledtrig-netdev.c", i32 294, i32 1}
!27 = !{ptr @netdev_trig_group, !26, !"netdev_trig_group", i1 false, i1 false}
!28 = !{ptr @netdev_trig_attrs, !29, !"netdev_trig_attrs", i1 false, i1 false}
!29 = !{!"../drivers/leds/trigger/ledtrig-netdev.c", i32 286, i32 26}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/leds/trigger/ledtrig-netdev.c", i32 147, i32 8}
!32 = !{ptr @dev_attr_device_name, !31, !"dev_attr_device_name", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/leds/trigger/ledtrig-netdev.c", i32 101, i32 21}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/leds/trigger/ledtrig-netdev.c", i32 222, i32 8}
!37 = !{ptr @dev_attr_link, !36, !"dev_attr_link", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/leds/trigger/ledtrig-netdev.c", i32 169, i32 22}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/leds/trigger/ledtrig-netdev.c", i32 250, i32 8}
!42 = !{ptr @dev_attr_rx, !41, !"dev_attr_rx", i1 false, i1 false}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/leds/trigger/ledtrig-netdev.c", i32 236, i32 8}
!45 = !{ptr @dev_attr_tx, !44, !"dev_attr_tx", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/leds/trigger/ledtrig-netdev.c", i32 284, i32 8}
!48 = !{ptr @dev_attr_interval, !47, !"dev_attr_interval", i1 false, i1 false}
!49 = !{!"sp"}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 581459, i64 581520}
!60 = !{i64 584191}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{i64 584476}
!63 = !{!"auto-init"}
