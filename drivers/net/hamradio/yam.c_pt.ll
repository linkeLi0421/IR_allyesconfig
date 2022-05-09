; ModuleID = '/llk/IR_all_yes/drivers/net/hamradio/yam.c_pt.bc'
source_filename = "../drivers/net/hamradio/yam.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.14 }
%union.anon.14 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.53, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.53 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ax25_address = type { [7 x i8] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.yam_mcs = type { [5302 x i8], i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sk_buff = type { %union.anon.0, %union.anon.3, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.yamdrv_ioctl_cfg = type { i32, %struct.yamcfg }
%struct.yamcfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.yamdrv_ioctl_mcs = type { i32, i32, [5302 x i8] }
%struct.yam_port = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, %struct.sk_buff_head, i32, [1024 x i8], i32, i32, i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.firmware = type { i32, ptr, ptr }

@yam_timer = internal global { %struct.timer_list, [48 x i8] } { %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr null, i32 0, %struct.lockdep_map { ptr @.str.1, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [48 x i8] zeroinitializer }, align 32
@yam_devs = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@yam_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yam\00", [28 x i8] zeroinitializer }, align 32
@init_net = external dso_local local_unnamed_addr global %struct.net, align 128
@__UNIQUE_ID_author459 = internal constant [49 x i8] c"yam.author=Frederic Rible F1OAT frible@teaser.fr\00", section ".modinfo", align 1
@__UNIQUE_ID_description460 = internal constant [47 x i8] c"yam.description=Yam amateur radio modem driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file461 = internal constant [34 x i8] c"yam.file=drivers/net/hamradio/yam\00", section ".modinfo", align 1
@__UNIQUE_ID_license462 = internal constant [16 x i8] c"yam.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware463 = internal constant [26 x i8] c"yam.firmware=yam/1200.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware464 = internal constant [26 x i8] c"yam.firmware=yam/9600.bin\00", section ".modinfo", align 1
@__initcall__kmod_yam__465_1187_yam_init_driver6 = internal global ptr @yam_init_driver, section ".initcall6.init", align 4
@__exitcall_yam_cleanup_driver = internal global ptr @yam_cleanup_driver, section ".exitcall.exit", align 4
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/hamradio/yam.c:145\00", [33 x i8] zeroinitializer }, align 32
@yam_init_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.2, ptr @.str.3, i32 1117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"yam_init_driver\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/net/hamradio/yam.c\00", [37 x i8] zeroinitializer }, align 32
@yam_init_driver._entry_ptr = internal global ptr @yam_init_driver._entry, section ".printk_index", align 4
@yam_drvinfo = internal constant [41 x i8] c"\016YAM driver version 0.8 by F1OAT/F6FBB\0A\00", section ".init.rodata", align 1
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"yam%d\00", [26 x i8] zeroinitializer }, align 32
@yam_init_driver._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 1125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013yam: cannot allocate net device\0A\00", [61 x i8] zeroinitializer }, align 32
@yam_init_driver._entry_ptr.7 = internal global ptr @yam_init_driver._entry.5, section ".printk_index", align 4
@yam_init_driver._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014yam: cannot register net device %s\0A\00", [58 x i8] zeroinitializer }, align 32
@yam_init_driver._entry_ptr.10 = internal global ptr @yam_init_driver._entry.8, section ".printk_index", align 4
@yam_init_driver.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&yam_timer)\00", [19 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@yam_seqops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @yam_seq_start, ptr @yam_seq_stop, ptr @yam_seq_next, ptr @yam_seq_show }, [16 x i8] zeroinitializer }, align 32
@yam_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @yam_open, ptr @yam_close, ptr @yam_send_packet, ptr null, ptr null, ptr null, ptr null, ptr @yam_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @yam_siocdevprivate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ax25_header_ops = external dso_local constant %struct.header_ops, align 4
@ax25_bcast = external dso_local local_unnamed_addr constant %struct.ax25_address, align 1
@ax25_defaddr = external dso_local constant %struct.ax25_address, align 1
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@yam_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016Trying %s at iobase 0x%lx irq %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"yam_open\00", [23 x i8] zeroinitializer }, align 32
@yam_open._entry_ptr = internal global ptr @yam_open._entry, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@yam_open._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: cannot 0x%lx busy\0A\00", [39 x i8] zeroinitializer }, align 32
@yam_open._entry_ptr.17 = internal global ptr @yam_open._entry.15, section ".printk_index", align 4
@yam_open._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.3, i32 855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: cannot find uart type\0A\00", [35 x i8] zeroinitializer }, align 32
@yam_open._entry_ptr.20 = internal global ptr @yam_open._entry.18, section ".printk_index", align 4
@yam_open._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.3, i32 860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: cannot init FPGA\0A\00", [40 x i8] zeroinitializer }, align 32
@yam_open._entry_ptr.23 = internal global ptr @yam_open._entry.21, section ".printk_index", align 4
@yam_open._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.3, i32 866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013%s: irq %d busy\0A\00", [45 x i8] zeroinitializer }, align 32
@yam_open._entry_ptr.26 = internal global ptr @yam_open._entry.24, section ".printk_index", align 4
@yam_open._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.14, ptr @.str.3, i32 886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s at iobase 0x%lx irq %u uart %s\0A\00", [59 x i8] zeroinitializer }, align 32
@yam_open._entry_ptr.29 = internal global ptr @yam_open._entry.27, section ".printk_index", align 4
@uart_str = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], [44 x i8] zeroinitializer }, align 32
@__const.yam_check_uart.uart_tab = private unnamed_addr constant [4 x i32] [i32 2, i32 0, i32 3, i32 4], align 4
@fpga_download._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013yam: error in write cycle\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fpga_download\00", [18 x i8] zeroinitializer }, align 32
@fpga_download._entry_ptr = internal global ptr @fpga_download._entry, section ".printk_index", align 4
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"yam/9600.bin\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"yam/1200.bin\00", [19 x i8] zeroinitializer }, align 32
@__const.add_mcs.fw_name = private unnamed_addr constant [2 x ptr] [ptr @.str.32, ptr @.str.33], align 4
@add_mcs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013yam: Failed to register firmware\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"add_mcs\00", [24 x i8] zeroinitializer }, align 32
@add_mcs._entry_ptr = internal global ptr @add_mcs._entry, section ".printk_index", align 4
@add_mcs._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Failed to load firmware \22%s\22\0A\00", [32 x i8] zeroinitializer }, align 32
@add_mcs._entry_ptr.38 = internal global ptr @add_mcs._entry.36, section ".printk_index", align 4
@add_mcs._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.3, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Bogus length %zu in firmware \22%s\22\0A\00", [59 x i8] zeroinitializer }, align 32
@add_mcs._entry_ptr.41 = internal global ptr @add_mcs._entry.39, section ".printk_index", align 4
@add_mcs._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.3, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013yam: Invalid predef number %u\0A\00", [63 x i8] zeroinitializer }, align 32
@add_mcs._entry_ptr.44 = internal global ptr @add_mcs._entry.42, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@yam_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: too many irq iir=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"yam_interrupt\00", [18 x i8] zeroinitializer }, align 32
@yam_interrupt._entry_ptr = internal global ptr @yam_interrupt._entry, section ".printk_index", align 4
@chktabl = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\89\12\9B$\AD6\BFH\C1Z\D3l\E5~\F7\81\08\93\1A\A5,\B7>\C9@\DBR\EDd\FFv\02\8B\10\99&\AF4\BDJ\C3X\D1n\E7|\F5\83\0A\91\18\A7.\B5<\CBB\D9P\EFf\FDt\04\8D\16\9F \A92\BBL\C5^\D7h\E1z\F3\85\0C\97\1E\A1(\B3:\CDD\DFV\E9`\FBr\06\8F\14\9D\22\AB0\B9N\C7\\\D5j\E3x\F1\87\0E\95\1C\A3*\B18\CFF\DDT\EBb\F9p\08\81\1A\93,\A5>\B7@\C9R\DBd\EDv\FF\89\00\9B\12\AD$\BF6\C1H\D3Z\E5l\F7~\0A\83\18\91.\A7<\B5B\CBP\D9f\EFt\FD\8B\02\99\10\AF&\BD4\C3J\D1X\E7n\F5|\0C\85\1E\97(\A1:\B3D\CDV\DF`\E9r\FB\8D\04\9F\16\A9 \BB2\C5L\D7^\E1h\F3z\0E\87\1C\95*\A38\B1F\CFT\DDb\EBp\F9\8F\06\9D\14\AB\22\B90\C7N\D5\\\E3j\F1x", [64 x i8] zeroinitializer }, align 32
@chktabh = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\11#2FWet\8C\9D\AF\BE\CA\DB\E9\F8\10\013\22VGud\9C\8D\BF\AE\DA\CB\F9\E8!0\02\13gvDU\AD\BC\8E\9F\EB\FA\C8\D91 \12\03wfTE\BD\AC\9E\8F\FB\EA\D8\C9BSap\04\15'6\CE\DF\ED\FC\88\99\AB\BARCq`\14\057&\DE\CF\FD\EC\98\89\BB\AAcr@Q%4\06\17\EF\FE\CC\DD\A9\B8\8A\9BsbPA5$\16\07\FF\EE\DC\CD\B9\A8\9A\8B\84\95\A7\B6\C2\D3\E1\F0\08\19+:N_m|\94\85\B7\A6\D2\C3\F1\E0\18\09;*^O}l\A5\B4\86\97\E3\F2\C0\D1)8\0A\1Bo~L]\B5\A4\96\87\F3\E2\D0\C19(\1A\0B\7Fn\\M\C6\D7\E5\F4\80\91\A3\B2J[ix\0C\1D/>\D6\C7\F5\E4\90\81\B3\A2ZKyh\1C\0D?.\E7\F6\C4\D5\A1\B0\82\93kzHY-<\0E\1F\F7\E6\D4\C5\B1\A0\92\83{jXI=,\1E\0F", [64 x i8] zeroinitializer }, align 32
@yam_rx_flag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: memory squeeze, dropping packet\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"yam_rx_flag\00", [20 x i8] zeroinitializer }, align 32
@yam_rx_flag._entry_ptr = internal global ptr @yam_rx_flag._entry, section ".printk_index", align 4
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"8250\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"16450\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"16550\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"16550A\00", [25 x i8] zeroinitializer }, align 32
@yam_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: close yam at iobase 0x%lx irq %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"yam_close\00", [22 x i8] zeroinitializer }, align 32
@yam_close._entry_ptr = internal global ptr @yam_close._entry, section ".printk_index", align 4
@yam_drvname = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yam\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Device %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  Up       %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  Speed    %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  IoBase   0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  BaudRate %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  IRQ      %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  TxState  %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  Duplex   %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  HoldDly  %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  TxDelay  %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  TxTail   %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  SlotTime %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  Persist  %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  TxFrames %lu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  RxFrames %lu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  TxInt    %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  RxInt    %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  RxOver   %lu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.78 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.80 = private unnamed_addr constant [10 x i8] c"yam_timer\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [9 x i8] c"yam_devs\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 141, i32 27 }
@___asan_gen_.86 = private unnamed_addr constant [9 x i8] c"yam_data\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 143, i32 24 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1176, i32 20 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 145, i32 8 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1117, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1120, i32 17 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1125, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1132, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1140, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [11 x i8] c"yam_seqops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 823, i32 36 }
@___asan_gen_.128 = private unnamed_addr constant [15 x i8] c"yam_netdev_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1070, i32 36 }
@___asan_gen_.131 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1984, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 841, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 851, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 855, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 860, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 866, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 885, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [9 x i8] c"uart_str\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 491, i32 20 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 441, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 340, i32 28 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 340, i32 43 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 355, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 361, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 366, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 374, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 757, i32 5 }
@___asan_gen_.230 = private unnamed_addr constant [8 x i8] c"chktabl\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 237, i32 28 }
@___asan_gen_.233 = private unnamed_addr constant [8 x i8] c"chktabh\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 256, i32 28 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 538, i32 5 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 492, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 492, i32 13 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 492, i32 21 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 492, i32 30 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 492, i32 39 }
@___asan_gen_.260 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 916, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant [12 x i8] c"yam_drvname\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 63, i32 19 }
@___asan_gen_.273 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 156, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 801, i32 18 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 802, i32 18 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 803, i32 18 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 804, i32 18 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 805, i32 18 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 806, i32 18 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 807, i32 18 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 808, i32 18 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 809, i32 18 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 810, i32 18 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 811, i32 18 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 812, i32 18 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 813, i32 18 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 814, i32 18 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 815, i32 18 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 816, i32 18 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 817, i32 18 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 818, i32 18 }
@___asan_gen_.329 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.330 = private constant [30 x i8] c"../drivers/net/hamradio/yam.c\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 819, i32 18 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @__UNIQUE_ID_author459, ptr @__UNIQUE_ID_description460, ptr @__UNIQUE_ID_file461, ptr @__UNIQUE_ID_firmware463, ptr @__UNIQUE_ID_firmware464, ptr @__UNIQUE_ID_license462, ptr @__exitcall_yam_cleanup_driver, ptr @__initcall__kmod_yam__465_1187_yam_init_driver6, ptr @add_mcs._entry, ptr @add_mcs._entry.36, ptr @add_mcs._entry.39, ptr @add_mcs._entry.42, ptr @add_mcs._entry_ptr, ptr @add_mcs._entry_ptr.38, ptr @add_mcs._entry_ptr.41, ptr @add_mcs._entry_ptr.44, ptr @fpga_download._entry, ptr @fpga_download._entry_ptr, ptr @yam_cleanup_driver, ptr @yam_close._entry, ptr @yam_close._entry_ptr, ptr @yam_init_driver._entry, ptr @yam_init_driver._entry.5, ptr @yam_init_driver._entry.8, ptr @yam_init_driver._entry_ptr, ptr @yam_init_driver._entry_ptr.10, ptr @yam_init_driver._entry_ptr.7, ptr @yam_interrupt._entry, ptr @yam_interrupt._entry_ptr, ptr @yam_open._entry, ptr @yam_open._entry.15, ptr @yam_open._entry.18, ptr @yam_open._entry.21, ptr @yam_open._entry.24, ptr @yam_open._entry.27, ptr @yam_open._entry_ptr, ptr @yam_open._entry_ptr.17, ptr @yam_open._entry_ptr.20, ptr @yam_open._entry_ptr.23, ptr @yam_open._entry_ptr.26, ptr @yam_open._entry_ptr.29, ptr @yam_rx_flag._entry, ptr @yam_rx_flag._entry_ptr, ptr @yam_timer, ptr @yam_devs, ptr @yam_data, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @yam_init_driver.__key, ptr @.str.11, ptr @yam_seqops, ptr @yam_netdev_ops, ptr @skb_queue_head_init.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @uart_str, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @chktabl, ptr @chktabh, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @yam_drvname, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yam_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yam_devs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yam_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yam_init_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yam_init_driver._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yam_init_driver._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yam_init_driver.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yam_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yam_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yam_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yam_open._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yam_open._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yam_open._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yam_open._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yam_open._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_download._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_mcs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_mcs._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_mcs._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_mcs._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yam_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chktabl to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chktabh to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yam_rx_flag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yam_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yam_drvname to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @yam_cleanup_driver() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @del_timer_sync(ptr noundef nonnull @yam_timer) #11
  br label %for.body

