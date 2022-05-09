; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfp_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfp_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.devlink_ops = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.98, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.98 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
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
%struct.nfp_pf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i32, %struct.mutex }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.136, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.136 = type { ptr }
%struct.nfp_eth_table = type { i32, i32, [0 x %struct.nfp_eth_table_port] }
%struct.nfp_eth_table_port = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i32, i8, i32 }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nfp_app_type = type { i32, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@nfp_pf_rtsym_read_optional._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 64, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nfp: Unable to read symbol %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfp_pf_rtsym_read_optional\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/netronome/nfp/nfp_main.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_pf_rtsym_read_optional._entry_ptr = internal global ptr @nfp_pf_rtsym_read_optional._entry, section ".printk_index", align 4
@nfp_mbox_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 101, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"nfp: failed to issue command (%u): %u, err: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nfp_mbox_cmd\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nfp_mbox_cmd._entry_ptr = internal global ptr @nfp_mbox_cmd._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nfp_flash_update_common.__msg = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfp: can't access NSP\00", [42 x i8] zeroinitializer }, align 32
@nfp_flash_update_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 317, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to access the NSP: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfp_flash_update_common\00", [40 x i8] zeroinitializer }, align 32
@nfp_flash_update_common._entry_ptr = internal global ptr @nfp_flash_update_common._entry, section ".printk_index", align 4
@nfp_flash_update_common._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 324, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Finished writing flash image\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nfp_flash_update_common._entry_ptr.13 = internal global ptr @nfp_flash_update_common._entry.10, section ".printk_index", align 4
@nfp_netvf_pci_driver = external dso_local global %struct.pci_driver, align 4
@nfp_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @nfp_driver_name, ptr @nfp_pci_device_ids, ptr @nfp_pci_probe, ptr @nfp_pci_remove, ptr null, ptr null, ptr @nfp_pci_shutdown, ptr @nfp_pcie_sriov_configure, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_nfp__584_888_nfp_main_init6 = internal global ptr @nfp_main_init, section ".initcall6.init", align 4
@__exitcall_nfp_main_exit = internal global ptr @nfp_main_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_firmware585 = internal constant [51 x i8] c"nfp.firmware=netronome/nic_AMDA0058-0011_2x40.nffw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware586 = internal constant [51 x i8] c"nfp.firmware=netronome/nic_AMDA0058-0012_2x40.nffw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware587 = internal constant [51 x i8] c"nfp.firmware=netronome/nic_AMDA0081-0001_1x40.nffw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware588 = internal constant [51 x i8] c"nfp.firmware=netronome/nic_AMDA0081-0001_4x10.nffw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware589 = internal constant [51 x i8] c"nfp.firmware=netronome/nic_AMDA0096-0001_2x10.nffw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware590 = internal constant [51 x i8] c"nfp.firmware=netronome/nic_AMDA0097-0001_2x40.nffw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware591 = internal constant [56 x i8] c"nfp.firmware=netronome/nic_AMDA0097-0001_4x10_1x40.nffw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware592 = internal constant [51 x i8] c"nfp.firmware=netronome/nic_AMDA0097-0001_8x10.nffw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware593 = internal constant [51 x i8] c"nfp.firmware=netronome/nic_AMDA0099-0001_2x10.nffw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware594 = internal constant [51 x i8] c"nfp.firmware=netronome/nic_AMDA0099-0001_2x25.nffw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware595 = internal constant [56 x i8] c"nfp.firmware=netronome/nic_AMDA0099-0001_1x10_1x25.nffw\00", section ".modinfo", align 1
@__UNIQUE_ID_author596 = internal constant [57 x i8] c"nfp.author=Netronome Systems <oss-drivers@netronome.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file597 = internal constant [48 x i8] c"nfp.file=drivers/net/ethernet/netronome/nfp/nfp\00", section ".modinfo", align 1
@__UNIQUE_ID_license598 = internal constant [16 x i8] c"nfp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description599 = internal constant [59 x i8] c"nfp.description=The Netronome Flow Processor (NFP) driver.\00", section ".modinfo", align 1
@nfp_driver_name = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfp\00", [28 x i8] zeroinitializer }, align 32
@nfp_pci_device_ids = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 6638, i32 24576, i32 6638, i32 -1, i32 -1, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6638, i32 20480, i32 6638, i32 -1, i32 -1, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6638, i32 16384, i32 6638, i32 -1, i32 -1, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@nfp_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 676, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Binding NFP VF device to the NFP PF driver, the VF driver is called 'nfp_netvf'\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfp_pci_probe\00", [18 x i8] zeroinitializer }, align 32
@nfp_pci_probe._entry_ptr = internal global ptr @nfp_pci_probe._entry, section ".printk_index", align 4
@nfp_pci_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 691, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to reserve pci resources.\0A\00", [62 x i8] zeroinitializer }, align 32
@nfp_pci_probe._entry_ptr.18 = internal global ptr @nfp_pci_probe._entry.16, section ".printk_index", align 4
@nfp_devlink_ops = external dso_local constant %struct.devlink_ops, align 4
@nfp_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&pf->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nfp-%s\00", [25 x i8] zeroinitializer }, align 32
@nfp_pci_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str.2, i32 730, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Assembly: %s%s%s-%s CPLD: %s\0A\00", [34 x i8] zeroinitializer }, align 32
@nfp_pci_probe._entry_ptr.23 = internal global ptr @nfp_pci_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"assembly.vendor\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"assembly.partno\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"assembly.serial\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"assembly.revision\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cpld.version\00", [19 x i8] zeroinitializer }, align 32
@nfp_pci_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.15, ptr @.str.2, i32 758, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Error: %d VFs already enabled, but loaded FW can only support %d\0A\00", [62 x i8] zeroinitializer }, align 32
@nfp_pci_probe._entry_ptr.31 = internal global ptr @nfp_pci_probe._entry.29, section ".printk_index", align 4
@nfp_pci_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.15, ptr @.str.2, i32 769, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register hwmon info\0A\00", [33 x i8] zeroinitializer }, align 32
@nfp_pci_probe._entry_ptr.34 = internal global ptr @nfp_pci_probe._entry.32, section ".printk_index", align 4
@init_net = external dso_local global %struct.net, align 128
@nfp_pf_board_state_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 184, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nfp: NFP board initialization timeout\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfp_pf_board_state_wait\00", [40 x i8] zeroinitializer }, align 32
@nfp_pf_board_state_wait._entry_ptr = internal global ptr @nfp_pf_board_state_wait._entry, section ".printk_index", align 4
@nfp_pf_board_state_wait._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 188, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nfp: waiting for board initialization\0A\00", [57 x i8] zeroinitializer }, align 32
@nfp_pf_board_state_wait._entry_ptr.39 = internal global ptr @nfp_pf_board_state_wait._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"board.state\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nfp.sp\00", [25 x i8] zeroinitializer }, align 32
@nfp_nsp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.42, ptr @.str.2, i32 597, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nfp_nsp_init\00", [19 x i8] zeroinitializer }, align 32
@nfp_nsp_init._entry_ptr = internal global ptr @nfp_nsp_init._entry, section ".printk_index", align 4
@nfp_nsp_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 609, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BSP: %s\0A\00", [23 x i8] zeroinitializer }, align 32
@nfp_nsp_init._entry_ptr.45 = internal global ptr @nfp_nsp_init._entry.43, section ".printk_index", align 4
@nfp_nsp_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.2, i32 615, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed to load FW\0A\00", [45 x i8] zeroinitializer }, align 32
@nfp_nsp_init._entry_ptr.48 = internal global ptr @nfp_nsp_init._entry.46, section ".printk_index", align 4
@nfp_nsp_init_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 580, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MAC reinit failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfp_nsp_init_ports\00", [45 x i8] zeroinitializer }, align 32
@nfp_nsp_init_ports._entry_ptr = internal global ptr @nfp_nsp_init_ports._entry, section ".printk_index", align 4
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"abi_drv_load_ifc\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0x10ff\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@nfp_fw_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 478, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to parse interface '%s': %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nfp_fw_load\00", [20 x i8] zeroinitializer }, align 32
@nfp_fw_load._entry_ptr = internal global ptr @nfp_fw_load._entry, section ".printk_index", align 4
@nfp_fw_load._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 488, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Firmware will be loaded by partner\0A\00", [60 x i8] zeroinitializer }, align 32
@nfp_fw_load._entry_ptr.58 = internal global ptr @nfp_fw_load._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"abi_drv_reset\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"app_fw_from_flash\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@nfp_fw_load._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.55, ptr @.str.2, i32 509, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Soft-resetting the NFP\0A\00", [40 x i8] zeroinitializer }, align 32
@nfp_fw_load._entry_ptr.65 = internal global ptr @nfp_fw_load._entry.63, section ".printk_index", align 4
@nfp_fw_load._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.55, ptr @.str.2, i32 513, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to soft reset the NFP: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@nfp_fw_load._entry_ptr.68 = internal global ptr @nfp_fw_load._entry.66, section ".printk_index", align 4
@nfp_fw_load._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.55, ptr @.str.2, i32 525, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FW loading failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@nfp_fw_load._entry_ptr.71 = internal global ptr @nfp_fw_load._entry.69, section ".printk_index", align 4
@nfp_fw_load._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.55, ptr @.str.2, i32 528, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Finished loading FW image\0A\00", [37 x i8] zeroinitializer }, align 32
@nfp_fw_load._entry_ptr.74 = internal global ptr @nfp_fw_load._entry.72, section ".printk_index", align 4
@nfp_fw_load._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.55, ptr @.str.2, i32 537, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Finished loading stored FW image\0A\00", [62 x i8] zeroinitializer }, align 32
@nfp_fw_load._entry_ptr.77 = internal global ptr @nfp_fw_load._entry.75, section ".printk_index", align 4
@nfp_fw_load._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.55, ptr @.str.2, i32 543, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Didn't load firmware, please update flash or reconfigure card\0A\00", [33 x i8] zeroinitializer }, align 32
@nfp_fw_load._entry_ptr.80 = internal global ptr @nfp_fw_load._entry.78, section ".printk_index", align 4
@nfp_get_fw_policy_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 437, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Invalid value '%s' from '%s', ignoring\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfp_get_fw_policy_value\00", [40 x i8] zeroinitializer }, align 32
@nfp_get_fw_policy_value._entry_ptr = internal global ptr @nfp_get_fw_policy_value._entry, section ".printk_index", align 4
@nfp_net_fw_find._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 365, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"nfp: Looking for firmware file in order of priority:\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfp_net_fw_find\00", [16 x i8] zeroinitializer }, align 32
@nfp_net_fw_find._entry_ptr = internal global ptr @nfp_net_fw_find._entry, section ".printk_index", align 4
@.str.85 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"netronome/serial-%pMF-%02hhx-%02hhx.nffw\00", [55 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"netronome/pci-%s.nffw\00", [42 x i8] zeroinitializer }, align 32
@nfp_net_fw_find._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.84, ptr @.str.2, i32 384, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error: can't identify media config\0A\00", [60 x i8] zeroinitializer }, align 32
@nfp_net_fw_find._entry_ptr.89 = internal global ptr @nfp_net_fw_find._entry.87, section ".printk_index", align 4
@nfp_net_fw_find._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.84, ptr @.str.2, i32 390, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error: can't read part number\0A\00", [33 x i8] zeroinitializer }, align 32
@nfp_net_fw_find._entry_ptr.92 = internal global ptr @nfp_net_fw_find._entry.90, section ".printk_index", align 4
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"netronome/nic_%s\00", [47 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"_%dx%d\00", [25 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c".nffw\00", [26 x i8] zeroinitializer }, align 32
@nfp_net_fw_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 340, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nfp:   %s: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfp_net_fw_request\00", [45 x i8] zeroinitializer }, align 32
@nfp_net_fw_request._entry_ptr = internal global ptr @nfp_net_fw_request._entry, section ".printk_index", align 4
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"not found\00", [22 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"found\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_abi_nfd_pf%u_mbox\00", [45 x i8] zeroinitializer }, align 32
@nfp_pf_find_rtsyms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.2, i32 660, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"nfp: PF mailbox symbol too small: %llu < %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfp_pf_find_rtsyms\00", [45 x i8] zeroinitializer }, align 32
@nfp_pf_find_rtsyms._entry_ptr = internal global ptr @nfp_pf_find_rtsyms._entry, section ".printk_index", align 4
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfd_vf_cfg_max_vfs\00", [45 x i8] zeroinitializer }, align 32
@nfp_pcie_sriov_read_nfd_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 211, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nfp: Warning: VF limit read failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nfp_pcie_sriov_read_nfd_limit\00", [34 x i8] zeroinitializer }, align 32
@nfp_pcie_sriov_read_nfd_limit._entry_ptr = internal global ptr @nfp_pcie_sriov_read_nfd_limit._entry, section ".printk_index", align 4
@nfp_pcie_sriov_read_nfd_limit._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.2, i32 217, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nfp: Failed to set VF count in sysfs: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@nfp_pcie_sriov_read_nfd_limit._entry_ptr.108 = internal global ptr @nfp_pcie_sriov_read_nfd_limit._entry.106, section ".printk_index", align 4
@nfp_fw_unload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 635, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nfp: Reset failed, can't open NSP\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfp_fw_unload\00", [18 x i8] zeroinitializer }, align 32
@nfp_fw_unload._entry_ptr = internal global ptr @nfp_fw_unload._entry, section ".printk_index", align 4
@nfp_fw_unload._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.2, i32 641, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't unload firmware: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@nfp_fw_unload._entry_ptr.113 = internal global ptr @nfp_fw_unload._entry.111, section ".printk_index", align 4
@nfp_fw_unload._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.110, ptr @.str.2, i32 643, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Firmware safely unloaded\0A\00", [38 x i8] zeroinitializer }, align 32
@nfp_fw_unload._entry_ptr.116 = internal global ptr @nfp_fw_unload._entry.114, section ".printk_index", align 4
@nfp_pcie_sriov_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.2, i32 276, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Disabling while VFs assigned - VFs will not be deallocated\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfp_pcie_sriov_disable\00", [41 x i8] zeroinitializer }, align 32
@nfp_pcie_sriov_disable._entry_ptr = internal global ptr @nfp_pcie_sriov_disable._entry, section ".printk_index", align 4
@nfp_pcie_sriov_disable.__UNIQUE_ID_ddebug583 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.119, ptr @.str.118, ptr @.str.2, ptr @.str.120, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfp\00", [28 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Removed VFs.\0A\00", [18 x i8] zeroinitializer }, align 32
@nfp_pcie_sriov_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 229, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nfp: Firmware limits number of VFs to %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfp_pcie_sriov_enable\00", [42 x i8] zeroinitializer }, align 32
@nfp_pcie_sriov_enable._entry_ptr = internal global ptr @nfp_pcie_sriov_enable._entry, section ".printk_index", align 4
@nfp_pcie_sriov_enable._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.2, i32 235, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable PCI SR-IOV: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@nfp_pcie_sriov_enable._entry_ptr.125 = internal global ptr @nfp_pcie_sriov_enable._entry.123, section ".printk_index", align 4
@nfp_pcie_sriov_enable._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.122, ptr @.str.2, i32 245, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"App specific PCI SR-IOV configuration failed: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@nfp_pcie_sriov_enable._entry_ptr.128 = internal global ptr @nfp_pcie_sriov_enable._entry.126, section ".printk_index", align 4
@nfp_pcie_sriov_enable.__UNIQUE_ID_ddebug582 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.119, ptr @.str.122, ptr @.str.2, ptr @.str.129, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Created %d VFs.\0A\00", [47 x i8] zeroinitializer }, align 32
@nfp_main_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.2, i32 860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016%s: NFP PCIe Driver, Copyright (C) 2014-2017 Netronome Systems\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfp_main_init\00", [18 x i8] zeroinitializer }, align 32
@nfp_main_init._entry_ptr = internal global ptr @nfp_main_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 64, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 100, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 315, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 317, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 324, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [15 x i8] c"nfp_pci_driver\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 846, i32 26 }
@___asan_gen_.186 = private unnamed_addr constant [16 x i8] c"nfp_driver_name\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 32, i32 19 }
@___asan_gen_.189 = private unnamed_addr constant [19 x i8] c"nfp_pci_device_ids\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 34, i32 35 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 676, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 691, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 703, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 707, i32 27 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 725, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 756, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 769, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 184, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 188, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 167, i32 37 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 590, i32 35 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 597, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 609, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 615, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 580, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 463, i32 35 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 465, i32 11 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 471, i32 31 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 476, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 488, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 492, i32 43 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 493, i32 11 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 498, i32 43 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 499, i32 11 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 509, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 512, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 524, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 528, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 537, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 543, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 435, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 365, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 370, i32 19 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 377, i32 19 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 384, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 390, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 395, i32 32 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 405, i32 5 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 411, i32 60 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 339, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 656, i32 41 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 659, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 204, i32 46 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 211, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 217, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 635, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 641, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 643, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 276, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 288, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 228, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 235, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 243, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 251, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.525 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.526 = private constant [49 x i8] c"../drivers/net/ethernet/netronome/nfp/nfp_main.c\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 859, i32 2 }
@llvm.compiler.used = appending global [189 x ptr] [ptr @__UNIQUE_ID_author596, ptr @__UNIQUE_ID_description599, ptr @__UNIQUE_ID_file597, ptr @__UNIQUE_ID_firmware585, ptr @__UNIQUE_ID_firmware586, ptr @__UNIQUE_ID_firmware587, ptr @__UNIQUE_ID_firmware588, ptr @__UNIQUE_ID_firmware589, ptr @__UNIQUE_ID_firmware590, ptr @__UNIQUE_ID_firmware591, ptr @__UNIQUE_ID_firmware592, ptr @__UNIQUE_ID_firmware593, ptr @__UNIQUE_ID_firmware594, ptr @__UNIQUE_ID_firmware595, ptr @__UNIQUE_ID_license598, ptr @__exitcall_nfp_main_exit, ptr @__initcall__kmod_nfp__584_888_nfp_main_init6, ptr @nfp_flash_update_common._entry, ptr @nfp_flash_update_common._entry.10, ptr @nfp_flash_update_common._entry_ptr, ptr @nfp_flash_update_common._entry_ptr.13, ptr @nfp_fw_load._entry, ptr @nfp_fw_load._entry.56, ptr @nfp_fw_load._entry.63, ptr @nfp_fw_load._entry.66, ptr @nfp_fw_load._entry.69, ptr @nfp_fw_load._entry.72, ptr @nfp_fw_load._entry.75, ptr @nfp_fw_load._entry.78, ptr @nfp_fw_load._entry_ptr, ptr @nfp_fw_load._entry_ptr.58, ptr @nfp_fw_load._entry_ptr.65, ptr @nfp_fw_load._entry_ptr.68, ptr @nfp_fw_load._entry_ptr.71, ptr @nfp_fw_load._entry_ptr.74, ptr @nfp_fw_load._entry_ptr.77, ptr @nfp_fw_load._entry_ptr.80, ptr @nfp_fw_unload._entry, ptr @nfp_fw_unload._entry.111, ptr @nfp_fw_unload._entry.114, ptr @nfp_fw_unload._entry_ptr, ptr @nfp_fw_unload._entry_ptr.113, ptr @nfp_fw_unload._entry_ptr.116, ptr @nfp_get_fw_policy_value._entry, ptr @nfp_get_fw_policy_value._entry_ptr, ptr @nfp_main_exit, ptr @nfp_main_init._entry, ptr @nfp_main_init._entry_ptr, ptr @nfp_mbox_cmd._entry, ptr @nfp_mbox_cmd._entry_ptr, ptr @nfp_net_fw_find._entry, ptr @nfp_net_fw_find._entry.87, ptr @nfp_net_fw_find._entry.90, ptr @nfp_net_fw_find._entry_ptr, ptr @nfp_net_fw_find._entry_ptr.89, ptr @nfp_net_fw_find._entry_ptr.92, ptr @nfp_net_fw_request._entry, ptr @nfp_net_fw_request._entry_ptr, ptr @nfp_nsp_init._entry, ptr @nfp_nsp_init._entry.43, ptr @nfp_nsp_init._entry.46, ptr @nfp_nsp_init._entry_ptr, ptr @nfp_nsp_init._entry_ptr.45, ptr @nfp_nsp_init._entry_ptr.48, ptr @nfp_nsp_init_ports._entry, ptr @nfp_nsp_init_ports._entry_ptr, ptr @nfp_pci_probe._entry, ptr @nfp_pci_probe._entry.16, ptr @nfp_pci_probe._entry.21, ptr @nfp_pci_probe._entry.29, ptr @nfp_pci_probe._entry.32, ptr @nfp_pci_probe._entry_ptr, ptr @nfp_pci_probe._entry_ptr.18, ptr @nfp_pci_probe._entry_ptr.23, ptr @nfp_pci_probe._entry_ptr.31, ptr @nfp_pci_probe._entry_ptr.34, ptr @nfp_pcie_sriov_disable._entry, ptr @nfp_pcie_sriov_disable._entry_ptr, ptr @nfp_pcie_sriov_enable._entry, ptr @nfp_pcie_sriov_enable._entry.123, ptr @nfp_pcie_sriov_enable._entry.126, ptr @nfp_pcie_sriov_enable._entry_ptr, ptr @nfp_pcie_sriov_enable._entry_ptr.125, ptr @nfp_pcie_sriov_enable._entry_ptr.128, ptr @nfp_pcie_sriov_read_nfd_limit._entry, ptr @nfp_pcie_sriov_read_nfd_limit._entry.106, ptr @nfp_pcie_sriov_read_nfd_limit._entry_ptr, ptr @nfp_pcie_sriov_read_nfd_limit._entry_ptr.108, ptr @nfp_pf_board_state_wait._entry, ptr @nfp_pf_board_state_wait._entry.37, ptr @nfp_pf_board_state_wait._entry_ptr, ptr @nfp_pf_board_state_wait._entry_ptr.39, ptr @nfp_pf_find_rtsyms._entry, ptr @nfp_pf_find_rtsyms._entry_ptr, ptr @nfp_pf_rtsym_read_optional._entry, ptr @nfp_pf_rtsym_read_optional._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @nfp_flash_update_common.__msg, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @nfp_pci_driver, ptr @nfp_driver_name, ptr @nfp_pci_device_ids, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @nfp_pci_probe.__key, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.131], section "llvm.metadata"
@0 = internal global [132 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_pf_rtsym_read_optional._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_mbox_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flash_update_common.__msg to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flash_update_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flash_update_common._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_driver_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_pci_device_ids to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_pci_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_pci_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_pci_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_pci_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_pf_board_state_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_pf_board_state_wait._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nsp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nsp_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nsp_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nsp_init_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fw_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fw_load._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fw_load._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fw_load._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fw_load._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fw_load._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fw_load._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fw_load._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_get_fw_policy_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_fw_find._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_fw_find._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_fw_find._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_fw_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_pf_find_rtsyms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_pcie_sriov_read_nfd_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_pcie_sriov_read_nfd_limit._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fw_unload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fw_unload._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fw_unload._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_pcie_sriov_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_pcie_sriov_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_pcie_sriov_enable._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_pcie_sriov_enable._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_main_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_pf_rtsym_read_optional(ptr nocapture noundef readonly %pf, ptr nocapture noundef readonly %format, i32 noundef %default_val) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [256 x i8], align 1
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %name) #7
  %0 = call ptr @memset(ptr %name, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #7
  %1 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %err, align 4
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 1
  %2 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpp, align 4
  %call.i = tail call zeroext i16 @nfp_cpp_interface(ptr noundef %3) #7
  %4 = lshr i16 %call.i, 8
  %5 = and i16 %4, 15
  %conv1.i = zext i16 %5 to i32
  %call1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 256, ptr noundef %format, i32 noundef %conv1.i)
  %rtbl = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 20
  %6 = ptrtoint ptr %rtbl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtbl, align 4
  %call3 = call i64 @nfp_rtsym_read_le(ptr noundef %7, ptr noundef nonnull %name, ptr noundef nonnull %err) #7
  %8 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %err, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.end [
    i32 0, label %if.end9
    i32 -2, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpp, align 4
  %call7 = call ptr @nfp_cpp_device(ptr noundef %12) #7
  %parent = getelementptr inbounds %struct.device, ptr %call7, i32 0, i32 1
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull %name) #10
  %15 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %err, align 4
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv10 = trunc i64 %call3 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %do.end ], [ %conv10, %if.end9 ], [ %default_val, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %name) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nfp_rtsym_read_le(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_pf_map_rtsym(ptr nocapture noundef readonly %pf, ptr noundef %name, ptr nocapture noundef readonly %sym_fmt, i32 noundef %min_size, ptr noundef %area) local_unnamed_addr #0 align 64 {
entry:
  %pf_symbol = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %pf_symbol) #7
  %0 = call ptr @memset(ptr %pf_symbol, i32 255, i32 256)
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 1
  %1 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cpp, align 4
  %call.i = tail call zeroext i16 @nfp_cpp_interface(ptr noundef %2) #7
  %3 = lshr i16 %call.i, 8
  %4 = and i16 %3, 15
  %conv1.i = zext i16 %4 to i32
  %call1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pf_symbol, i32 noundef 256, ptr noundef %sym_fmt, i32 noundef %conv1.i)
  %rtbl = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 20
  %5 = ptrtoint ptr %rtbl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rtbl, align 4
  %call3 = call ptr @nfp_rtsym_map(ptr noundef %6, ptr noundef nonnull %pf_symbol, ptr noundef %name, i32 noundef %min_size, ptr noundef %area) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %pf_symbol) #7
  ret ptr %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_rtsym_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_mbox_cmd(ptr nocapture noundef readonly %pf, i32 noundef %cmd, ptr noundef %in_data, i64 noundef %in_length, ptr noundef %out_data, i64 noundef %out_length) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %mbox = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 12
  %1 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mbox, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i64 @nfp_rtsym_size(ptr noundef nonnull %2) #7
  %sub = add i64 %call, -16
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 1
  %3 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cpp, align 4
  %5 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mbox, align 4
  %call3 = call i32 @nfp_rtsym_readl(ptr noundef %4, ptr noundef %6, i64 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %if.end10, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %. = phi i32 [ %call3, %if.end.do.end_crit_edge ], [ -16, %lor.lhs.false.do.end_crit_edge ]
  %9 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpp, align 4
  %call8 = call ptr @nfp_cpp_device(ptr noundef %10) #7
  %parent = getelementptr inbounds %struct.device, ptr %call8, i32 0, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.5, i32 noundef %cmd, i32 noundef %14, i32 noundef %call3) #10
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %15 = call i64 @llvm.umin.i64(i64 %sub, i64 %in_length)
  %16 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cpp, align 4
  %18 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mbox, align 4
  %conv = trunc i64 %15 to i32
  %call17 = call i32 @nfp_rtsym_write(ptr noundef %17, ptr noundef %19, i64 noundef 16, ptr noundef %in_data, i32 noundef %conv) #7
  %conv18 = sext i32 %call17 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %conv18)
  %cmp19.not = icmp eq i64 %15, %conv18
  br i1 %cmp19.not, label %if.end22, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end10
  %20 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cpp, align 4
  %22 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mbox, align 4
  %call25 = call i32 @nfp_rtsym_writeq(ptr noundef %21, ptr noundef %23, i64 noundef 8, i64 noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %24 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cpp, align 4
  %26 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mbox, align 4
  %call31 = call i32 @nfp_rtsym_readl(ptr noundef %25, ptr noundef %27, i64 noundef 8, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %28 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cpp, align 4
  %30 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mbox, align 4
  %conv37 = zext i32 %cmd to i64
  %call38 = call i32 @nfp_rtsym_writeq(ptr noundef %29, ptr noundef %31, i64 noundef 0, i64 noundef %conv37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %if.end34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %33 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cpp, align 4
  %35 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mbox, align 4
  %call44154 = call i32 @nfp_rtsym_readl(ptr noundef %34, ptr noundef %36, i64 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44154)
  %tobool45.not155 = icmp eq i32 %call44154, 0
  br i1 %tobool45.not155, label %if.end47.lr.ph, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end47.lr.ph:                                   ; preds = %if.end41
  %add.neg = sub i32 -500, %32
  br label %if.end47

if.end47:                                         ; preds = %if.end55.if.end47_crit_edge, %if.end47.lr.ph
  %37 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool48.not = icmp eq i32 %38, 0
  br i1 %tobool48.not, label %while.end, label %if.end50

if.end50:                                         ; preds = %if.end47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %sub51 = add i32 %add.neg, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub51)
  %cmp52 = icmp sgt i32 %sub51, -1
  br i1 %cmp52, label %if.end50.cleanup_crit_edge, label %if.end55

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end55:                                         ; preds = %if.end50
  call void @msleep(i32 noundef 5) #7
  %40 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cpp, align 4
  %42 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mbox, align 4
  %call44 = call i32 @nfp_rtsym_readl(ptr noundef %41, ptr noundef %43, i64 noundef 0, ptr noundef nonnull %val) #7
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end55.if.end47_crit_edge, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end55.if.end47_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

while.end:                                        ; preds = %if.end47
  %44 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cpp, align 4
  %46 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mbox, align 4
  %call58 = call i32 @nfp_rtsym_readl(ptr noundef %45, ptr noundef %47, i64 noundef 8, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end61:                                         ; preds = %while.end
  %48 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val, align 4
  %50 = call i64 @llvm.umin.i64(i64 %sub, i64 %out_length)
  %cond68.off0 = trunc i64 %50 to i32
  %51 = call i32 @llvm.umin.i32(i32 %49, i32 %cond68.off0)
  %conv77 = zext i32 %51 to i64
  %52 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cpp, align 4
  %54 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mbox, align 4
  %call81 = call i32 @nfp_rtsym_read(ptr noundef %53, ptr noundef %55, i64 noundef 16, ptr noundef %out_data, i32 noundef %51) #7
  %conv82 = sext i32 %call81 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv82, i64 %conv77)
  %cmp83.not = icmp eq i64 %conv82, %conv77
  br i1 %cmp83.not, label %if.end86, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end86:                                         ; preds = %if.end61
  %56 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cpp, align 4
  %58 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mbox, align 4
  %call89 = call i32 @nfp_rtsym_readl(ptr noundef %57, ptr noundef %59, i64 noundef 4, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.end86.cleanup_crit_edge

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end92:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool93.not = icmp eq i32 %61, 0
  %sub95 = sub i32 0, %61
  %spec.select = select i1 %tobool93.not, i32 %51, i32 %sub95
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %if.end86.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %do.end ], [ -95, %entry.cleanup_crit_edge ], [ -5, %if.end10.cleanup_crit_edge ], [ %call25, %if.end22.cleanup_crit_edge ], [ %call31, %if.end28.cleanup_crit_edge ], [ %call38, %if.end34.cleanup_crit_edge ], [ %call58, %while.end.cleanup_crit_edge ], [ -5, %if.end61.cleanup_crit_edge ], [ %call89, %if.end86.cleanup_crit_edge ], [ %spec.select, %if.end92 ], [ %call44154, %if.end41.cleanup_crit_edge ], [ %call44, %if.end55.cleanup_crit_edge ], [ -110, %if.end50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nfp_rtsym_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_rtsym_readl(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_rtsym_write(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_rtsym_writeq(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_rtsym_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_flash_update_common(ptr nocapture noundef readonly %pf, ptr noundef %fw, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 1
  %2 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpp, align 4
  %call = tail call ptr @nfp_nsp_open(ptr noundef %3) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %call to i32
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.end9, label %do.body

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flash_update_common.__msg) #7
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nfp_flash_update_common.__msg, ptr %extack, align 4
  br label %cleanup

do.end9:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %4) #10
  br label %cleanup

if.end11:                                         ; preds = %entry
  %call12 = tail call i32 @nfp_nsp_write_flash(ptr noundef %call, ptr noundef %fw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end11.exit_close_nsp_crit_edge, label %do.end17

if.end11.exit_close_nsp_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_close_nsp

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.11) #10
  br label %exit_close_nsp

exit_close_nsp:                                   ; preds = %do.end17, %if.end11.exit_close_nsp_crit_edge
  %err.0 = phi i32 [ %call12, %if.end11.exit_close_nsp_crit_edge ], [ 0, %do.end17 ]
  tail call void @nfp_nsp_close(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %exit_close_nsp, %do.end9, %do.body
  %retval.0 = phi i32 [ %err.0, %exit_close_nsp ], [ %4, %do.end9 ], [ %4, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_nsp_open(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_nsp_write_flash(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_nsp_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nfp_main_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @nfp_netvf_pci_driver) #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @nfp_pci_driver) #7
  tail call void @nfp_net_debugfs_destroy() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_debugfs_destroy() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_main_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @nfp_driver_name) #10
  tail call void @nfp_net_debugfs_create() #7
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @nfp_pci_driver, ptr noundef null, ptr noundef nonnull @.str.119) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.err_destroy_debugfs_crit_edge, label %if.end

entry.err_destroy_debugfs_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_destroy_debugfs

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @__pci_register_driver(ptr noundef nonnull @nfp_netvf_pci_driver, ptr noundef null, ptr noundef nonnull @.str.119) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %err_unreg_pf

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_unreg_pf:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @nfp_pci_driver) #7
  br label %err_destroy_debugfs

err_destroy_debugfs:                              ; preds = %err_unreg_pf, %entry.err_destroy_debugfs_crit_edge
  %err.0 = phi i32 [ %call1, %entry.err_destroy_debugfs_crit_edge ], [ %call2, %err_unreg_pf ]
  tail call void @nfp_net_debugfs_destroy() #7
  br label %cleanup

cleanup:                                          ; preds = %err_destroy_debugfs, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_destroy_debugfs ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nfp_cpp_interface(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %pci_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 6638, i16 %1)
  %cmp = icmp eq i16 %1, 6638
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 24579, i16 %3)
  %cmp3 = icmp eq i16 %3, 24579
  br i1 %cmp3, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %pdev) #7
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev9, i64 noundef 1099511627775) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end12, label %if.end8.err_pci_disable_crit_edge

if.end8.err_pci_disable_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pci_disable

if.end12:                                         ; preds = %if.end8
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev9, i64 noundef 1099511627775) #7
  %call13 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @nfp_driver_name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.17) #10
  br label %err_pci_disable