while.cond.preheader:                             ; preds = %if.end
  %0 = load ptr, ptr @yam_data, align 4
  %tobool1.not8 = icmp eq ptr %0, null
  br i1 %tobool1.not8, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr @yam_devs, i32 0, i32 %i.07
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unregister_netdev(ptr noundef nonnull %2) #11
  tail call void @free_netdev(ptr noundef nonnull %2) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %while.cond.preheader, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %3 = phi ptr [ %6, %while.body.while.body_crit_edge ], [ %0, %while.cond.preheader.while.body_crit_edge ]
  %next = getelementptr inbounds %struct.yam_mcs, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next, align 4
  store ptr %5, ptr @yam_data, align 4
  tail call void @kfree(ptr noundef nonnull %3) #11
  %6 = load ptr, ptr @yam_data, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %7) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @yam_init_driver() #0 section ".init.text" align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #11
  %0 = call ptr @memset(ptr %name, i32 255, i32 16)
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @yam_drvinfo) #14
  br label %for.body

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %entry
  %i.047 = phi i32 [ 0, %entry ], [ %inc, %if.end21.for.body_crit_edge ]
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.4, i32 noundef %i.047)
  %call3 = call ptr @alloc_netdev_mqs(i32 noundef 2200, ptr noundef nonnull %name, i8 noundef zeroext 0, ptr noundef nonnull @yam_setup, i32 noundef 1, i32 noundef 1) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #14
  br label %error

if.end10:                                         ; preds = %for.body
  %call11 = call i32 @register_netdev(ptr noundef nonnull %call3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end21, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %call3) #14
  call void @free_netdev(ptr noundef nonnull %call3) #11
  br label %error

if.end21:                                         ; preds = %if.end10
  %arrayidx = getelementptr [4 x ptr], ptr @yam_devs, i32 0, i32 %i.047
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %do.body22, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body22:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  call void @init_timer_key(ptr noundef nonnull @yam_timer, ptr noundef nonnull @yam_dotimer, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @yam_init_driver.__key) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 1
  store i32 %add, ptr getelementptr inbounds (%struct.timer_list, ptr @yam_timer, i32 0, i32 1), align 4
  call void @add_timer(ptr noundef nonnull @yam_timer) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call25 = call ptr @proc_create_seq_private(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @yam_seqops, i32 noundef 0, ptr noundef null) #11
  br label %cleanup

error:                                            ; preds = %do.end16, %do.end7
  %err.0 = phi i32 [ %call11, %do.end16 ], [ -12, %do.end7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.047)
  %cmp2649.not = icmp eq i32 %i.047, 0
  br i1 %cmp2649.not, label %error.cleanup_crit_edge, label %error.while.body_crit_edge

error.while.body_crit_edge:                       ; preds = %error
  br label %while.body

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %error.while.body_crit_edge
  %dec50.in = phi i32 [ %dec50, %while.body.while.body_crit_edge ], [ %i.047, %error.while.body_crit_edge ]
  %dec50 = add nsw i32 %dec50.in, -1
  %arrayidx27 = getelementptr [4 x ptr], ptr @yam_devs, i32 0, i32 %dec50
  %4 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx27, align 4
  call void @unregister_netdev(ptr noundef %5) #11
  %6 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx27, align 4
  call void @free_netdev(ptr noundef %7) #11
  %cmp26 = icmp sgt i32 %dec50.in, 1
  br i1 %cmp26, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %error.cleanup_crit_edge, %do.body22
  %retval.0 = phi i32 [ 0, %do.body22 ], [ %err.0, %error.cleanup_crit_edge ], [ %err.0, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @yam_setup(ptr noundef %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -250972588, ptr %add.ptr.i, align 4
  %bitrate = getelementptr i8, ptr %dev, i32 2308
  %1 = ptrtoint ptr %bitrate to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 9600, ptr %bitrate, align 4
  %baudrate = getelementptr i8, ptr %dev, i32 2312
  %2 = ptrtoint ptr %baudrate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 19200, ptr %baudrate, align 4
  %iobase = getelementptr i8, ptr %dev, i32 2316
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %iobase, align 4
  %irq = getelementptr i8, ptr %dev, i32 2320
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %irq, align 4
  %dupmode = getelementptr i8, ptr %dev, i32 2324
  %5 = ptrtoint ptr %dupmode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %dupmode, align 4
  %holdd = getelementptr i8, ptr %dev, i32 2344
  %6 = ptrtoint ptr %holdd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 10, ptr %holdd, align 4
  %txd = getelementptr i8, ptr %dev, i32 2340
  %7 = ptrtoint ptr %txd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 300, ptr %txd, align 4
  %txtail = getelementptr i8, ptr %dev, i32 2348
  %8 = ptrtoint ptr %txtail to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10, ptr %txtail, align 4
  %slot = getelementptr i8, ptr %dev, i32 2352
  %9 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 100, ptr %slot, align 4
  %pers = getelementptr i8, ptr %dev, i32 2356
  %10 = ptrtoint ptr %pers to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 64, ptr %pers, align 4
  %dev1 = getelementptr i8, ptr %dev, i32 2328
  %11 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %dev1, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %12 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %base_addr, align 32
  %irq4 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %13 = ptrtoint ptr %irq4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %irq4, align 4
  %send_queue = getelementptr i8, ptr %dev, i32 3408
  %lock.i = getelementptr i8, ptr %dev, i32 3420
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %14 = ptrtoint ptr %send_queue to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %send_queue, ptr %send_queue, align 4
  %prev.i.i = getelementptr i8, ptr %dev, i32 3412
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %send_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr i8, ptr %dev, i32 3416
  %16 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %qlen.i.i, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %17 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @yam_netdev_ops, ptr %netdev_ops, align 8
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %18 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ax25_header_ops, ptr %header_ops, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %19 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 3, ptr %type, align 16
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %20 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 73, ptr %hard_header_len, align 2
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %21 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 256, ptr %mtu, align 4
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %22 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 7, ptr %addr_len, align 1
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %23 = call ptr @memcpy(ptr %broadcast, ptr @ax25_bcast, i32 7)
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @ax25_defaddr, i32 noundef 7) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @yam_dotimer(ptr nocapture noundef readnone %unused) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr @yam_devs, i32 0, i32 %i.09
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -250972588, i32 %5)
  %cmp.not.i = icmp eq i32 %5, -250972588
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.then
  %tx_state.i = getelementptr i8, ptr %1, i32 2360
  %6 = ptrtoint ptr %tx_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.not.i = icmp eq i32 %7, 0
  br i1 %cmp1.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %send_queue.i = getelementptr i8, ptr %1, i32 3408
  %8 = ptrtoint ptr %send_queue.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %send_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %9, %send_queue.i
  br i1 %cmp.i.not.i, label %lor.lhs.false2.i.if.end_crit_edge, label %if.end.i

lor.lhs.false2.i.if.end_crit_edge:                ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false2.i
  %dupmode.i = getelementptr i8, ptr %1, i32 2324
  %10 = ptrtoint ptr %dupmode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dupmode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not.i = icmp eq i32 %11, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %txd.i.i = getelementptr i8, ptr %1, i32 2340
  %12 = ptrtoint ptr %txd.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %txd.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1.i.i = icmp eq i32 %13, 0
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.yam_start_tx.exit.i_crit_edge, label %if.else.i.i

lor.lhs.false.i.i.yam_start_tx.exit.i_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %yam_start_tx.exit.i

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %bitrate.i.i = getelementptr i8, ptr %1, i32 2308
  %14 = ptrtoint ptr %bitrate.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bitrate.i.i, align 4
  %mul.i.i = mul i32 %15, %13
  %div.i.i = sdiv i32 %mul.i.i, 8000
  br label %yam_start_tx.exit.i

yam_start_tx.exit.i:                              ; preds = %if.else.i.i, %lor.lhs.false.i.i.yam_start_tx.exit.i_crit_edge
  %div.sink.i.i = phi i32 [ %div.i.i, %if.else.i.i ], [ 1, %lor.lhs.false.i.i.yam_start_tx.exit.i_crit_edge ]
  %tx_count3.i.i = getelementptr i8, ptr %1, i32 2364
  %16 = ptrtoint ptr %tx_count3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div.sink.i.i, ptr %tx_count3.i.i, align 4
  %17 = ptrtoint ptr %tx_state.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %tx_state.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %base_addr.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base_addr.i.i.i, align 32
  %add.i.i.i = add i32 %19, 4
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %20 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 10) #11, !srcloc !191
  br label %if.end

if.end6.i:                                        ; preds = %if.end.i
  %dcd.i = getelementptr i8, ptr %1, i32 3464
  %21 = ptrtoint ptr %dcd.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dcd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool7.not.i = icmp eq i32 %22, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %slot.i = getelementptr i8, ptr %1, i32 2352
  %23 = ptrtoint ptr %slot.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %slot.i, align 4
  %div.i = sdiv i32 %24, 10
  %slotcnt.i = getelementptr i8, ptr %1, i32 2368
  %25 = ptrtoint ptr %slotcnt.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div.i, ptr %slotcnt.i, align 4
  br label %if.end

if.end9.i:                                        ; preds = %if.end6.i
  %slotcnt10.i = getelementptr i8, ptr %1, i32 2368
  %26 = ptrtoint ptr %slotcnt10.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %slotcnt10.i, align 4
  %dec.i = add i32 %27, -1
  store i32 %dec.i, ptr %slotcnt10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp11.i = icmp sgt i32 %dec.i, 0
  br i1 %cmp11.i, label %if.end9.i.if.end_crit_edge, label %if.end13.i

if.end9.i.if.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end13.i:                                       ; preds = %if.end9.i
  %slot14.i = getelementptr i8, ptr %1, i32 2352
  %28 = ptrtoint ptr %slot14.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %slot14.i, align 4
  %div15.i = sdiv i32 %29, 10
  %30 = ptrtoint ptr %slotcnt10.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div15.i, ptr %slotcnt10.i, align 4
  %call17.i = tail call i32 @prandom_u32() #11
  %rem.i = and i32 %call17.i, 255
  %pers.i = getelementptr i8, ptr %1, i32 2356
  %31 = ptrtoint ptr %pers.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pers.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %32)
  %cmp18.i = icmp ugt i32 %rem.i, %32
  br i1 %cmp18.i, label %if.end13.i.if.end_crit_edge, label %if.end20.i

if.end13.i.if.end_crit_edge:                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end20.i:                                       ; preds = %if.end13.i
  %33 = ptrtoint ptr %tx_state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %34)
  %cmp.i = icmp eq i32 %34, 5
  br i1 %cmp.i, label %if.end20.i.yam_start_tx.exit_crit_edge, label %lor.lhs.false.i6

if.end20.i.yam_start_tx.exit_crit_edge:           ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %yam_start_tx.exit

lor.lhs.false.i6:                                 ; preds = %if.end20.i
  %txd.i = getelementptr i8, ptr %1, i32 2340
  %35 = ptrtoint ptr %txd.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %txd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp1.i = icmp eq i32 %36, 0
  br i1 %cmp1.i, label %lor.lhs.false.i6.yam_start_tx.exit_crit_edge, label %if.else.i

lor.lhs.false.i6.yam_start_tx.exit_crit_edge:     ; preds = %lor.lhs.false.i6
  call void @__sanitizer_cov_trace_pc() #13
  br label %yam_start_tx.exit

if.else.i:                                        ; preds = %lor.lhs.false.i6
  call void @__sanitizer_cov_trace_pc() #13
  %bitrate.i = getelementptr i8, ptr %1, i32 2308
  %37 = ptrtoint ptr %bitrate.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bitrate.i, align 4
  %mul.i = mul i32 %38, %36
  %div.i7 = sdiv i32 %mul.i, 8000
  br label %yam_start_tx.exit

yam_start_tx.exit:                                ; preds = %if.else.i, %lor.lhs.false.i6.yam_start_tx.exit_crit_edge, %if.end20.i.yam_start_tx.exit_crit_edge
  %div.sink.i = phi i32 [ %div.i7, %if.else.i ], [ 1, %lor.lhs.false.i6.yam_start_tx.exit_crit_edge ], [ 1, %if.end20.i.yam_start_tx.exit_crit_edge ]
  %tx_count3.i = getelementptr i8, ptr %1, i32 2364
  %39 = ptrtoint ptr %tx_count3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div.sink.i, ptr %tx_count3.i, align 4
  %40 = ptrtoint ptr %tx_state.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %tx_state.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %base_addr.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %41 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %base_addr.i.i, align 32
  %add.i.i = add i32 %42, 4
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %43 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 10) #11, !srcloc !191
  br label %if.end

if.end:                                           ; preds = %yam_start_tx.exit, %if.end13.i.if.end_crit_edge, %if.end9.i.if.end_crit_edge, %if.then8.i, %yam_start_tx.exit.i, %lor.lhs.false2.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %44, 1
  store i32 %add, ptr getelementptr inbounds (%struct.timer_list, ptr @yam_timer, i32 0, i32 1), align 4
  tail call void @add_timer(ptr noundef nonnull @yam_timer) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yam_open(ptr noundef %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, i32 noundef %1, i32 noundef %3) #14
  %bitrate = getelementptr i8, ptr %dev, i32 2308
  %4 = ptrtoint ptr %bitrate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bitrate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base_addr, align 32
  %8 = add i32 %7, -4089
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4088, i32 %8)
  %9 = icmp ult i32 %8, -4088
  br i1 %9, label %if.end.cleanup_crit_edge, label %lor.lhs.false5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false5:                                   ; preds = %if.end
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %12 = add i32 %11, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %12)
  %13 = icmp ult i32 %12, -14
  br i1 %13, label %lor.lhs.false5.cleanup_crit_edge, label %if.end12

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false5
  %call16 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %7, i32 noundef 8, ptr noundef %dev, i32 noundef 0) #11
  %tobool17.not = icmp eq ptr %call16, null
  %14 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base_addr, align 32
  br i1 %tobool17.not, label %do.end21, label %if.end27