if.end21:                                         ; preds = %if.end12
  %call.i208 = tail call ptr @devlink_alloc_ns(ptr noundef nonnull @nfp_devlink_ops, i32 noundef 284, ptr noundef nonnull @init_net, ptr noundef %dev9) #7
  %tobool24.not = icmp eq ptr %call.i208, null
  br i1 %tobool24.not, label %if.end21.err_rel_regions_crit_edge, label %if.end26

if.end21.err_rel_regions_crit_edge:               ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_rel_regions

if.end26:                                         ; preds = %if.end21
  %call27 = tail call ptr @devlink_priv(ptr noundef nonnull %call.i208) #7
  %vnics = getelementptr inbounds %struct.nfp_pf, ptr %call27, i32 0, i32 31
  %4 = ptrtoint ptr %vnics to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %vnics, ptr %vnics, align 4
  %prev.i = getelementptr inbounds %struct.nfp_pf, ptr %call27, i32 0, i32 31, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %vnics, ptr %prev.i, align 4
  %ports = getelementptr inbounds %struct.nfp_pf, ptr %call27, i32 0, i32 32
  %6 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %ports, ptr %ports, align 4
  %prev.i209 = getelementptr inbounds %struct.nfp_pf, ptr %call27, i32 0, i32 32, i32 1
  %7 = ptrtoint ptr %prev.i209 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ports, ptr %prev.i209, align 4
  %lock = getelementptr inbounds %struct.nfp_pf, ptr %call27, i32 0, i32 37
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @nfp_pci_probe.__key) #7
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call27, ptr %driver_data.i.i, align 4
  %9 = ptrtoint ptr %call27 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pdev, ptr %call27, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end26.pci_name.exit_crit_edge