do.end21:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %dev, i32 noundef %15) #14
  br label %cleanup

if.end27:                                         ; preds = %if.end12
  %call29 = tail call fastcc i32 @yam_check_uart(i32 noundef %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %do.end34, label %if.end39

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %dev) #14
  br label %out_release_base

if.end39:                                         ; preds = %if.end27
  %16 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base_addr, align 32
  %18 = ptrtoint ptr %bitrate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bitrate, align 4
  %call42 = tail call fastcc i32 @fpga_download(i32 noundef %17, i32 noundef %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.body53, label %do.end47

do.end47:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %dev) #14
  br label %out_release_base

do.body53:                                        ; preds = %if.end39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !192
  tail call void @arm_heavy_mb() #11
  %20 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base_addr, align 32
  %add = add i32 %21, 1
  %and = and i32 %add, 1048575
  %add57 = or i32 %and, -18874368
  %22 = inttoptr i32 %add57 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 0) #11, !srcloc !191
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %24, ptr noundef nonnull @yam_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool63.not = icmp eq i32 %call.i, 0
  br i1 %tobool63.not, label %if.end73, label %do.end67

do.end67:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 4
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %dev, i32 noundef %26) #14
  br label %out_release_base

if.end73:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @yam_set_uart(ptr noundef %dev)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %27 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %28, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %slot = getelementptr i8, ptr %dev, i32 2352
  %29 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %slot, align 4
  %div = sdiv i32 %30, 10
  %slotcnt = getelementptr i8, ptr %dev, i32 2368
  %31 = ptrtoint ptr %slotcnt to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div, ptr %slotcnt, align 4
  %32 = load ptr, ptr @yam_devs, align 4
  %base_addr75 = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %base_addr75 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %base_addr75, align 32
  %add76 = add i32 %34, 5
  %and77 = and i32 %add76, 1048575
  %add78 = or i32 %and77, -18874368
  %35 = inttoptr i32 %add78 to ptr
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %35) #11, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !194
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 36, i32 14
  %37 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %rx_fifo_errors, align 8
  %38 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @yam_devs, i32 0, i32 1), align 4
  %base_addr75.1 = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %base_addr75.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %base_addr75.1, align 32
  %add76.1 = add i32 %40, 5
  %and77.1 = and i32 %add76.1, 1048575
  %add78.1 = or i32 %and77.1, -18874368
  %41 = inttoptr i32 %add78.1 to ptr
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #11, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !194
  %rx_fifo_errors.1 = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 36, i32 14
  %43 = ptrtoint ptr %rx_fifo_errors.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %rx_fifo_errors.1, align 8
  %44 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @yam_devs, i32 0, i32 2), align 4
  %base_addr75.2 = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %base_addr75.2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %base_addr75.2, align 32
  %add76.2 = add i32 %46, 5
  %and77.2 = and i32 %add76.2, 1048575
  %add78.2 = or i32 %and77.2, -18874368
  %47 = inttoptr i32 %add78.2 to ptr
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %47) #11, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !194
  %rx_fifo_errors.2 = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 36, i32 14
  %49 = ptrtoint ptr %rx_fifo_errors.2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %rx_fifo_errors.2, align 8
  %50 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @yam_devs, i32 0, i32 3), align 4
  %base_addr75.3 = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %base_addr75.3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %base_addr75.3, align 32
  %add76.3 = add i32 %52, 5
  %and77.3 = and i32 %add76.3, 1048575
  %add78.3 = or i32 %and77.3, -18874368
  %53 = inttoptr i32 %add78.3 to ptr
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %53) #11, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !194
  %rx_fifo_errors.3 = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 36, i32 14
  %55 = ptrtoint ptr %rx_fifo_errors.3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %rx_fifo_errors.3, align 8
  %56 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %base_addr, align 32
  %58 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq, align 4
  %arrayidx90 = getelementptr [5 x ptr], ptr @uart_str, i32 0, i32 %call29
  %60 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx90, align 4
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %dev, i32 noundef %57, i32 noundef %59, ptr noundef %61) #14
  br label %cleanup

out_release_base:                                 ; preds = %do.end67, %do.end47, %do.end34
  %ret.0 = phi i32 [ -5, %do.end34 ], [ -5, %do.end47 ], [ -16, %do.end67 ]
  %62 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %base_addr, align 32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %63, i32 noundef 8) #11
  br label %cleanup

cleanup:                                          ; preds = %out_release_base, %if.end73, %do.end21, %lor.lhs.false5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_release_base ], [ 0, %if.end73 ], [ -13, %do.end21 ], [ -6, %entry.cleanup_crit_edge ], [ -6, %lor.lhs.false5.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yam_close(ptr noundef %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !195
  tail call void @arm_heavy_mb() #11
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add = add i32 %1, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #11, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !196
  tail call void @arm_heavy_mb() #11
  %3 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base_addr, align 32
  %add7 = add i32 %4, 4
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %5 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 1) #11, !srcloc !191
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call11 = tail call ptr @free_irq(i32 noundef %7, ptr noundef nonnull %dev) #11
  %8 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_addr, align 32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %9, i32 noundef 8) #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %send_queue = getelementptr i8, ptr %dev, i32 3408
  %call1331 = tail call ptr @skb_dequeue(ptr noundef %send_queue) #11
  %tobool14.not32 = icmp eq ptr %call1331, null
  br i1 %tobool14.not32, label %do.body.do.end17_crit_edge, label %do.body.while.body_crit_edge

do.body.while.body_crit_edge:                     ; preds = %do.body
  br label %while.body

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end17

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.body.while.body_crit_edge
  %call1333 = phi ptr [ %call13, %while.body.while.body_crit_edge ], [ %call1331, %do.body.while.body_crit_edge ]
  tail call void @consume_skb(ptr noundef nonnull %call1333) #11
  %call13 = tail call ptr @skb_dequeue(ptr noundef %send_queue) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %while.body.do.end17_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.do.end17_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end17

do.end17:                                         ; preds = %while.body.do.end17_crit_edge, %do.body.do.end17_crit_edge
  %12 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base_addr, align 32
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @yam_drvname, i32 noundef %13, i32 noundef %15) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end17 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yam_send_packet(ptr noundef %skb, ptr noundef %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %1)
  %cmp = icmp eq i16 %1, 2048
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @ax25_ip_xmit(ptr noundef %skb) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %send_queue = getelementptr i8, ptr %dev, i32 3408
  tail call void @skb_queue_tail(ptr noundef %send_queue, ptr noundef %skb) #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp.not.i.i = icmp eq i32 %6, %4
  br i1 %cmp.not.i.i, label %if.end.cleanup_crit_edge, label %do.body5.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body5.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %4, ptr %trans_start.i.i, align 16
  br label %cleanup

cleanup:                                          ; preds = %do.body5.i.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %do.body5.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yam_set_mac_address(ptr noundef %dev, ptr noundef %addr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %0 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %1 to i32
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef %conv.i) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yam_siocdevprivate(ptr noundef %dev, ptr nocapture noundef readnone %ifr, ptr noundef %data, i32 noundef %cmd) #5 align 64 {
entry:
  %yi = alloca %struct.yamdrv_ioctl_cfg, align 4
  %ioctl_cmd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %yi) #11
  %0 = call ptr @memset(ptr %yi, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ioctl_cmd) #11
  %1 = ptrtoint ptr %ioctl_cmd to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ioctl_cmd, align 4, !annotation !197
  tail call void @__might_fault(ptr noundef nonnull @.str.58, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 4, i32 -1226833920) #15, !srcloc !198
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !199

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ioctl_cmd, i32 noundef 4) #11
  %3 = call i32 @llvm.read_register.i32(metadata !180) #11
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !200
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !201
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !202
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ioctl_cmd, ptr noundef %data, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #11, !srcloc !201
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !202
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !199

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i324 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %entry.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i324
  %add.ptr.i.i = getelementptr i8, ptr %ioctl_cmd, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i324)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -250972588, i32 %8)
  %cmp.not = icmp eq i32 %8, -250972588
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call4, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 35312, i32 %cmd)
  %cmp7.not = icmp eq i32 %cmd, 35312
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %9 = ptrtoint ptr %ioctl_cmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ioctl_cmd, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end9.cleanup_crit_edge [
    i32 2, label %sw.bb193
    i32 3, label %sw.bb10
    i32 1, label %sw.bb26
  ]

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb10:                                          ; preds = %if.end9
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end13, label %sw.bb10.cleanup_crit_edge

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %sw.bb10
  %call14 = call ptr @memdup_user(ptr noundef %data, i32 noundef 5312) #11
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %15 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp20.not = icmp eq i32 %16, 3
  br i1 %cmp20.not, label %lor.lhs.false, label %if.end18.if.then22_crit_edge

if.end18.if.then22_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22

lor.lhs.false:                                    ; preds = %if.end18
  %bitrate = getelementptr inbounds %struct.yamdrv_ioctl_mcs, ptr %call14, i32 0, i32 1
  %17 = ptrtoint ptr %bitrate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bitrate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57600, i32 %18)
  %cmp21 = icmp ugt i32 %18, 57600
  br i1 %cmp21, label %lor.lhs.false.if.then22_crit_edge, label %if.end23

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %if.end18.if.then22_crit_edge
  call void @kfree(ptr noundef %call14) #11
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %bits = getelementptr inbounds %struct.yamdrv_ioctl_mcs, ptr %call14, i32 0, i32 2
  %call25 = call fastcc ptr @add_mcs(ptr noundef %bits, i32 noundef %18, i32 noundef 0)
  call void @kfree(ptr noundef %call14) #11
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end9
  %call27 = call zeroext i1 @capable(i32 noundef 17) #11
  br i1 %call27, label %if.end59.i.i284, label %sw.bb26.cleanup_crit_edge

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end59.i.i284:                                  ; preds = %sw.bb26
  call void @__might_fault(ptr noundef nonnull @.str.58, i32 noundef 156) #11
  %call.i.i285 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i285, label %if.end59.i.i284.if.then11.i.i301_crit_edge, label %land.lhs.true.i.i288

if.end59.i.i284.if.then11.i.i301_crit_edge:       ; preds = %if.end59.i.i284
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i301

land.lhs.true.i.i288:                             ; preds = %if.end59.i.i284
  %19 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 48, i32 -1226833920) #15, !srcloc !198
  %asmresult.i.i286 = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i286)
  %cmp.i6.i287 = icmp eq i32 %asmresult.i.i286, 0
  br i1 %cmp.i6.i287, label %if.end.i.i298, label %land.lhs.true.i.i288.if.then11.i.i301_crit_edge, !prof !199

land.lhs.true.i.i288.if.then11.i.i301_crit_edge:  ; preds = %land.lhs.true.i.i288
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i301

if.end.i.i298:                                    ; preds = %land.lhs.true.i.i288
  %call.i.i.i289 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %yi, i32 noundef 48) #11
  %20 = call i32 @llvm.read_register.i32(metadata !180) #11
  %and.i.i.i.i.i.i290 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i.i290 to ptr
  %cpu_domain.i.i.i.i.i291 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i291) #7, !srcloc !200
  %and.i.i.i.i292 = and i32 %22, -13
  %or.i.i.i.i293 = or i32 %and.i.i.i.i292, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i293) #11, !srcloc !201
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !202
  %call1.i.i.i294 = call i32 @arm_copy_from_user(ptr noundef nonnull %yi, ptr noundef %data, i32 noundef 48) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #11, !srcloc !201
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !202
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i294)
  %tobool4.not.i.i297 = icmp eq i32 %call1.i.i.i294, 0
  br i1 %tobool4.not.i.i297, label %if.end33, label %if.end.i.i298.if.then11.i.i301_crit_edge, !prof !199

if.end.i.i298.if.then11.i.i301_crit_edge:         ; preds = %if.end.i.i298
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i301

if.then11.i.i301:                                 ; preds = %if.end.i.i298.if.then11.i.i301_crit_edge, %land.lhs.true.i.i288.if.then11.i.i301_crit_edge, %if.end59.i.i284.if.then11.i.i301_crit_edge
  %res.0.i.i296329 = phi i32 [ %call1.i.i.i294, %if.end.i.i298.if.then11.i.i301_crit_edge ], [ 48, %if.end59.i.i284.if.then11.i.i301_crit_edge ], [ 48, %land.lhs.true.i.i288.if.then11.i.i301_crit_edge ]
  %sub.i.i299 = sub i32 48, %res.0.i.i296329
  %add.ptr.i.i300 = getelementptr i8, ptr %yi, i32 %sub.i.i299
  %23 = call ptr @memset(ptr %add.ptr.i.i300, i32 0, i32 %res.0.i.i296329)
  br label %cleanup

if.end33:                                         ; preds = %if.end.i.i298
  %24 = ptrtoint ptr %yi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %yi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp35.not = icmp eq i32 %25, 1
  br i1 %cmp35.not, label %if.end37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %cfg = getelementptr inbounds %struct.yamdrv_ioctl_cfg, ptr %yi, i32 0, i32 1
  %26 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cfg, align 4
  %and = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %if.end37.if.end41_crit_edge, label %land.lhs.true

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end37
  %state.i310 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %28 = ptrtoint ptr %state.i310 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i310, align 4
  %and1.i.i311 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i311)
  %tobool.i312.not = icmp eq i32 %and1.i.i311, 0
  br i1 %tobool.i312.not, label %land.lhs.true.if.end41_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.end41:                                         ; preds = %land.lhs.true.if.end41_crit_edge, %if.end37.if.end41_crit_edge
  %and44 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end41.if.end49_crit_edge, label %land.lhs.true46

if.end41.if.end49_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

land.lhs.true46:                                  ; preds = %if.end41
  %state.i313 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %30 = ptrtoint ptr %state.i313 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %state.i313, align 4
  %and1.i.i314 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i314)
  %tobool.i315.not = icmp eq i32 %and1.i.i314, 0
  br i1 %tobool.i315.not, label %land.lhs.true46.if.end49_crit_edge, label %land.lhs.true46.cleanup_crit_edge

land.lhs.true46.cleanup_crit_edge:                ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true46.if.end49_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.end49:                                         ; preds = %land.lhs.true46.if.end49_crit_edge, %if.end41.if.end49_crit_edge
  %and52 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end49.if.end57_crit_edge, label %land.lhs.true54

if.end49.if.end57_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

land.lhs.true54:                                  ; preds = %if.end49
  %state.i316 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %32 = ptrtoint ptr %state.i316 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %state.i316, align 4
  %and1.i.i317 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i317)
  %tobool.i318.not = icmp eq i32 %and1.i.i317, 0
  br i1 %tobool.i318.not, label %land.lhs.true54.if.end57_crit_edge, label %land.lhs.true54.cleanup_crit_edge

land.lhs.true54.cleanup_crit_edge:                ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true54.if.end57_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.end57:                                         ; preds = %land.lhs.true54.if.end57_crit_edge, %if.end49.if.end57_crit_edge
  %and60 = and i32 %27, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end57.if.end65_crit_edge, label %land.lhs.true62

if.end57.if.end65_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

land.lhs.true62:                                  ; preds = %if.end57
  %state.i319 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %34 = ptrtoint ptr %state.i319 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %state.i319, align 4
  %and1.i.i320 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i320)
  %tobool.i321.not = icmp eq i32 %and1.i.i320, 0
  br i1 %tobool.i321.not, label %land.lhs.true62.if.end65_crit_edge, label %land.lhs.true62.cleanup_crit_edge

land.lhs.true62.cleanup_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true62.if.end65_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

if.end65:                                         ; preds = %land.lhs.true62.if.end65_crit_edge, %if.end57.if.end65_crit_edge
  br i1 %tobool38.not, label %if.end65.if.end75_crit_edge, label %if.then70

if.end65.if.end75_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  %iobase = getelementptr inbounds %struct.yamdrv_ioctl_cfg, ptr %yi, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iobase, align 4
  %iobase72 = getelementptr i8, ptr %dev, i32 2316
  %38 = ptrtoint ptr %iobase72 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %iobase72, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %39 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %37, ptr %base_addr, align 32
  br label %if.end75

if.end75:                                         ; preds = %if.then70, %if.end65.if.end75_crit_edge
  br i1 %tobool45.not, label %if.end75.if.end91_crit_edge, label %if.then80

if.end75.if.end91_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then80:                                        ; preds = %if.end75
  %irq = getelementptr inbounds %struct.yamdrv_ioctl_cfg, ptr %yi, i32 0, i32 1, i32 2
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %41)
  %cmp82 = icmp ugt i32 %41, 15
  br i1 %cmp82, label %if.then80.cleanup_crit_edge, label %if.end84

if.then80.cleanup_crit_edge:                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end84:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  %irq87 = getelementptr i8, ptr %dev, i32 2320
  %42 = ptrtoint ptr %irq87 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %irq87, align 4
  %irq90 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %43 = ptrtoint ptr %irq90 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %41, ptr %irq90, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.end84, %if.end75.if.end91_crit_edge
  br i1 %tobool53.not, label %if.end91.if.end105_crit_edge, label %if.then96

if.end91.if.end105_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

if.then96:                                        ; preds = %if.end91
  %bitrate98 = getelementptr inbounds %struct.yamdrv_ioctl_cfg, ptr %yi, i32 0, i32 1, i32 3
  %44 = ptrtoint ptr %bitrate98 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bitrate98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57600, i32 %45)
  %cmp99 = icmp ugt i32 %45, 57600
  br i1 %cmp99, label %if.then96.cleanup_crit_edge, label %if.end101

if.then96.cleanup_crit_edge:                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end101:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  %bitrate104 = getelementptr i8, ptr %dev, i32 2308
  %46 = ptrtoint ptr %bitrate104 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %bitrate104, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.end101, %if.end91.if.end105_crit_edge
  br i1 %tobool61.not, label %if.end105.if.end118_crit_edge, label %if.then110

if.end105.if.end118_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end118

if.then110:                                       ; preds = %if.end105
  %baudrate = getelementptr inbounds %struct.yamdrv_ioctl_cfg, ptr %yi, i32 0, i32 1, i32 4
  %47 = ptrtoint ptr %baudrate to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %baudrate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 115200, i32 %48)
  %cmp112 = icmp ugt i32 %48, 115200
  br i1 %cmp112, label %if.then110.cleanup_crit_edge, label %if.end114

if.then110.cleanup_crit_edge:                     ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end114:                                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #13
  %baudrate117 = getelementptr i8, ptr %dev, i32 2312
  %49 = ptrtoint ptr %baudrate117 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %baudrate117, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.end114, %if.end105.if.end118_crit_edge
  %and121 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end118.if.end130_crit_edge, label %if.then123

if.end118.if.end130_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

if.then123:                                       ; preds = %if.end118
  %mode = getelementptr inbounds %struct.yamdrv_ioctl_cfg, ptr %yi, i32 0, i32 1, i32 9
  %50 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %51)
  %cmp125 = icmp ugt i32 %51, 2
  br i1 %cmp125, label %if.then123.cleanup_crit_edge, label %if.end127

if.then123.cleanup_crit_edge:                     ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end127:                                        ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #13
  %dupmode = getelementptr i8, ptr %dev, i32 2324
  %52 = ptrtoint ptr %dupmode to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %dupmode, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.end127, %if.end118.if.end130_crit_edge
  %and133 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %if.end130.if.end142_crit_edge, label %if.then135

if.end130.if.end142_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end142

if.then135:                                       ; preds = %if.end130
  %holddly = getelementptr inbounds %struct.yamdrv_ioctl_cfg, ptr %yi, i32 0, i32 1, i32 10
  %53 = ptrtoint ptr %holddly to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %holddly, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %54)
  %cmp137 = icmp ugt i32 %54, 99
  br i1 %cmp137, label %if.then135.cleanup_crit_edge, label %if.end139

if.then135.cleanup_crit_edge:                     ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end139:                                        ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #13
  %holdd = getelementptr i8, ptr %dev, i32 2344
  %55 = ptrtoint ptr %holdd to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %holdd, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.end139, %if.end130.if.end142_crit_edge
  %and145 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %if.end142.if.end154_crit_edge, label %if.then147

if.end142.if.end154_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end154

if.then147:                                       ; preds = %if.end142
  %txdelay = getelementptr inbounds %struct.yamdrv_ioctl_cfg, ptr %yi, i32 0, i32 1, i32 5
  %56 = ptrtoint ptr %txdelay to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %txdelay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %57)
  %cmp149 = icmp ugt i32 %57, 999
  br i1 %cmp149, label %if.then147.cleanup_crit_edge, label %if.end151

if.then147.cleanup_crit_edge:                     ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end151:                                        ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #13
  %txd = getelementptr i8, ptr %dev, i32 2340
  %58 = ptrtoint ptr %txd to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %txd, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.end151, %if.end142.if.end154_crit_edge
  %and157 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %if.end154.if.end167_crit_edge, label %if.then159

if.end154.if.end167_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end167

if.then159:                                       ; preds = %if.end154
  %txtail = getelementptr inbounds %struct.yamdrv_ioctl_cfg, ptr %yi, i32 0, i32 1, i32 6
  %59 = ptrtoint ptr %txtail to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %txtail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %60)
  %cmp161 = icmp ugt i32 %60, 999
  br i1 %cmp161, label %if.then159.cleanup_crit_edge, label %if.end163

if.then159.cleanup_crit_edge:                     ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end163:                                        ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #13
  %txtail166 = getelementptr i8, ptr %dev, i32 2348
  %61 = ptrtoint ptr %txtail166 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %txtail166, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.end163, %if.end154.if.end167_crit_edge
  %and170 = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %if.end167.if.end179_crit_edge, label %if.then172

if.end167.if.end179_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end179

if.then172:                                       ; preds = %if.end167
  %persist = getelementptr inbounds %struct.yamdrv_ioctl_cfg, ptr %yi, i32 0, i32 1, i32 7
  %62 = ptrtoint ptr %persist to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %persist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %63)
  %cmp174 = icmp ugt i32 %63, 255
  br i1 %cmp174, label %if.then172.cleanup_crit_edge, label %if.end176

if.then172.cleanup_crit_edge:                     ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end176:                                        ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #13
  %pers = getelementptr i8, ptr %dev, i32 2356
  %64 = ptrtoint ptr %pers to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %pers, align 4
  br label %if.end179

if.end179:                                        ; preds = %if.end176, %if.end167.if.end179_crit_edge
  %and182 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %if.end179.sw.epilog_crit_edge, label %if.then184

if.end179.sw.epilog_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then184:                                       ; preds = %if.end179
  %slottime = getelementptr inbounds %struct.yamdrv_ioctl_cfg, ptr %yi, i32 0, i32 1, i32 8
  %65 = ptrtoint ptr %slottime to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %slottime, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %66)
  %cmp186 = icmp ugt i32 %66, 999
  br i1 %cmp186, label %if.then184.cleanup_crit_edge, label %if.end188

if.then184.cleanup_crit_edge:                     ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end188:                                        ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #13
  %slot = getelementptr i8, ptr %dev, i32 2352
  %67 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %slot, align 4
  %div334.lhs.trunc = trunc i32 %66 to i16
  %div334335 = udiv i16 %div334.lhs.trunc, 10
  %div334.zext = zext i16 %div334335 to i32
  %slotcnt = getelementptr i8, ptr %dev, i32 2368
  %68 = ptrtoint ptr %slotcnt to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %div334.zext, ptr %slotcnt, align 4
  br label %sw.epilog

sw.bb193:                                         ; preds = %if.end9
  %69 = ptrtoint ptr %yi to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %yi, align 4
  %cfg194 = getelementptr inbounds %struct.yamdrv_ioctl_cfg, ptr %yi, i32 0, i32 1
  %70 = ptrtoint ptr %cfg194 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %cfg194, align 4
  %iobase196 = getelementptr i8, ptr %dev, i32 2316
  %71 = ptrtoint ptr %iobase196 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %iobase196, align 4
  %iobase198 = getelementptr inbounds %struct.yamdrv_ioctl_cfg, ptr %yi, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %iobase198 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %iobase198, align 4
  %irq199 = getelementptr i8, ptr %dev, i32 2320
  %74 = ptrtoint ptr %irq199 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %irq199, align 4
  %irq201 = getelementptr inbounds %struct.yamdrv_ioctl_cfg, ptr %yi, i32 0, i32 1, i32 2
  %76 = ptrtoint ptr %irq201 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %irq201, align 4
  %bitrate202 = getelementptr i8, ptr %dev, i32 2308
  %77 = ptrtoint ptr %bitrate202 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bitrate202, align 4
  %bitrate204 = getelementptr inbounds %struct.yamdrv_ioctl_cfg, ptr %yi, i32 0, i32 1, i32 3
  %79 = ptrtoint ptr %bitrate204 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %bitrate204, align 4
  %baudrate205 = getelementptr i8, ptr %dev, i32 2312
  %80 = ptrtoint ptr %baudrate205 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %baudrate205, align 4
  %baudrate207 = getelementptr inbounds %struct.yamdrv_ioctl_cfg, ptr %yi, i32 0, i32 1, i32 4
  %82 = ptrtoint ptr %baudrate207 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %baudrate207, align 4
  %dupmode208 = getelementptr i8, ptr %dev, i32 2324
  %83 = ptrtoint ptr %dupmode208 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dupmode208, align 4
  %mode210 = getelementptr inbounds %struct.yamdrv_ioctl_cfg, ptr %yi, i32 0, i32 1, i32 9
  %85 = ptrtoint ptr %mode210 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %mode210, align 4
  %txd211 = getelementptr i8, ptr %dev, i32 2340
  %86 = ptrtoint ptr %txd211 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %txd211, align 4
  %txdelay213 = getelementptr inbounds %struct.yamdrv_ioctl_cfg, ptr %yi, i32 0, i32 1, i32 5
  %88 = ptrtoint ptr %txdelay213 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %txdelay213, align 4
  %holdd214 = getelementptr i8, ptr %dev, i32 2344
  %89 = ptrtoint ptr %holdd214 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %holdd214, align 4
  %holddly216 = getelementptr inbounds %struct.yamdrv_ioctl_cfg, ptr %yi, i32 0, i32 1, i32 10
  %91 = ptrtoint ptr %holddly216 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %holddly216, align 4
  %txtail217 = getelementptr i8, ptr %dev, i32 2348
  %92 = ptrtoint ptr %txtail217 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %txtail217, align 4
  %txtail219 = getelementptr inbounds %struct.yamdrv_ioctl_cfg, ptr %yi, i32 0, i32 1, i32 6
  %94 = ptrtoint ptr %txtail219 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %txtail219, align 4
  %pers220 = getelementptr i8, ptr %dev, i32 2356
  %95 = ptrtoint ptr %pers220 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pers220, align 4
  %persist222 = getelementptr inbounds %struct.yamdrv_ioctl_cfg, ptr %yi, i32 0, i32 1, i32 7
  %97 = ptrtoint ptr %persist222 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %persist222, align 4
  %slot223 = getelementptr i8, ptr %dev, i32 2352
  %98 = ptrtoint ptr %slot223 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %slot223, align 4
  %slottime225 = getelementptr inbounds %struct.yamdrv_ioctl_cfg, ptr %yi, i32 0, i32 1, i32 8
  %100 = ptrtoint ptr %slottime225 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %slottime225, align 4
  call void @__might_fault(ptr noundef nonnull @.str.58, i32 noundef 174) #11
  %call.i.i305 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i305, label %sw.bb193.cleanup_crit_edge, label %if.end.i.i307

sw.bb193.cleanup_crit_edge:                       ; preds = %sw.bb193
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i307:                                    ; preds = %sw.bb193
  %101 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 48, i32 -1226833920) #15, !srcloc !203
  %asmresult.i.i306 = extractvalue { i32, i32 } %101, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i306)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i306, 0
  br i1 %cmp.i1.i, label %copy_to_user.exit, label %if.end.i.i307.cleanup_crit_edge