if.end26.pci_name.exit_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev9, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end26.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.end26.pci_name.exit_crit_edge ]
  %call33 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.20, i32 noundef 0, i32 noundef 2, ptr noundef %retval.0.i.i) #7
  %wq = getelementptr inbounds %struct.nfp_pf, ptr %call27, i32 0, i32 33
  %14 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call33, ptr %wq, align 4
  %tobool35.not = icmp eq ptr %call33, null
  br i1 %tobool35.not, label %pci_name.exit.err_pci_priv_unset_crit_edge, label %if.end37

pci_name.exit.err_pci_priv_unset_crit_edge:       ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pci_priv_unset

if.end37:                                         ; preds = %pci_name.exit
  %call38 = tail call ptr @nfp_cpp_from_nfp6000_pcie(ptr noundef %pdev) #7
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %call27, i32 0, i32 1
  %15 = ptrtoint ptr %cpp to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call38, ptr %cpp, align 4
  %cmp.i210 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i210, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call38 to i32
  br label %err_disable_msix

if.end44:                                         ; preds = %if.end37
  %call46 = tail call i32 @nfp_resource_table_init(ptr noundef %call38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end44.err_cpp_free_crit_edge

if.end44.err_cpp_free_crit_edge:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_cpp_free

if.end49:                                         ; preds = %if.end44
  %17 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cpp, align 4
  %call51 = tail call ptr @nfp_hwinfo_read(ptr noundef %18) #7
  %hwinfo = getelementptr inbounds %struct.nfp_pf, ptr %call27, i32 0, i32 21
  %19 = ptrtoint ptr %hwinfo to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call51, ptr %hwinfo, align 4
  %call57 = tail call ptr @nfp_hwinfo_lookup(ptr noundef %call51, ptr noundef nonnull @.str.24) #7
  %20 = ptrtoint ptr %hwinfo to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hwinfo, align 4
  %call59 = tail call ptr @nfp_hwinfo_lookup(ptr noundef %21, ptr noundef nonnull @.str.25) #7
  %22 = ptrtoint ptr %hwinfo to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hwinfo, align 4
  %call61 = tail call ptr @nfp_hwinfo_lookup(ptr noundef %23, ptr noundef nonnull @.str.26) #7
  %24 = ptrtoint ptr %hwinfo to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hwinfo, align 4
  %call63 = tail call ptr @nfp_hwinfo_lookup(ptr noundef %25, ptr noundef nonnull @.str.27) #7
  %26 = ptrtoint ptr %hwinfo to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hwinfo, align 4
  %call65 = tail call ptr @nfp_hwinfo_lookup(ptr noundef %27, ptr noundef nonnull @.str.28) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9, ptr noundef nonnull @.str.22, ptr noundef %call57, ptr noundef %call59, ptr noundef %call61, ptr noundef %call63, ptr noundef %call65) #10
  %call66 = tail call fastcc i32 @nfp_pf_board_state_wait(ptr noundef %call27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end49.err_hwinfo_free_crit_edge

if.end49.err_hwinfo_free_crit_edge:               ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_hwinfo_free

if.end69:                                         ; preds = %if.end49
  %call70 = tail call fastcc i32 @nfp_nsp_init(ptr noundef %pdev, ptr noundef %call27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end69.err_hwinfo_free_crit_edge

if.end69.err_hwinfo_free_crit_edge:               ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_hwinfo_free

if.end73:                                         ; preds = %if.end69
  %28 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cpp, align 4
  %call75 = tail call ptr @nfp_mip_open(ptr noundef %29) #7
  %mip = getelementptr inbounds %struct.nfp_pf, ptr %call27, i32 0, i32 19
  %30 = ptrtoint ptr %mip to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call75, ptr %mip, align 4
  %31 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cpp, align 4
  %call78 = tail call ptr @__nfp_rtsym_table_read(ptr noundef %32, ptr noundef %call75) #7
  %rtbl = getelementptr inbounds %struct.nfp_pf, ptr %call27, i32 0, i32 20
  %33 = ptrtoint ptr %rtbl to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call78, ptr %rtbl, align 4
  %call79 = tail call fastcc i32 @nfp_pf_find_rtsyms(ptr noundef %call27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end73.err_fw_unload_crit_edge

if.end73.err_fw_unload_crit_edge:                 ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_fw_unload

if.end82:                                         ; preds = %if.end73
  %dump_flag = getelementptr inbounds %struct.nfp_pf, ptr %call27, i32 0, i32 23
  %34 = ptrtoint ptr %dump_flag to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %dump_flag, align 4
  %35 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cpp, align 4
  %37 = ptrtoint ptr %rtbl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rtbl, align 4
  %call85 = tail call ptr @nfp_net_dump_load_dumpspec(ptr noundef %36, ptr noundef %38) #7
  %dumpspec = getelementptr inbounds %struct.nfp_pf, ptr %call27, i32 0, i32 22
  %39 = ptrtoint ptr %dumpspec to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call85, ptr %dumpspec, align 4
  %call86 = tail call fastcc i32 @nfp_pcie_sriov_read_nfd_limit(ptr noundef %call27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end82.err_fw_unload_crit_edge

if.end82.err_fw_unload_crit_edge:                 ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_fw_unload

if.end89:                                         ; preds = %if.end82
  %call90 = tail call i32 @pci_num_vf(ptr noundef %pdev) #7
  %num_vfs = getelementptr inbounds %struct.nfp_pf, ptr %call27, i32 0, i32 15
  %40 = ptrtoint ptr %num_vfs to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call90, ptr %num_vfs, align 4
  %limit_vfs = getelementptr inbounds %struct.nfp_pf, ptr %call27, i32 0, i32 14
  %41 = ptrtoint ptr %limit_vfs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %limit_vfs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call90, i32 %42)
  %cmp92 = icmp ugt i32 %call90, %42
  br i1 %cmp92, label %do.end97, label %if.end101

do.end97:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.30, i32 noundef %call90, i32 noundef %42) #10
  br label %err_fw_unload

if.end101:                                        ; preds = %if.end89
  %call102 = tail call i32 @nfp_net_pci_probe(ptr noundef %call27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %if.end101.err_fw_unload_crit_edge

if.end101.err_fw_unload_crit_edge:                ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_fw_unload

if.end105:                                        ; preds = %if.end101
  %call106 = tail call i32 @nfp_hwmon_register(ptr noundef %call27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end105.cleanup_crit_edge, label %do.end111

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end111:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.33) #10
  tail call void @nfp_net_pci_remove(ptr noundef %call27) #7
  br label %err_fw_unload

err_fw_unload:                                    ; preds = %do.end111, %if.end101.err_fw_unload_crit_edge, %do.end97, %if.end82.err_fw_unload_crit_edge, %if.end73.err_fw_unload_crit_edge
  %err.0 = phi i32 [ %call79, %if.end73.err_fw_unload_crit_edge ], [ %call86, %if.end82.err_fw_unload_crit_edge ], [ -22, %do.end97 ], [ %call102, %if.end101.err_fw_unload_crit_edge ], [ %call106, %do.end111 ]
  %43 = ptrtoint ptr %rtbl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rtbl, align 4
  tail call void @kfree(ptr noundef %44) #7
  %45 = ptrtoint ptr %mip to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mip, align 4
  tail call void @nfp_mip_close(ptr noundef %46) #7
  %unload_fw_on_remove = getelementptr inbounds %struct.nfp_pf, ptr %call27, i32 0, i32 17
  %47 = ptrtoint ptr %unload_fw_on_remove to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %unload_fw_on_remove, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool116.not = icmp eq i8 %48, 0
  br i1 %tobool116.not, label %err_fw_unload.if.end118_crit_edge, label %if.then117

err_fw_unload.if.end118_crit_edge:                ; preds = %err_fw_unload
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

if.then117:                                       ; preds = %err_fw_unload
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @nfp_fw_unload(ptr noundef %call27)
  br label %if.end118

if.end118:                                        ; preds = %if.then117, %err_fw_unload.if.end118_crit_edge
  %eth_tbl = getelementptr inbounds %struct.nfp_pf, ptr %call27, i32 0, i32 25
  %49 = ptrtoint ptr %eth_tbl to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %eth_tbl, align 4
  tail call void @kfree(ptr noundef %50) #7
  %nspi = getelementptr inbounds %struct.nfp_pf, ptr %call27, i32 0, i32 26
  %51 = ptrtoint ptr %nspi to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %nspi, align 4
  tail call void @kfree(ptr noundef %52) #7
  %dumpspec119 = getelementptr inbounds %struct.nfp_pf, ptr %call27, i32 0, i32 22
  %53 = ptrtoint ptr %dumpspec119 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dumpspec119, align 4
  tail call void @vfree(ptr noundef %54) #7
  br label %err_hwinfo_free

err_hwinfo_free:                                  ; preds = %if.end118, %if.end69.err_hwinfo_free_crit_edge, %if.end49.err_hwinfo_free_crit_edge
  %err.1 = phi i32 [ %call66, %if.end49.err_hwinfo_free_crit_edge ], [ %call70, %if.end69.err_hwinfo_free_crit_edge ], [ %err.0, %if.end118 ]
  %55 = ptrtoint ptr %hwinfo to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hwinfo, align 4
  tail call void @kfree(ptr noundef %56) #7
  br label %err_cpp_free

err_cpp_free:                                     ; preds = %err_hwinfo_free, %if.end44.err_cpp_free_crit_edge
  %err.2 = phi i32 [ %call46, %if.end44.err_cpp_free_crit_edge ], [ %err.1, %err_hwinfo_free ]
  %57 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cpp, align 4
  tail call void @nfp_cpp_free(ptr noundef %58) #7
  br label %err_disable_msix

err_disable_msix:                                 ; preds = %err_cpp_free, %if.then41
  %err.3 = phi i32 [ %16, %if.then41 ], [ %err.2, %err_cpp_free ]
  %59 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %60) #7
  br label %err_pci_priv_unset

err_pci_priv_unset:                               ; preds = %err_disable_msix, %pci_name.exit.err_pci_priv_unset_crit_edge
  %err.4 = phi i32 [ %err.3, %err_disable_msix ], [ -12, %pci_name.exit.err_pci_priv_unset_crit_edge ]
  %61 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @mutex_destroy(ptr noundef %lock) #7
  tail call void @devlink_free(ptr noundef nonnull %call.i208) #7
  br label %err_rel_regions

err_rel_regions:                                  ; preds = %err_pci_priv_unset, %if.end21.err_rel_regions_crit_edge
  %err.5 = phi i32 [ %err.4, %err_pci_priv_unset ], [ -12, %if.end21.err_rel_regions_crit_edge ]
  tail call void @pci_release_regions(ptr noundef %pdev) #7
  br label %err_pci_disable

err_pci_disable:                                  ; preds = %err_rel_regions, %do.end19, %if.end8.err_pci_disable_crit_edge
  %err.6 = phi i32 [ %call13, %do.end19 ], [ %err.5, %err_rel_regions ], [ %call.i, %if.end8.err_pci_disable_crit_edge ]
  tail call void @pci_disable_device(ptr noundef %pdev) #7
  br label %cleanup

cleanup:                                          ; preds = %err_pci_disable, %if.end105.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.6, %err_pci_disable ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.end105.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_pci_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__nfp_pci_shutdown(ptr noundef %pdev, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_pci_shutdown(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__nfp_pci_shutdown(ptr noundef %pdev, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_pcie_sriov_configure(ptr noundef %pdev, i32 noundef %num_vfs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vfs)
  %cmp = icmp eq i32 %num_vfs, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call fastcc i32 @nfp_pcie_sriov_disable(ptr noundef %pdev)
  br label %return

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call fastcc i32 @nfp_pcie_sriov_enable(ptr noundef %pdev, i32 noundef %num_vfs)
  br label %return

return:                                           ; preds = %if.else, %if.then1, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then1 ], [ %call3, %if.else ], [ -2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_from_nfp6000_pcie(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_resource_table_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_hwinfo_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_hwinfo_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_pf_board_state_wait(ptr nocapture noundef %pf) unnamed_addr #0 align 64 {
entry:
  %state.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %hwinfo.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 21
  %add.neg = sub i32 -1000, %0
  %cpp5 = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state.i) #7
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %state.i, align 4, !annotation !279
  %2 = ptrtoint ptr %hwinfo.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwinfo.i, align 4
  %call.i = call ptr @nfp_hwinfo_lookup(ptr noundef %3, ptr noundef nonnull @.str.40) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.cond.nfp_board_ready.exit.thread_crit_edge, label %if.end.i

while.cond.nfp_board_ready.exit.thread_crit_edge: ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_board_ready.exit.thread

if.end.i:                                         ; preds = %while.cond
  %call.i.i = call i32 @_kstrtol(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef nonnull %state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.i.nfp_board_ready.exit.thread_crit_edge, label %nfp_board_ready.exit

if.end.i.nfp_board_ready.exit.thread_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_board_ready.exit.thread

nfp_board_ready.exit.thread:                      ; preds = %if.end.i.nfp_board_ready.exit.thread_crit_edge, %while.cond.nfp_board_ready.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i) #7
  br label %while.body

nfp_board_ready.exit:                             ; preds = %if.end.i
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %5)
  %cmp4.i = icmp eq i32 %5, 15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i) #7
  br i1 %cmp4.i, label %nfp_board_ready.exit.cleanup_crit_edge, label %nfp_board_ready.exit.while.body_crit_edge

nfp_board_ready.exit.while.body_crit_edge:        ; preds = %nfp_board_ready.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

nfp_board_ready.exit.cleanup_crit_edge:           ; preds = %nfp_board_ready.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %nfp_board_ready.exit.while.body_crit_edge, %nfp_board_ready.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  %7 = ptrtoint ptr %cpp5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpp5, align 4
  %call1 = call ptr @nfp_cpp_device(ptr noundef %8) #7
  %parent = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  br i1 %cmp, label %do.end, label %do.end4

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.35) #10
  br label %cleanup

do.end4:                                          ; preds = %while.body
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.38) #10
  %call8 = call i32 @msleep_interruptible(i32 noundef 500) #7
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %hwinfo.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hwinfo.i, align 4
  call void @kfree(ptr noundef %12) #7
  %13 = ptrtoint ptr %cpp5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpp5, align 4
  %call12 = call ptr @nfp_hwinfo_read(ptr noundef %14) #7
  %15 = ptrtoint ptr %hwinfo.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call12, ptr %hwinfo.i, align 4
  br label %while.cond

cleanup:                                          ; preds = %do.end4.cleanup_crit_edge, %do.end, %nfp_board_ready.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %nfp_board_ready.exit.cleanup_crit_edge ], [ -512, %do.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_nsp_init(ptr noundef %pdev, ptr nocapture noundef %pf) unnamed_addr #0 align 64 {
entry:
  %fw.i127.i.i = alloca ptr, align 4
  %fw.i116.i.i = alloca ptr, align 4
  %fw.i.i.i = alloca ptr, align 4
  %fw_name.i.i = alloca [256 x i8], align 1
  %serial.i.i = alloca ptr, align 4
  %reset.i = alloca i32, align 4
  %policy.i = alloca i32, align 4
  %ptr.i = alloca ptr, align 4
  %hwinfo.i = alloca [64 x i8], align 1
  %interface_hi.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 1
  %0 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpp, align 4
  %call = tail call i32 @nfp_resource_wait(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpp, align 4
  %call2 = tail call ptr @nfp_nsp_open(ptr noundef %3) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call2 to i32
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %4) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @nfp_nsp_wait(ptr noundef %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end6.exit_close_nsp_crit_edge, label %if.end9

if.end6.exit_close_nsp_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_close_nsp

if.end9:                                          ; preds = %if.end6
  %5 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cpp, align 4
  %call.i = tail call ptr @__nfp_eth_read_ports(ptr noundef %6, ptr noundef %call2) #7
  %eth_tbl.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 25
  %7 = ptrtoint ptr %eth_tbl.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %eth_tbl.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end9.nfp_nsp_init_ports.exit_crit_edge, label %if.end.i

if.end9.nfp_nsp_init_ports.exit_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_nsp_init_ports.exit

if.end.i:                                         ; preds = %if.end9
  %call.i.i = tail call zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr noundef %call2) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %call.i.i)
  %cmp.i.i = icmp ugt i16 %call.i.i, 20
  br i1 %cmp.i.i, label %for.cond.preheader.i, label %if.end.i.nfp_nsp_init_ports.exit_crit_edge

if.end.i.nfp_nsp_init_ports.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_nsp_init_ports.exit

for.cond.preheader.i:                             ; preds = %if.end.i
  %8 = ptrtoint ptr %eth_tbl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eth_tbl.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp36.not.i = icmp eq i32 %11, 0
  br i1 %cmp36.not.i, label %for.cond.preheader.i.nfp_nsp_init_ports.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.nfp_nsp_init_ports.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_nsp_init_ports.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.038.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %needs_reinit.0.off037.i = phi i1 [ %tobool10.i, %for.body.i.for.body.i_crit_edge ], [ false, %for.cond.preheader.i.for.body.i_crit_edge ]
  %override_changed.i = getelementptr %struct.nfp_eth_table, ptr %9, i32 0, i32 2, i32 %i.038.i, i32 16
  %12 = ptrtoint ptr %override_changed.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %override_changed.i, align 1, !range !278
  %14 = zext i8 %13 to i32
  %conv9.i = zext i1 %needs_reinit.0.off037.i to i32
  %or.i = or i32 %14, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool10.i = icmp ne i32 %or.i, 0
  %inc.i = add nuw i32 %i.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  br i1 %tobool10.i, label %if.end13.i, label %for.end.i.nfp_nsp_init_ports.exit_crit_edge

for.end.i.nfp_nsp_init_ports.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_nsp_init_ports.exit

if.end13.i:                                       ; preds = %for.end.i
  tail call void @kfree(ptr noundef %9) #7
  %call15.i = tail call i32 @nfp_nsp_mac_reinit(ptr noundef %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end13.i.if.end18.i_crit_edge, label %do.end.i

if.end13.i.if.end18.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

do.end.i:                                         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.49) #10
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end.i, %if.end13.i.if.end18.i_crit_edge
  %15 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cpp, align 4
  %call20.i = tail call ptr @__nfp_eth_read_ports(ptr noundef %16, ptr noundef %call2) #7
  %17 = ptrtoint ptr %eth_tbl.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call20.i, ptr %eth_tbl.i, align 4
  br label %nfp_nsp_init_ports.exit

nfp_nsp_init_ports.exit:                          ; preds = %if.end18.i, %for.end.i.nfp_nsp_init_ports.exit_crit_edge, %for.cond.preheader.i.nfp_nsp_init_ports.exit_crit_edge, %if.end.i.nfp_nsp_init_ports.exit_crit_edge, %if.end9.nfp_nsp_init_ports.exit_crit_edge
  %call10 = tail call ptr @__nfp_nsp_identify(ptr noundef %call2) #7
  %nspi = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 26
  %18 = ptrtoint ptr %nspi to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call10, ptr %nspi, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %nfp_nsp_init_ports.exit.if.end19_crit_edge, label %do.end16