if.end.i.i307.cleanup_crit_edge:                  ; preds = %if.end.i.i307
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i307
  %call.i.i.i308 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %yi, i32 noundef 48) #11
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef nonnull %yi, i32 noundef 48) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool227.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool227.not, label %copy_to_user.exit.sw.epilog_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit.sw.epilog_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %copy_to_user.exit.sw.epilog_crit_edge, %if.end188, %if.end179.sw.epilog_crit_edge, %if.end23
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i307.cleanup_crit_edge, %sw.bb193.cleanup_crit_edge, %if.then184.cleanup_crit_edge, %if.then172.cleanup_crit_edge, %if.then159.cleanup_crit_edge, %if.then147.cleanup_crit_edge, %if.then135.cleanup_crit_edge, %if.then123.cleanup_crit_edge, %if.then110.cleanup_crit_edge, %if.then96.cleanup_crit_edge, %if.then80.cleanup_crit_edge, %land.lhs.true62.cleanup_crit_edge, %land.lhs.true54.cleanup_crit_edge, %land.lhs.true46.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.then11.i.i301, %sw.bb26.cleanup_crit_edge, %if.then22, %if.then16, %sw.bb10.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %14, %if.then16 ], [ -22, %if.then22 ], [ -22, %if.end.cleanup_crit_edge ], [ -1, %if.end3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %sw.bb10.cleanup_crit_edge ], [ -1, %sw.bb26.cleanup_crit_edge ], [ -22, %if.end33.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %land.lhs.true46.cleanup_crit_edge ], [ -22, %land.lhs.true54.cleanup_crit_edge ], [ -22, %land.lhs.true62.cleanup_crit_edge ], [ -22, %if.then80.cleanup_crit_edge ], [ -22, %if.then96.cleanup_crit_edge ], [ -22, %if.then110.cleanup_crit_edge ], [ -22, %if.then123.cleanup_crit_edge ], [ -22, %if.then135.cleanup_crit_edge ], [ -22, %if.then147.cleanup_crit_edge ], [ -22, %if.then159.cleanup_crit_edge ], [ -22, %if.then172.cleanup_crit_edge ], [ -22, %if.then184.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i301 ], [ -14, %sw.bb193.cleanup_crit_edge ], [ -14, %if.end.i.i307.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ioctl_cmd) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %yi) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @yam_check_uart(i32 noundef %iobase) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %iobase, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %0 = inttoptr i32 %add1 to ptr
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #11, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !205
  tail call void @arm_heavy_mb() #11
  %2 = or i8 %1, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %2) #11, !srcloc !191
  %add9 = add i32 %iobase, 6
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %3 = inttoptr i32 %add11 to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #11, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !207
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 26) #11, !srcloc !191
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #11, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !208
  %6 = and i8 %5, -16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %1) #11, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !210
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %4) #11, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %6)
  %cmp.not = icmp eq i8 %6, -112
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and50 = and i32 %iobase, 1048575
  %add51 = or i32 %and50, -18874368
  %7 = inttoptr i32 %add51 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #11, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !211
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #11, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !213
  tail call void @arm_heavy_mb() #11
  %add65 = add i32 %iobase, 2
  %and66 = and i32 %add65, 1048575
  %add67 = or i32 %and66, -18874368
  %10 = inttoptr i32 %add67 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 1) #11, !srcloc !191
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #11, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  %12 = lshr i8 %11, 6
  %13 = zext i8 %12 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__const.yam_check_uart.uart_tab, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %11)
  %cmp78 = icmp ult i8 %11, 64
  br i1 %cmp78, label %do.body81, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body81:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  tail call void @arm_heavy_mb() #11
  %add84 = add i32 %iobase, 7
  %and85 = and i32 %add84, 1048575
  %add86 = or i32 %and85, -18874368
  %16 = inttoptr i32 %add86 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 90) #11, !srcloc !191
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #11, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 -91) #11, !srcloc !191
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #11, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %17)
  %cmp110.not = icmp eq i8 %17, 90
  call void @__sanitizer_cov_trace_const_cmp1(i8 -91, i8 %18)
  %cmp113.not = icmp eq i8 %18, -91
  %or.cond = select i1 %cmp110.not, i1 %cmp113.not, i1 false
  %spec.select = select i1 %or.cond, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %do.body81, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %15, %if.end.cleanup_crit_edge ], [ %spec.select, %do.body81 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fpga_download(i32 noundef %iobase, i32 noundef %bitrate) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %p.010.i = load ptr, ptr @yam_data, align 4
  %tobool.not11.i = icmp eq ptr %p.010.i, null
  br i1 %tobool.not11.i, label %entry.while.end.i_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %p.012.i = phi ptr [ %p.0.i, %if.end.i.while.body.i_crit_edge ], [ %p.010.i, %entry.while.body.i_crit_edge ]
  %bitrate1.i = getelementptr inbounds %struct.yam_mcs, ptr %p.012.i, i32 0, i32 1
  %0 = ptrtoint ptr %bitrate1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bitrate1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %bitrate)
  %cmp.i = icmp eq i32 %1, %bitrate
  br i1 %cmp.i, label %while.body.i.if.end_crit_edge, label %if.end.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %while.body.i
  %next.i = getelementptr inbounds %struct.yam_mcs, ptr %p.012.i, i32 0, i32 2
  %2 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %p.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool.not.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200, i32 %bitrate)
  %cond.i = icmp eq i32 %bitrate, 1200
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call fastcc ptr @add_mcs(ptr noundef null, i32 noundef 1200, i32 noundef 2) #11
  br label %get_mcs.exit

sw.default.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call fastcc ptr @add_mcs(ptr noundef null, i32 noundef %bitrate, i32 noundef 1) #11
  br label %get_mcs.exit

get_mcs.exit:                                     ; preds = %sw.default.i, %sw.bb.i
  %retval.0.i = phi ptr [ %call.i, %sw.bb.i ], [ %call2.i, %sw.default.i ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %get_mcs.exit.cleanup_crit_edge, label %get_mcs.exit.if.end_crit_edge

get_mcs.exit.if.end_crit_edge:                    ; preds = %get_mcs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

get_mcs.exit.cleanup_crit_edge:                   ; preds = %get_mcs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %get_mcs.exit.if.end_crit_edge, %while.body.i.if.end_crit_edge
  %retval.0.i55 = phi ptr [ %retval.0.i, %get_mcs.exit.if.end_crit_edge ], [ %p.012.i, %while.body.i.if.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !219
  tail call void @arm_heavy_mb() #11
  %add.i = add i32 %iobase, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %3 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 0) #11, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !220
  tail call void @arm_heavy_mb() #11
  %add4.i = add i32 %iobase, 3
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %4 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 -128) #11, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !221
  tail call void @arm_heavy_mb() #11
  %and11.i = and i32 %iobase, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %5 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 1) #11, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !222
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 0) #11, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !223
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 0) #11, !srcloc !191
  %add26.i = add i32 %iobase, 5
  %and27.i = and i32 %add26.i, 1048575
  %add28.i = or i32 %and27.i, -18874368
  %6 = inttoptr i32 %add28.i to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #11, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !224
  %add32.i = add i32 %iobase, 6
  %and33.i = and i32 %add32.i, 1048575
  %add34.i = or i32 %and33.i, -18874368
  %8 = inttoptr i32 %add34.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #11, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !226
  tail call void @arm_heavy_mb() #11
  %add40.i = add i32 %iobase, 4
  %and41.i = and i32 %add40.i, 1048575
  %add42.i = or i32 %and41.i, -18874368
  %10 = inttoptr i32 %add42.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 12) #11, !srcloc !191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -10, %11
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub7.i.i = add i32 %add.neg.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7.i.i)
  %cmp8.i.i = icmp slt i32 %sub7.i.i, 0
  br i1 %cmp8.i.i, label %if.end.do.end.i.i_crit_edge, label %if.end.delay.exit.i_crit_edge

if.end.delay.exit.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %delay.exit.i

if.end.do.end.i.i_crit_edge:                      ; preds = %if.end
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %if.end.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !227
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %13, %add.neg.i.i
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i.do.end.i.i_crit_edge, label %do.end.i.i.delay.exit.i_crit_edge

do.end.i.i.delay.exit.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %delay.exit.i

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

delay.exit.i:                                     ; preds = %do.end.i.i.delay.exit.i_crit_edge, %if.end.delay.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 15) #11, !srcloc !191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i58.i = sub i32 -10, %14
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub7.i59.i = add i32 %add.neg.i58.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7.i59.i)
  %cmp8.i60.i = icmp slt i32 %sub7.i59.i, 0
  br i1 %cmp8.i60.i, label %delay.exit.i.do.end.i63.i_crit_edge, label %delay.exit.i.for.body.preheader_crit_edge

delay.exit.i.for.body.preheader_crit_edge:        ; preds = %delay.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

delay.exit.i.do.end.i63.i_crit_edge:              ; preds = %delay.exit.i
  br label %do.end.i63.i

do.end.i63.i:                                     ; preds = %do.end.i63.i.do.end.i63.i_crit_edge, %delay.exit.i.do.end.i63.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !227
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub.i61.i = add i32 %16, %add.neg.i58.i
  %cmp.i62.i = icmp slt i32 %sub.i61.i, 0
  br i1 %cmp.i62.i, label %do.end.i63.i.do.end.i63.i_crit_edge, label %do.end.i63.i.for.body.preheader_crit_edge

do.end.i63.i.for.body.preheader_crit_edge:        ; preds = %do.end.i63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

do.end.i63.i.do.end.i63.i_crit_edge:              ; preds = %do.end.i63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i63.i

for.body.preheader:                               ; preds = %do.end.i63.i.for.body.preheader_crit_edge, %delay.exit.i.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.061 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i8, ptr %retval.0.i55, i32 %i.061
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %add.i21 = add i32 %19, 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body
  %wrd.addr.036.i = phi i8 [ %18, %for.body ], [ %shl.i, %for.inc.i.for.body.i_crit_edge ]
  %k.035.i = phi i32 [ 0, %for.body ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %wrd.addr.036.i)
  %tobool.not.i22 = icmp sgt i8 %wrd.addr.036.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !230
  tail call void @arm_heavy_mb() #11
  %conv4.i = select i1 %tobool.not.i22, i8 13, i8 15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv4.i) #11, !srcloc !191
  %shl.i = shl i8 %wrd.addr.036.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !231
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 -4) #11, !srcloc !191
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i23.while.cond.i_crit_edge, %for.body.i
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #11, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !232
  %21 = and i8 %20, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp24.i = icmp eq i8 %21, 0
  br i1 %cmp24.i, label %while.body.i23, label %for.inc.i

while.body.i23:                                   ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i21, %22
  %cmp26.i = icmp slt i32 %sub.i, 0
  br i1 %cmp26.i, label %do.end, label %while.body.i23.while.cond.i_crit_edge

while.body.i23.while.cond.i_crit_edge:            ; preds = %while.body.i23
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

for.inc.i:                                        ; preds = %while.cond.i
  %inc.i = add nuw nsw i32 %k.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.inc, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end:                                           ; preds = %while.body.i23
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #14
  br label %cleanup

for.inc:                                          ; preds = %for.inc.i
  %inc = add nuw nsw i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, 5302
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %add.i25 = add i32 %23, 10
  br label %for.body.i39

for.body.i39:                                     ; preds = %for.inc.i47.for.body.i39_crit_edge, %for.end
  %wrd.addr.036.i34 = phi i8 [ -1, %for.end ], [ %shl.i38, %for.inc.i47.for.body.i39_crit_edge ]
  %k.035.i35 = phi i32 [ 0, %for.end ], [ %inc.i45, %for.inc.i47.for.body.i39_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %wrd.addr.036.i34)
  %tobool.not.i36 = icmp sgt i8 %wrd.addr.036.i34, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !230
  tail call void @arm_heavy_mb() #11
  %conv4.i37 = select i1 %tobool.not.i36, i8 13, i8 15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv4.i37) #11, !srcloc !191
  %shl.i38 = shl i8 %wrd.addr.036.i34, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !231
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 -4) #11, !srcloc !191
  br label %while.cond.i41

while.cond.i41:                                   ; preds = %while.body.i44.while.cond.i41_crit_edge, %for.body.i39
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #11, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !232
  %25 = and i8 %24, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp24.i40 = icmp eq i8 %25, 0
  br i1 %cmp24.i40, label %while.body.i44, label %for.inc.i47

while.body.i44:                                   ; preds = %while.cond.i41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub.i42 = sub i32 %add.i25, %26
  %cmp26.i43 = icmp slt i32 %sub.i42, 0
  br i1 %cmp26.i43, label %while.body.i44.fpga_write.exit49_crit_edge, label %while.body.i44.while.cond.i41_crit_edge

while.body.i44.while.cond.i41_crit_edge:          ; preds = %while.body.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i41

while.body.i44.fpga_write.exit49_crit_edge:       ; preds = %while.body.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %fpga_write.exit49

for.inc.i47:                                      ; preds = %while.cond.i41
  %inc.i45 = add nuw nsw i32 %k.035.i35, 1
  %exitcond.not.i46 = icmp eq i32 %inc.i45, 8
  br i1 %exitcond.not.i46, label %for.inc.i47.fpga_write.exit49_crit_edge, label %for.inc.i47.for.body.i39_crit_edge

for.inc.i47.for.body.i39_crit_edge:               ; preds = %for.inc.i47
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i39

for.inc.i47.fpga_write.exit49_crit_edge:          ; preds = %for.inc.i47
  call void @__sanitizer_cov_trace_pc() #13
  br label %fpga_write.exit49

fpga_write.exit49:                                ; preds = %for.inc.i47.fpga_write.exit49_crit_edge, %while.body.i44.fpga_write.exit49_crit_edge
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #11, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -5, %28
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub7.i = add i32 %add.neg.i, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7.i)
  %cmp8.i = icmp slt i32 %sub7.i, 0
  br i1 %cmp8.i, label %fpga_write.exit49.do.end.i_crit_edge, label %fpga_write.exit49.delay.exit_crit_edge

fpga_write.exit49.delay.exit_crit_edge:           ; preds = %fpga_write.exit49
  call void @__sanitizer_cov_trace_pc() #13
  br label %delay.exit

fpga_write.exit49.do.end.i_crit_edge:             ; preds = %fpga_write.exit49
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %fpga_write.exit49.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !227
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %sub.i50 = add i32 %30, %add.neg.i
  %cmp.i51 = icmp slt i32 %sub.i50, 0
  br i1 %cmp.i51, label %do.end.i.do.end.i_crit_edge, label %do.end.i.delay.exit_crit_edge

do.end.i.delay.exit_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %delay.exit

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

delay.exit:                                       ; preds = %do.end.i.delay.exit_crit_edge, %fpga_write.exit49.delay.exit_crit_edge
  %31 = lshr i8 %27, 5
  %32 = and i8 %31, 1
  %sext = add nsw i8 %32, -1
  %cond = sext i8 %sext to i32
  br label %cleanup