nfp_nsp_init_ports.exit.if.end19_crit_edge:       ; preds = %nfp_nsp_init_ports.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.end16:                                         ; preds = %nfp_nsp_init_ports.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev17, ptr noundef nonnull @.str.44, ptr noundef nonnull %call10) #10
  br label %if.end19

if.end19:                                         ; preds = %do.end16, %nfp_nsp_init_ports.exit.if.end19_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reset.i) #7
  %19 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %reset.i, align 4, !annotation !279
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %policy.i) #7
  %20 = ptrtoint ptr %policy.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %policy.i, align 4, !annotation !279
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr.i) #7
  %21 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -1 to ptr), ptr %ptr.i, align 4, !annotation !279
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hwinfo.i) #7
  %22 = getelementptr inbounds i8, ptr %hwinfo.i, i32 17
  %23 = call ptr @memset(ptr %22, i32 255, i32 47)
  %24 = call ptr @memcpy(ptr %hwinfo.i, ptr @.str.51, i32 17)
  %call2.i = call i32 @nfp_nsp_hwinfo_lookup_optional(ptr noundef %call2, ptr noundef nonnull %hwinfo.i, i32 noundef 64, ptr noundef nonnull @.str.52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i58 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i58, label %if.end.i60, label %if.end19.nfp_fw_load.exit_crit_edge

if.end19.nfp_fw_load.exit_crit_edge:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_fw_load.exit

if.end.i60:                                       ; preds = %if.end19
  %25 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cpp, align 4
  %call3.i = call zeroext i16 @nfp_cpp_interface(ptr noundef %26) #7
  %27 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %hwinfo.i, ptr %ptr.i, align 4
  %call5185.i = call ptr @strsep(ptr noundef nonnull %ptr.i, ptr noundef nonnull @.str.53) #7
  %tobool6.not186.i = icmp eq ptr %call5185.i, null
  br i1 %tobool6.not186.i, label %if.end.i60.do.end18.i_crit_edge, label %while.body.lr.ph.i

if.end.i60.do.end18.i_crit_edge:                  ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18.i

while.body.lr.ph.i:                               ; preds = %if.end.i60
  %conv.i = zext i16 %call3.i to i32
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call5188.i = phi ptr [ %call5185.i, %while.body.lr.ph.i ], [ %call5.i, %cleanup.i.while.body.i_crit_edge ]
  %ifcs.0187.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i64, %cleanup.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %interface_hi.i) #7
  %28 = ptrtoint ptr %interface_hi.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %interface_hi.i, align 4, !annotation !279
  %call.i.i61 = call i32 @_kstrtoul(ptr noundef nonnull %call5188.i, i32 noundef 0, ptr noundef nonnull %interface_hi.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i61)
  %tobool8.not.i = icmp eq i32 %call.i.i61, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i62 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i62, ptr noundef nonnull @.str.54, ptr noundef nonnull %call5188.i, i32 noundef %call.i.i61) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %interface_hi.i) #7
  br label %nfp_fw_load.exit

if.end10.i:                                       ; preds = %while.body.i
  %29 = ptrtoint ptr %interface_hi.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %interface_hi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv.i)
  %cmp.i63 = icmp eq i32 %30, %conv.i
  br i1 %cmp.i63, label %if.end20.i, label %cleanup.i

cleanup.i:                                        ; preds = %if.end10.i
  %inc.i64 = add i32 %ifcs.0187.i, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %interface_hi.i) #7
  %call5.i = call ptr @strsep(ptr noundef nonnull %ptr.i, ptr noundef nonnull @.str.53) #7
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %cleanup.i.do.end18.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

cleanup.i.do.end18.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18.i

do.end18.i:                                       ; preds = %cleanup.i.do.end18.i_crit_edge, %if.end.i60.do.end18.i_crit_edge
  %dev19.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev19.i, ptr noundef nonnull @.str.57) #10
  br label %nfp_fw_load.exit.thread

if.end20.i:                                       ; preds = %if.end10.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %interface_hi.i) #7
  %call21.i = call fastcc i32 @nfp_get_fw_policy_value(ptr noundef %pdev, ptr noundef %call2, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, ptr noundef nonnull %reset.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end20.i.nfp_fw_load.exit_crit_edge

if.end20.i.nfp_fw_load.exit_crit_edge:            ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_fw_load.exit

if.end24.i:                                       ; preds = %if.end20.i
  %call25.i = call fastcc i32 @nfp_get_fw_policy_value(ptr noundef %pdev, ptr noundef %call2, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, ptr noundef nonnull %policy.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end24.i.nfp_fw_load.exit_crit_edge

if.end24.i.nfp_fw_load.exit_crit_edge:            ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_fw_load.exit

if.end28.i:                                       ; preds = %if.end24.i
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %fw_name.i.i) #7
  %31 = call ptr @memset(ptr %fw_name.i.i, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %serial.i.i) #7
  %32 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 -1 to ptr), ptr %serial.i.i, align 4, !annotation !279
  %33 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cpp, align 4
  %call.i159.i = call ptr @nfp_cpp_device(ptr noundef %34) #7
  %parent.i.i = getelementptr inbounds %struct.device, ptr %call.i159.i, i32 0, i32 1
  %35 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent.i.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.83) #10
  %37 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cpp, align 4
  %call2.i.i = call zeroext i16 @nfp_cpp_interface(ptr noundef %38) #7
  %39 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cpp, align 4
  %call4.i.i = call i32 @nfp_cpp_serial(ptr noundef %40, ptr noundef nonnull %serial.i.i) #7
  %41 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %serial.i.i, align 4
  %conv.i.i = zext i16 %call2.i.i to i32
  %43 = lshr i32 %conv.i.i, 8
  %and.i.i = and i32 %conv.i.i, 255
  %call6.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %fw_name.i.i, ptr noundef nonnull @.str.85, ptr noundef %42, i32 noundef %43, i32 noundef %and.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i.i.i) #7
  %44 = ptrtoint ptr %fw.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %fw.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i.i.i = call i32 @request_firmware_direct(ptr noundef nonnull %fw.i.i.i, ptr noundef nonnull %fw_name.i.i, ptr noundef %dev.i.i.i) #7
  %45 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cpp, align 4
  %call1.i.i.i = call ptr @nfp_cpp_device(ptr noundef %46) #7
  %parent.i.i.i = getelementptr inbounds %struct.device, ptr %call1.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %parent.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, ptr @.str.99, ptr @.str.98
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.96, ptr noundef nonnull %fw_name.i.i, ptr noundef nonnull %cond.i.i.i) #10
  br i1 %tobool.not.i.i.i, label %nfp_net_fw_request.exit.i.i, label %nfp_net_fw_request.exit.thread.i.i

nfp_net_fw_request.exit.thread.i.i:               ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i.i) #7
  br label %if.end.i.i

nfp_net_fw_request.exit.i.i:                      ; preds = %if.end28.i
  %49 = ptrtoint ptr %fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fw.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i.i) #7
  %tobool.not.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i, label %nfp_net_fw_request.exit.i.i.if.end.i.i_crit_edge, label %nfp_net_fw_request.exit.i.i.nfp_net_fw_find.exit.i_crit_edge

nfp_net_fw_request.exit.i.i.nfp_net_fw_find.exit.i_crit_edge: ; preds = %nfp_net_fw_request.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_net_fw_find.exit.i

nfp_net_fw_request.exit.i.i.if.end.i.i_crit_edge: ; preds = %nfp_net_fw_request.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %nfp_net_fw_request.exit.i.i.if.end.i.i_crit_edge, %nfp_net_fw_request.exit.thread.i.i
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %51 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.pci_name.exit.i.i_crit_edge

if.end.i.i.pci_name.exit.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_name.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i.i.i, align 4
  br label %pci_name.exit.i.i

pci_name.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end.i.i.pci_name.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %54, %if.end.i.i.i.i ], [ %52, %if.end.i.i.pci_name.exit.i.i_crit_edge ]
  %call11.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %fw_name.i.i, ptr noundef nonnull @.str.86, ptr noundef %retval.0.i.i.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i116.i.i) #7
  %55 = ptrtoint ptr %fw.i116.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %fw.i116.i.i, align 4
  %call.i118.i.i = call i32 @request_firmware_direct(ptr noundef nonnull %fw.i116.i.i, ptr noundef nonnull %fw_name.i.i, ptr noundef %dev.i.i.i) #7
  %56 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cpp, align 4
  %call1.i120.i.i = call ptr @nfp_cpp_device(ptr noundef %57) #7
  %parent.i121.i.i = getelementptr inbounds %struct.device, ptr %call1.i120.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %parent.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %parent.i121.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118.i.i)
  %tobool.not.i122.i.i = icmp eq i32 %call.i118.i.i, 0
  %cond.i123.i.i = select i1 %tobool.not.i122.i.i, ptr @.str.99, ptr @.str.98
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str.96, ptr noundef nonnull %fw_name.i.i, ptr noundef nonnull %cond.i123.i.i) #10
  br i1 %tobool.not.i122.i.i, label %nfp_net_fw_request.exit126.i.i, label %nfp_net_fw_request.exit126.thread.i.i

nfp_net_fw_request.exit126.thread.i.i:            ; preds = %pci_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i116.i.i) #7
  br label %if.end16.i.i

nfp_net_fw_request.exit126.i.i:                   ; preds = %pci_name.exit.i.i
  %60 = ptrtoint ptr %fw.i116.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fw.i116.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i116.i.i) #7
  %tobool14.not.i.i = icmp eq ptr %61, null
  br i1 %tobool14.not.i.i, label %nfp_net_fw_request.exit126.i.i.if.end16.i.i_crit_edge, label %nfp_net_fw_request.exit126.i.i.nfp_net_fw_find.exit.i_crit_edge

nfp_net_fw_request.exit126.i.i.nfp_net_fw_find.exit.i_crit_edge: ; preds = %nfp_net_fw_request.exit126.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_net_fw_find.exit.i

nfp_net_fw_request.exit126.i.i.if.end16.i.i_crit_edge: ; preds = %nfp_net_fw_request.exit126.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %nfp_net_fw_request.exit126.i.i.if.end16.i.i_crit_edge, %nfp_net_fw_request.exit126.thread.i.i
  %62 = ptrtoint ptr %eth_tbl.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %eth_tbl.i, align 4
  %tobool17.not.i.i = icmp eq ptr %63, null
  br i1 %tobool17.not.i.i, label %do.end21.i.i, label %if.end22.i.i

do.end21.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.88) #10
  br label %nfp_net_fw_find.exit.i

if.end22.i.i:                                     ; preds = %if.end16.i.i
  %hwinfo.i.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 21
  %64 = ptrtoint ptr %hwinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hwinfo.i.i, align 4
  %call23.i.i = call ptr @nfp_hwinfo_lookup(ptr noundef %65, ptr noundef nonnull @.str.25) #7
  %tobool24.not.i.i = icmp eq ptr %call23.i.i, null
  br i1 %tobool24.not.i.i, label %do.end28.i.i, label %if.end30.i.i

do.end28.i.i:                                     ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.91) #10
  br label %nfp_net_fw_find.exit.i

if.end30.i.i:                                     ; preds = %if.end22.i.i
  %call32.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name.i.i, i32 noundef 256, ptr noundef nonnull @.str.93, ptr noundef nonnull %call23.i.i) #7
  %sub.i.i = sub i32 256, %call32.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp151.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp151.i.i, label %if.end30.i.i.land.rhs.i.i_crit_edge, label %if.end30.i.i.nfp_net_fw_find.exit.i_crit_edge

if.end30.i.i.nfp_net_fw_find.exit.i_crit_edge:    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_net_fw_find.exit.i

if.end30.i.i.land.rhs.i.i_crit_edge:              ; preds = %if.end30.i.i
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.end.i.i.land.rhs.i.i_crit_edge, %if.end30.i.i.land.rhs.i.i_crit_edge
  %i.0153.i.i = phi i32 [ %add.lcssa.i.i, %while.end.i.i.land.rhs.i.i_crit_edge ], [ 0, %if.end30.i.i.land.rhs.i.i_crit_edge ]
  %spc.0152.i.i = phi i32 [ %sub52.i.i, %while.end.i.i.land.rhs.i.i_crit_edge ], [ %sub.i.i, %if.end30.i.i.land.rhs.i.i_crit_edge ]
  %66 = ptrtoint ptr %eth_tbl.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %eth_tbl.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %i.0153.i.i)
  %cmp35.i.i = icmp ugt i32 %69, %i.0153.i.i
  br i1 %cmp35.i.i, label %for.body.i.i, label %if.end57.i.i

for.body.i.i:                                     ; preds = %land.rhs.i.i
  %arrayidx.i.i = getelementptr %struct.nfp_eth_table, ptr %67, i32 0, i32 2, i32 %i.0153.i.i
  %add144.i.i = add nuw i32 %i.0153.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add144.i.i, i32 %69)
  %cmp40145.i.i = icmp ult i32 %add144.i.i, %69
  br i1 %cmp40145.i.i, label %land.rhs42.lr.ph.i.i, label %for.body.i.i.while.end.i.i_crit_edge

for.body.i.i.while.end.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

land.rhs42.lr.ph.i.i:                             ; preds = %for.body.i.i
  %speed.i.i = getelementptr %struct.nfp_eth_table, ptr %67, i32 0, i32 2, i32 %i.0153.i.i, i32 5
  %70 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %speed.i.i, align 4
  %72 = sub i32 %69, %i.0153.i.i
  %speed44.i189.i = getelementptr %struct.nfp_eth_table_port, ptr %arrayidx.i.i, i32 1, i32 5
  %73 = ptrtoint ptr %speed44.i189.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %speed44.i189.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %74)
  %cmp45.i190.i = icmp eq i32 %71, %74
  br i1 %cmp45.i190.i, label %land.rhs42.lr.ph.i.i.while.body.i.i_crit_edge, label %land.rhs42.lr.ph.i.i.while.end.i.i_crit_edge