cleanup:                                          ; preds = %delay.exit, %do.end, %get_mcs.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ %cond, %delay.exit ], [ -1, %get_mcs.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yam_interrupt(i32 noundef %irq, ptr nocapture noundef readnone %dev_id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %counter.0124 = phi i32 [ 100, %entry ], [ %counter.2, %for.inc.for.body_crit_edge ]
  %i.0123 = phi i32 [ 0, %entry ], [ %inc67, %for.inc.for.body_crit_edge ]
  %handled.0122 = phi i32 [ 0, %entry ], [ %handled.2, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr @yam_devs, i32 0, i32 %i.0123
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %while.cond.preheader

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

while.cond.preheader:                             ; preds = %for.body
  %base_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_addr, align 32
  %add116 = add i32 %5, 2
  %and117 = and i32 %add116, 1048575
  %add2118 = or i32 %and117, -18874368
  %6 = inttoptr i32 %add2118 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #11, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !234
  %8 = and i8 %7, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp8.not119 = icmp eq i8 %8, 1
  br i1 %cmp8.not119, label %while.cond.preheader.for.inc_crit_edge, label %while.body.lr.ph

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 14
  %dcd = getelementptr i8, ptr %1, i32 3464
  %nb_mdint = getelementptr i8, ptr %1, i32 2336
  %tx_state.i = getelementptr i8, ptr %1, i32 2360
  %tx_crch76.i = getelementptr i8, ptr %1, i32 3404
  %send_queue86.i = getelementptr i8, ptr %1, i32 3408
  %tx_count107.i = getelementptr i8, ptr %1, i32 2364
  %bitrate.i = getelementptr i8, ptr %1, i32 2308
  %txtail.i = getelementptr i8, ptr %1, i32 2348
  %dupmode.i = getelementptr i8, ptr %1, i32 2324
  %holdd.i = getelementptr i8, ptr %1, i32 2344
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %tx_crcl46.i = getelementptr i8, ptr %1, i32 3400
  %tx_len39.i = getelementptr i8, ptr %1, i32 3396
  %tx_buf.i = getelementptr i8, ptr %1, i32 2372
  %nb_rxint = getelementptr i8, ptr %1, i32 2332
  %rx_len.i = getelementptr i8, ptr %1, i32 4492
  %rx_crch.i = getelementptr i8, ptr %1, i32 4500
  %rx_crcl.i = getelementptr i8, ptr %1, i32 4496
  %rx_buf.i = getelementptr i8, ptr %1, i32 3468
  %stats16.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %9 = phi i8 [ %8, %while.body.lr.ph ], [ %166, %cleanup.while.body_crit_edge ]
  %counter.1120 = phi i32 [ %counter.0124, %while.body.lr.ph ], [ %dec, %cleanup.while.body_crit_edge ]
  %10 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base_addr, align 32
  %add12 = add i32 %11, 6
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %12 = inttoptr i32 %add14 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #11, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  %14 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base_addr, align 32
  %add20 = add i32 %15, 5
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %16 = inttoptr i32 %add22 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #11, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !236
  %conv26 = zext i8 %17 to i32
  %and27 = and i32 %conv26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool.not = icmp eq i32 %and27, 0
  br i1 %tobool.not, label %while.body.if.end29_crit_edge, label %if.then28

while.body.if.end29_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then28:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_fifo_errors, align 8
  %inc = add i32 %19, 1
  store i32 %inc, ptr %rx_fifo_errors, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %while.body.if.end29_crit_edge
  %conv30 = zext i8 %13 to i32
  %and31.lobit = lshr i32 %conv30, 7
  %20 = ptrtoint ptr %dcd to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and31.lobit, ptr %dcd, align 4
  %dec = add i32 %counter.1120, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp33 = icmp slt i32 %dec, 1
  br i1 %cmp33, label %cleanup.thread, label %if.end39

cleanup.thread:                                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %conv7.le = zext i8 %9 to i32
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %1, i32 noundef %conv7.le) #14
  br label %cleanup70

if.end39:                                         ; preds = %if.end29
  %and41 = and i32 %conv30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.if.end45_crit_edge, label %if.then43

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then43:                                        ; preds = %if.end39
  %21 = ptrtoint ptr %nb_mdint to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nb_mdint, align 4
  %inc44 = add i32 %22, 1
  store i32 %inc44, ptr %nb_mdint, align 4
  %23 = ptrtoint ptr %tx_state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_state.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %24, label %if.then43.if.end45_crit_edge [
    i32 5, label %sw.bb111.i
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb20.i
    i32 3, label %sw.bb45.i
    i32 4, label %do.body73.i
  ]

if.then43.if.end45_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

sw.bb.i:                                          ; preds = %if.then43
  %26 = ptrtoint ptr %tx_count107.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_count107.i, align 4
  %dec.i = add i32 %27, -1
  store i32 %dec.i, ptr %tx_count107.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i = icmp slt i32 %dec.i, 1
  br i1 %cmp.i, label %if.then.i, label %sw.bb.i.if.end45_crit_edge

sw.bb.i.if.end45_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then.i:                                        ; preds = %sw.bb.i
  %call.i = tail call ptr @skb_dequeue(ptr noundef %send_queue86.i) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then1.i, label %if.end.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  tail call void @arm_heavy_mb() #11
  %28 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base_addr, align 32
  %add.i.i = add i32 %29, 4
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %30 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 9) #11, !srcloc !191
  %31 = ptrtoint ptr %tx_state.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %tx_state.i, align 4
  br label %if.end45

if.end.i:                                         ; preds = %if.then.i
  %32 = ptrtoint ptr %tx_state.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %tx_state.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp4.not.i = icmp eq i8 %36, 0
  br i1 %cmp4.not.i, label %if.end7.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i, i32 noundef 1) #11
  br label %if.end45

if.end7.i:                                        ; preds = %if.end.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %37 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %38, -1
  %39 = ptrtoint ptr %tx_len39.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub.i, ptr %tx_len39.i, align 4
  %40 = add i32 %38, -1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1022, i32 %40)
  %41 = icmp ult i32 %40, -1022
  br i1 %41, label %if.then14.i, label %if.end15.i

if.then14.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i, i32 noundef 1) #11
  br label %if.end45

if.end15.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 1
  %44 = call ptr @memcpy(ptr %tx_buf.i, ptr %add.ptr.i.i, i32 %sub.i)
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i, i32 noundef 1) #11
  %45 = ptrtoint ptr %tx_count107.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %tx_count107.i, align 4
  %46 = ptrtoint ptr %tx_crcl46.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 33, ptr %tx_crcl46.i, align 4
  %47 = ptrtoint ptr %tx_crch76.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 243, ptr %tx_crch76.i, align 4
  %48 = ptrtoint ptr %tx_state.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %tx_state.i, align 4
  br label %if.end45

sw.bb20.i:                                        ; preds = %if.then43
  %49 = ptrtoint ptr %tx_count107.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_count107.i, align 4
  %inc.i = add i32 %50, 1
  store i32 %inc.i, ptr %tx_count107.i, align 4
  %arrayidx23.i = getelementptr %struct.yam_port, ptr %add.ptr.i, i32 0, i32 17, i32 %50
  %51 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx23.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !238
  tail call void @arm_heavy_mb() #11
  %53 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %base_addr, align 32
  %and.i = and i32 %54, 1048575
  %add24.i = or i32 %and.i, -18874368
  %55 = inttoptr i32 %add24.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 %52) #11, !srcloc !191
  %56 = ptrtoint ptr %tx_crcl46.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_crcl46.i, align 4
  %idxprom.i = and i32 %57, 255
  %arrayidx28.i = getelementptr [256 x i8], ptr @chktabl, i32 0, i32 %idxprom.i
  %58 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx28.i, align 1
  %conv29.i = zext i8 %59 to i32
  %60 = ptrtoint ptr %tx_crch76.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_crch76.i, align 4
  %xor.i = xor i32 %61, %conv29.i
  store i32 %xor.i, ptr %tx_crcl46.i, align 4
  %arrayidx33.i = getelementptr [256 x i8], ptr @chktabh, i32 0, i32 %idxprom.i
  %62 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx33.i, align 1
  %xor36178.i = xor i8 %63, %52
  %xor36.i = zext i8 %xor36178.i to i32
  store i32 %xor36.i, ptr %tx_crch76.i, align 4
  %64 = ptrtoint ptr %tx_count107.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tx_count107.i, align 4
  %66 = ptrtoint ptr %tx_len39.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_len39.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp40.not.i = icmp slt i32 %65, %67
  br i1 %cmp40.not.i, label %sw.bb20.i.if.end45_crit_edge, label %if.then42.i

sw.bb20.i.if.end45_crit_edge:                     ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then42.i:                                      ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %tx_state.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 3, ptr %tx_state.i, align 4
  br label %if.end45

sw.bb45.i:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %tx_crcl46.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tx_crcl46.i, align 4
  %arrayidx47.i = getelementptr [256 x i8], ptr @chktabl, i32 0, i32 %70
  %71 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx47.i, align 1
  %conv48.i = zext i8 %72 to i32
  %73 = ptrtoint ptr %tx_crch76.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_crch76.i, align 4
  %xor50.i = xor i32 %74, %conv48.i
  store i32 %xor50.i, ptr %tx_crch76.i, align 4
  %arrayidx53.i = getelementptr [256 x i8], ptr @chktabh, i32 0, i32 %70
  %75 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx53.i, align 1
  %arrayidx56.i = getelementptr [256 x i8], ptr @chktabl, i32 0, i32 %xor50.i
  %77 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx56.i, align 1
  %79 = xor i8 %76, %78
  %80 = xor i8 %79, -1
  %xor59.i = zext i8 %80 to i32
  store i32 %xor59.i, ptr %tx_crcl46.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !239
  tail call void @arm_heavy_mb() #11
  %81 = ptrtoint ptr %tx_crcl46.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tx_crcl46.i, align 4
  %conv65.i = trunc i32 %82 to i8
  %83 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %base_addr, align 32
  %and68.i = and i32 %84, 1048575
  %add69.i = or i32 %and68.i, -18874368
  %85 = inttoptr i32 %add69.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %85, i8 %conv65.i) #11, !srcloc !191
  %86 = ptrtoint ptr %tx_state.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 4, ptr %tx_state.i, align 4
  br label %if.end45

do.body73.i:                                      ; preds = %if.then43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !240
  tail call void @arm_heavy_mb() #11
  %87 = ptrtoint ptr %tx_crch76.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tx_crch76.i, align 4
  %arrayidx77.i = getelementptr [256 x i8], ptr @chktabh, i32 0, i32 %88
  %89 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx77.i, align 1
  %91 = xor i8 %90, -1
  %92 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %base_addr, align 32
  %and83.i = and i32 %93, 1048575
  %add84.i = or i32 %and83.i, -18874368
  %94 = inttoptr i32 %add84.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %94, i8 %91) #11, !srcloc !191
  %95 = ptrtoint ptr %send_queue86.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %send_queue86.i, align 4
  %cmp.i.not.i = icmp eq ptr %96, %send_queue86.i
  br i1 %cmp.i.not.i, label %if.then89.i, label %do.body73.i.if.end109.sink.split.i_crit_edge

do.body73.i.if.end109.sink.split.i_crit_edge:     ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109.sink.split.i

if.then89.i:                                      ; preds = %do.body73.i
  %97 = ptrtoint ptr %bitrate.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %bitrate.i, align 4
  %99 = ptrtoint ptr %txtail.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %txtail.i, align 4
  %mul.i = mul i32 %100, %98
  %div.i = sdiv i32 %mul.i, 8000
  %101 = ptrtoint ptr %tx_count107.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %div.i, ptr %tx_count107.i, align 4
  %102 = ptrtoint ptr %dupmode.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dupmode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %103)
  %cmp91.i = icmp eq i32 %103, 2
  br i1 %cmp91.i, label %if.then93.i, label %if.then89.i.if.end99.i_crit_edge

if.then89.i.if.end99.i_crit_edge:                 ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99.i

if.then93.i:                                      ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #13
  %104 = ptrtoint ptr %holdd.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %holdd.i, align 4
  %mul95.i = mul i32 %105, %98
  %div96.i = sdiv i32 %mul95.i, 8
  %add98.i = add nsw i32 %div96.i, %div.i
  %106 = ptrtoint ptr %tx_count107.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %add98.i, ptr %tx_count107.i, align 4
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then93.i, %if.then89.i.if.end99.i_crit_edge
  %107 = phi i32 [ %add98.i, %if.then93.i ], [ %div.i, %if.then89.i.if.end99.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp101.i = icmp eq i32 %107, 0
  br i1 %cmp101.i, label %if.end99.i.if.end109.sink.split.i_crit_edge, label %if.end99.i.if.end109.i_crit_edge

if.end99.i.if.end109.i_crit_edge:                 ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109.i

if.end99.i.if.end109.sink.split.i_crit_edge:      ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109.sink.split.i

if.end109.sink.split.i:                           ; preds = %if.end99.i.if.end109.sink.split.i_crit_edge, %do.body73.i.if.end109.sink.split.i_crit_edge
  %storemerge.ph.i = phi i32 [ 5, %if.end99.i.if.end109.sink.split.i_crit_edge ], [ 1, %do.body73.i.if.end109.sink.split.i_crit_edge ]
  %108 = ptrtoint ptr %tx_count107.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1, ptr %tx_count107.i, align 4
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.end109.sink.split.i, %if.end99.i.if.end109.i_crit_edge
  %storemerge.i = phi i32 [ 5, %if.end99.i.if.end109.i_crit_edge ], [ %storemerge.ph.i, %if.end109.sink.split.i ]
  %109 = ptrtoint ptr %tx_state.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %storemerge.i, ptr %tx_state.i, align 4
  %110 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tx_packets.i, align 4
  %inc110.i = add i32 %111, 1
  store i32 %inc110.i, ptr %tx_packets.i, align 4
  br label %if.end45

sw.bb111.i:                                       ; preds = %if.then43
  %112 = ptrtoint ptr %tx_count107.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %tx_count107.i, align 4
  %dec113.i = add i32 %113, -1
  store i32 %dec113.i, ptr %tx_count107.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec113.i)
  %cmp114.i = icmp slt i32 %dec113.i, 1
  br i1 %cmp114.i, label %if.then116.i, label %sw.bb111.i.if.end45_crit_edge