land.rhs42.lr.ph.i.i.while.end.i.i_crit_edge:     ; preds = %land.rhs42.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

land.rhs42.lr.ph.i.i.while.body.i.i_crit_edge:    ; preds = %land.rhs42.lr.ph.i.i
  br label %while.body.i.i

land.rhs42.i.i:                                   ; preds = %while.body.i.i
  %speed44.i.i = getelementptr %struct.nfp_eth_table_port, ptr %arrayidx.i.i, i32 %inc.i.i, i32 5
  %75 = ptrtoint ptr %speed44.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %speed44.i.i, align 4
  %cmp45.i.i = icmp eq i32 %71, %76
  br i1 %cmp45.i.i, label %land.rhs42.i.i.while.body.i.i_crit_edge, label %while.end.i.loopexit.split.loop.exit209.i

land.rhs42.i.i.while.body.i.i_crit_edge:          ; preds = %land.rhs42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %land.rhs42.i.i.while.body.i.i_crit_edge, %land.rhs42.lr.ph.i.i.while.body.i.i_crit_edge
  %j.0146.i191.i = phi i32 [ %inc.i.i, %land.rhs42.i.i.while.body.i.i_crit_edge ], [ 1, %land.rhs42.lr.ph.i.i.while.body.i.i_crit_edge ]
  %inc.i.i = add i32 %j.0146.i191.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %72)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %72
  br i1 %exitcond.not.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %land.rhs42.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

while.end.i.loopexit.split.loop.exit209.i:        ; preds = %land.rhs42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.le.i = add i32 %inc.i.i, %i.0153.i.i
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.end.i.loopexit.split.loop.exit209.i, %while.body.i.i.while.end.i.i_crit_edge, %land.rhs42.lr.ph.i.i.while.end.i.i_crit_edge, %for.body.i.i.while.end.i.i_crit_edge
  %j.0.lcssa.i.i = phi i32 [ 1, %for.body.i.i.while.end.i.i_crit_edge ], [ 1, %land.rhs42.lr.ph.i.i.while.end.i.i_crit_edge ], [ %inc.i.i, %while.end.i.loopexit.split.loop.exit209.i ], [ %72, %while.body.i.i.while.end.i.i_crit_edge ]
  %add.lcssa.i.i = phi i32 [ %add144.i.i, %for.body.i.i.while.end.i.i_crit_edge ], [ %add144.i.i, %land.rhs42.lr.ph.i.i.while.end.i.i_crit_edge ], [ %add.i.le.i, %while.end.i.loopexit.split.loop.exit209.i ], [ %69, %while.body.i.i.while.end.i.i_crit_edge ]
  %sub48.i.i = sub i32 256, %spc.0152.i.i
  %arrayidx49.i.i = getelementptr [256 x i8], ptr %fw_name.i.i, i32 0, i32 %sub48.i.i
  %speed50.i.i = getelementptr %struct.nfp_eth_table, ptr %67, i32 0, i32 2, i32 %i.0153.i.i, i32 5
  %77 = ptrtoint ptr %speed50.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %speed50.i.i, align 4
  %div.i.i = udiv i32 %78, 1000
  %call51.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx49.i.i, i32 noundef %spc.0152.i.i, ptr noundef nonnull @.str.94, i32 noundef %j.0.lcssa.i.i, i32 noundef %div.i.i) #7
  %sub52.i.i = sub i32 %spc.0152.i.i, %call51.i.i
  %cmp.i.i65 = icmp sgt i32 %sub52.i.i, 0
  br i1 %cmp.i.i65, label %while.end.i.i.land.rhs.i.i_crit_edge, label %while.end.i.i.nfp_net_fw_find.exit.i_crit_edge

while.end.i.i.nfp_net_fw_find.exit.i_crit_edge:   ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_net_fw_find.exit.i

while.end.i.i.land.rhs.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i

if.end57.i.i:                                     ; preds = %land.rhs.i.i
  %sub58.i.i = sub nsw i32 256, %spc.0152.i.i
  %arrayidx59.i.i = getelementptr [256 x i8], ptr %fw_name.i.i, i32 0, i32 %sub58.i.i
  %call60.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx59.i.i, i32 noundef %spc.0152.i.i, ptr noundef nonnull @.str.95) #7
  %sub61.i.i = sub i32 %spc.0152.i.i, %call60.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub61.i.i)
  %cmp62.i.i = icmp slt i32 %sub61.i.i, 1
  br i1 %cmp62.i.i, label %if.end57.i.i.nfp_net_fw_find.exit.i_crit_edge, label %if.end65.i.i

if.end57.i.i.nfp_net_fw_find.exit.i_crit_edge:    ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_net_fw_find.exit.i

if.end65.i.i:                                     ; preds = %if.end57.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i127.i.i) #7
  %79 = ptrtoint ptr %fw.i127.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %fw.i127.i.i, align 4
  %call.i129.i.i = call i32 @request_firmware_direct(ptr noundef nonnull %fw.i127.i.i, ptr noundef nonnull %fw_name.i.i, ptr noundef %dev.i.i.i) #7
  %80 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cpp, align 4
  %call1.i131.i.i = call ptr @nfp_cpp_device(ptr noundef %81) #7
  %parent.i132.i.i = getelementptr inbounds %struct.device, ptr %call1.i131.i.i, i32 0, i32 1
  %82 = ptrtoint ptr %parent.i132.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %parent.i132.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129.i.i)
  %tobool.not.i133.i.i = icmp eq i32 %call.i129.i.i, 0
  %cond.i134.i.i = select i1 %tobool.not.i133.i.i, ptr @.str.99, ptr @.str.98
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %83, ptr noundef nonnull @.str.96, ptr noundef nonnull %fw_name.i.i, ptr noundef nonnull %cond.i134.i.i) #10
  br i1 %tobool.not.i133.i.i, label %if.end.i135.i.i, label %if.end65.i.i.nfp_net_fw_request.exit137.i.i_crit_edge

if.end65.i.i.nfp_net_fw_request.exit137.i.i_crit_edge: ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_net_fw_request.exit137.i.i

if.end.i135.i.i:                                  ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %fw.i127.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fw.i127.i.i, align 4
  br label %nfp_net_fw_request.exit137.i.i

nfp_net_fw_request.exit137.i.i:                   ; preds = %if.end.i135.i.i, %if.end65.i.i.nfp_net_fw_request.exit137.i.i_crit_edge
  %retval.0.i136.i.i = phi ptr [ %85, %if.end.i135.i.i ], [ null, %if.end65.i.i.nfp_net_fw_request.exit137.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i127.i.i) #7
  br label %nfp_net_fw_find.exit.i

nfp_net_fw_find.exit.i:                           ; preds = %nfp_net_fw_request.exit137.i.i, %if.end57.i.i.nfp_net_fw_find.exit.i_crit_edge, %while.end.i.i.nfp_net_fw_find.exit.i_crit_edge, %if.end30.i.i.nfp_net_fw_find.exit.i_crit_edge, %do.end28.i.i, %do.end21.i.i, %nfp_net_fw_request.exit126.i.i.nfp_net_fw_find.exit.i_crit_edge, %nfp_net_fw_request.exit.i.i.nfp_net_fw_find.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %retval.0.i136.i.i, %nfp_net_fw_request.exit137.i.i ], [ null, %do.end28.i.i ], [ null, %do.end21.i.i ], [ %50, %nfp_net_fw_request.exit.i.i.nfp_net_fw_find.exit.i_crit_edge ], [ %61, %nfp_net_fw_request.exit126.i.i.nfp_net_fw_find.exit.i_crit_edge ], [ null, %if.end57.i.i.nfp_net_fw_find.exit.i_crit_edge ], [ null, %if.end30.i.i.nfp_net_fw_find.exit.i_crit_edge ], [ null, %while.end.i.i.nfp_net_fw_find.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %serial.i.i) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %fw_name.i.i) #7
  %86 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp30.i = icmp eq i32 %87, 1
  br i1 %cmp30.i, label %nfp_net_fw_find.exit.i.do.end39.i_crit_edge, label %lor.rhs.i

nfp_net_fw_find.exit.i.do.end39.i_crit_edge:      ; preds = %nfp_net_fw_find.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39.i

lor.rhs.i:                                        ; preds = %nfp_net_fw_find.exit.i
  %tobool32.not.i = icmp ne ptr %retval.0.i.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp33.i = icmp eq i32 %87, 0
  %spec.select.i = select i1 %tobool32.not.i, i1 %cmp33.i, i1 false
  br i1 %spec.select.i, label %lor.rhs.i.do.end39.i_crit_edge, label %lor.rhs.i.if.end50.i_crit_edge

lor.rhs.i.if.end50.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

lor.rhs.i.do.end39.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39.i

do.end39.i:                                       ; preds = %lor.rhs.i.do.end39.i_crit_edge, %nfp_net_fw_find.exit.i.do.end39.i_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.64) #10
  %call41.i = call i32 @nfp_nsp_device_soft_reset(ptr noundef %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp42.i = icmp slt i32 %call41.i, 0
  br i1 %cmp42.i, label %do.end47.i, label %do.end39.i.if.end50.i_crit_edge

do.end39.i.if.end50.i_crit_edge:                  ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

do.end47.i:                                       ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.67, i32 noundef %call41.i) #10
  br label %nfp_fw_load.exit.thread69

if.end50.i:                                       ; preds = %do.end39.i.if.end50.i_crit_edge, %lor.rhs.i.if.end50.i_crit_edge
  %tobool51.not.i = icmp eq ptr %retval.0.i.i, null
  %88 = ptrtoint ptr %policy.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pr.i = load i32, ptr %policy.i, align 4
  br i1 %tobool51.not.i, label %if.else.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i)
  %cmp52.not.i = icmp eq i32 %.pr.i, 1
  br i1 %cmp52.not.i, label %land.lhs.true.i.land.lhs.true77.i_crit_edge, label %if.then54.i

land.lhs.true.i.land.lhs.true77.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true77.i

if.then54.i:                                      ; preds = %land.lhs.true.i
  %call.i160.i = call zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr noundef %call2) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 25, i16 %call.i160.i)
  %cmp.i161.i = icmp ugt i16 %call.i160.i, 25
  br i1 %cmp.i161.i, label %land.lhs.true57.i, label %if.then54.i.if.end61.i_crit_edge

if.then54.i.if.end61.i_crit_edge:                 ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.i

land.lhs.true57.i:                                ; preds = %if.then54.i
  %call58.i = call i32 @nfp_nsp_fw_loaded(ptr noundef %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %land.lhs.true57.i.if.end61.i_crit_edge, label %land.lhs.true57.i.if.end102.i.thread77_crit_edge

land.lhs.true57.i.if.end102.i.thread77_crit_edge: ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102.i.thread77

land.lhs.true57.i.if.end61.i_crit_edge:           ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.i

if.end61.i:                                       ; preds = %land.lhs.true57.i.if.end61.i_crit_edge, %if.then54.i.if.end61.i_crit_edge
  %call62.i = call i32 @nfp_nsp_load_fw(ptr noundef %call2, ptr noundef nonnull %retval.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %cmp63.i = icmp slt i32 %call62.i, 0
  br i1 %cmp63.i, label %do.end68.i, label %exit_release_fw.i

do.end68.i:                                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.70, i32 noundef %call62.i) #10
  br label %nfp_fw_load.exit.thread69

if.else.i:                                        ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp75.not.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp75.not.i, label %if.else.i.do.end92.i_crit_edge, label %if.else.i.land.lhs.true77.i_crit_edge

if.else.i.land.lhs.true77.i_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true77.i

if.else.i.do.end92.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end92.i

land.lhs.true77.i:                                ; preds = %if.else.i.land.lhs.true77.i_crit_edge, %land.lhs.true.i.land.lhs.true77.i_crit_edge
  %call.i162.i = call zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr noundef %call2) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 23, i16 %call.i162.i)
  %cmp.i163.i = icmp ugt i16 %call.i162.i, 23
  br i1 %cmp.i163.i, label %if.then80.i, label %land.lhs.true77.i.do.end92.i_crit_edge

land.lhs.true77.i.do.end92.i_crit_edge:           ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end92.i

if.then80.i:                                      ; preds = %land.lhs.true77.i
  %call81.i = call i32 @nfp_nsp_load_stored_fw(ptr noundef %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %tobool82.not.i = icmp eq i32 %call81.i, 0
  br i1 %tobool82.not.i, label %do.end86.i, label %if.then80.i.if.end102.i.thread77_crit_edge

if.then80.i.if.end102.i.thread77_crit_edge:       ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102.i.thread77

do.end86.i:                                       ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.76) #10
  br label %if.end102.i.thread77

do.end92.i:                                       ; preds = %land.lhs.true77.i.do.end92.i_crit_edge, %if.else.i.do.end92.i_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.79) #10
  br label %if.end102.i.thread77

exit_release_fw.i:                                ; preds = %if.end61.i
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.73) #10
  call void @release_firmware(ptr noundef nonnull %retval.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ifcs.0187.i)
  %cmp99.i = icmp eq i32 %ifcs.0187.i, 0
  br i1 %cmp99.i, label %if.then101.i, label %exit_release_fw.i.nfp_fw_load.exit.thread_crit_edge

exit_release_fw.i.nfp_fw_load.exit.thread_crit_edge: ; preds = %exit_release_fw.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_fw_load.exit.thread

if.then101.i:                                     ; preds = %exit_release_fw.i
  call void @__sanitizer_cov_trace_pc() #9
  %unload_fw_on_remove.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 17
  %89 = ptrtoint ptr %unload_fw_on_remove.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %unload_fw_on_remove.i, align 1
  br label %nfp_fw_load.exit.thread