sw.bb111.i.if.end45_crit_edge:                    ; preds = %sw.bb111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then116.i:                                     ; preds = %sw.bb111.i
  call void @__sanitizer_cov_trace_pc() #13
  %114 = ptrtoint ptr %tx_state.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %tx_state.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  tail call void @arm_heavy_mb() #11
  %115 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %base_addr, align 32
  %add.i180.i = add i32 %116, 4
  %and.i181.i = and i32 %add.i180.i, 1048575
  %add1.i182.i = or i32 %and.i181.i, -18874368
  %117 = inttoptr i32 %add1.i182.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %117, i8 9) #11, !srcloc !191
  br label %if.end45

if.end45:                                         ; preds = %if.then116.i, %sw.bb111.i.if.end45_crit_edge, %if.end109.i, %sw.bb45.i, %if.then42.i, %sw.bb20.i.if.end45_crit_edge, %if.end15.i, %if.then14.i, %if.then6.i, %if.then1.i, %sw.bb.i.if.end45_crit_edge, %if.then43.if.end45_crit_edge, %if.end39.if.end45_crit_edge
  %and47 = and i32 %conv26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end45.cleanup_crit_edge, label %if.then49

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then49:                                        ; preds = %if.end45
  %118 = ptrtoint ptr %nb_rxint to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %nb_rxint, align 4
  %inc50 = add i32 %119, 1
  store i32 %inc50, ptr %nb_rxint, align 4
  %120 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %base_addr, align 32
  %and54 = and i32 %121, 1048575
  %add55 = or i32 %and54, -18874368
  %122 = inttoptr i32 %add55 to ptr
  %123 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %122) #11, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !241
  %and60 = and i32 %conv30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.else, label %if.then62

if.then62:                                        ; preds = %if.then49
  %124 = ptrtoint ptr %dcd to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %dcd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.not.i96 = icmp eq i32 %125, 0
  br i1 %tobool.not.i96, label %if.then62.yam_rx_flag.exit_crit_edge, label %land.lhs.true.i

if.then62.yam_rx_flag.exit_crit_edge:             ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  br label %yam_rx_flag.exit

land.lhs.true.i:                                  ; preds = %if.then62
  %126 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %rx_len.i, align 4
  %128 = add i32 %127, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1021, i32 %128)
  %129 = icmp ult i32 %128, 1021
  br i1 %129, label %if.then.i99, label %land.lhs.true.i.yam_rx_flag.exit_crit_edge

land.lhs.true.i.yam_rx_flag.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %yam_rx_flag.exit

if.then.i99:                                      ; preds = %land.lhs.true.i
  %sub.i97 = add nsw i32 %127, -2
  %add.i = add nsw i32 %127, -1
  %130 = ptrtoint ptr %rx_crch.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %rx_crch.i, align 4
  %132 = ptrtoint ptr %rx_crcl.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %rx_crcl.i, align 4
  %and.i98 = and i32 %133, %131
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i98)
  %cmp5.not.i = icmp eq i32 %and.i98, 255
  br i1 %cmp5.not.i, label %if.else.i100, label %if.then.i99.yam_rx_flag.exit_crit_edge

if.then.i99.yam_rx_flag.exit_crit_edge:           ; preds = %if.then.i99
  call void @__sanitizer_cov_trace_pc() #13
  br label %yam_rx_flag.exit

if.else.i100:                                     ; preds = %if.then.i99
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add.i, i32 noundef 2592) #11
  %tobool7.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool7.not.i, label %do.end.i, label %if.else10.i

do.end.i:                                         ; preds = %if.else.i100
  call void @__sanitizer_cov_trace_pc() #13
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %1) #14
  br label %if.end19.sink.split.i

if.else10.i:                                      ; preds = %if.else.i100
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %add.i) #11
  %incdec.ptr.i = getelementptr i8, ptr %call11.i, i32 1
  %134 = ptrtoint ptr %call11.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %call11.i, align 1
  %135 = call ptr @memcpy(ptr %incdec.ptr.i, ptr %rx_buf.i, i32 %sub.i97)
  %136 = getelementptr inbounds %struct.anon.1, ptr %call.i.i.i, i32 0, i32 2
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %1, ptr %136, align 8
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %138 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 18
  %140 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %139 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %141 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 21
  %142 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %pkt_type.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15
  %143 = ptrtoint ptr %pkt_type.i.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %bf.load.i.i = load i16, ptr %pkt_type.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, 8191
  store i16 %bf.clear.i.i, ptr %pkt_type.i.i, align 8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 18
  %144 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 2, ptr %protocol.i, align 8
  %call15.i = tail call i32 @netif_rx(ptr noundef nonnull %call.i.i.i) #11
  br label %if.end19.sink.split.i

if.end19.sink.split.i:                            ; preds = %if.else10.i, %do.end.i
  %stats16.sink41.i = phi ptr [ %stats16.i, %if.else10.i ], [ %rx_dropped.i, %do.end.i ]
  %145 = ptrtoint ptr %stats16.sink41.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %stats16.sink41.i, align 8
  %inc17.i = add i32 %146, 1
  store i32 %inc17.i, ptr %stats16.sink41.i, align 8
  br label %yam_rx_flag.exit

yam_rx_flag.exit:                                 ; preds = %if.end19.sink.split.i, %if.then.i99.yam_rx_flag.exit_crit_edge, %land.lhs.true.i.yam_rx_flag.exit_crit_edge, %if.then62.yam_rx_flag.exit_crit_edge
  %147 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %rx_len.i, align 4
  %148 = ptrtoint ptr %rx_crcl.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 33, ptr %rx_crcl.i, align 4
  %149 = ptrtoint ptr %rx_crch.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 243, ptr %rx_crch.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then49
  %150 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %rx_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %151)
  %cmp.i102 = icmp slt i32 %151, 1024
  br i1 %cmp.i102, label %if.then.i108, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i108:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %152 = ptrtoint ptr %rx_crcl.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %rx_crcl.i, align 4
  %idxprom.i104 = and i32 %153, 255
  %arrayidx.i = getelementptr [256 x i8], ptr @chktabl, i32 0, i32 %idxprom.i104
  %154 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx.i, align 1
  %conv1.i = zext i8 %155 to i32
  %156 = ptrtoint ptr %rx_crch.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %rx_crch.i, align 4
  %xor.i106 = xor i32 %157, %conv1.i
  store i32 %xor.i106, ptr %rx_crcl.i, align 4
  %arrayidx4.i = getelementptr [256 x i8], ptr @chktabh, i32 0, i32 %idxprom.i104
  %158 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx4.i, align 1
  %xor71.i = xor i8 %159, %123
  %xor7.i = zext i8 %xor71.i to i32
  store i32 %xor7.i, ptr %rx_crch.i, align 4
  %inc.i107 = add nsw i32 %151, 1
  %160 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %inc.i107, ptr %rx_len.i, align 4
  %arrayidx10.i = getelementptr %struct.yam_port, ptr %add.ptr.i, i32 0, i32 23, i32 %151
  %161 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %123, ptr %arrayidx10.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then.i108, %if.else.cleanup_crit_edge, %yam_rx_flag.exit, %if.end45.cleanup_crit_edge
  %162 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %base_addr, align 32
  %add = add i32 %163, 2
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %164 = inttoptr i32 %add2 to ptr
  %165 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %164) #11, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !234
  %166 = and i8 %165, 15
  %cmp8.not = icmp eq i8 %166, 1
  br i1 %cmp8.not, label %cleanup.for.inc_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %while.cond.preheader.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %handled.2 = phi i32 [ %handled.0122, %for.body.for.inc_crit_edge ], [ %handled.0122, %while.cond.preheader.for.inc_crit_edge ], [ 1, %cleanup.for.inc_crit_edge ]
  %counter.2 = phi i32 [ %counter.0124, %for.body.for.inc_crit_edge ], [ %counter.0124, %while.cond.preheader.for.inc_crit_edge ], [ %dec, %cleanup.for.inc_crit_edge ]
  %inc67 = add nuw nsw i32 %i.0123, 1
  %exitcond.not = icmp eq i32 %inc67, 4
  br i1 %exitcond.not, label %for.inc.cleanup70_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup70_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup70

cleanup70:                                        ; preds = %for.inc.cleanup70_crit_edge, %cleanup.thread
  %handled.3 = phi i32 [ 1, %cleanup.thread ], [ %handled.2, %for.inc.cleanup70_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.3)
  %tobool68.not = icmp ne i32 %handled.3, 0
  %cond69 = zext i1 %tobool68.not to i32
  ret i32 %cond69
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @yam_set_uart(ptr nocapture noundef readonly %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %baudrate = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %baudrate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %baudrate, align 4
  %div = sdiv i32 115200, %1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !242
  tail call void @arm_heavy_mb() #11
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  %add = add i32 %3, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 0) #11, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !243
  tail call void @arm_heavy_mb() #11
  %5 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base_addr, align 32
  %add7 = add i32 %6, 3
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %7 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 -125) #11, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  tail call void @arm_heavy_mb() #11
  %conv = trunc i32 %div to i8
  %8 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_addr, align 32
  %and16 = and i32 %9, 1048575
  %add17 = or i32 %and16, -18874368
  %10 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv) #11, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %11 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base_addr, align 32
  %add23 = add i32 %12, 1
  %and24 = and i32 %add23, 1048575
  %add25 = or i32 %and24, -18874368
  %13 = inttoptr i32 %add25 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 0) #11, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !246
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base_addr, align 32
  %add31 = add i32 %15, 3
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %16 = inttoptr i32 %add33 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 3) #11, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !247
  tail call void @arm_heavy_mb() #11
  %17 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base_addr, align 32
  %add39 = add i32 %18, 4
  %and40 = and i32 %add39, 1048575
  %add41 = or i32 %and40, -18874368
  %19 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 9) #11, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !248
  tail call void @arm_heavy_mb() #11
  %20 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base_addr, align 32
  %add47 = add i32 %21, 2
  %and48 = and i32 %add47, 1048575
  %add49 = or i32 %and48, -18874368
  %22 = inttoptr i32 %add49 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 0) #11, !srcloc !191
  %23 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base_addr, align 32
  %and53 = and i32 %24, 1048575
  %add54 = or i32 %and53, -18874368
  %25 = inttoptr i32 %add54 to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #11, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !249
  %27 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %base_addr, align 32
  %add59 = add i32 %28, 6
  %and60 = and i32 %add59, 1048575
  %add61 = or i32 %and60, -18874368
  %29 = inttoptr i32 %add61 to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #11, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !250
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !251
  tail call void @arm_heavy_mb() #11
  %31 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base_addr, align 32
  %add69 = add i32 %32, 1
  %and70 = and i32 %add69, 1048575
  %add71 = or i32 %and70, -18874368
  %33 = inttoptr i32 %add71 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 9) #11, !srcloc !191
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @add_mcs(ptr nocapture noundef readonly %bits, i32 noundef %bitrate, i32 noundef %predef) unnamed_addr #5 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #11
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !197
  %1 = zext i32 %predef to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %predef, label %do.end24 [
    i32 0, label %sw.bb
    i32 2, label %entry.sw.bb1_crit_edge
    i32 1, label %entry.sw.bb1_crit_edge73
  ]

entry.sw.bb1_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fw, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge73
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #11
  %3 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %4 = call ptr @memset(ptr %3, i32 255, i32 48)
  %5 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fwnode.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %3, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %9 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %10 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %properties.i.i, align 8
  %11 = call ptr @memset(ptr %id3.i.i, i32 0, i32 20)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #11
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #14
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  %dec = add nsw i32 %predef, -1
  %arrayidx = getelementptr [2 x ptr], ptr @__const.add_mcs.fw_name, i32 0, i32 %dec
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %call.i.i, i32 0, i32 3
  %call4 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %13, ptr noundef %dev) #11
  call void @platform_device_unregister(ptr noundef %call.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end12, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %13) #14
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %14 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5302, i32 %17)
  %cmp.not = icmp eq i32 %17, 5302
  br i1 %cmp.not, label %if.end21, label %do.end16

do.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %17, ptr noundef %13) #14
  %18 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %19) #11
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %data = getelementptr inbounds %struct.firmware, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  br label %sw.epilog

do.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %predef) #14
  br label %cleanup

sw.epilog:                                        ; preds = %if.end21, %sw.bb
  %bits.addr.0 = phi ptr [ %21, %if.end21 ], [ %bits, %sw.bb ]
  %p.065 = load ptr, ptr @yam_data, align 4
  %tobool27.not66 = icmp eq ptr %p.065, null
  br i1 %tobool27.not66, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %if.end32.while.body_crit_edge, %sw.epilog.while.body_crit_edge
  %p.067 = phi ptr [ %p.0, %if.end32.while.body_crit_edge ], [ %p.065, %sw.epilog.while.body_crit_edge ]
  %bitrate28 = getelementptr inbounds %struct.yam_mcs, ptr %p.067, i32 0, i32 1
  %22 = ptrtoint ptr %bitrate28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bitrate28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %bitrate)
  %cmp29 = icmp eq i32 %23, %bitrate
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %24 = call ptr @memcpy(ptr %p.067, ptr %bits.addr.0, i32 5302)
  br label %out

if.end32:                                         ; preds = %while.body
  %next = getelementptr inbounds %struct.yam_mcs, ptr %p.067, i32 0, i32 2
  %25 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %25)
  %p.0 = load ptr, ptr %next, align 4
  %tobool27.not = icmp eq ptr %p.0, null
  br i1 %tobool27.not, label %if.end32.while.end_crit_edge, label %if.end32.while.body_crit_edge

if.end32.while.body_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end32.while.end_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end32.while.end_crit_edge, %sw.epilog.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 5312) #16
  %cmp34 = icmp eq ptr %call7.i, null
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %28) #11
  br label %cleanup

if.end36:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %29 = call ptr @memcpy(ptr %call7.i, ptr %bits.addr.0, i32 5302)
  %bitrate39 = getelementptr inbounds %struct.yam_mcs, ptr %call7.i, i32 0, i32 1
  %30 = ptrtoint ptr %bitrate39 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %bitrate, ptr %bitrate39, align 8
  %31 = load ptr, ptr @yam_data, align 4
  %next40 = getelementptr inbounds %struct.yam_mcs, ptr %call7.i, i32 0, i32 2
  %32 = ptrtoint ptr %next40 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %next40, align 4
  store ptr %call7.i, ptr @yam_data, align 4
  br label %out