if.end102.i.thread77:                             ; preds = %do.end92.i, %do.end86.i, %if.then80.i.if.end102.i.thread77_crit_edge, %land.lhs.true57.i.if.end102.i.thread77_crit_edge
  call void @release_firmware(ptr noundef %retval.0.i.i) #7
  br label %nfp_fw_load.exit.thread

nfp_fw_load.exit.thread69:                        ; preds = %do.end68.i, %do.end47.i
  %err.1.ph.i = phi i32 [ %call62.i, %do.end68.i ], [ %call41.i, %do.end47.i ]
  call void @release_firmware(ptr noundef %retval.0.i.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hwinfo.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %policy.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reset.i) #7
  br label %if.then22

nfp_fw_load.exit.thread:                          ; preds = %if.end102.i.thread77, %if.then101.i, %exit_release_fw.i.nfp_fw_load.exit.thread_crit_edge, %do.end18.i
  %retval.2.i.ph = phi i32 [ 0, %do.end18.i ], [ 0, %if.end102.i.thread77 ], [ 1, %if.then101.i ], [ 1, %exit_release_fw.i.nfp_fw_load.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hwinfo.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %policy.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reset.i) #7
  br label %if.end28

nfp_fw_load.exit:                                 ; preds = %if.end24.i.nfp_fw_load.exit_crit_edge, %if.end20.i.nfp_fw_load.exit_crit_edge, %cleanup.thread.i, %if.end19.nfp_fw_load.exit_crit_edge
  %retval.2.i = phi i32 [ %call2.i, %if.end19.nfp_fw_load.exit_crit_edge ], [ %call21.i, %if.end20.i.nfp_fw_load.exit_crit_edge ], [ %call25.i, %if.end24.i.nfp_fw_load.exit_crit_edge ], [ %call.i.i61, %cleanup.thread.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hwinfo.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %policy.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reset.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i)
  %cmp21 = icmp slt i32 %retval.2.i, 0
  br i1 %cmp21, label %nfp_fw_load.exit.if.then22_crit_edge, label %nfp_fw_load.exit.if.end28_crit_edge

nfp_fw_load.exit.if.end28_crit_edge:              ; preds = %nfp_fw_load.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

nfp_fw_load.exit.if.then22_crit_edge:             ; preds = %nfp_fw_load.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.then22:                                        ; preds = %nfp_fw_load.exit.if.then22_crit_edge, %nfp_fw_load.exit.thread69
  %retval.2.i72 = phi i32 [ %err.1.ph.i, %nfp_fw_load.exit.thread69 ], [ %retval.2.i, %nfp_fw_load.exit.if.then22_crit_edge ]
  %90 = ptrtoint ptr %nspi to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %nspi, align 4
  call void @kfree(ptr noundef %91) #7
  %92 = ptrtoint ptr %eth_tbl.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %eth_tbl.i, align 4
  call void @kfree(ptr noundef %93) #7
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.47) #10
  br label %exit_close_nsp

if.end28:                                         ; preds = %nfp_fw_load.exit.if.end28_crit_edge, %nfp_fw_load.exit.thread
  %retval.2.i68 = phi i32 [ %retval.2.i.ph, %nfp_fw_load.exit.thread ], [ %retval.2.i, %nfp_fw_load.exit.if.end28_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i68)
  %tobool29 = icmp ne i32 %retval.2.i68, 0
  %fw_loaded = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 16
  %frombool = zext i1 %tobool29 to i8
  %94 = ptrtoint ptr %fw_loaded to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %frombool, ptr %fw_loaded, align 4
  br label %exit_close_nsp

exit_close_nsp:                                   ; preds = %if.end28, %if.then22, %if.end6.exit_close_nsp_crit_edge
  %err.0 = phi i32 [ %call7, %if.end6.exit_close_nsp_crit_edge ], [ %retval.2.i72, %if.then22 ], [ 0, %if.end28 ]
  call void @nfp_nsp_close(ptr noundef %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %exit_close_nsp, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then4 ], [ %err.0, %exit_close_nsp ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_mip_open(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nfp_rtsym_table_read(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_pf_find_rtsyms(ptr nocapture noundef %pf) unnamed_addr #0 align 64 {
entry:
  %pf_symbol = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %pf_symbol) #7
  %0 = call ptr @memset(ptr %pf_symbol, i32 255, i32 256)
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 1
  %1 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cpp, align 4
  %call.i = tail call zeroext i16 @nfp_cpp_interface(ptr noundef %2) #7
  %3 = lshr i16 %call.i, 8
  %4 = and i16 %3, 15
  %conv1.i = zext i16 %4 to i32
  %call1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pf_symbol, i32 noundef 256, ptr noundef nonnull @.str.100, i32 noundef %conv1.i)
  %rtbl = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 20
  %5 = ptrtoint ptr %rtbl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rtbl, align 4
  %call3 = call ptr @nfp_rtsym_lookup(ptr noundef %6, ptr noundef nonnull %pf_symbol) #7
  %mbox = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 12
  %7 = ptrtoint ptr %mbox to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3, ptr %mbox, align 4
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %call6 = call i64 @nfp_rtsym_size(ptr noundef nonnull %call3) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %call6)
  %cmp = icmp ult i64 %call6, 16
  br i1 %cmp, label %do.end, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpp, align 4
  %call9 = call ptr @nfp_cpp_device(ptr noundef %9) #7
  %parent = getelementptr inbounds %struct.device, ptr %call9, i32 0, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %12 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mbox, align 4
  %call11 = call i64 @nfp_rtsym_size(ptr noundef %13) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.101, i64 noundef %call11, i32 noundef 16) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %pf_symbol) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_net_dump_load_dumpspec(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_pcie_sriov_read_nfd_limit(ptr nocapture noundef %pf) unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #7
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4, !annotation !279
  %rtbl = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 20
  %1 = ptrtoint ptr %rtbl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rtbl, align 4
  %call = call i64 @nfp_rtsym_read_le(ptr noundef %2, ptr noundef nonnull @.str.103, ptr noundef nonnull %err) #7
  %conv = trunc i64 %call to i32
  %limit_vfs = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 14
  %3 = ptrtoint ptr %limit_vfs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %limit_vfs, align 4
  %4 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %limit_vfs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %limit_vfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %5)
  %cmp = icmp eq i32 %5, -2
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 1
  %7 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpp, align 4
  %call4 = call ptr @nfp_cpp_device(ptr noundef %8) #7
  %parent = getelementptr inbounds %struct.device, ptr %call4, i32 0, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %11 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %err, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.104, i32 noundef %12) #10
  %13 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %err, align 4
  br label %cleanup

if.end5:                                          ; preds = %entry
  %15 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pf, align 4
  %conv7 = trunc i64 %call to i16
  %call8 = call i32 @pci_sriov_set_totalvfs(ptr noundef %16, i16 noundef zeroext %conv7) #7
  %17 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call8, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end5.cleanup_crit_edge, label %do.end13

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end13:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %cpp14 = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 1
  %18 = ptrtoint ptr %cpp14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cpp14, align 4
  %call15 = call ptr @nfp_cpp_device(ptr noundef %19) #7
  %parent16 = getelementptr inbounds %struct.device, ptr %call15, i32 0, i32 1
  %20 = ptrtoint ptr %parent16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent16, align 8
  %22 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %err, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.107, i32 noundef %23) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %if.end5.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %do.end13 ], [ 0, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_num_vf(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_net_pci_probe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_hwmon_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_pci_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_mip_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_fw_unload(ptr nocapture noundef readonly %pf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 1
  %0 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpp, align 4
  %call = tail call ptr @nfp_nsp_open(ptr noundef %1) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpp, align 4
  %call3 = tail call ptr @nfp_cpp_device(ptr noundef %3) #7
  %parent = getelementptr inbounds %struct.device, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.109) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @nfp_nsp_device_soft_reset(ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  %6 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pf, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  br i1 %cmp, label %do.end8, label %do.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.112, i32 noundef %call4) #10
  br label %if.end14

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.115) #10
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %do.end8
  tail call void @nfp_nsp_close(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_cpp_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_alloc_ns(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_resource_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_nsp_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nfp_nsp_identify(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nfp_eth_read_ports(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_nsp_mac_reinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_nsp_hwinfo_lookup_optional(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_get_fw_policy_value(ptr noundef %pdev, ptr noundef %nsp, ptr noundef %key, ptr noundef %default_val, ptr nocapture noundef writeonly %value) unnamed_addr #0 align 64 {
entry:
  %hwinfo = alloca [64 x i8], align 1
  %hi_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hwinfo) #7
  %0 = call ptr @memset(ptr %hwinfo, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hi_val) #7
  %1 = ptrtoint ptr %hi_val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %hi_val, align 4, !annotation !279
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %hwinfo, i32 noundef 64, ptr noundef %key)
  %call2 = call i32 @nfp_nsp_hwinfo_lookup_optional(ptr noundef %nsp, ptr noundef nonnull %hwinfo, i32 noundef 64, ptr noundef %default_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtol(ptr noundef nonnull %hwinfo, i32 noundef 0, ptr noundef nonnull %hi_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %2 = ptrtoint ptr %hi_val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hi_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %4 = icmp ugt i32 %3, 2
  br i1 %4, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false.if.end11_crit_edge

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.81, ptr noundef nonnull %hwinfo, ptr noundef %key) #10
  %call.i1 = call i32 @_kstrtol(ptr noundef %default_val, i32 noundef 0, ptr noundef nonnull %hi_val) #7
  br label %if.end11

if.end11:                                         ; preds = %do.end, %lor.lhs.false.if.end11_crit_edge
  %err.0 = phi i32 [ %call.i1, %do.end ], [ 0, %lor.lhs.false.if.end11_crit_edge ]
  %5 = ptrtoint ptr %hi_val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hi_val, align 4
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end11 ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hi_val) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hwinfo) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_nsp_device_soft_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_nsp_fw_loaded(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_nsp_load_fw(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_nsp_load_stored_fw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_serial(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_direct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_rtsym_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_sriov_set_totalvfs(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__nfp_pci_shutdown(ptr noundef %pdev, i1 noundef zeroext %unload_fw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @nfp_hwmon_unregister(ptr noundef nonnull %1) #7
  %call1 = tail call fastcc i32 @nfp_pcie_sriov_disable(ptr noundef %pdev)
  tail call void @nfp_net_pci_remove(ptr noundef nonnull %1) #7
  %dumpspec = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %dumpspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dumpspec, align 4
  tail call void @vfree(ptr noundef %3) #7
  %rtbl = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %rtbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtbl, align 4
  tail call void @kfree(ptr noundef %5) #7
  %mip = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %mip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mip, align 4
  tail call void @nfp_mip_close(ptr noundef %7) #7
  br i1 %unload_fw, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %unload_fw_on_remove = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %unload_fw_on_remove to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %unload_fw_on_remove, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end5_crit_edge, label %if.then4

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @nfp_fw_unload(ptr noundef nonnull %1)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %wq = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 33
  %10 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %11) #7
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %driver_data.i.i, align 4
  %hwinfo = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 21
  %13 = ptrtoint ptr %hwinfo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hwinfo, align 4
  tail call void @kfree(ptr noundef %14) #7
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cpp, align 4
  tail call void @nfp_cpp_free(ptr noundef %16) #7
  %eth_tbl = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 25
  %17 = ptrtoint ptr %eth_tbl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %eth_tbl, align 4
  tail call void @kfree(ptr noundef %18) #7
  %nspi = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 26
  %19 = ptrtoint ptr %nspi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nspi, align 4
  tail call void @kfree(ptr noundef %20) #7
  %lock = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 37
  tail call void @mutex_destroy(ptr noundef %lock) #7
  %call6 = tail call ptr @priv_to_devlink(ptr noundef nonnull %1) #7
  tail call void @devlink_free(ptr noundef %call6) #7
  tail call void @pci_release_regions(ptr noundef %pdev) #7
  tail call void @pci_disable_device(ptr noundef %pdev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_hwmon_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_pcie_sriov_disable(ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %call1 = tail call i32 @pci_vfs_assigned(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.117) #10
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %app = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %app, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.nfp_app_sriov_disable.exit_crit_edge, label %land.lhs.true.i

if.end.nfp_app_sriov_disable.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_app_sriov_disable.exit

land.lhs.true.i:                                  ; preds = %if.end
  %type.i = getelementptr inbounds %struct.nfp_app, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type.i, align 4
  %sriov_disable.i = getelementptr inbounds %struct.nfp_app_type, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %sriov_disable.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_disable.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.nfp_app_sriov_disable.exit_crit_edge, label %if.then.i

land.lhs.true.i.nfp_app_sriov_disable.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_app_sriov_disable.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(ptr noundef nonnull %3) #7
  br label %nfp_app_sriov_disable.exit

nfp_app_sriov_disable.exit:                       ; preds = %if.then.i, %land.lhs.true.i.nfp_app_sriov_disable.exit_crit_edge, %if.end.nfp_app_sriov_disable.exit_crit_edge
  %num_vfs = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %num_vfs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %num_vfs, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #7
  tail call void @pci_disable_sriov(ptr noundef %pdev) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfp_pcie_sriov_disable.__UNIQUE_ID_ddebug583, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfp_pcie_sriov_disable, %if.then9)) #7
          to label %cleanup [label %if.then9], !srcloc !280

if.then9:                                         ; preds = %nfp_app_sriov_disable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nfp_pcie_sriov_disable.__UNIQUE_ID_ddebug583, ptr noundef %dev10, ptr noundef nonnull @.str.120) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %nfp_app_sriov_disable.exit, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.then9 ], [ 0, %nfp_app_sriov_disable.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_vfs_assigned(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_sriov(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_pcie_sriov_enable(ptr noundef %pdev, i32 noundef %num_vfs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %limit_vfs = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %limit_vfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %limit_vfs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %num_vfs)
  %cmp = icmp ult i32 %3, %num_vfs
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpp, align 4
  %call1 = tail call ptr @nfp_cpp_device(ptr noundef %5) #7
  %parent = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %8 = ptrtoint ptr %limit_vfs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %limit_vfs, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.121, i32 noundef %9) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @pci_enable_sriov(ptr noundef %pdev, i32 noundef %num_vfs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end8, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.124, i32 noundef %call3) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %app = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %app, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end8.do.end14_crit_edge, label %lor.lhs.false.i

if.end8.do.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

lor.lhs.false.i:                                  ; preds = %if.end8
  %type.i = getelementptr inbounds %struct.nfp_app, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type.i, align 4
  %sriov_enable.i = getelementptr inbounds %struct.nfp_app_type, ptr %13, i32 0, i32 31
  %14 = ptrtoint ptr %sriov_enable.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sriov_enable.i, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end14_crit_edge, label %nfp_app_sriov_enable.exit

lor.lhs.false.i.do.end14_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

nfp_app_sriov_enable.exit:                        ; preds = %lor.lhs.false.i
  %call.i = tail call i32 %15(ptr noundef nonnull %11, i32 noundef %num_vfs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end16, label %nfp_app_sriov_enable.exit.do.end14_crit_edge

nfp_app_sriov_enable.exit.do.end14_crit_edge:     ; preds = %nfp_app_sriov_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.end14:                                         ; preds = %nfp_app_sriov_enable.exit.do.end14_crit_edge, %lor.lhs.false.i.do.end14_crit_edge, %if.end8.do.end14_crit_edge
  %retval.0.i5457 = phi i32 [ %call.i, %nfp_app_sriov_enable.exit.do.end14_crit_edge ], [ -95, %lor.lhs.false.i.do.end14_crit_edge ], [ -95, %if.end8.do.end14_crit_edge ]
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev15, ptr noundef nonnull @.str.127, i32 noundef %retval.0.i5457) #10
  tail call void @mutex_unlock(ptr noundef %lock) #7
  tail call void @pci_disable_sriov(ptr noundef %pdev) #7
  br label %cleanup

if.end16:                                         ; preds = %nfp_app_sriov_enable.exit
  %num_vfs17 = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 15
  %16 = ptrtoint ptr %num_vfs17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %num_vfs, ptr %num_vfs17, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfp_pcie_sriov_enable.__UNIQUE_ID_ddebug582, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfp_pcie_sriov_enable, %if.then23)) #7
          to label %do.end28 [label %if.then23], !srcloc !280

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %17 = ptrtoint ptr %num_vfs17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_vfs17, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nfp_pcie_sriov_enable.__UNIQUE_ID_ddebug582, ptr noundef %dev24, ptr noundef nonnull @.str.129, i32 noundef %18) #7
  br label %do.end28

do.end28:                                         ; preds = %if.then23, %if.end16
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %do.end14, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call3, %do.end7 ], [ %retval.0.i5457, %do.end14 ], [ %num_vfs, %do.end28 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_sriov(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_debugfs_create() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !79, !81, !82, !83, !84, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !130, !132, !134, !135, !136, !137, !139, !140, !141, !143, !145, !147, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !178, !180, !181, !182, !183, !185, !187, !189, !190, !191, !193, !194, !195, !197, !199, !201, !203, !204, !205, !206, !207, !208, !210, !212, !213, !214, !215, !217, !219, !220, !221, !222, !224, !225, !226, !228, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !244, !246, !247, !248, !250, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !266, !267, !268}
!llvm.module.flags = !{!269, !270, !271, !272, !273, !274, !275, !276}
!llvm.ident = !{!277}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 64, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nfp_pf_rtsym_read_optional._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nfp_pf_rtsym_read_optional._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 100, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @nfp_mbox_cmd._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @nfp_mbox_cmd._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @nfp_flash_update_common.__msg, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 315, i32 4}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 317, i32 4}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nfp_flash_update_common._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @nfp_flash_update_common._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 324, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nfp_flash_update_common._entry.10, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @nfp_flash_update_common._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__initcall__kmod_nfp__584_888_nfp_main_init6, !27, !"__initcall__kmod_nfp__584_888_nfp_main_init6", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 888, i32 1}
!28 = !{ptr @__exitcall_nfp_main_exit, !29, !"__exitcall_nfp_main_exit", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 889, i32 1}
!30 = !{ptr @__UNIQUE_ID_firmware585, !31, !"__UNIQUE_ID_firmware585", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 891, i32 1}
!32 = !{ptr @__UNIQUE_ID_firmware586, !33, !"__UNIQUE_ID_firmware586", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 892, i32 1}
!34 = !{ptr @__UNIQUE_ID_firmware587, !35, !"__UNIQUE_ID_firmware587", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 893, i32 1}
!36 = !{ptr @__UNIQUE_ID_firmware588, !37, !"__UNIQUE_ID_firmware588", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 894, i32 1}
!38 = !{ptr @__UNIQUE_ID_firmware589, !39, !"__UNIQUE_ID_firmware589", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 895, i32 1}
!40 = !{ptr @__UNIQUE_ID_firmware590, !41, !"__UNIQUE_ID_firmware590", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 896, i32 1}
!42 = !{ptr @__UNIQUE_ID_firmware591, !43, !"__UNIQUE_ID_firmware591", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 897, i32 1}
!44 = !{ptr @__UNIQUE_ID_firmware592, !45, !"__UNIQUE_ID_firmware592", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 898, i32 1}
!46 = !{ptr @__UNIQUE_ID_firmware593, !47, !"__UNIQUE_ID_firmware593", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 899, i32 1}
!48 = !{ptr @__UNIQUE_ID_firmware594, !49, !"__UNIQUE_ID_firmware594", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 900, i32 1}
!50 = !{ptr @__UNIQUE_ID_firmware595, !51, !"__UNIQUE_ID_firmware595", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 901, i32 1}
!52 = !{ptr @__UNIQUE_ID_author596, !53, !"__UNIQUE_ID_author596", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 903, i32 1}
!54 = !{ptr @__UNIQUE_ID_file597, !55, !"__UNIQUE_ID_file597", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 904, i32 1}
!56 = !{ptr @__UNIQUE_ID_license598, !55, !"__UNIQUE_ID_license598", i1 false, i1 false}
!57 = !{ptr @__UNIQUE_ID_description599, !58, !"__UNIQUE_ID_description599", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 905, i32 1}
!59 = !{ptr @nfp_pci_driver, !60, !"nfp_pci_driver", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 846, i32 26}
!61 = !{ptr @nfp_driver_name, !62, !"nfp_driver_name", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 32, i32 19}
!63 = !{ptr @nfp_pci_device_ids, !64, !"nfp_pci_device_ids", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 34, i32 35}
!65 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 676, i32 3}
!67 = !{ptr @.str.15, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @nfp_pci_probe._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @nfp_pci_probe._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.17, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 691, i32 3}
!72 = !{ptr @nfp_pci_probe._entry.16, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @nfp_pci_probe._entry_ptr.18, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @nfp_pci_probe.__key, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 703, i32 2}
!76 = !{ptr @.str.19, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.20, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 707, i32 27}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 725, i32 2}
!81 = !{ptr @nfp_pci_probe._entry.21, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @nfp_pci_probe._entry_ptr.23, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 756, i32 3}
!90 = !{ptr @nfp_pci_probe._entry.29, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @nfp_pci_probe._entry_ptr.31, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 769, i32 3}
!94 = !{ptr @nfp_pci_probe._entry.32, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @nfp_pci_probe._entry_ptr.34, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 184, i32 4}
!98 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @nfp_pf_board_state_wait._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @nfp_pf_board_state_wait._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 188, i32 3}
!103 = !{ptr @nfp_pf_board_state_wait._entry.37, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @nfp_pf_board_state_wait._entry_ptr.39, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 167, i32 37}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 590, i32 35}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 597, i32 3}
!111 = !{ptr @nfp_nsp_init._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @nfp_nsp_init._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 609, i32 3}
!115 = !{ptr @nfp_nsp_init._entry.43, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @nfp_nsp_init._entry_ptr.45, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 615, i32 3}
!119 = !{ptr @nfp_nsp_init._entry.46, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @nfp_nsp_init._entry_ptr.48, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 580, i32 3}
!123 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @nfp_nsp_init_ports._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @nfp_nsp_init_ports._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 463, i32 35}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 465, i32 11}
!130 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 471, i32 31}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 476, i32 4}
!134 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @nfp_fw_load._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @nfp_fw_load._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 488, i32 3}
!139 = !{ptr @nfp_fw_load._entry.56, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @nfp_fw_load._entry_ptr.58, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 492, i32 43}
!143 = !{ptr @.str.60, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 493, i32 11}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 498, i32 43}
!147 = !{ptr @.str.62, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 499, i32 11}
!149 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 509, i32 3}
!151 = !{ptr @nfp_fw_load._entry.63, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @nfp_fw_load._entry_ptr.65, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.67, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 512, i32 4}
!155 = !{ptr @nfp_fw_load._entry.66, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @nfp_fw_load._entry_ptr.68, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.70, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 524, i32 4}
!159 = !{ptr @nfp_fw_load._entry.69, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @nfp_fw_load._entry_ptr.71, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 528, i32 3}
!163 = !{ptr @nfp_fw_load._entry.72, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @nfp_fw_load._entry_ptr.74, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 537, i32 4}
!167 = !{ptr @nfp_fw_load._entry.75, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @nfp_fw_load._entry_ptr.77, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.79, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 543, i32 3}
!171 = !{ptr @nfp_fw_load._entry.78, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @nfp_fw_load._entry_ptr.80, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 435, i32 3}
!175 = !{ptr @.str.82, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @nfp_get_fw_policy_value._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @nfp_get_fw_policy_value._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 365, i32 2}
!180 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @nfp_net_fw_find._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @nfp_net_fw_find._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 370, i32 19}
!185 = !{ptr @.str.86, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 377, i32 19}
!187 = !{ptr @.str.88, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 384, i32 3}
!189 = !{ptr @nfp_net_fw_find._entry.87, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @nfp_net_fw_find._entry_ptr.89, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.91, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 390, i32 3}
!193 = !{ptr @nfp_net_fw_find._entry.90, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @nfp_net_fw_find._entry_ptr.92, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.93, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 395, i32 32}
!197 = !{ptr @.str.94, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 405, i32 5}
!199 = !{ptr @.str.95, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 411, i32 60}
!201 = !{ptr @.str.96, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 339, i32 2}
!203 = !{ptr @.str.97, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @nfp_net_fw_request._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @nfp_net_fw_request._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.98, !202, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.99, !202, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.100, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 656, i32 41}
!210 = !{ptr @.str.101, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 659, i32 3}
!212 = !{ptr @.str.102, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @nfp_pf_find_rtsyms._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @nfp_pf_find_rtsyms._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.103, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 204, i32 46}
!217 = !{ptr @.str.104, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 211, i32 3}
!219 = !{ptr @.str.105, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @nfp_pcie_sriov_read_nfd_limit._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @nfp_pcie_sriov_read_nfd_limit._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.107, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 217, i32 3}
!224 = !{ptr @nfp_pcie_sriov_read_nfd_limit._entry.106, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @nfp_pcie_sriov_read_nfd_limit._entry_ptr.108, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.109, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 635, i32 3}
!228 = !{ptr @.str.110, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @nfp_fw_unload._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @nfp_fw_unload._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.112, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 641, i32 3}
!233 = !{ptr @nfp_fw_unload._entry.111, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @nfp_fw_unload._entry_ptr.113, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.115, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 643, i32 3}
!237 = !{ptr @nfp_fw_unload._entry.114, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @nfp_fw_unload._entry_ptr.116, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.117, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 276, i32 3}
!241 = !{ptr @.str.118, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @nfp_pcie_sriov_disable._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @nfp_pcie_sriov_disable._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.119, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 288, i32 2}
!246 = !{ptr @.str.120, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @nfp_pcie_sriov_disable.__UNIQUE_ID_ddebug583, !245, !"__UNIQUE_ID_ddebug583", i1 false, i1 false}
!248 = !{ptr @.str.121, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 228, i32 3}
!250 = !{ptr @.str.122, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @nfp_pcie_sriov_enable._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @nfp_pcie_sriov_enable._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.124, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 235, i32 3}
!255 = !{ptr @nfp_pcie_sriov_enable._entry.123, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @nfp_pcie_sriov_enable._entry_ptr.125, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.127, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 243, i32 3}
!259 = !{ptr @nfp_pcie_sriov_enable._entry.126, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @nfp_pcie_sriov_enable._entry_ptr.128, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.129, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 251, i32 2}
!263 = !{ptr @nfp_pcie_sriov_enable.__UNIQUE_ID_ddebug582, !262, !"__UNIQUE_ID_ddebug582", i1 false, i1 false}
!264 = !{ptr @.str.130, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_main.c", i32 859, i32 2}
!266 = !{ptr @.str.131, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @nfp_main_init._entry, !265, !"_entry", i1 false, i1 false}
!268 = !{ptr @nfp_main_init._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!269 = !{i32 1, !"wchar_size", i32 2}
!270 = !{i32 1, !"min_enum_size", i32 4}
!271 = !{i32 8, !"branch-target-enforcement", i32 0}
!272 = !{i32 8, !"sign-return-address", i32 0}
!273 = !{i32 8, !"sign-return-address-all", i32 0}
!274 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!275 = !{i32 7, !"uwtable", i32 1}
!276 = !{i32 7, !"frame-pointer", i32 2}
!277 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!278 = !{i8 0, i8 2}
!279 = !{!"auto-init"}
!280 = !{i64 2148710932, i64 2148710937, i64 2148710950, i64 2148710994, i64 2148711028, i64 2148711049}