out:                                              ; preds = %if.end36, %if.then30
  %p.1 = phi ptr [ %p.067, %if.then30 ], [ %call7.i, %if.end36 ]
  %33 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %34) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then35, %do.end24, %do.end16, %do.end8, %do.end
  %retval.0 = phi ptr [ null, %do.end24 ], [ null, %do.end ], [ null, %do.end8 ], [ null, %do.end16 ], [ %p.1, %out ], [ null, %if.then35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_ip_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @yam_seq_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %1)
  %cmp = icmp slt i64 %1, 4
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %idxprom = trunc i64 %1 to i32
  %arrayidx = getelementptr [4 x ptr], ptr @yam_devs, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @yam_seq_stop(ptr nocapture noundef %seq, ptr nocapture noundef %v) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @yam_seq_next(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %inc)
  %cmp = icmp slt i64 %inc, 4
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %idxprom = trunc i64 %inc to i32
  %arrayidx = getelementptr [4 x ptr], ptr @yam_devs, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yam_seq_show(ptr noundef %seq, ptr noundef %v) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.59, ptr noundef %v) #11
  %state.i = getelementptr inbounds %struct.net_device, ptr %v, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.60, i32 noundef %and1.i.i) #11
  %bitrate = getelementptr i8, ptr %v, i32 2308
  %2 = ptrtoint ptr %bitrate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bitrate, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.61, i32 noundef %3) #11
  %iobase = getelementptr i8, ptr %v, i32 2316
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.62, i32 noundef %5) #11
  %baudrate = getelementptr i8, ptr %v, i32 2312
  %6 = ptrtoint ptr %baudrate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %baudrate, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.63, i32 noundef %7) #11
  %irq = getelementptr i8, ptr %v, i32 2320
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.64, i32 noundef %9) #11
  %tx_state = getelementptr i8, ptr %v, i32 2360
  %10 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_state, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.65, i32 noundef %11) #11
  %dupmode = getelementptr i8, ptr %v, i32 2324
  %12 = ptrtoint ptr %dupmode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dupmode, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.66, i32 noundef %13) #11
  %holdd = getelementptr i8, ptr %v, i32 2344
  %14 = ptrtoint ptr %holdd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %holdd, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.67, i32 noundef %15) #11
  %txd = getelementptr i8, ptr %v, i32 2340
  %16 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %txd, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.68, i32 noundef %17) #11
  %txtail = getelementptr i8, ptr %v, i32 2348
  %18 = ptrtoint ptr %txtail to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %txtail, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.69, i32 noundef %19) #11
  %slot = getelementptr i8, ptr %v, i32 2352
  %20 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %slot, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.70, i32 noundef %21) #11
  %pers = getelementptr i8, ptr %v, i32 2356
  %22 = ptrtoint ptr %pers to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pers, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.71, i32 noundef %23) #11
  %stats = getelementptr inbounds %struct.net_device, ptr %v, i32 0, i32 36
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %v, i32 0, i32 36, i32 1
  %24 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_packets, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.72, i32 noundef %25) #11
  %26 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stats, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.73, i32 noundef %27) #11
  %nb_mdint = getelementptr i8, ptr %v, i32 2336
  %28 = ptrtoint ptr %nb_mdint to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nb_mdint, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.74, i32 noundef %29) #11
  %nb_rxint = getelementptr i8, ptr %v, i32 2332
  %30 = ptrtoint ptr %nb_rxint to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nb_rxint, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.75, i32 noundef %31) #11
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %v, i32 0, i32 36, i32 14
  %32 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_fifo_errors, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.76, i32 noundef %33) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.77) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26, !27, !28, !29, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !46, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !109, !111, !112, !113, !114, !116, !118, !120, !122, !124, !126, !128, !129, !130, !131, !133, !135, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178}
!llvm.named.register.sp = !{!180}
!llvm.module.flags = !{!181, !182, !183, !184, !185, !186, !187, !188}
!llvm.ident = !{!189}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/hamradio/yam.c", i32 1176, i32 20}
!2 = !{ptr @__UNIQUE_ID_author459, !3, !"__UNIQUE_ID_author459", i1 false, i1 false}
!3 = !{!"../drivers/net/hamradio/yam.c", i32 1181, i32 1}
!4 = !{ptr @__UNIQUE_ID_description460, !5, !"__UNIQUE_ID_description460", i1 false, i1 false}
!5 = !{!"../drivers/net/hamradio/yam.c", i32 1182, i32 1}
!6 = !{ptr @__UNIQUE_ID_file461, !7, !"__UNIQUE_ID_file461", i1 false, i1 false}
!7 = !{!"../drivers/net/hamradio/yam.c", i32 1183, i32 1}
!8 = !{ptr @__UNIQUE_ID_license462, !7, !"__UNIQUE_ID_license462", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_firmware463, !10, !"__UNIQUE_ID_firmware463", i1 false, i1 false}
!10 = !{!"../drivers/net/hamradio/yam.c", i32 1184, i32 1}
!11 = !{ptr @__UNIQUE_ID_firmware464, !12, !"__UNIQUE_ID_firmware464", i1 false, i1 false}
!12 = !{!"../drivers/net/hamradio/yam.c", i32 1185, i32 1}
!13 = !{ptr @__initcall__kmod_yam__465_1187_yam_init_driver6, !14, !"__initcall__kmod_yam__465_1187_yam_init_driver6", i1 false, i1 false}
!14 = !{!"../drivers/net/hamradio/yam.c", i32 1187, i32 1}
!15 = !{ptr @__exitcall_yam_cleanup_driver, !16, !"__exitcall_yam_cleanup_driver", i1 false, i1 false}
!16 = !{!"../drivers/net/hamradio/yam.c", i32 1188, i32 1}
!17 = !{ptr @yam_devs, !18, !"yam_devs", i1 false, i1 false}
!18 = !{!"../drivers/net/hamradio/yam.c", i32 141, i32 27}
!19 = !{ptr @yam_data, !20, !"yam_data", i1 false, i1 false}
!20 = !{!"../drivers/net/hamradio/yam.c", i32 143, i32 24}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/hamradio/yam.c", i32 145, i32 8}
!23 = !{ptr @yam_timer, !22, !"yam_timer", i1 false, i1 false}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/hamradio/yam.c", i32 1117, i32 2}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @yam_init_driver._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @yam_init_driver._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/hamradio/yam.c", i32 1120, i32 17}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/hamradio/yam.c", i32 1125, i32 4}
!33 = !{ptr @yam_init_driver._entry.5, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @yam_init_driver._entry_ptr.7, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/hamradio/yam.c", i32 1132, i32 4}
!37 = !{ptr @yam_init_driver._entry.8, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @yam_init_driver._entry_ptr.10, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @yam_init_driver.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/net/hamradio/yam.c", i32 1140, i32 2}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @yam_drvinfo, !43, !"yam_drvinfo", i1 false, i1 false}
!43 = !{!"../drivers/net/hamradio/yam.c", i32 64, i32 19}
!44 = !{ptr @skb_queue_head_init.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!46 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @yam_netdev_ops, !48, !"yam_netdev_ops", i1 false, i1 false}
!48 = !{!"../drivers/net/hamradio/yam.c", i32 1070, i32 36}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/hamradio/yam.c", i32 841, i32 2}
!51 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @yam_open._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @yam_open._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/hamradio/yam.c", i32 851, i32 3}
!56 = !{ptr @yam_open._entry.15, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @yam_open._entry_ptr.17, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/hamradio/yam.c", i32 855, i32 3}
!60 = !{ptr @yam_open._entry.18, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @yam_open._entry_ptr.20, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/hamradio/yam.c", i32 860, i32 3}
!64 = !{ptr @yam_open._entry.21, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @yam_open._entry_ptr.23, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/hamradio/yam.c", i32 866, i32 3}
!68 = !{ptr @yam_open._entry.24, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @yam_open._entry_ptr.26, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/hamradio/yam.c", i32 885, i32 2}
!72 = !{ptr @yam_open._entry.27, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @yam_open._entry_ptr.29, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/hamradio/yam.c", i32 441, i32 4}
!76 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @fpga_download._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @fpga_download._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/hamradio/yam.c", i32 340, i32 28}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/hamradio/yam.c", i32 340, i32 43}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/hamradio/yam.c", i32 355, i32 4}
!85 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @add_mcs._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @add_mcs._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/hamradio/yam.c", i32 361, i32 4}
!90 = !{ptr @add_mcs._entry.36, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @add_mcs._entry_ptr.38, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/hamradio/yam.c", i32 366, i32 4}
!94 = !{ptr @add_mcs._entry.39, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @add_mcs._entry_ptr.41, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/hamradio/yam.c", i32 374, i32 3}
!98 = !{ptr @add_mcs._entry.42, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @add_mcs._entry_ptr.44, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/hamradio/yam.c", i32 757, i32 5}
!102 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @yam_interrupt._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @yam_interrupt._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @chktabl, !106, !"chktabl", i1 false, i1 false}
!106 = !{!"../drivers/net/hamradio/yam.c", i32 237, i32 28}
!107 = !{ptr @chktabh, !108, !"chktabh", i1 false, i1 false}
!108 = !{!"../drivers/net/hamradio/yam.c", i32 256, i32 28}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/hamradio/yam.c", i32 538, i32 5}
!111 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @yam_rx_flag._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @yam_rx_flag._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/hamradio/yam.c", i32 492, i32 2}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/hamradio/yam.c", i32 492, i32 13}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/hamradio/yam.c", i32 492, i32 21}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/hamradio/yam.c", i32 492, i32 30}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/hamradio/yam.c", i32 492, i32 39}
!124 = !{ptr @uart_str, !125, !"uart_str", i1 false, i1 false}
!125 = !{!"../drivers/net/hamradio/yam.c", i32 491, i32 20}
!126 = !{ptr @.str.54, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/hamradio/yam.c", i32 916, i32 2}
!128 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @yam_close._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @yam_close._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @yam_drvname, !132, !"yam_drvname", i1 false, i1 false}
!132 = !{!"../drivers/net/hamradio/yam.c", i32 63, i32 19}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!135 = distinct !{null, !134, !"<string literal>", i1 false, i1 false}
!136 = distinct !{null, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!140 = !{ptr @yam_seqops, !141, !"yam_seqops", i1 false, i1 false}
!141 = !{!"../drivers/net/hamradio/yam.c", i32 823, i32 36}
!142 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/hamradio/yam.c", i32 801, i32 18}
!144 = !{ptr @.str.60, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/hamradio/yam.c", i32 802, i32 18}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/hamradio/yam.c", i32 803, i32 18}
!148 = !{ptr @.str.62, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/hamradio/yam.c", i32 804, i32 18}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/hamradio/yam.c", i32 805, i32 18}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/hamradio/yam.c", i32 806, i32 18}
!154 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/hamradio/yam.c", i32 807, i32 18}
!156 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/hamradio/yam.c", i32 808, i32 18}
!158 = !{ptr @.str.67, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/hamradio/yam.c", i32 809, i32 18}
!160 = !{ptr @.str.68, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/hamradio/yam.c", i32 810, i32 18}
!162 = !{ptr @.str.69, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/hamradio/yam.c", i32 811, i32 18}
!164 = !{ptr @.str.70, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/hamradio/yam.c", i32 812, i32 18}
!166 = !{ptr @.str.71, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/hamradio/yam.c", i32 813, i32 18}
!168 = !{ptr @.str.72, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/hamradio/yam.c", i32 814, i32 18}
!170 = !{ptr @.str.73, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/hamradio/yam.c", i32 815, i32 18}
!172 = !{ptr @.str.74, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/hamradio/yam.c", i32 816, i32 18}
!174 = !{ptr @.str.75, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/hamradio/yam.c", i32 817, i32 18}
!176 = !{ptr @.str.76, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/hamradio/yam.c", i32 818, i32 18}
!178 = !{ptr @.str.77, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/hamradio/yam.c", i32 819, i32 18}
!180 = !{!"sp"}
!181 = !{i32 1, !"wchar_size", i32 2}
!182 = !{i32 1, !"min_enum_size", i32 4}
!183 = !{i32 8, !"branch-target-enforcement", i32 0}
!184 = !{i32 8, !"sign-return-address", i32 0}
!185 = !{i32 8, !"sign-return-address-all", i32 0}
!186 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!187 = !{i32 7, !"uwtable", i32 1}
!188 = !{i32 7, !"frame-pointer", i32 2}
!189 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!190 = !{i64 2156988851}
!191 = !{i64 6177541}
!192 = !{i64 2156999804}
!193 = !{i64 6177936}
!194 = !{i64 2157001697}
!195 = !{i64 2157003598}
!196 = !{i64 2157003972}
!197 = !{!"auto-init"}
!198 = !{i64 2152480139, i64 2152480164}
!199 = !{!"branch_weights", i32 2000, i32 1}
!200 = !{i64 4975694}
!201 = !{i64 4975891}
!202 = !{i64 2152461124}
!203 = !{i64 2152480820, i64 2152480845}
!204 = !{i64 2156982113}
!205 = !{i64 2156982350}
!206 = !{i64 2156982774}
!207 = !{i64 2156983006}
!208 = !{i64 2156983430}
!209 = !{i64 2156983660}
!210 = !{i64 2156984011}
!211 = !{i64 2156984435}
!212 = !{i64 2156984738}
!213 = !{i64 2156984970}
!214 = !{i64 2156985394}
!215 = !{i64 2156985626}
!216 = !{i64 2156986050}
!217 = !{i64 2156986282}
!218 = !{i64 2156986706}
!219 = !{i64 2156965646}
!220 = !{i64 2156966016}
!221 = !{i64 2156966366}
!222 = !{i64 2156966716}
!223 = !{i64 2156967074}
!224 = !{i64 2156967498}
!225 = !{i64 2156967801}
!226 = !{i64 2156968050}
!227 = !{i64 2156965417}
!228 = !{i64 2156965259}
!229 = !{i64 2156968444}
!230 = !{i64 2156968849}
!231 = !{i64 2156969202}
!232 = !{i64 2156969626}
!233 = !{i64 2156978050}
!234 = !{i64 2156991041}
!235 = !{i64 2156991370}
!236 = !{i64 2156991697}
!237 = !{i64 2156989268}
!238 = !{i64 2156989778}
!239 = !{i64 2156990166}
!240 = !{i64 2156990570}
!241 = !{i64 2156993508}
!242 = !{i64 2156978300}
!243 = !{i64 2156978694}
!244 = !{i64 2156979074}
!245 = !{i64 2156979448}
!246 = !{i64 2156979830}
!247 = !{i64 2156980247}
!248 = !{i64 2156980624}
!249 = !{i64 2156981080}
!250 = !{i64 2156981407}
!251 = !{i64 2156981681}
