; ModuleID = '/llk/IR_all_yes/drivers/ptp/ptp_ocp.c_pt.bc'
source_filename = "../drivers/ptp/ptp_ocp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ocp_resource = type { i32, i32, i32, ptr, ptr, i32, ptr }
%struct.ptp_ocp_ext_info = type { i32, ptr, ptr }
%struct.ptp_ocp_i2c_info = type { ptr, i32, i32, ptr }
%struct.spi_board_info = type { [32 x i8], ptr, ptr, ptr, i32, i32, i16, i16, i32 }
%struct.xspi_platform_data = type { i16, i8, ptr, i8 }
%struct.ptp_ocp_flash_info = type { ptr, i32, i32, ptr }
%struct.devlink_ops = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.62, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.62 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.63, i32, %struct.spinlock }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { ptr, ptr }
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
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.ocp_selector = type { ptr, i32 }
%struct.ptp_ocp_sma_connector = type { i32, i8, i16 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ptp_ocp = type { ptr, %struct.device, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ptp_clock_info, ptr, ptr, ptr, %struct.timer_list, ptr, i64, i32, i32, i32, i32, i32, i32, [6 x i8], i8, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.131, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.131 = type { ptr }
%struct.pps_device = type { %struct.pps_source_info, %struct.pps_kparams, i32, i32, %struct.pps_ktime, %struct.pps_ktime, i32, i32, %struct.wait_queue_head, i32, ptr, %struct.cdev, ptr, ptr, %struct.spinlock }
%struct.pps_source_info = type { [32 x i8], [32 x i8], i32, ptr, ptr, ptr }
%struct.pps_kparams = type { i32, i32, %struct.pps_ktime, %struct.pps_ktime }
%struct.pps_ktime = type { i64, i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.ocp_reg = type { i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, [2 x i32], i32, i32, [2 x i32], i32, i32, [6 x i32], i32, i32, i32, i32 }
%struct.tod_reg = type { i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], i32, i32 }
%struct.ptp_ocp_ext_src = type { ptr, ptr, ptr, i32 }
%struct.ptp_clock_event = type { i32, i32, %union.anon.137 }
%union.anon.137 = type { %struct.pps_event_time }
%struct.pps_event_time = type { %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.ts_reg = type { i32, i32, i32, i32, [4 x i32], i32, [3 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, i32, i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.irig_master_reg = type { i32, i32, i32, i32, i32, i32 }
%struct.dcf_master_reg = type { i32, i32, i32, i32, i32 }
%struct.pps_reg = type { i32, i32, [6 x i32], i32 }
%struct.erase_info = type { i64, i64, i64 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.pdev_archdata = type { ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.ptp_clock_request = type { i32, %union.anon.132 }
%union.anon.132 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.133, %struct.ptp_clock_time, i32, i32, %union.anon.134 }
%union.anon.133 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.134 = type { %struct.ptp_clock_time }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }
%struct.gpio_reg = type { i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.106, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.107, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.108, ptr, %struct.address_space, %struct.list_head, %union.anon.109, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.108 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.109 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.irig_slave_reg = type { i32, i32, i32, i32, i32, i32 }
%struct.dcf_slave_reg = type { i32, i32, i32, i32, i32 }

@i2c_bus_type = external dso_local global %struct.bus_type, align 4
@ptp_ocp_i2c_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @ptp_ocp_i2c_notifier_call, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@ptp_ocp_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @ptp_ocp_pcidev_id, ptr @ptp_ocp_probe, ptr @ptp_ocp_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@timecard_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.233, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_ptp_ocp__377_2639_ptp_ocp_init6 = internal global ptr @ptp_ocp_init, section ".initcall6.init", align 4
@__exitcall_ptp_ocp_fini = internal global ptr @ptp_ocp_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description378 = internal constant [48 x i8] c"ptp_ocp.description=OpenCompute TimeCard driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file379 = internal constant [33 x i8] c"ptp_ocp.file=drivers/ptp/ptp_ocp\00", section ".modinfo", align 1
@__UNIQUE_ID_license380 = internal constant [23 x i8] c"ptp_ocp.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ptp_ocp\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@ptp_ocp_symlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2295, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s symlink failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ptp_ocp_symlink\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/ptp/ptp_ocp.c\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ptp_ocp_symlink._entry_ptr = internal global ptr @ptp_ocp_symlink._entry, section ".printk_index", align 4
@ptp_ocp_pcidev_id = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 7579, i32 1024, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ocp_fb_resource to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ocp_fb_resource = internal global { [24 x %struct.ocp_resource], [160 x i8] } { [24 x %struct.ocp_resource] [%struct.ocp_resource { i32 16777216, i32 65536, i32 0, ptr @ptp_ocp_register_mem, ptr null, i32 980, ptr @.str.7 }, %struct.ocp_resource { i32 16842752, i32 65536, i32 1, ptr @ptp_ocp_register_ext, ptr @.compoundliteral, i32 1028, ptr @.str.8 }, %struct.ocp_resource { i32 16908288, i32 65536, i32 2, ptr @ptp_ocp_register_ext, ptr @.compoundliteral.9, i32 1032, ptr @.str.10 }, %struct.ocp_resource { i32 17170432, i32 65536, i32 6, ptr @ptp_ocp_register_ext, ptr @.compoundliteral.11, i32 1036, ptr @.str.12 }, %struct.ocp_resource { i32 17563648, i32 65536, i32 0, ptr @ptp_ocp_register_ext, ptr @.compoundliteral.13, i32 1024, ptr @.str.14 }, %struct.ocp_resource { i32 16973824, i32 65536, i32 0, ptr @ptp_ocp_register_mem, ptr null, i32 988, ptr @.str.15 }, %struct.ocp_resource { i32 17039360, i32 65536, i32 0, ptr @ptp_ocp_register_mem, ptr null, i32 992, ptr @.str.16 }, %struct.ocp_resource { i32 17104896, i32 65536, i32 0, ptr @ptp_ocp_register_mem, ptr null, i32 984, ptr @.str.17 }, %struct.ocp_resource { i32 17235968, i32 65536, i32 0, ptr @ptp_ocp_register_mem, ptr null, i32 1008, ptr @.str.18 }, %struct.ocp_resource { i32 17301504, i32 65536, i32 0, ptr @ptp_ocp_register_mem, ptr null, i32 1004, ptr @.str.19 }, %struct.ocp_resource { i32 17367040, i32 65536, i32 0, ptr @ptp_ocp_register_mem, ptr null, i32 1016, ptr @.str.20 }, %struct.ocp_resource { i32 17432576, i32 65536, i32 0, ptr @ptp_ocp_register_mem, ptr null, i32 1012, ptr @.str.21 }, %struct.ocp_resource { i32 17498112, i32 65536, i32 0, ptr @ptp_ocp_register_mem, ptr null, i32 1020, ptr @.str.22 }, %struct.ocp_resource { i32 131072, i32 4096, i32 0, ptr @ptp_ocp_register_mem, ptr null, i32 1040, ptr @.str.23 }, %struct.ocp_resource { i32 1245184, i32 4096, i32 0, ptr @ptp_ocp_register_mem, ptr null, i32 996, ptr @.str.24 }, %struct.ocp_resource { i32 1310720, i32 4096, i32 0, ptr @ptp_ocp_register_mem, ptr null, i32 1000, ptr @.str.25 }, %struct.ocp_resource { i32 1376256, i32 65536, i32 7, ptr @ptp_ocp_register_i2c, ptr @.compoundliteral.27, i32 1156, ptr @.str.28 }, %struct.ocp_resource { i32 1445888, i32 0, i32 3, ptr @ptp_ocp_register_serial, ptr null, i32 1240, ptr @.str.29 }, %struct.ocp_resource { i32 1511424, i32 0, i32 4, ptr @ptp_ocp_register_serial, ptr null, i32 1244, ptr @.str.30 }, %struct.ocp_resource { i32 1576960, i32 0, i32 5, ptr @ptp_ocp_register_serial, ptr null, i32 1248, ptr @.str.31 }, %struct.ocp_resource { i32 1642496, i32 0, i32 10, ptr @ptp_ocp_register_serial, ptr null, i32 1252, ptr @.str.32 }, %struct.ocp_resource { i32 3211264, i32 65536, i32 9, ptr @ptp_ocp_register_spi, ptr @.compoundliteral.36, i32 1160, ptr @.str.37 }, %struct.ocp_resource { i32 0, i32 0, i32 0, ptr @ptp_ocp_fb_board_init, ptr null, i32 0, ptr null }, %struct.ocp_resource zeroinitializer], [160 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.ptp_ocp_ext_info, [20 x i8] } { %struct.ptp_ocp_ext_info { i32 0, ptr @ptp_ocp_ts_irq, ptr @ptp_ocp_ts_enable }, [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ts0\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { %struct.ptp_ocp_ext_info, [20 x i8] } { %struct.ptp_ocp_ext_info { i32 1, ptr @ptp_ocp_ts_irq, ptr @ptp_ocp_ts_enable }, [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ts1\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { %struct.ptp_ocp_ext_info, [20 x i8] } { %struct.ptp_ocp_ext_info { i32 2, ptr @ptp_ocp_ts_irq, ptr @ptp_ocp_ts_enable }, [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ts2\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { %struct.ptp_ocp_ext_info, [20 x i8] } { %struct.ptp_ocp_ext_info { i32 3, ptr @ptp_ocp_ts_irq, ptr @ptp_ocp_ts_enable }, [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pps\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pps_to_ext\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pps_to_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tod\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"irig_in\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"irig_out\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dcf_in\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dcf_out\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nmea_out\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"image\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pps_select\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sma\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xiic-i2c\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.ptp_ocp_i2c_info, [16 x i8] } { %struct.ptp_ocp_i2c_info { ptr @.str.26, i32 50000000, i32 0, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c_ctrl\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gnss_port\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gnss2_port\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mac_port\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nmea_port\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xilinx_spi\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.spi_board_info, [36 x i8] } { %struct.spi_board_info { [32 x i8] c"spi-nor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, i32 0, i32 0, i16 0, i16 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.xspi_platform_data, [20 x i8] } { %struct.xspi_platform_data { i16 1, i8 8, ptr @.compoundliteral.34, i8 1 }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.ptp_ocp_flash_info, [16 x i8] } { %struct.ptp_ocp_flash_info { ptr @.str.33, i32 0, i32 12, ptr @.compoundliteral.35 }, [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi_flash\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ocp%d.%s\00", [23 x i8] zeroinitializer }, align 32
@ptp_ocp_register_ext._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 1341, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Could not get irq %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ptp_ocp_register_ext\00", [43 x i8] zeroinitializer }, align 32
@ptp_ocp_register_ext._entry_ptr = internal global ptr @ptp_ocp_register_ext._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AXI.%d\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%d\00", [26 x i8] zeroinitializer }, align 32
@ptp_ocp_init_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 831, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock not enabled\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ptp_ocp_init_clock\00", [45 x i8] zeroinitializer }, align 32
@ptp_ocp_init_clock._entry_ptr = internal global ptr @ptp_ocp_init_clock._entry, section ".printk_index", align 4
@ptp_ocp_init_clock.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(&bp->watchdog)\00", [16 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ptp_ocp_devlink_ops = internal constant { %struct.devlink_ops, [52 x i8] } { %struct.devlink_ops { i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ptp_ocp_devlink_info_get, ptr @ptp_ocp_devlink_flash_update, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ptp_ocp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 2476, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"devlink_alloc failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ptp_ocp_probe\00", [18 x i8] zeroinitializer }, align 32
@ptp_ocp_probe._entry_ptr = internal global ptr @ptp_ocp_probe._entry, section ".printk_index", align 4
@ptp_ocp_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.4, i32 2482, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pci_enable_device\0A\00", [45 x i8] zeroinitializer }, align 32
@ptp_ocp_probe._entry_ptr.50 = internal global ptr @ptp_ocp_probe._entry.48, section ".printk_index", align 4
@ptp_ocp_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.4, i32 2498, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"alloc_irq_vectors err: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ptp_ocp_probe._entry_ptr.53 = internal global ptr @ptp_ocp_probe._entry.51, section ".printk_index", align 4
@ptp_ocp_probe._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.47, ptr @.str.4, i32 2511, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ptp_clock_register: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ptp_ocp_probe._entry_ptr.56 = internal global ptr @ptp_ocp_probe._entry.54, section ".printk_index", align 4
@init_net = external dso_local global %struct.net, align 128
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fw\00", [29 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"loader\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pM\00", [28 x i8] zeroinitializer }, align 32
@ptp_ocp_get_serial_number._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.4, i32 978, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Can't find I2C adapter\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ptp_ocp_get_serial_number\00", [38 x i8] zeroinitializer }, align 32
@ptp_ocp_get_serial_number._entry_ptr = internal global ptr @ptp_ocp_get_serial_number._entry, section ".printk_index", align 4
@ptp_ocp_get_serial_number._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.4, i32 985, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"device '%s' isn't an I2C adapter\0A\00", [62 x i8] zeroinitializer }, align 32
@ptp_ocp_get_serial_number._entry_ptr.65 = internal global ptr @ptp_ocp_get_serial_number._entry.63, section ".printk_index", align 4
@ptp_ocp_get_serial_number._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.4, i32 991, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not read eeprom: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ptp_ocp_get_serial_number._entry_ptr.68 = internal global ptr @ptp_ocp_get_serial_number._entry.66, section ".printk_index", align 4
@ptp_ocp_devlink_flash_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.4, i32 1071, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Can't find Flash SPI adapter\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ptp_ocp_devlink_flash_update\00", [35 x i8] zeroinitializer }, align 32
@ptp_ocp_devlink_flash_update._entry_ptr = internal global ptr @ptp_ocp_devlink_flash_update._entry, section ".printk_index", align 4
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Preparing to flash\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Flash error\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Flash complete\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mtd\00", [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Flashing\00", [23 x i8] zeroinitializer }, align 32
@ptp_ocp_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.84, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ptp_ocp_lock, i64 52), ptr getelementptr (i8, ptr @ptp_ocp_lock, i64 52) }, ptr @ptp_ocp_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.85, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ptp_ocp_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.86, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@ptp_ocp_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.4, i32 2253, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"idr_alloc failed: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ptp_ocp_device_init\00", [44 x i8] zeroinitializer }, align 32
@ptp_ocp_device_init._entry_ptr = internal global ptr @ptp_ocp_device_init._entry, section ".printk_index", align 4
@ptp_ocp_clock_info = internal constant { %struct.ptp_clock_info, [52 x i8] } { %struct.ptp_clock_info { ptr null, [32 x i8] c"ptp_ocp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000000, i32 0, i32 4, i32 1, i32 0, i32 1, ptr null, ptr @ptp_ocp_null_adjfine, ptr null, ptr @ptp_ocp_null_adjphase, ptr @ptp_ocp_adjtime, ptr null, ptr @ptp_ocp_gettimex, ptr null, ptr @ptp_ocp_settime, ptr @ptp_ocp_enable, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ptp_ocp_device_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&bp->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ocp%d\00", [26 x i8] zeroinitializer }, align 32
@ptp_ocp_device_init._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.78, ptr @.str.4, i32 2275, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"device add failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ptp_ocp_device_init._entry_ptr.83 = internal global ptr @ptp_ocp_device_init._entry.81, section ".printk_index", align 4
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ptp_ocp_lock.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ptp_ocp_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ptp_ocp_idr.xa_lock\00", [44 x i8] zeroinitializer }, align 32
@ptp_ocp_register_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.4, i32 1452, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not register %s: err %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ptp_ocp_register_resources\00", [37 x i8] zeroinitializer }, align 32
@ptp_ocp_register_resources._entry_ptr = internal global ptr @ptp_ocp_register_resources._entry, section ".printk_index", align 4
@ptp_ocp_allow_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.4, i32 1434, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"irq %d out of range, skipping %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ptp_ocp_allow_irq\00", [46 x i8] zeroinitializer }, align 32
@ptp_ocp_allow_irq._entry_ptr = internal global ptr @ptp_ocp_allow_irq._entry, section ".printk_index", align 4
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttyS%d\00", [25 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ttyGNSS\00", [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ttyGNSS2\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttyMAC\00", [25 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ttyNMEA\00", [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ptp%d\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ptp\00", [28 x i8] zeroinitializer }, align 32
@timecard_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @timecard_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ptp_ocp_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.4, i32 2345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013device add groups failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ptp_ocp_complete\00", [47 x i8] zeroinitializer }, align 32
@ptp_ocp_complete._entry_ptr = internal global ptr @ptp_ocp_complete._entry, section ".printk_index", align 4
@ptp_ocp_link_child._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.4, i32 2307, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not find device %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ptp_ocp_link_child\00", [45 x i8] zeroinitializer }, align 32
@ptp_ocp_link_child._entry_ptr = internal global ptr @ptp_ocp_link_child._entry, section ".printk_index", align 4
@timecard_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @timecard_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@timecard_attrs = internal global { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @dev_attr_serialnum, ptr @dev_attr_gnss_sync, ptr @dev_attr_clock_source, ptr @dev_attr_available_clock_sources, ptr @dev_attr_sma1, ptr @dev_attr_sma2, ptr @dev_attr_sma3, ptr @dev_attr_sma4, ptr @dev_attr_available_sma_inputs, ptr @dev_attr_available_sma_outputs, ptr @dev_attr_irig_b_mode, ptr @dev_attr_utc_tai_offset, ptr @dev_attr_ts_window_adjust, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_serialnum = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @serialnum_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gnss_sync = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gnss_sync_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_clock_source = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @clock_source_show, ptr @clock_source_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_available_clock_sources = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @available_clock_sources_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sma1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sma1_show, ptr @sma1_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sma2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.137, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sma2_show, ptr @sma2_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sma3 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.138, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sma3_show, ptr @sma3_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sma4 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.139, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sma4_show, ptr @sma4_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_available_sma_inputs = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.140, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @available_sma_inputs_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_available_sma_outputs = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.141, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @available_sma_outputs_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_irig_b_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.142, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @irig_b_mode_show, ptr @irig_b_mode_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_utc_tai_offset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.144, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @utc_tai_offset_show, ptr @utc_tai_offset_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ts_window_adjust = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.145, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ts_window_adjust_show, ptr @ts_window_adjust_store }, [36 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"serialnum\00", [22 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pM\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gnss_sync\00", [22 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LOST @ %ptT\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SYNC\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clock_source\00", [19 x i8] zeroinitializer }, align 32
@ptp_ocp_clock = internal constant { [10 x %struct.ocp_selector], [48 x i8] } { [10 x %struct.ocp_selector] [%struct.ocp_selector { ptr @.str.109, i32 0 }, %struct.ocp_selector { ptr @.str.110, i32 1 }, %struct.ocp_selector { ptr @.str.111, i32 2 }, %struct.ocp_selector { ptr @.str.112, i32 3 }, %struct.ocp_selector { ptr @.str.113, i32 4 }, %struct.ocp_selector { ptr @.str.114, i32 5 }, %struct.ocp_selector { ptr @.str.115, i32 6 }, %struct.ocp_selector { ptr @.str.116, i32 254 }, %struct.ocp_selector { ptr @.str.117, i32 255 }, %struct.ocp_selector zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TOD\00", [28 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IRIG\00", [27 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PPS\00", [28 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PTP\00", [28 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RTC\00", [28 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DCF\00", [28 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"REGS\00", [27 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EXT\00", [28 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"available_clock_sources\00", [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sma1\00", [27 x i8] zeroinitializer }, align 32
@ptp_ocp_sma_in = internal global { [8 x %struct.ocp_selector], [32 x i8] } { [8 x %struct.ocp_selector] [%struct.ocp_selector { ptr @.str.124, i32 0 }, %struct.ocp_selector { ptr @.str.129, i32 1 }, %struct.ocp_selector { ptr @.str.130, i32 2 }, %struct.ocp_selector { ptr @.str.131, i32 4 }, %struct.ocp_selector { ptr @.str.132, i32 8 }, %struct.ocp_selector { ptr @.str.111, i32 16 }, %struct.ocp_selector { ptr @.str.115, i32 32 }, %struct.ocp_selector zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ptp_ocp_sma_map = internal constant { [4 x %struct.ptp_ocp_sma_connector], [32 x i8] } { [4 x %struct.ptp_ocp_sma_connector] [%struct.ptp_ocp_sma_connector { i32 0, i8 1, i16 0 }, %struct.ptp_ocp_sma_connector { i32 0, i8 1, i16 0 }, %struct.ptp_ocp_sma_connector { i32 1, i8 1, i16 0 }, %struct.ptp_ocp_sma_connector { i32 1, i8 1, i16 1 }], [32 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN: \00", [27 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OUT: \00", [26 x i8] zeroinitializer }, align 32
@ptp_ocp_sma_out = internal global { [8 x %struct.ocp_selector], [32 x i8] } { [8 x %struct.ocp_selector] [%struct.ocp_selector { ptr @.str.124, i32 0 }, %struct.ocp_selector { ptr @.str.125, i32 1 }, %struct.ocp_selector { ptr @.str.126, i32 2 }, %struct.ocp_selector { ptr @.str.127, i32 4 }, %struct.ocp_selector { ptr @.str.128, i32 8 }, %struct.ocp_selector { ptr @.str.111, i32 16 }, %struct.ocp_selector { ptr @.str.115, i32 32 }, %struct.ocp_selector zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"10Mhz\00", [26 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PHC\00", [28 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MAC\00", [28 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GNSS\00", [27 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GNSS2\00", [26 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PPS1\00", [27 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PPS2\00", [27 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TS1\00", [28 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TS2\00", [28 x i8] zeroinitializer }, align 32
@ptp_ocp_sma_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.4, i32 1737, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Mode changes not supported yet.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ptp_ocp_sma_store\00", [46 x i8] zeroinitializer }, align 32
@ptp_ocp_sma_store._entry_ptr = internal global ptr @ptp_ocp_sma_store._entry, section ".printk_index", align 4
@__const.sma_parse_inputs.tbl = private unnamed_addr constant [2 x ptr] [ptr @ptp_ocp_sma_in, ptr @ptp_ocp_sma_out], align 4
@.str.135 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IN:\00", [28 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUT:\00", [27 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sma2\00", [27 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sma3\00", [27 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sma4\00", [27 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"available_sma_inputs\00", [43 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"available_sma_outputs\00", [42 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"irig_b_mode\00", [20 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"utc_tai_offset\00", [17 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ts_window_adjust\00", [47 x i8] zeroinitializer }, align 32
@ptp_ocp_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.146 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"summary\00", [24 x i8] zeroinitializer }, align 32
@ptp_ocp_summary_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ptp_ocp_summary_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%7s: /dev/ptp%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"   sma1: %s\00", [20 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"   sma2: %s\00", [20 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"   sma3: %s\00", [20 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"   sma4: %s\00", [20 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%7s: %s, src: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TS0\00", [28 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" ON\00", [28 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"----\00", [27 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TS3\00", [28 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%7s: %s, error: %d, mode %d, out: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%7s: %s, error: %d, src: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IRIG in\00", [24 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%7s: %s, error: %d, out: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DCF in\00", [25 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%7s: %s, error: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NMEA\00", [27 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s via PPS1\00", [20 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%7s: %s, state: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PHC src\00", [24 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sync\00", [27 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unsynced\00", [23 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MAC PPS1 src: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MAC PPS2 src: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%7s: %lld.%ld == %ptT TAI\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%7s: %lld.%ld == %ptT UTC offset %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SYS\00", [28 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%7s: PHC:SYS offset: %lld  window: %lld\0A\00", [55 x i8] zeroinitializer }, align 32
@ptp_ocp_info.nmea_baud = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 1200, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600, i32 1000000, i32 2000000], [44 x i8] zeroinitializer }, align 32
@ptp_ocp_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.179, ptr @.str.4, i32 2398, ptr @.str.180, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"version %x\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ptp_ocp_info\00", [19 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ptp_ocp_info._entry_ptr = internal global ptr @ptp_ocp_info._entry, section ".printk_index", align 4
@ptp_ocp_info._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.179, ptr @.str.4, i32 2401, ptr @.str.180, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"regular image, version %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ptp_ocp_info._entry_ptr.183 = internal global ptr @ptp_ocp_info._entry.181, section ".printk_index", align 4
@ptp_ocp_info._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.179, ptr @.str.4, i32 2404, ptr @.str.180, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"golden image, version %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ptp_ocp_info._entry_ptr.186 = internal global ptr @ptp_ocp_info._entry.184, section ".printk_index", align 4
@ptp_ocp_phc_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.188, ptr @.str.4, i32 2364, ptr @.str.180, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Version %d.%d.%d, clock %s, device ptp%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ptp_ocp_phc_info\00", [47 x i8] zeroinitializer }, align 32
@ptp_ocp_phc_info._entry_ptr = internal global ptr @ptp_ocp_phc_info._entry, section ".printk_index", align 4
@ptp_ocp_phc_info._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.188, ptr @.str.4, i32 2370, ptr @.str.180, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Time: %lld.%ld, %s\0A\00", [44 x i8] zeroinitializer }, align 32
@ptp_ocp_phc_info._entry_ptr.191 = internal global ptr @ptp_ocp_phc_info._entry.189, section ".printk_index", align 4
@.str.192 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in-sync\00", [24 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"UNSYNCED\00", [23 x i8] zeroinitializer }, align 32
@ptp_ocp_tod_info.proto_name = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.164, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200], [32 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NMEA_ZDA\00", [23 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NMEA_RMC\00", [23 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NMEA_none\00", [22 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UBX\00", [28 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UBX_UTC\00", [24 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UBX_LS\00", [25 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"UBX_none\00", [23 x i8] zeroinitializer }, align 32
@ptp_ocp_tod_info.gnss_name = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206], [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ALL\00", [28 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"COMBINED\00", [23 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPS\00", [28 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GLONASS\00", [24 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GALILEO\00", [24 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BEIDOU\00", [25 x i8] zeroinitializer }, align 32
@ptp_ocp_tod_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.208, ptr @.str.4, i32 901, ptr @.str.180, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TOD Version %d.%d.%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ptp_ocp_tod_info\00", [47 x i8] zeroinitializer }, align 32
@ptp_ocp_tod_info._entry_ptr = internal global ptr @ptp_ocp_tod_info._entry, section ".printk_index", align 4
@ptp_ocp_tod_info._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.208, ptr @.str.4, i32 906, ptr @.str.180, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"control: %x\0A\00", [19 x i8] zeroinitializer }, align 32
@ptp_ocp_tod_info._entry_ptr.211 = internal global ptr @ptp_ocp_tod_info._entry.209, section ".printk_index", align 4
@ptp_ocp_tod_info._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.208, ptr @.str.4, i32 908, ptr @.str.180, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TOD Protocol %s %s\0A\00", [44 x i8] zeroinitializer }, align 32
@ptp_ocp_tod_info._entry_ptr.214 = internal global ptr @ptp_ocp_tod_info._entry.212, section ".printk_index", align 4
@.str.215 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@ptp_ocp_tod_info._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.208, ptr @.str.4, i32 912, ptr @.str.180, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GNSS %s\0A\00", [23 x i8] zeroinitializer }, align 32
@ptp_ocp_tod_info._entry_ptr.218 = internal global ptr @ptp_ocp_tod_info._entry.216, section ".printk_index", align 4
@ptp_ocp_tod_info._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.208, ptr @.str.4, i32 915, ptr @.str.180, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"status: %x\0A\00", [20 x i8] zeroinitializer }, align 32
@ptp_ocp_tod_info._entry_ptr.221 = internal global ptr @ptp_ocp_tod_info._entry.219, section ".printk_index", align 4
@ptp_ocp_tod_info._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.208, ptr @.str.4, i32 918, ptr @.str.180, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"correction: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@ptp_ocp_tod_info._entry_ptr.224 = internal global ptr @ptp_ocp_tod_info._entry.222, section ".printk_index", align 4
@ptp_ocp_tod_info._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.208, ptr @.str.4, i32 921, ptr @.str.180, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"utc_status: %x\0A\00", [16 x i8] zeroinitializer }, align 32
@ptp_ocp_tod_info._entry_ptr.227 = internal global ptr @ptp_ocp_tod_info._entry.225, section ".printk_index", align 4
@ptp_ocp_tod_info._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.208, ptr @.str.4, i32 924, ptr @.str.180, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"utc_offset: %d  valid:%d  leap_valid:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@ptp_ocp_tod_info._entry_ptr.230 = internal global ptr @ptp_ocp_tod_info._entry.228, section ".printk_index", align 4
@ptp_ocp_serial_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.232, ptr @.str.4, i32 2377, ptr @.str.180, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%5s: /dev/ttyS%-2d @ %6d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ptp_ocp_serial_info\00", [44 x i8] zeroinitializer }, align 32
@ptp_ocp_serial_info._entry_ptr = internal global ptr @ptp_ocp_serial_info._entry, section ".printk_index", align 4
@.str.233 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"timecard\00", [23 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"timecard class\00", [17 x i8] zeroinitializer }, align 32
@ptp_ocp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.235 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2c notifier\00", [19 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ptp_ocp driver\00", [17 x i8] zeroinitializer }, align 32
@ptp_ocp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.238, ptr @.str.4, i32 2626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ptp_ocp: failed to register %s: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ptp_ocp_init\00", [19 x i8] zeroinitializer }, align 32
@ptp_ocp_init._entry_ptr = internal global ptr @ptp_ocp_init._entry, section ".printk_index", align 4
@switch.table.ptp_ocp_enable = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -20, i32 -16, i32 -12, i32 -24], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 254, i64 255]
@__sancov_gen_cov_switch_values.239 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.240 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.241 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 254, i64 255]
@__sancov_gen_cov_switch_values.242 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 2, i64 3, i64 6]
@___asan_gen_.243 = private unnamed_addr constant [21 x i8] c"ptp_ocp_i2c_notifier\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2591, i32 30 }
@___asan_gen_.246 = private unnamed_addr constant [15 x i8] c"ptp_ocp_driver\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2548, i32 26 }
@___asan_gen_.249 = private unnamed_addr constant [15 x i8] c"timecard_class\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 29, i32 21 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2577, i32 49 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2584, i32 30 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2295, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant [18 x i8] c"ptp_ocp_pcidev_id\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 436, i32 35 }
@___asan_gen_.279 = private unnamed_addr constant [16 x i8] c"ocp_fb_resource\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 305, i32 28 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 307, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 311, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 320, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 329, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 338, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 347, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 351, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 355, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 359, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 363, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 367, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 371, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 375, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 379, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 383, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 387, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 394, i32 12 }
@___asan_gen_.337 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 391, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 399, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 403, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 407, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 411, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 418, i32 12 }
@___asan_gen_.356 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.358 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 415, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1339, i32 15 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1341, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1225, i32 15 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1232, i32 15 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 831, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 845, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant [20 x i8] c"ptp_ocp_devlink_ops\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1130, i32 33 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2476, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2482, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2498, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2511, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1103, i32 17 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1105, i32 15 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1110, i32 15 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1121, i32 16 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 978, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 984, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 991, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1071, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1075, i32 46 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1080, i32 14 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1080, i32 30 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1010, i32 15 }
@___asan_gen_.480 = private unnamed_addr constant [26 x i8] c"../include/linux/device.h\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 651, i32 70 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1037, i32 47 }
@___asan_gen_.485 = private unnamed_addr constant [13 x i8] c"ptp_ocp_lock\00", align 1
@___asan_gen_.488 = private unnamed_addr constant [12 x i8] c"ptp_ocp_idr\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2253, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant [19 x i8] c"ptp_ocp_clock_info\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 730, i32 36 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2259, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2267, i32 25 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2275, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 442, i32 8 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 443, i32 8 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1450, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1433, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2322, i32 16 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2323, i32 31 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2327, i32 31 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2331, i32 31 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2335, i32 31 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2337, i32 15 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2338, i32 30 }
@___asan_gen_.566 = private unnamed_addr constant [16 x i8] c"timecard_groups\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2345, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2307, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant [15 x i8] c"timecard_group\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1993, i32 1 }
@___asan_gen_.590 = private unnamed_addr constant [15 x i8] c"timecard_attrs\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1977, i32 26 }
@___asan_gen_.593 = private unnamed_addr constant [19 x i8] c"dev_attr_serialnum\00", align 1
@___asan_gen_.596 = private unnamed_addr constant [19 x i8] c"dev_attr_gnss_sync\00", align 1
@___asan_gen_.599 = private unnamed_addr constant [22 x i8] c"dev_attr_clock_source\00", align 1
@___asan_gen_.602 = private unnamed_addr constant [33 x i8] c"dev_attr_available_clock_sources\00", align 1
@___asan_gen_.605 = private unnamed_addr constant [14 x i8] c"dev_attr_sma1\00", align 1
@___asan_gen_.608 = private unnamed_addr constant [14 x i8] c"dev_attr_sma2\00", align 1
@___asan_gen_.611 = private unnamed_addr constant [14 x i8] c"dev_attr_sma3\00", align 1
@___asan_gen_.614 = private unnamed_addr constant [14 x i8] c"dev_attr_sma4\00", align 1
@___asan_gen_.617 = private unnamed_addr constant [30 x i8] c"dev_attr_available_sma_inputs\00", align 1
@___asan_gen_.620 = private unnamed_addr constant [31 x i8] c"dev_attr_available_sma_outputs\00", align 1
@___asan_gen_.623 = private unnamed_addr constant [21 x i8] c"dev_attr_irig_b_mode\00", align 1
@___asan_gen_.626 = private unnamed_addr constant [24 x i8] c"dev_attr_utc_tai_offset\00", align 1
@___asan_gen_.629 = private unnamed_addr constant [26 x i8] c"dev_attr_ts_window_adjust\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1823, i32 8 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1821, i32 25 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1838, i32 8 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1832, i32 25 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1834, i32 25 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1967, i32 8 }
@___asan_gen_.650 = private unnamed_addr constant [14 x i8] c"ptp_ocp_clock\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 450, i32 28 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1946, i32 25 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 451, i32 12 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 452, i32 12 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 453, i32 12 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 454, i32 12 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 455, i32 12 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 456, i32 12 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 457, i32 12 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 458, i32 12 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 459, i32 12 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1975, i32 8 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 518, i32 38 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 521, i32 37 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1792, i32 8 }
@___asan_gen_.695 = private unnamed_addr constant [15 x i8] c"ptp_ocp_sma_in\00", align 1
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 463, i32 28 }
@___asan_gen_.698 = private unnamed_addr constant [16 x i8] c"ptp_ocp_sma_map\00", align 1
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1533, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1575, i32 26 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1560, i32 26 }
@___asan_gen_.707 = private unnamed_addr constant [16 x i8] c"ptp_ocp_sma_out\00", align 1
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 474, i32 28 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 475, i32 12 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 476, i32 12 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 477, i32 12 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 478, i32 12 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 479, i32 12 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 465, i32 12 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 466, i32 12 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 467, i32 12 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 468, i32 12 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1737, i32 3 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1608, i32 18 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1612, i32 18 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1793, i32 8 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1794, i32 8 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1795, i32 8 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1803, i32 8 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1811, i32 8 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1934, i32 8 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1904, i32 25 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1866, i32 8 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 1894, i32 8 }
@___asan_gen_.779 = private unnamed_addr constant [21 x i8] c"ptp_ocp_debugfs_root\00", align 1
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2203, i32 23 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2212, i32 22 }
@___asan_gen_.785 = private unnamed_addr constant [21 x i8] c"ptp_ocp_summary_fops\00", align 1
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2201, i32 1 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2043, i32 16 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2046, i32 16 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2049, i32 16 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2052, i32 16 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2055, i32 16 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2061, i32 17 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2061, i32 39 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2062, i32 12 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2062, i32 20 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2068, i32 45 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2086, i32 39 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2099, i32 17 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2107, i32 17 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2107, i32 50 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2115, i32 17 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2123, i32 50 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2130, i32 17 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2130, i32 41 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2146, i32 9 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2159, i32 16 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2169, i32 16 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2169, i32 40 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2170, i32 33 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2170, i32 42 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2173, i32 16 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2176, i32 16 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2188, i32 17 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2190, i32 17 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2190, i32 58 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2193, i32 17 }
@___asan_gen_.878 = private unnamed_addr constant [10 x i8] c"nmea_baud\00", align 1
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2383, i32 13 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2398, i32 3 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2400, i32 4 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2403, i32 4 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2361, i32 2 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2368, i32 3 }
@___asan_gen_.926 = private unnamed_addr constant [11 x i8] c"proto_name\00", align 1
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 889, i32 28 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 890, i32 11 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 890, i32 23 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 890, i32 35 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 891, i32 3 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 891, i32 10 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 891, i32 21 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 891, i32 31 }
@___asan_gen_.950 = private unnamed_addr constant [10 x i8] c"gnss_name\00", align 1
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 893, i32 28 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 894, i32 3 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 894, i32 10 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 894, i32 22 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 894, i32 29 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 894, i32 40 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 894, i32 51 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 900, i32 2 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 906, i32 2 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 907, i32 2 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 912, i32 3 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 915, i32 2 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 918, i32 2 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 921, i32 2 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 922, i32 2 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2377, i32 3 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 31, i32 11 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2603, i32 9 }
@___asan_gen_.1040 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2604, i32 8 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2608, i32 9 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2613, i32 9 }
@___asan_gen_.1049 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1055 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1056 = private constant [25 x i8] c"../drivers/ptp/ptp_ocp.c\00", align 1
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1056, i32 2626, i32 2 }
@___asan_gen_.1058 = private unnamed_addr constant [28 x i8] c"switch.table.ptp_ocp_enable\00", align 1
@llvm.compiler.used = appending global [317 x ptr] [ptr @__UNIQUE_ID_description378, ptr @__UNIQUE_ID_file379, ptr @__UNIQUE_ID_license380, ptr @__exitcall_ptp_ocp_fini, ptr @__initcall__kmod_ptp_ocp__377_2639_ptp_ocp_init6, ptr @ptp_ocp_allow_irq._entry, ptr @ptp_ocp_allow_irq._entry_ptr, ptr @ptp_ocp_complete._entry, ptr @ptp_ocp_complete._entry_ptr, ptr @ptp_ocp_device_init._entry, ptr @ptp_ocp_device_init._entry.81, ptr @ptp_ocp_device_init._entry_ptr, ptr @ptp_ocp_device_init._entry_ptr.83, ptr @ptp_ocp_devlink_flash_update._entry, ptr @ptp_ocp_devlink_flash_update._entry_ptr, ptr @ptp_ocp_fini, ptr @ptp_ocp_get_serial_number._entry, ptr @ptp_ocp_get_serial_number._entry.63, ptr @ptp_ocp_get_serial_number._entry.66, ptr @ptp_ocp_get_serial_number._entry_ptr, ptr @ptp_ocp_get_serial_number._entry_ptr.65, ptr @ptp_ocp_get_serial_number._entry_ptr.68, ptr @ptp_ocp_info._entry, ptr @ptp_ocp_info._entry.181, ptr @ptp_ocp_info._entry.184, ptr @ptp_ocp_info._entry_ptr, ptr @ptp_ocp_info._entry_ptr.183, ptr @ptp_ocp_info._entry_ptr.186, ptr @ptp_ocp_init._entry, ptr @ptp_ocp_init._entry_ptr, ptr @ptp_ocp_init_clock._entry, ptr @ptp_ocp_init_clock._entry_ptr, ptr @ptp_ocp_link_child._entry, ptr @ptp_ocp_link_child._entry_ptr, ptr @ptp_ocp_phc_info._entry, ptr @ptp_ocp_phc_info._entry.189, ptr @ptp_ocp_phc_info._entry_ptr, ptr @ptp_ocp_phc_info._entry_ptr.191, ptr @ptp_ocp_probe._entry, ptr @ptp_ocp_probe._entry.48, ptr @ptp_ocp_probe._entry.51, ptr @ptp_ocp_probe._entry.54, ptr @ptp_ocp_probe._entry_ptr, ptr @ptp_ocp_probe._entry_ptr.50, ptr @ptp_ocp_probe._entry_ptr.53, ptr @ptp_ocp_probe._entry_ptr.56, ptr @ptp_ocp_register_ext._entry, ptr @ptp_ocp_register_ext._entry_ptr, ptr @ptp_ocp_register_resources._entry, ptr @ptp_ocp_register_resources._entry_ptr, ptr @ptp_ocp_serial_info._entry, ptr @ptp_ocp_serial_info._entry_ptr, ptr @ptp_ocp_sma_store._entry, ptr @ptp_ocp_sma_store._entry_ptr, ptr @ptp_ocp_symlink._entry, ptr @ptp_ocp_symlink._entry_ptr, ptr @ptp_ocp_tod_info._entry, ptr @ptp_ocp_tod_info._entry.209, ptr @ptp_ocp_tod_info._entry.212, ptr @ptp_ocp_tod_info._entry.216, ptr @ptp_ocp_tod_info._entry.219, ptr @ptp_ocp_tod_info._entry.222, ptr @ptp_ocp_tod_info._entry.225, ptr @ptp_ocp_tod_info._entry.228, ptr @ptp_ocp_tod_info._entry_ptr, ptr @ptp_ocp_tod_info._entry_ptr.211, ptr @ptp_ocp_tod_info._entry_ptr.214, ptr @ptp_ocp_tod_info._entry_ptr.218, ptr @ptp_ocp_tod_info._entry_ptr.221, ptr @ptp_ocp_tod_info._entry_ptr.224, ptr @ptp_ocp_tod_info._entry_ptr.227, ptr @ptp_ocp_tod_info._entry_ptr.230, ptr @ptp_ocp_i2c_notifier, ptr @ptp_ocp_driver, ptr @timecard_class, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ptp_ocp_pcidev_id, ptr @ocp_fb_resource, ptr @.str.7, ptr @.compoundliteral, ptr @.str.8, ptr @.compoundliteral.9, ptr @.str.10, ptr @.compoundliteral.11, ptr @.str.12, ptr @.compoundliteral.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.compoundliteral.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @ptp_ocp_init_clock.__key, ptr @.str.45, ptr @ptp_ocp_devlink_ops, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @ptp_ocp_lock, ptr @ptp_ocp_idr, ptr @.str.77, ptr @.str.78, ptr @ptp_ocp_clock_info, ptr @ptp_ocp_device_init.__key, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @timecard_groups, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @timecard_group, ptr @timecard_attrs, ptr @dev_attr_serialnum, ptr @dev_attr_gnss_sync, ptr @dev_attr_clock_source, ptr @dev_attr_available_clock_sources, ptr @dev_attr_sma1, ptr @dev_attr_sma2, ptr @dev_attr_sma3, ptr @dev_attr_sma4, ptr @dev_attr_available_sma_inputs, ptr @dev_attr_available_sma_outputs, ptr @dev_attr_irig_b_mode, ptr @dev_attr_utc_tai_offset, ptr @dev_attr_ts_window_adjust, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @ptp_ocp_clock, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @ptp_ocp_sma_in, ptr @ptp_ocp_sma_map, ptr @.str.122, ptr @.str.123, ptr @ptp_ocp_sma_out, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @ptp_ocp_debugfs_root, ptr @.str.146, ptr @ptp_ocp_summary_fops, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @ptp_ocp_info.nmea_baud, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.182, ptr @.str.185, ptr @.str.187, ptr @.str.188, ptr @.str.190, ptr @.str.192, ptr @.str.193, ptr @ptp_ocp_tod_info.proto_name, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @ptp_ocp_tod_info.gnss_name, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.210, ptr @.str.213, ptr @.str.215, ptr @.str.217, ptr @.str.220, ptr @.str.223, ptr @.str.226, ptr @.str.229, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @ptp_ocp_init.__key, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @switch.table.ptp_ocp_enable], section "llvm.metadata"
@0 = internal global [278 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_i2c_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timecard_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_symlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_pcidev_id to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocp_fb_resource to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_register_ext._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_init_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_init_clock.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_devlink_ops to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_probe._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_get_serial_number._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_get_serial_number._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_get_serial_number._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_devlink_flash_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_clock_info to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_device_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_device_init._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_register_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_allow_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timecard_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_link_child._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timecard_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timecard_attrs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_serialnum to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gnss_sync to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_clock_source to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_available_clock_sources to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sma1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sma2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sma3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sma4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_available_sma_inputs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_available_sma_outputs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_irig_b_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_utc_tai_offset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ts_window_adjust to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_clock to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_sma_in to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_sma_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_sma_out to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_sma_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_summary_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_info.nmea_baud to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_info._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_info._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_phc_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_phc_info._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_tod_info.proto_name to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_tod_info.gnss_name to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_tod_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_tod_info._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_tod_info._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_tod_info._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_tod_info._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_tod_info._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_tod_info._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_tod_info._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_serial_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ocp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ptp_ocp_enable to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ptp_ocp_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @bus_unregister_notifier(ptr noundef nonnull @i2c_bus_type, ptr noundef nonnull @ptp_ocp_i2c_notifier) #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @ptp_ocp_driver) #11
  tail call void @class_unregister(ptr noundef nonnull @timecard_class) #11
  %0 = load ptr, ptr @ptp_ocp_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_ocp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.233, ptr noundef null) #11
  store ptr %call.i, ptr @ptp_ocp_debugfs_root, align 4
  %call = tail call i32 @__class_register(ptr noundef nonnull @timecard_class, ptr noundef nonnull @ptp_ocp_init.__key) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @bus_register_notifier(ptr noundef nonnull @i2c_bus_type, ptr noundef nonnull @ptp_ocp_i2c_notifier) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_notifier_crit_edge

if.end.out_notifier_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_notifier

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @__pci_register_driver(ptr noundef nonnull @ptp_ocp_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %out_register

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out_register:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 @bus_unregister_notifier(ptr noundef nonnull @i2c_bus_type, ptr noundef nonnull @ptp_ocp_i2c_notifier) #11
  br label %out_notifier

out_notifier:                                     ; preds = %out_register, %if.end.out_notifier_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.out_notifier_crit_edge ], [ %call5, %out_register ]
  %what.0 = phi ptr [ @.str.235, %if.end.out_notifier_crit_edge ], [ @.str.236, %out_register ]
  tail call void @class_unregister(ptr noundef nonnull @timecard_class) #11
  br label %out

out:                                              ; preds = %out_notifier, %entry.out_crit_edge
  %err.1 = phi i32 [ %call, %entry.out_crit_edge ], [ %err.0, %out_notifier ]
  %what.1 = phi ptr [ @.str.234, %entry.out_crit_edge ], [ %what.0, %out_notifier ]
  %0 = load ptr, ptr @ptp_ocp_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #11
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.237, ptr noundef nonnull %what.1, i32 noundef %err.1) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_ocp_i2c_notifier_call(ptr nocapture noundef readnone %nb, i32 noundef %action, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %action.off = add i32 %action, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %action.off)
  %switch = icmp ult i32 %action.off, 2
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %action)
  %cmp = icmp eq i32 %action, 1
  %call = tail call ptr @i2c_verify_adapter(ptr noundef %data) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %while.cond.preheader

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %sw.bb
  %parent25 = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %parent25 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent25, align 8
  %tobool1.not26 = icmp eq ptr %1, null
  br i1 %tobool1.not26, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body:                                       ; preds = %if.end7.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %2 = phi ptr [ %8, %if.end7.while.body_crit_edge ], [ %1, %while.cond.preheader.while.body_crit_edge ]
  %driver = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %while.body.if.end7_crit_edge, label %land.lhs.true

while.body.if.end7_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true:                                    ; preds = %while.body
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call4 = tail call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(8) @.str) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %found, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %while.body.if.end7_crit_edge
  %parent = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %if.end7.cleanup_crit_edge, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

found:                                            ; preds = %land.lhs.true
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i, align 4
  %dev1.i = getelementptr inbounds %struct.ptp_ocp, ptr %10, i32 0, i32 1
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %found
  %call.i = tail call i32 @sysfs_create_link(ptr noundef %dev1.i, ptr noundef %data, ptr noundef nonnull @.str.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then10.cleanup_crit_edge, label %do.end.i

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.else:                                          ; preds = %found
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sysfs_remove_link(ptr noundef %dev1.i, ptr noundef nonnull @.str.1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end.i, %if.then10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_verify_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_ocp_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %buf.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call ptr @devlink_alloc_ns(ptr noundef nonnull @ptp_ocp_devlink_ops, i32 noundef 1280, ptr noundef nonnull @init_net, ptr noundef %dev) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pci_enable_device(ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #14
  br label %out_unregister

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devlink_priv(ptr noundef nonnull %call.i) #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @ptp_ocp_lock, i32 noundef 0) #11
  %call.i77 = tail call i32 @idr_alloc(ptr noundef nonnull @ptp_ocp_idr, ptr noundef %call10, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #11
  tail call void @mutex_unlock(ptr noundef nonnull @ptp_ocp_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %cmp.i = icmp slt i32 %call.i77, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.77, i32 noundef %call.i77) #14
  br label %out_disable

if.end.i:                                         ; preds = %if.end9
  %id.i = getelementptr inbounds %struct.ptp_ocp, ptr %call10, i32 0, i32 27
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call.i77, ptr %id.i, align 8
  %ptp_info.i = getelementptr inbounds %struct.ptp_ocp, ptr %call10, i32 0, i32 20
  %1 = call ptr @memcpy(ptr %ptp_info.i, ptr @ptp_ocp_clock_info, i32 108)
  %lock.i = getelementptr %struct.ptp_ocp, ptr %call10, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.79, ptr noundef nonnull @ptp_ocp_device_init.__key, i16 noundef signext 3) #11
  %gnss_port.i = getelementptr inbounds %struct.ptp_ocp, ptr %call10, i32 0, i32 29
  %2 = call ptr @memset(ptr %gnss_port.i, i32 255, i32 16)
  %3 = ptrtoint ptr %call10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %call10, align 8
  %dev6.i = getelementptr inbounds %struct.ptp_ocp, ptr %call10, i32 0, i32 1
  tail call void @device_initialize(ptr noundef %dev6.i) #11
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 8
  %call9.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev6.i, ptr noundef nonnull @.str.80, i32 noundef %5) #11
  %class.i = getelementptr inbounds %struct.ptp_ocp, ptr %call10, i32 0, i32 1, i32 33
  %6 = ptrtoint ptr %class.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @timecard_class, ptr %class.i, align 4
  %parent.i = getelementptr inbounds %struct.ptp_ocp, ptr %call10, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %parent.i, align 8
  %release.i = getelementptr inbounds %struct.ptp_ocp, ptr %call10, i32 0, i32 1, i32 35
  %8 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ptp_ocp_dev_release, ptr %release.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.ptp_ocp, ptr %call10, i32 0, i32 1, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call10, ptr %driver_data.i.i, align 4
  %call16.i = tail call i32 @device_add(ptr noundef %dev6.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool.not.i, label %if.end14, label %do.end20.i

do.end20.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.82, i32 noundef %call16.i) #14
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @ptp_ocp_lock, i32 noundef 0) #11
  %id.i.i = getelementptr inbounds %struct.ptp_ocp, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i.i, align 8
  %call1.i.i = tail call ptr @idr_remove(ptr noundef nonnull @ptp_ocp_idr, i32 noundef %13) #11
  tail call void @mutex_unlock(ptr noundef nonnull @ptp_ocp_lock) #11
  tail call void @put_device(ptr noundef %dev6.i) #11
  br label %out_disable

if.end14:                                         ; preds = %if.end.i
  %driver_data.i.i55.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %14 = ptrtoint ptr %driver_data.i.i55.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call10, ptr %driver_data.i.i55.i, align 4
  %call.i78 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %pdev, i32 noundef 1, i32 noundef 11, i32 noundef 6, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %cmp = icmp slt i32 %call.i78, 0
  br i1 %cmp, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %call.i78) #14
  br label %out

if.end21:                                         ; preds = %if.end14
  %n_irqs = getelementptr inbounds %struct.ptp_ocp, ptr %call10, i32 0, i32 28
  %15 = ptrtoint ptr %n_irqs to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i78, ptr %n_irqs, align 4
  tail call void @pci_set_master(ptr noundef %pdev) #11
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %16 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %driver_data, align 4
  %18 = inttoptr i32 %17 to ptr
  %setup16.i = getelementptr inbounds %struct.ocp_resource, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %setup16.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %setup16.i, align 4
  %tobool.not17.i = icmp eq ptr %20, null
  br i1 %tobool.not17.i, label %if.end21.if.end25_crit_edge, label %if.end21.for.body.i_crit_edge

if.end21.for.body.i_crit_edge:                    ; preds = %if.end21
  br label %for.body.i

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end21.for.body.i_crit_edge
  %setup20.i = phi ptr [ %setup.i, %for.inc.i.for.body.i_crit_edge ], [ %setup16.i, %if.end21.for.body.i_crit_edge ]
  %r.018.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %18, %if.end21.for.body.i_crit_edge ]
  %irq_vec.i.i = getelementptr inbounds %struct.ocp_resource, ptr %r.018.i, i32 0, i32 2
  %21 = ptrtoint ptr %irq_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq_vec.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %for.body.i.if.end.i79_crit_edge, label %lor.end.i.i

for.body.i.if.end.i79_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i79

lor.end.i.i:                                      ; preds = %for.body.i
  %23 = ptrtoint ptr %n_irqs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.i.i = icmp slt i32 %22, %24
  br i1 %cmp.i.i, label %lor.end.i.i.if.end.i79_crit_edge, label %ptp_ocp_allow_irq.exit.i

lor.end.i.i.if.end.i79_crit_edge:                 ; preds = %lor.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i79

ptp_ocp_allow_irq.exit.i:                         ; preds = %lor.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call10, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %name.i.i = getelementptr inbounds %struct.ocp_resource, ptr %r.018.i, i32 0, i32 6
  %27 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.89, i32 noundef %22, ptr noundef %28) #14
  br label %for.inc.i

if.end.i79:                                       ; preds = %lor.end.i.i.if.end.i79_crit_edge, %for.body.i.if.end.i79_crit_edge
  %29 = ptrtoint ptr %setup20.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %setup20.i, align 4
  %call2.i = tail call i32 %30(ptr noundef %call10, ptr noundef %r.018.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i79.for.inc.i_crit_edge, label %ptp_ocp_register_resources.exit

if.end.i79.for.inc.i_crit_edge:                   ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i79.for.inc.i_crit_edge, %ptp_ocp_allow_irq.exit.i
  %incdec.ptr.i = getelementptr %struct.ocp_resource, ptr %r.018.i, i32 1
  %setup.i = getelementptr %struct.ocp_resource, ptr %r.018.i, i32 1, i32 3
  %31 = ptrtoint ptr %setup.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %setup.i, align 4
  %tobool.not.i82 = icmp eq ptr %32, null
  br i1 %tobool.not.i82, label %for.inc.i.if.end25_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end25_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

ptp_ocp_register_resources.exit:                  ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call10, align 8
  %dev.i80 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %name.i = getelementptr inbounds %struct.ocp_resource, ptr %r.018.i, i32 0, i32 6
  %35 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i80, ptr noundef nonnull @.str.87, ptr noundef %36, i32 noundef %call2.i) #14
  br label %out

if.end25:                                         ; preds = %for.inc.i.if.end25_crit_edge, %if.end21.if.end25_crit_edge
  %call27 = tail call ptr @ptp_clock_register(ptr noundef %ptp_info.i, ptr noundef %dev) #11
  %ptp = getelementptr inbounds %struct.ptp_ocp, ptr %call10, i32 0, i32 19
  %37 = ptrtoint ptr %ptp to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call27, ptr %ptp, align 4
  %cmp.i83 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %if.then30, label %if.end38

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %call27 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef %38) #14
  %39 = ptrtoint ptr %ptp to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %ptp, align 4
  br label %out

if.end38:                                         ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #11
  %40 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  %41 = ptrtoint ptr %gnss_port.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %gnss_port.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp.not.i = icmp eq i32 %42, -1
  br i1 %cmp.not.i, label %if.end38.if.end.i87_crit_edge, label %if.then.i

if.end38.if.end.i87_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i87

if.then.i:                                        ; preds = %if.end38
  %call.i85 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf.i, ptr noundef nonnull @.str.91, i32 noundef %42) #11
  %43 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call10, align 8
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %call.i.i = call ptr @device_find_child_by_name(ptr noundef %dev1.i.i, ptr noundef nonnull %buf.i) #11
  %tobool.not.i.i86 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i86, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.100, ptr noundef nonnull %buf.i) #14
  br label %if.end.i87

if.end.i.i:                                       ; preds = %if.then.i
  %call.i.i.i = call i32 @sysfs_create_link(ptr noundef %dev6.i, ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.92) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.ptp_ocp_symlink.exit.i.i_crit_edge, label %do.end.i.i.i

if.end.i.i.ptp_ocp_symlink.exit.i.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_symlink.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.92) #14
  br label %ptp_ocp_symlink.exit.i.i

ptp_ocp_symlink.exit.i.i:                         ; preds = %do.end.i.i.i, %if.end.i.i.ptp_ocp_symlink.exit.i.i_crit_edge
  call void @put_device(ptr noundef nonnull %call.i.i) #11
  br label %if.end.i87

if.end.i87:                                       ; preds = %ptp_ocp_symlink.exit.i.i, %do.end.i.i, %if.end38.if.end.i87_crit_edge
  %gnss2_port.i = getelementptr inbounds %struct.ptp_ocp, ptr %call10, i32 0, i32 30
  %45 = ptrtoint ptr %gnss2_port.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %gnss2_port.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %cmp3.not.i = icmp eq i32 %46, -1
  br i1 %cmp3.not.i, label %if.end.i87.if.end9.i_crit_edge, label %if.then4.i

if.end.i87.if.end9.i_crit_edge:                   ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.then4.i:                                       ; preds = %if.end.i87
  %call7.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf.i, ptr noundef nonnull @.str.91, i32 noundef %46) #11
  %47 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call10, align 8
  %dev1.i1.i = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %call.i2.i = call ptr @device_find_child_by_name(ptr noundef %dev1.i1.i, ptr noundef nonnull %buf.i) #11
  %tobool.not.i3.i = icmp eq ptr %call.i2.i, null
  br i1 %tobool.not.i3.i, label %do.end.i4.i, label %if.end.i8.i

do.end.i4.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i1.i, ptr noundef nonnull @.str.100, ptr noundef nonnull %buf.i) #14
  br label %if.end9.i

if.end.i8.i:                                      ; preds = %if.then4.i
  %call.i.i6.i = call i32 @sysfs_create_link(ptr noundef %dev6.i, ptr noundef nonnull %call.i2.i, ptr noundef nonnull @.str.93) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i6.i)
  %tobool.not.i.i7.i = icmp eq i32 %call.i.i6.i, 0
  br i1 %tobool.not.i.i7.i, label %if.end.i8.i.ptp_ocp_symlink.exit.i10.i_crit_edge, label %do.end.i.i9.i

if.end.i8.i.ptp_ocp_symlink.exit.i10.i_crit_edge: ; preds = %if.end.i8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_symlink.exit.i10.i

do.end.i.i9.i:                                    ; preds = %if.end.i8.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.93) #14
  br label %ptp_ocp_symlink.exit.i10.i

ptp_ocp_symlink.exit.i10.i:                       ; preds = %do.end.i.i9.i, %if.end.i8.i.ptp_ocp_symlink.exit.i10.i_crit_edge
  call void @put_device(ptr noundef nonnull %call.i2.i) #11
  br label %if.end9.i

if.end9.i:                                        ; preds = %ptp_ocp_symlink.exit.i10.i, %do.end.i4.i, %if.end.i87.if.end9.i_crit_edge
  %mac_port.i = getelementptr inbounds %struct.ptp_ocp, ptr %call10, i32 0, i32 31
  %49 = ptrtoint ptr %mac_port.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mac_port.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp10.not.i = icmp eq i32 %50, -1
  br i1 %cmp10.not.i, label %if.end9.i.if.end16.i_crit_edge, label %if.then11.i

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.then11.i:                                      ; preds = %if.end9.i
  %call14.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf.i, ptr noundef nonnull @.str.91, i32 noundef %50) #11
  %51 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call10, align 8
  %dev1.i12.i = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %call.i13.i = call ptr @device_find_child_by_name(ptr noundef %dev1.i12.i, ptr noundef nonnull %buf.i) #11
  %tobool.not.i14.i = icmp eq ptr %call.i13.i, null
  br i1 %tobool.not.i14.i, label %do.end.i15.i, label %if.end.i19.i

do.end.i15.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i12.i, ptr noundef nonnull @.str.100, ptr noundef nonnull %buf.i) #14
  br label %if.end16.i

if.end.i19.i:                                     ; preds = %if.then11.i
  %call.i.i17.i = call i32 @sysfs_create_link(ptr noundef %dev6.i, ptr noundef nonnull %call.i13.i, ptr noundef nonnull @.str.94) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17.i)
  %tobool.not.i.i18.i = icmp eq i32 %call.i.i17.i, 0
  br i1 %tobool.not.i.i18.i, label %if.end.i19.i.ptp_ocp_symlink.exit.i21.i_crit_edge, label %do.end.i.i20.i

if.end.i19.i.ptp_ocp_symlink.exit.i21.i_crit_edge: ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_symlink.exit.i21.i

do.end.i.i20.i:                                   ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.94) #14
  br label %ptp_ocp_symlink.exit.i21.i

ptp_ocp_symlink.exit.i21.i:                       ; preds = %do.end.i.i20.i, %if.end.i19.i.ptp_ocp_symlink.exit.i21.i_crit_edge
  call void @put_device(ptr noundef nonnull %call.i13.i) #11
  br label %if.end16.i

if.end16.i:                                       ; preds = %ptp_ocp_symlink.exit.i21.i, %do.end.i15.i, %if.end9.i.if.end16.i_crit_edge
  %nmea_port.i = getelementptr inbounds %struct.ptp_ocp, ptr %call10, i32 0, i32 32
  %53 = ptrtoint ptr %nmea_port.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nmea_port.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp17.not.i = icmp eq i32 %54, -1
  br i1 %cmp17.not.i, label %if.end16.i.if.end23.i_crit_edge, label %if.then18.i

if.end16.i.if.end23.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.then18.i:                                      ; preds = %if.end16.i
  %call21.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf.i, ptr noundef nonnull @.str.91, i32 noundef %54) #11
  %55 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call10, align 8
  %dev1.i23.i = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %call.i24.i = call ptr @device_find_child_by_name(ptr noundef %dev1.i23.i, ptr noundef nonnull %buf.i) #11
  %tobool.not.i25.i = icmp eq ptr %call.i24.i, null
  br i1 %tobool.not.i25.i, label %do.end.i26.i, label %if.end.i30.i

do.end.i26.i:                                     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i23.i, ptr noundef nonnull @.str.100, ptr noundef nonnull %buf.i) #14
  br label %if.end23.i

if.end.i30.i:                                     ; preds = %if.then18.i
  %call.i.i28.i = call i32 @sysfs_create_link(ptr noundef %dev6.i, ptr noundef nonnull %call.i24.i, ptr noundef nonnull @.str.95) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i28.i)
  %tobool.not.i.i29.i = icmp eq i32 %call.i.i28.i, 0
  br i1 %tobool.not.i.i29.i, label %if.end.i30.i.ptp_ocp_symlink.exit.i32.i_crit_edge, label %do.end.i.i31.i

if.end.i30.i.ptp_ocp_symlink.exit.i32.i_crit_edge: ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_symlink.exit.i32.i

do.end.i.i31.i:                                   ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.95) #14
  br label %ptp_ocp_symlink.exit.i32.i

ptp_ocp_symlink.exit.i32.i:                       ; preds = %do.end.i.i31.i, %if.end.i30.i.ptp_ocp_symlink.exit.i32.i_crit_edge
  call void @put_device(ptr noundef nonnull %call.i24.i) #11
  br label %if.end23.i

if.end23.i:                                       ; preds = %ptp_ocp_symlink.exit.i32.i, %do.end.i26.i, %if.end16.i.if.end23.i_crit_edge
  %57 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ptp, align 4
  %call25.i = call i32 @ptp_clock_index(ptr noundef %58) #11
  %call26.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf.i, ptr noundef nonnull @.str.96, i32 noundef %call25.i) #11
  %59 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call10, align 8
  %dev1.i34.i = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %call.i35.i = call ptr @device_find_child_by_name(ptr noundef %dev1.i34.i, ptr noundef nonnull %buf.i) #11
  %tobool.not.i36.i = icmp eq ptr %call.i35.i, null
  br i1 %tobool.not.i36.i, label %do.end.i37.i, label %if.end.i41.i

do.end.i37.i:                                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i34.i, ptr noundef nonnull @.str.100, ptr noundef nonnull %buf.i) #14
  br label %ptp_ocp_link_child.exit44.i

if.end.i41.i:                                     ; preds = %if.end23.i
  %call.i.i39.i = call i32 @sysfs_create_link(ptr noundef %dev6.i, ptr noundef nonnull %call.i35.i, ptr noundef nonnull @.str.97) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39.i)
  %tobool.not.i.i40.i = icmp eq i32 %call.i.i39.i, 0
  br i1 %tobool.not.i.i40.i, label %if.end.i41.i.ptp_ocp_symlink.exit.i43.i_crit_edge, label %do.end.i.i42.i

if.end.i41.i.ptp_ocp_symlink.exit.i43.i_crit_edge: ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_symlink.exit.i43.i

do.end.i.i42.i:                                   ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.97) #14
  br label %ptp_ocp_symlink.exit.i43.i

ptp_ocp_symlink.exit.i43.i:                       ; preds = %do.end.i.i42.i, %if.end.i41.i.ptp_ocp_symlink.exit.i43.i_crit_edge
  call void @put_device(ptr noundef nonnull %call.i35.i) #11
  br label %ptp_ocp_link_child.exit44.i

ptp_ocp_link_child.exit44.i:                      ; preds = %ptp_ocp_symlink.exit.i43.i, %do.end.i37.i
  %61 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ptp, align 4
  %call29.i = call ptr @pps_lookup_dev(ptr noundef %62) #11
  %tobool.not.i88 = icmp eq ptr %call29.i, null
  br i1 %tobool.not.i88, label %ptp_ocp_link_child.exit44.i.if.end31.i_crit_edge, label %if.then30.i

ptp_ocp_link_child.exit44.i.if.end31.i_crit_edge: ; preds = %ptp_ocp_link_child.exit44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

if.then30.i:                                      ; preds = %ptp_ocp_link_child.exit44.i
  %dev.i89 = getelementptr inbounds %struct.pps_device, ptr %call29.i, i32 0, i32 12
  %63 = ptrtoint ptr %dev.i89 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i89, align 4
  %call.i46.i = call i32 @sysfs_create_link(ptr noundef %dev6.i, ptr noundef %64, ptr noundef nonnull @.str.14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i)
  %tobool.not.i47.i = icmp eq i32 %call.i46.i, 0
  br i1 %tobool.not.i47.i, label %if.then30.i.if.end31.i_crit_edge, label %do.end.i48.i

if.then30.i.if.end31.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

do.end.i48.i:                                     ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.14) #14
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.end.i48.i, %if.then30.i.if.end31.i_crit_edge, %ptp_ocp_link_child.exit44.i.if.end31.i_crit_edge
  %call33.i = call i32 @device_add_groups(ptr noundef %dev6.i, ptr noundef nonnull @timecard_groups) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end31.i.if.end37.i_crit_edge, label %do.end.i90

if.end31.i.if.end37.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

do.end.i90:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #14
  br label %if.end37.i

if.end37.i:                                       ; preds = %do.end.i90, %if.end31.i.if.end37.i_crit_edge
  %init_name.i.i.i = getelementptr inbounds %struct.ptp_ocp, ptr %call10, i32 0, i32 1, i32 3
  %65 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i50.i = icmp eq ptr %66, null
  br i1 %tobool.not.i.i50.i, label %if.end.i.i.i, label %if.end37.i.ptp_ocp_complete.exit_crit_edge

if.end37.i.ptp_ocp_complete.exit_crit_edge:       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_complete.exit

if.end.i.i.i:                                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev6.i, align 4
  br label %ptp_ocp_complete.exit

ptp_ocp_complete.exit:                            ; preds = %if.end.i.i.i, %if.end37.i.ptp_ocp_complete.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %68, %if.end.i.i.i ], [ %66, %if.end37.i.ptp_ocp_complete.exit_crit_edge ]
  %69 = load ptr, ptr @ptp_ocp_debugfs_root, align 4
  %call1.i.i91 = call ptr @debugfs_create_dir(ptr noundef %retval.0.i.i.i, ptr noundef %69) #11
  %debug_root.i.i = getelementptr inbounds %struct.ptp_ocp, ptr %call10, i32 0, i32 25
  %70 = ptrtoint ptr %debug_root.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call1.i.i91, ptr %debug_root.i.i, align 8
  %call4.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.146, i16 noundef zeroext 292, ptr noundef %call1.i.i91, ptr noundef %dev6.i, ptr noundef nonnull @ptp_ocp_summary_fops) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #11
  %71 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call10, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  %reg.i.i = getelementptr inbounds %struct.ptp_ocp, ptr %call10, i32 0, i32 3
  %73 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg.i.i, align 4
  %version1.i.i = getelementptr inbounds %struct.ocp_reg, ptr %74, i32 0, i32 3
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %version1.i.i) #11, !srcloc !515
  %76 = call i32 @llvm.bswap.i32(i32 %75) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %77 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg.i.i, align 4
  %select3.i.i = getelementptr inbounds %struct.ocp_reg, ptr %78, i32 0, i32 2
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %select3.i.i) #11, !srcloc !515
  %80 = call i32 @llvm.bswap.i32(i32 %79) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %81 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %call10, align 8
  %dev.i.i92 = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  %shr.i.i = lshr i32 %76, 24
  %shr5.i.i = lshr i32 %76, 16
  %and.i.i = and i32 %shr5.i.i, 255
  %and6.i.i = and i32 %76, 65535
  %shr7.i.i = lshr i32 %80, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %80)
  %cmp.i32.i.i = icmp ult i32 %80, 65536
  br i1 %cmp.i32.i.i, label %ptp_ocp_complete.exit.ptp_ocp_select_name_from_val.exit.i.i_crit_edge, label %for.body.i.i.i

ptp_ocp_complete.exit.ptp_ocp_select_name_from_val.exit.i.i_crit_edge: ; preds = %ptp_ocp_complete.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_name_from_val.exit.i.i

for.body.i.i.i:                                   ; preds = %ptp_ocp_complete.exit
  %83 = zext i32 %shr7.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr7.i.i, label %for.cond.i.i.i.8 [
    i32 1, label %for.body.i.i.i.ptp_ocp_select_name_from_val.exit.i.i_crit_edge
    i32 2, label %ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split
    i32 3, label %ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split117
    i32 4, label %ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split118
    i32 5, label %ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split119
    i32 6, label %ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split120
    i32 254, label %ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split121
    i32 255, label %ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split122
  ]

for.body.i.i.i.ptp_ocp_select_name_from_val.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_name_from_val.exit.i.i

for.cond.i.i.i.8:                                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_name_from_val.exit.i.i

ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_name_from_val.exit.i.i

ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split117: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_name_from_val.exit.i.i

ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split118: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_name_from_val.exit.i.i

ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split119: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_name_from_val.exit.i.i

ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split120: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_name_from_val.exit.i.i

ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split121: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_name_from_val.exit.i.i

ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split122: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_name_from_val.exit.i.i

ptp_ocp_select_name_from_val.exit.i.i:            ; preds = %ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split122, %ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split121, %ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split120, %ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split119, %ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split118, %ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split117, %ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split, %for.cond.i.i.i.8, %for.body.i.i.i.ptp_ocp_select_name_from_val.exit.i.i_crit_edge, %ptp_ocp_complete.exit.ptp_ocp_select_name_from_val.exit.i.i_crit_edge
  %.lcssa.i.i.i = phi ptr [ @.str.109, %ptp_ocp_complete.exit.ptp_ocp_select_name_from_val.exit.i.i_crit_edge ], [ @.str.110, %for.body.i.i.i.ptp_ocp_select_name_from_val.exit.i.i_crit_edge ], [ null, %for.cond.i.i.i.8 ], [ @.str.111, %ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split ], [ @.str.112, %ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split117 ], [ @.str.113, %ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split118 ], [ @.str.114, %ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split119 ], [ @.str.115, %ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split120 ], [ @.str.116, %ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split121 ], [ @.str.117, %ptp_ocp_select_name_from_val.exit.i.i.loopexit.fold.split122 ]
  %84 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ptp, align 4
  %call9.i.i = call i32 @ptp_clock_index(ptr noundef %85) #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i92, ptr noundef nonnull @.str.187, i32 noundef %shr.i.i, i32 noundef %and.i.i, i32 noundef %and6.i.i, ptr noundef %.lcssa.i.i.i, i32 noundef %call9.i.i) #14
  %86 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %reg.i.i, align 4
  %status.i.i = getelementptr inbounds %struct.ocp_reg, ptr %87, i32 0, i32 1
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status.i.i) #11, !srcloc !515
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %call3.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %89 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %reg.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 16777280) #11, !srcloc !518
  br label %for.body.i31.i.i

for.body.i31.i.i:                                 ; preds = %for.body.i31.i.i.for.body.i31.i.i_crit_edge, %ptp_ocp_select_name_from_val.exit.i.i
  %i.035.i.i.i = phi i32 [ 0, %ptp_ocp_select_name_from_val.exit.i.i ], [ %inc.i30.i.i, %for.body.i31.i.i.for.body.i31.i.i_crit_edge ]
  %91 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg.i.i, align 4
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #11, !srcloc !515
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %.mask.i.i = and i32 %93, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i)
  %tobool.not.i29.i.i = icmp ne i32 %.mask.i.i, 0
  %inc.i30.i.i = add nuw nsw i32 %i.035.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc.i30.i.i)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i30.i.i, 100
  %or.cond.i.i.i = select i1 %tobool.not.i29.i.i, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %__ptp_ocp_gettime_locked.exit.i.i, label %for.body.i31.i.i.for.body.i31.i.i_crit_edge

for.body.i31.i.i.for.body.i31.i.i_crit_edge:      ; preds = %for.body.i31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i31.i.i

__ptp_ocp_gettime_locked.exit.i.i:                ; preds = %for.body.i31.i.i
  %94 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %reg.i.i, align 4
  %time_ns12.i.i.i = getelementptr inbounds %struct.ocp_reg, ptr %95, i32 0, i32 4
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %time_ns12.i.i.i) #11, !srcloc !515
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %97 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %reg.i.i, align 4
  %time_sec15.i.i.i = getelementptr inbounds %struct.ocp_reg, ptr %98, i32 0, i32 5
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %time_sec15.i.i.i) #11, !srcloc !515
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i.i.i) #11
  br i1 %tobool.not.i29.i.i, label %do.end17.i.i, label %__ptp_ocp_gettime_locked.exit.i.i.ptp_ocp_phc_info.exit.i_crit_edge

__ptp_ocp_gettime_locked.exit.i.i.ptp_ocp_phc_info.exit.i_crit_edge: ; preds = %__ptp_ocp_gettime_locked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_phc_info.exit.i

do.end17.i.i:                                     ; preds = %__ptp_ocp_gettime_locked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %100 = call i32 @llvm.bswap.i32(i32 %99) #11
  %conv17.i.i.i = zext i32 %100 to i64
  %101 = call i32 @llvm.bswap.i32(i32 %96) #11
  %102 = and i32 %88, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i.i94 = icmp eq i32 %102, 0
  %103 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %call10, align 8
  %dev19.i.i = getelementptr inbounds %struct.pci_dev, ptr %104, i32 0, i32 44
  %cond.i.i = select i1 %tobool.not.i.i94, ptr @.str.193, ptr @.str.192
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev19.i.i, ptr noundef nonnull @.str.190, i64 noundef %conv17.i.i.i, i32 noundef %101, ptr noundef nonnull %cond.i.i) #14
  br label %ptp_ocp_phc_info.exit.i

ptp_ocp_phc_info.exit.i:                          ; preds = %do.end17.i.i, %__ptp_ocp_gettime_locked.exit.i.i.ptp_ocp_phc_info.exit.i_crit_edge
  %tod.i = getelementptr inbounds %struct.ptp_ocp, ptr %call10, i32 0, i32 4
  %105 = ptrtoint ptr %tod.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %tod.i, align 8
  %tobool.not.i95 = icmp eq ptr %106, null
  br i1 %tobool.not.i95, label %ptp_ocp_phc_info.exit.i.if.end.i98_crit_edge, label %if.then.i97

ptp_ocp_phc_info.exit.i.if.end.i98_crit_edge:     ; preds = %ptp_ocp_phc_info.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i98

if.then.i97:                                      ; preds = %ptp_ocp_phc_info.exit.i
  %version1.i48.i = getelementptr inbounds %struct.tod_reg, ptr %106, i32 0, i32 3
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %version1.i48.i) #11, !srcloc !515
  %108 = call i32 @llvm.bswap.i32(i32 %107) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %109 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %call10, align 8
  %dev.i49.i = getelementptr inbounds %struct.pci_dev, ptr %110, i32 0, i32 44
  %shr.i50.i = lshr i32 %108, 24
  %shr2.i.i = lshr i32 %108, 16
  %and.i51.i = and i32 %shr2.i.i, 255
  %and3.i.i = and i32 %108, 65535
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i49.i, ptr noundef nonnull @.str.207, i32 noundef %shr.i50.i, i32 noundef %and.i51.i, i32 noundef %and3.i.i) #14
  %111 = ptrtoint ptr %tod.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %tod.i, align 8
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #11, !srcloc !515
  %114 = call i32 @llvm.bswap.i32(i32 %113) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %and7.i.i = lshr i32 %114, 26
  %115 = and i32 %and7.i.i, 4
  %shr8.i.i = lshr i32 %114, 16
  %and9.i.i = and i32 %shr8.i.i, 3
  %add.i.i = or i32 %115, %and9.i.i
  %116 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %call10, align 8
  %dev14.i.i = getelementptr inbounds %struct.pci_dev, ptr %117, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14.i.i, ptr noundef nonnull @.str.210, i32 noundef %114) #14
  %118 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %call10, align 8
  %dev19.i52.i = getelementptr inbounds %struct.pci_dev, ptr %119, i32 0, i32 44
  %arrayidx.i.i = getelementptr [8 x ptr], ptr @ptp_ocp_tod_info.proto_name, i32 0, i32 %add.i.i
  %120 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx.i.i, align 4
  %and20.i.i = and i32 %114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i)
  %tobool21.not.i.i = icmp eq i32 %and20.i.i, 0
  %cond22.i.i = select i1 %tobool21.not.i.i, ptr @.str.75, ptr @.str.215
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev19.i52.i, ptr noundef nonnull @.str.213, ptr noundef %121, ptr noundef nonnull %cond22.i.i) #14
  %shr23.i.i = lshr i32 %114, 24
  %and24.i.i = and i32 %shr23.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and24.i.i)
  %cmp.i.i96 = icmp ult i32 %and24.i.i, 6
  br i1 %cmp.i.i96, label %do.end27.i.i, label %if.then.i97.ptp_ocp_tod_info.exit.i_crit_edge

if.then.i97.ptp_ocp_tod_info.exit.i_crit_edge:    ; preds = %if.then.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_tod_info.exit.i

do.end27.i.i:                                     ; preds = %if.then.i97
  call void @__sanitizer_cov_trace_pc() #13
  %122 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %call10, align 8
  %dev29.i.i = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  %arrayidx30.i.i = getelementptr [6 x ptr], ptr @ptp_ocp_tod_info.gnss_name, i32 0, i32 %and24.i.i
  %124 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx30.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev29.i.i, ptr noundef nonnull @.str.217, ptr noundef %125) #14
  br label %ptp_ocp_tod_info.exit.i

ptp_ocp_tod_info.exit.i:                          ; preds = %do.end27.i.i, %if.then.i97.ptp_ocp_tod_info.exit.i_crit_edge
  %126 = ptrtoint ptr %tod.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %tod.i, align 8
  %status.i53.i = getelementptr inbounds %struct.tod_reg, ptr %127, i32 0, i32 1
  %128 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status.i53.i) #11, !srcloc !515
  %129 = call i32 @llvm.bswap.i32(i32 %128) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %130 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %call10, align 8
  %dev37.i.i = getelementptr inbounds %struct.pci_dev, ptr %131, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev37.i.i, ptr noundef nonnull @.str.220, i32 noundef %129) #14
  %132 = ptrtoint ptr %tod.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %tod.i, align 8
  %adj_sec.i.i = getelementptr inbounds %struct.tod_reg, ptr %133, i32 0, i32 4
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %adj_sec.i.i) #11, !srcloc !515
  %135 = call i32 @llvm.bswap.i32(i32 %134) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %136 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %call10, align 8
  %dev44.i.i = getelementptr inbounds %struct.pci_dev, ptr %137, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev44.i.i, ptr noundef nonnull @.str.223, i32 noundef %135) #14
  %138 = ptrtoint ptr %tod.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %tod.i, align 8
  %utc_status.i.i = getelementptr inbounds %struct.tod_reg, ptr %139, i32 0, i32 8
  %140 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %utc_status.i.i) #11, !srcloc !515
  %141 = call i32 @llvm.bswap.i32(i32 %140) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %142 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %call10, align 8
  %dev51.i.i = getelementptr inbounds %struct.pci_dev, ptr %143, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev51.i.i, ptr noundef nonnull @.str.226, i32 noundef %141) #14
  %144 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %call10, align 8
  %dev56.i.i = getelementptr inbounds %struct.pci_dev, ptr %145, i32 0, i32 44
  %and57.i.i = and i32 %141, 255
  %and58.i.i = lshr i32 %141, 8
  %and58.lobit.i.i = and i32 %and58.i.i, 1
  %and61.i.i = lshr i32 %141, 16
  %and61.lobit.i.i = and i32 %and61.i.i, 1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev56.i.i, ptr noundef nonnull @.str.229, i32 noundef %and57.i.i, i32 noundef %and58.lobit.i.i, i32 noundef %and61.lobit.i.i) #14
  br label %if.end.i98

if.end.i98:                                       ; preds = %ptp_ocp_tod_info.exit.i, %ptp_ocp_phc_info.exit.i.if.end.i98_crit_edge
  %image.i = getelementptr inbounds %struct.ptp_ocp, ptr %call10, i32 0, i32 18
  %146 = ptrtoint ptr %image.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %image.i, align 8
  %tobool2.not.i = icmp eq ptr %147, null
  br i1 %tobool2.not.i, label %if.end.i98.if.end15.i_crit_edge, label %if.then3.i

if.end.i98.if.end15.i_crit_edge:                  ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.then3.i:                                       ; preds = %if.end.i98
  %148 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %147) #11, !srcloc !515
  %149 = call i32 @llvm.bswap.i32(i32 %148) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.178, i32 noundef %149) #14
  %and.i = and i32 %149, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %do.end13.i, label %do.end9.i

do.end9.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.182, i32 noundef %and.i) #14
  br label %if.end15.i

do.end13.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i = lshr i32 %149, 16
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.185, i32 noundef %shr.i) #14
  br label %if.end15.i

if.end15.i:                                       ; preds = %do.end13.i, %do.end9.i, %if.end.i98.if.end15.i_crit_edge
  %150 = ptrtoint ptr %gnss_port.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %gnss_port.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %151)
  %cmp.not.i.i = icmp eq i32 %151, -1
  br i1 %cmp.not.i.i, label %if.end15.i.ptp_ocp_serial_info.exit.i_crit_edge, label %do.end.i.i100

if.end15.i.ptp_ocp_serial_info.exit.i_crit_edge:  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_serial_info.exit.i

do.end.i.i100:                                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.127, i32 noundef %151, i32 noundef 115200) #14
  br label %ptp_ocp_serial_info.exit.i

ptp_ocp_serial_info.exit.i:                       ; preds = %do.end.i.i100, %if.end15.i.ptp_ocp_serial_info.exit.i_crit_edge
  %152 = ptrtoint ptr %gnss2_port.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %gnss2_port.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %153)
  %cmp.not.i54.i = icmp eq i32 %153, -1
  br i1 %cmp.not.i54.i, label %ptp_ocp_serial_info.exit.i.ptp_ocp_serial_info.exit56.i_crit_edge, label %do.end.i55.i

ptp_ocp_serial_info.exit.i.ptp_ocp_serial_info.exit56.i_crit_edge: ; preds = %ptp_ocp_serial_info.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_serial_info.exit56.i

do.end.i55.i:                                     ; preds = %ptp_ocp_serial_info.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.128, i32 noundef %153, i32 noundef 115200) #14
  br label %ptp_ocp_serial_info.exit56.i

ptp_ocp_serial_info.exit56.i:                     ; preds = %do.end.i55.i, %ptp_ocp_serial_info.exit.i.ptp_ocp_serial_info.exit56.i_crit_edge
  %154 = ptrtoint ptr %mac_port.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %mac_port.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %155)
  %cmp.not.i57.i = icmp eq i32 %155, -1
  br i1 %cmp.not.i57.i, label %ptp_ocp_serial_info.exit56.i.ptp_ocp_serial_info.exit59.i_crit_edge, label %do.end.i58.i

ptp_ocp_serial_info.exit56.i.ptp_ocp_serial_info.exit59.i_crit_edge: ; preds = %ptp_ocp_serial_info.exit56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_serial_info.exit59.i

do.end.i58.i:                                     ; preds = %ptp_ocp_serial_info.exit56.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.126, i32 noundef %155, i32 noundef 57600) #14
  br label %ptp_ocp_serial_info.exit59.i

ptp_ocp_serial_info.exit59.i:                     ; preds = %do.end.i58.i, %ptp_ocp_serial_info.exit56.i.ptp_ocp_serial_info.exit59.i_crit_edge
  %nmea_out.i = getelementptr inbounds %struct.ptp_ocp, ptr %call10, i32 0, i32 13
  %156 = ptrtoint ptr %nmea_out.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %nmea_out.i, align 4
  %tobool16.not.i = icmp eq ptr %157, null
  br i1 %tobool16.not.i, label %ptp_ocp_serial_info.exit59.i.ptp_ocp_info.exit_crit_edge, label %land.lhs.true.i

ptp_ocp_serial_info.exit59.i.ptp_ocp_info.exit_crit_edge: ; preds = %ptp_ocp_serial_info.exit59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_info.exit

land.lhs.true.i:                                  ; preds = %ptp_ocp_serial_info.exit59.i
  %158 = ptrtoint ptr %nmea_port.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %nmea_port.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %159)
  %cmp.not.i104 = icmp eq i32 %159, -1
  br i1 %cmp.not.i104, label %land.lhs.true.i.ptp_ocp_info.exit_crit_edge, label %if.then17.i

land.lhs.true.i.ptp_ocp_info.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_info.exit

if.then17.i:                                      ; preds = %land.lhs.true.i
  %uart_baud.i = getelementptr inbounds %struct.tod_reg, ptr %157, i32 0, i32 6
  %160 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %uart_baud.i) #11, !srcloc !515
  %161 = call i32 @llvm.bswap.i32(i32 %160) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %161)
  %cmp20.i = icmp ult i32 %161, 13
  br i1 %cmp20.i, label %if.then21.i, label %if.then17.i.if.end22.i105_crit_edge

if.then17.i.if.end22.i105_crit_edge:              ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i105

if.then21.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr [13 x i32], ptr @ptp_ocp_info.nmea_baud, i32 0, i32 %161
  %162 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx.i, align 4
  br label %if.end22.i105

if.end22.i105:                                    ; preds = %if.then21.i, %if.then17.i.if.end22.i105_crit_edge
  %baud.0.i = phi i32 [ %163, %if.then21.i ], [ -1, %if.then17.i.if.end22.i105_crit_edge ]
  %164 = ptrtoint ptr %nmea_port.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %nmea_port.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %165)
  %cmp.not.i60.i = icmp eq i32 %165, -1
  br i1 %cmp.not.i60.i, label %if.end22.i105.ptp_ocp_info.exit_crit_edge, label %do.end.i61.i

if.end22.i105.ptp_ocp_info.exit_crit_edge:        ; preds = %if.end22.i105
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_info.exit

do.end.i61.i:                                     ; preds = %if.end22.i105
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.164, i32 noundef %165, i32 noundef %baud.0.i) #14
  br label %ptp_ocp_info.exit

ptp_ocp_info.exit:                                ; preds = %do.end.i61.i, %if.end22.i105.ptp_ocp_info.exit_crit_edge, %land.lhs.true.i.ptp_ocp_info.exit_crit_edge, %ptp_ocp_serial_info.exit59.i.ptp_ocp_info.exit_crit_edge
  call void @devlink_register(ptr noundef nonnull %call.i) #11
  br label %cleanup

out:                                              ; preds = %if.then30, %ptp_ocp_register_resources.exit, %do.end19
  %err.0 = phi i32 [ %call.i78, %do.end19 ], [ %call2.i, %ptp_ocp_register_resources.exit ], [ %38, %if.then30 ]
  tail call fastcc void @ptp_ocp_detach(ptr noundef %call10)
  %166 = ptrtoint ptr %driver_data.i.i55.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %driver_data.i.i55.i, align 4
  br label %out_disable

out_disable:                                      ; preds = %out, %do.end20.i, %do.end.i
  %err.1 = phi i32 [ %err.0, %out ], [ %call16.i, %do.end20.i ], [ %call.i77, %do.end.i ]
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  br label %out_unregister

out_unregister:                                   ; preds = %out_disable, %do.end7
  %err.2 = phi i32 [ %call2, %do.end7 ], [ %err.1, %out_disable ]
  tail call void @devlink_free(ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out_unregister, %ptp_ocp_info.exit, %do.end
  %retval.0 = phi i32 [ %err.2, %out_unregister ], [ 0, %ptp_ocp_info.exit ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ptp_ocp_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @priv_to_devlink(ptr noundef %1) #11
  tail call void @devlink_unregister(ptr noundef %call1) #11
  tail call fastcc void @ptp_ocp_detach(ptr noundef %1)
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  tail call void @devlink_free(ptr noundef %call1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_ocp_register_mem(ptr noundef %bp, ptr nocapture noundef readonly %r) #2 align 64 {
entry:
  %res.i.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bp, align 8
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource.i, align 8
  %4 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r, align 4
  %add.i = add i32 %5, %3
  %size.i = getelementptr inbounds %struct.ocp_resource, ptr %r, i32 0, i32 1
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i.i) #11
  %8 = getelementptr inbounds %struct.resource, ptr %res.i.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.resource, ptr %res.i.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.resource, ptr %res.i.i, i32 0, i32 3
  %11 = getelementptr inbounds %struct.resource, ptr %res.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %res.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add.i, ptr %res.i.i, align 4
  %add.i.i = add i32 %add.i, -1
  %sub.i.i = add i32 %add.i.i, %7
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub.i.i, ptr %8, align 4
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str, ptr %9, align 4
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 512, ptr %10, align 4
  %16 = call ptr @memset(ptr %11, i32 0, i32 16)
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i.i = call ptr @devm_ioremap_resource(ptr noundef %dev.i.i, ptr noundef nonnull %res.i.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i.i) #11
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %bp to i32
  %bp_offset = getelementptr inbounds %struct.ocp_resource, ptr %r, i32 0, i32 5
  %19 = ptrtoint ptr %bp_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bp_offset, align 4
  %add = add i32 %20, %18
  %21 = inttoptr i32 %add to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i, ptr %21, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %17, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_ocp_register_ext(ptr noundef %bp, ptr nocapture noundef readonly %r) #2 align 64 {
entry:
  %res.i.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bp, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 16) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bp, align 8
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %resource.i, align 8
  %7 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %r, align 4
  %add.i = add i32 %8, %6
  %size.i = getelementptr inbounds %struct.ocp_resource, ptr %r, i32 0, i32 1
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i.i) #11
  %11 = getelementptr inbounds %struct.resource, ptr %res.i.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.resource, ptr %res.i.i, i32 0, i32 2
  %13 = getelementptr inbounds %struct.resource, ptr %res.i.i, i32 0, i32 3
  %14 = getelementptr inbounds %struct.resource, ptr %res.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %res.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add.i, ptr %res.i.i, align 4
  %add.i.i = add i32 %add.i, -1
  %sub.i.i = add i32 %add.i.i, %10
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub.i.i, ptr %11, align 4
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str, ptr %12, align 4
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 512, ptr %13, align 4
  %19 = call ptr @memset(ptr %14, i32 0, i32 16)
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %call.i.i = call ptr @devm_ioremap_resource(ptr noundef %dev.i.i, ptr noundef nonnull %res.i.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i.i) #11
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %call7.i.i, align 8
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %call.i.i to i32
  br label %out

if.end8:                                          ; preds = %if.end
  %bp9 = getelementptr inbounds %struct.ptp_ocp_ext_src, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %bp9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %bp, ptr %bp9, align 4
  %extra = getelementptr inbounds %struct.ocp_resource, ptr %r, i32 0, i32 4
  %23 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %extra, align 4
  %info = getelementptr inbounds %struct.ptp_ocp_ext_src, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %info, align 8
  %irq_vec = getelementptr inbounds %struct.ocp_resource, ptr %r, i32 0, i32 2
  %26 = ptrtoint ptr %irq_vec to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq_vec, align 4
  %irq_vec10 = getelementptr inbounds %struct.ptp_ocp_ext_src, ptr %call7.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %irq_vec10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %irq_vec10, align 4
  %irq_fcn = getelementptr inbounds %struct.ptp_ocp_ext_info, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %irq_fcn to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irq_fcn, align 4
  %id = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 27
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id, align 8
  %name = getelementptr inbounds %struct.ocp_resource, ptr %r, i32 0, i32 6
  %33 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name, align 4
  %call13 = call i32 (ptr, i32, ptr, ptr, ptr, ptr, ...) @pci_request_irq(ptr noundef %1, i32 noundef %27, ptr noundef %30, ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.38, i32 noundef %32, ptr noundef %34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end17, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %35 = ptrtoint ptr %irq_vec to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq_vec, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %36) #14
  br label %out

if.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %bp to i32
  %bp_offset = getelementptr inbounds %struct.ocp_resource, ptr %r, i32 0, i32 5
  %38 = ptrtoint ptr %bp_offset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bp_offset, align 4
  %add = add i32 %39, %37
  %40 = inttoptr i32 %add to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %40, align 4
  br label %cleanup

out:                                              ; preds = %do.end, %if.then5
  %err.0 = phi i32 [ %21, %if.then5 ], [ %call13, %do.end ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %if.end17 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_ocp_ts_irq(i32 noundef %irq, ptr noundef readonly %priv) #2 align 64 {
entry:
  %ev = alloca %struct.ptp_clock_event, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ev) #11
  %2 = call ptr @memset(ptr %ev, i32 255, i32 24)
  %bp = getelementptr inbounds %struct.ptp_ocp_ext_src, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bp, align 4
  %pps = getelementptr inbounds %struct.ptp_ocp, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %pps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pps, align 8
  %cmp = icmp eq ptr %6, %priv
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then:                                          ; preds = %entry
  %pps_req_map = getelementptr inbounds %struct.ptp_ocp, ptr %4, i32 0, i32 35
  %7 = ptrtoint ptr %pps_req_map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pps_req_map, align 8
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %ev to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %ev, align 8
  %ptp = getelementptr inbounds %struct.ptp_ocp, ptr %4, i32 0, i32 19
  %10 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptp, align 4
  call void @ptp_clock_event(ptr noundef %11, ptr noundef nonnull %ev) #11
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %12 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bp, align 4
  %pps_req_map5 = getelementptr inbounds %struct.ptp_ocp, ptr %13, i32 0, i32 35
  %14 = ptrtoint ptr %pps_req_map5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pps_req_map5, align 8
  %and6 = and i32 %15, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7 = icmp eq i32 %and6, 0
  br i1 %cmp7, label %if.end.out_crit_edge, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  %time_sec = getelementptr inbounds %struct.ts_reg, ptr %1, i32 0, i32 13
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %time_sec) #11, !srcloc !515
  %17 = call i32 @llvm.bswap.i32(i32 %16) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %time_ns = getelementptr inbounds %struct.ts_reg, ptr %1, i32 0, i32 12
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %time_ns) #11, !srcloc !515
  %19 = call i32 @llvm.bswap.i32(i32 %18) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %20 = ptrtoint ptr %ev to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %ev, align 8
  %info = getelementptr inbounds %struct.ptp_ocp_ext_src, ptr %priv, i32 0, i32 2
  %21 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %index13 = getelementptr inbounds %struct.ptp_clock_event, ptr %ev, i32 0, i32 1
  %25 = ptrtoint ptr %index13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %index13, align 4
  %mul = mul i32 %17, 1000000000
  %add = add i32 %19, %mul
  %conv = zext i32 %add to i64
  %26 = getelementptr inbounds %struct.ptp_clock_event, ptr %ev, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv, ptr %26, align 8
  %28 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bp, align 4
  %ptp15 = getelementptr inbounds %struct.ptp_ocp, ptr %29, i32 0, i32 19
  %30 = ptrtoint ptr %ptp15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ptp15, align 4
  call void @ptp_clock_event(ptr noundef %31, ptr noundef nonnull %ev) #11
  br label %out

out:                                              ; preds = %if.end10, %if.end.out_crit_edge
  %intr = getelementptr inbounds %struct.ts_reg, ptr %1, i32 0, i32 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intr, i32 16777216) #11, !srcloc !518
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ev) #11
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_ocp_ts_enable(ptr noundef readonly %priv, i32 noundef %req, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %bp1 = getelementptr inbounds %struct.ptp_ocp_ext_src, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bp1, align 4
  %pps = getelementptr inbounds %struct.ptp_ocp, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %pps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pps, align 8
  %cmp = icmp eq ptr %5, %priv
  br i1 %cmp, label %if.then, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then:                                          ; preds = %entry
  %pps_req_map = getelementptr inbounds %struct.ptp_ocp, ptr %3, i32 0, i32 35
  %6 = ptrtoint ptr %pps_req_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pps_req_map, align 8
  %neg = xor i32 %req, -1
  %and = and i32 %7, %neg
  %or = or i32 %7, %req
  %storemerge = select i1 %enable, i32 %or, i32 %and
  store i32 %storemerge, ptr %pps_req_map, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5 = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge)
  %tobool8 = icmp ne i32 %storemerge, 0
  %cmp13 = xor i1 %tobool5, %tobool8
  br i1 %cmp13, label %if.then.cleanup24_crit_edge, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then.cleanup24_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup24

if.end16:                                         ; preds = %if.then.if.end16_crit_edge, %entry.if.end16_crit_edge
  br i1 %enable, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #11, !srcloc !518
  %intr_mask = getelementptr inbounds %struct.ts_reg, ptr %1, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intr_mask, i32 16777216) #11, !srcloc !518
  %intr = getelementptr inbounds %struct.ts_reg, ptr %1, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intr, i32 16777216) #11, !srcloc !518
  br label %cleanup24

if.else20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %intr_mask21 = getelementptr inbounds %struct.ts_reg, ptr %1, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intr_mask21, i32 0) #11, !srcloc !518
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #11, !srcloc !518
  br label %cleanup24

cleanup24:                                        ; preds = %if.else20, %if.then18, %if.then.cleanup24_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_ocp_register_i2c(ptr noundef %bp, ptr nocapture noundef readonly %r) #2 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %res.i = alloca [2 x %struct.resource], align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bp, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #11
  %extra = getelementptr inbounds %struct.ocp_resource, ptr %r, i32 0, i32 4
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %3 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extra, align 4
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %number.i, align 4
  %conv1.i = zext i8 %8 to i32
  %shl.i = shl nuw nsw i32 %conv1.i, 8
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %devfn.i, align 4
  %.masked = and i32 %10, 65535
  %conv = or i32 %shl.i, %.masked
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.41, i32 noundef %conv)
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %fixed_rate = getelementptr inbounds %struct.ptp_ocp_i2c_info, ptr %4, i32 0, i32 1
  %11 = ptrtoint ptr %fixed_rate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fixed_rate, align 4
  %call5 = call ptr @__clk_hw_register_fixed_rate(ptr noundef %dev, ptr noundef null, ptr noundef nonnull %buf, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %12, i32 noundef 0, i32 noundef 0) #11
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c_clk = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 23
  %14 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5, ptr %i2c_clk, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %4, align 4
  %call9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.42, ptr noundef %16, i32 noundef %conv)
  %call12 = call i32 @devm_clk_hw_register_clkdev(ptr noundef %dev, ptr noundef %call5, ptr noundef null, ptr noundef nonnull %buf) #11
  %17 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bp, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %res.i) #11
  %19 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %extra, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 47
  %21 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resource.i, align 8
  %23 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %r, align 4
  %add.i = add i32 %24, %22
  %size.i = getelementptr inbounds %struct.ocp_resource, ptr %r, i32 0, i32 1
  %25 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size.i, align 4
  %add.i.i = add i32 %add.i, -1
  %sub.i.i = add i32 %add.i.i, %26
  %27 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add.i, ptr %res.i, align 4
  %r.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %res.i, i32 4
  %28 = ptrtoint ptr %r.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub.i.i, ptr %r.sroa.5.0..sroa_idx.i.i, align 4
  %r.sroa.7.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %res.i, i32 8
  %29 = ptrtoint ptr %r.sroa.7.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %r.sroa.7.0..sroa_idx.i.i, align 4
  %r.sroa.9.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %res.i, i32 12
  %30 = ptrtoint ptr %r.sroa.9.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 512, ptr %r.sroa.9.0..sroa_idx.i.i, align 4
  %r.sroa.11.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %res.i, i32 16
  %31 = call ptr @memset(ptr %r.sroa.11.0..sroa_idx.i.i, i32 0, i32 16)
  %arrayidx3.i = getelementptr inbounds [2 x %struct.resource], ptr %res.i, i32 0, i32 1
  %irq_vec.i = getelementptr inbounds %struct.ocp_resource, ptr %r, i32 0, i32 2
  %32 = ptrtoint ptr %irq_vec.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq_vec.i, align 4
  %call.i = call i32 @pci_irq_vector(ptr noundef %18, i32 noundef %33) #11
  %34 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call.i, ptr %arrayidx3.i, align 4
  %r.sroa.5.0..sroa_idx.i12.i = getelementptr inbounds [2 x %struct.resource], ptr %res.i, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %r.sroa.5.0..sroa_idx.i12.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call.i, ptr %r.sroa.5.0..sroa_idx.i12.i, align 4
  %r.sroa.7.0..sroa_idx.i13.i = getelementptr inbounds [2 x %struct.resource], ptr %res.i, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %r.sroa.7.0..sroa_idx.i13.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %r.sroa.7.0..sroa_idx.i13.i, align 4
  %r.sroa.9.0..sroa_idx.i14.i = getelementptr inbounds [2 x %struct.resource], ptr %res.i, i32 0, i32 1, i32 3
  %37 = ptrtoint ptr %r.sroa.9.0..sroa_idx.i14.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1024, ptr %r.sroa.9.0..sroa_idx.i14.i, align 4
  %r.sroa.11.0..sroa_idx.i15.i = getelementptr inbounds [2 x %struct.resource], ptr %res.i, i32 0, i32 1, i32 4
  %38 = call ptr @memset(ptr %r.sroa.11.0..sroa_idx.i15.i, i32 0, i32 16)
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %39 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %20, align 4
  %data.i = getelementptr inbounds %struct.ptp_ocp_i2c_info, ptr %20, i32 0, i32 3
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i, align 4
  %data_size.i = getelementptr inbounds %struct.ptp_ocp_i2c_info, ptr %20, i32 0, i32 2
  %43 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_size.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #11
  %45 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %46 = call ptr @memset(ptr %45, i32 255, i32 48)
  %47 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %dev.i, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %fwnode.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %45, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %40, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %51 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv, ptr %id3.i.i, align 8
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %52 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %res.i, ptr %res4.i.i, align 4
  %num_res.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 6
  %53 = ptrtoint ptr %num_res.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %num_res.i.i, align 8
  %data5.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 7
  %54 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %42, ptr %data5.i.i, align 4
  %size_data.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 8
  %55 = ptrtoint ptr %size_data.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %44, ptr %size_data.i.i, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %56 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %57 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %properties.i.i, align 8
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %res.i) #11
  %cmp.i39 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i39, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %bp to i32
  %bp_offset = getelementptr inbounds %struct.ocp_resource, ptr %r, i32 0, i32 5
  %60 = ptrtoint ptr %bp_offset to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bp_offset, align 4
  %add = add i32 %61, %59
  %62 = inttoptr i32 %add to ptr
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i.i, ptr %62, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then16, %if.then
  %retval.0 = phi i32 [ %13, %if.then ], [ %58, %if.then16 ], [ 0, %if.end18 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_ocp_register_serial(ptr noundef %bp, ptr nocapture noundef readonly %r) #2 align 64 {
entry:
  %uart.i = alloca %struct.uart_8250_port, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bp, align 8
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %uart.i) #11
  %2 = call ptr @memset(ptr %uart.i, i32 0, i32 584)
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %dev2.i = getelementptr inbounds %struct.uart_port, ptr %uart.i, i32 0, i32 45
  %3 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev.i, ptr %dev2.i, align 4
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %uart.i, i32 0, i32 26
  %4 = ptrtoint ptr %iotype.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %iotype.i, align 2
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %uart.i, i32 0, i32 25
  %5 = ptrtoint ptr %regshift.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %regshift.i, align 1
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 47
  %6 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %resource.i, align 8
  %8 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %r, align 4
  %add.i = add i32 %9, %7
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %uart.i, i32 0, i32 43
  %10 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add.i, ptr %mapbase.i, align 4
  %irq_vec.i = getelementptr inbounds %struct.ocp_resource, ptr %r, i32 0, i32 2
  %11 = ptrtoint ptr %irq_vec.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq_vec.i, align 4
  %call.i = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef %12) #11
  %irq.i = getelementptr inbounds %struct.uart_port, ptr %uart.i, i32 0, i32 20
  %13 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i, ptr %irq.i, align 4
  %uartclk.i = getelementptr inbounds %struct.uart_port, ptr %uart.i, i32 0, i32 22
  %14 = ptrtoint ptr %uartclk.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 50000000, ptr %uartclk.i, align 4
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %uart.i, i32 0, i32 33
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -2013265920, ptr %flags.i, align 4
  %type.i = getelementptr inbounds %struct.uart_port, ptr %uart.i, i32 0, i32 38
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %type.i, align 4
  %call10.i = call i32 @serial8250_register_8250_port(ptr noundef nonnull %uart.i) #11
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %uart.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp = icmp slt i32 %call10.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %bp to i32
  %bp_offset = getelementptr inbounds %struct.ocp_resource, ptr %r, i32 0, i32 5
  %18 = ptrtoint ptr %bp_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bp_offset, align 4
  %add = add i32 %19, %17
  %20 = inttoptr i32 %add to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call10.i, ptr %20, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call10.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_ocp_register_spi(ptr noundef %bp, ptr nocapture noundef readonly %r) #2 align 64 {
entry:
  %pdevinfo.i = alloca %struct.platform_device_info, align 8
  %res = alloca [2 x %struct.resource], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bp, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %res) #11
  %resource = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource, align 8
  %4 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r, align 4
  %add = add i32 %5, %3
  %size = getelementptr inbounds %struct.ocp_resource, ptr %r, i32 0, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %add.i = add i32 %add, -1
  %sub.i = add i32 %add.i, %7
  %8 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %res, align 4
  %r.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %res, i32 4
  %9 = ptrtoint ptr %r.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub.i, ptr %r.sroa.5.0..sroa_idx.i, align 4
  %r.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %res, i32 8
  %10 = ptrtoint ptr %r.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %r.sroa.7.0..sroa_idx.i, align 4
  %r.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %res, i32 12
  %11 = ptrtoint ptr %r.sroa.9.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 512, ptr %r.sroa.9.0..sroa_idx.i, align 4
  %r.sroa.11.0..sroa_idx.i = getelementptr inbounds i8, ptr %res, i32 16
  %12 = call ptr @memset(ptr %r.sroa.11.0..sroa_idx.i, i32 0, i32 16)
  %arrayidx4 = getelementptr inbounds [2 x %struct.resource], ptr %res, i32 0, i32 1
  %irq_vec = getelementptr inbounds %struct.ocp_resource, ptr %r, i32 0, i32 2
  %13 = ptrtoint ptr %irq_vec to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq_vec, align 4
  %call = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef %14) #11
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call, ptr %arrayidx4, align 4
  %r.sroa.5.0..sroa_idx.i30 = getelementptr inbounds [2 x %struct.resource], ptr %res, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %r.sroa.5.0..sroa_idx.i30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call, ptr %r.sroa.5.0..sroa_idx.i30, align 4
  %r.sroa.7.0..sroa_idx.i31 = getelementptr inbounds [2 x %struct.resource], ptr %res, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %r.sroa.7.0..sroa_idx.i31 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %r.sroa.7.0..sroa_idx.i31, align 4
  %r.sroa.9.0..sroa_idx.i32 = getelementptr inbounds [2 x %struct.resource], ptr %res, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %r.sroa.9.0..sroa_idx.i32 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1024, ptr %r.sroa.9.0..sroa_idx.i32, align 4
  %r.sroa.11.0..sroa_idx.i33 = getelementptr inbounds [2 x %struct.resource], ptr %res, i32 0, i32 1, i32 4
  %19 = call ptr @memset(ptr %r.sroa.11.0..sroa_idx.i33, i32 0, i32 16)
  %extra = getelementptr inbounds %struct.ocp_resource, ptr %r, i32 0, i32 4
  %20 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %extra, align 4
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %number.i, align 4
  %conv1.i = zext i8 %25 to i32
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %devfn.i, align 4
  %28 = shl nuw nsw i32 %conv1.i, 9
  %.masked = shl i32 %27, 1
  %29 = and i32 %.masked, 131070
  %shl = or i32 %29, %28
  %pci_offset = getelementptr inbounds %struct.ptp_ocp_flash_info, ptr %21, i32 0, i32 1
  %30 = ptrtoint ptr %pci_offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pci_offset, align 4
  %add6 = add i32 %shl, %31
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %32 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %21, align 4
  %data = getelementptr inbounds %struct.ptp_ocp_flash_info, ptr %21, i32 0, i32 3
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %data_size = getelementptr inbounds %struct.ptp_ocp_flash_info, ptr %21, i32 0, i32 2
  %36 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_size, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i) #11
  %38 = getelementptr inbounds i8, ptr %pdevinfo.i, i32 8
  %39 = call ptr @memset(ptr %38, i32 255, i32 48)
  %40 = ptrtoint ptr %pdevinfo.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %dev, ptr %pdevinfo.i, align 8
  %fwnode.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 1
  %41 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %fwnode.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %38, align 8
  %name2.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 3
  %43 = ptrtoint ptr %name2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %33, ptr %name2.i, align 4
  %id3.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 4
  %44 = ptrtoint ptr %id3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add6, ptr %id3.i, align 8
  %res4.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 5
  %45 = ptrtoint ptr %res4.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %res, ptr %res4.i, align 4
  %num_res.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 6
  %46 = ptrtoint ptr %num_res.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %num_res.i, align 8
  %data5.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 7
  %47 = ptrtoint ptr %data5.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %35, ptr %data5.i, align 4
  %size_data.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 8
  %48 = ptrtoint ptr %size_data.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %37, ptr %size_data.i, align 8
  %dma_mask.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 9
  %49 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 0, ptr %dma_mask.i, align 8
  %properties.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 10
  %50 = ptrtoint ptr %properties.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %properties.i, align 8
  %call.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i) #11
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %bp to i32
  %bp_offset = getelementptr inbounds %struct.ocp_resource, ptr %r, i32 0, i32 5
  %53 = ptrtoint ptr %bp_offset to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bp_offset, align 4
  %add10 = add i32 %54, %52
  %55 = inttoptr i32 %add10 to ptr
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i, ptr %55, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %51, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %res) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_ocp_fb_board_init(ptr noundef %bp, ptr nocapture noundef readnone %r) #2 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flash_start = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 36
  %0 = ptrtoint ptr %flash_start to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4194304, ptr %flash_start, align 4
  %tod.i = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 4
  %1 = ptrtoint ptr %tod.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tod.i, align 8
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %4 = and i32 %3, -16778001
  %5 = or i32 %4, 16777232
  %6 = ptrtoint ptr %tod.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tod.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #11, !srcloc !518
  %8 = ptrtoint ptr %tod.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tod.i, align 8
  %utc_status.i = getelementptr inbounds %struct.tod_reg, ptr %9, i32 0, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %utc_status.i) #11, !srcloc !515
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %and6.i = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool.not.i, label %entry.ptp_ocp_tod_init.exit_crit_edge, label %if.then.i

entry.ptp_ocp_tod_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_tod_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and7.i = and i32 %11, 255
  tail call fastcc void @ptp_ocp_utc_distribute(ptr noundef %bp, i32 noundef %and7.i) #11
  br label %ptp_ocp_tod_init.exit

ptp_ocp_tod_init.exit:                            ; preds = %if.then.i, %entry.ptp_ocp_tod_init.exit_crit_edge
  %nmea_out.i = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 13
  %12 = ptrtoint ptr %nmea_out.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nmea_out.i, align 4
  %tobool.not.i4 = icmp eq ptr %13, null
  br i1 %tobool.not.i4, label %ptp_ocp_tod_init.exit.ptp_ocp_nmea_out_init.exit_crit_edge, label %if.end.i

ptp_ocp_tod_init.exit.ptp_ocp_nmea_out_init.exit_crit_edge: ; preds = %ptp_ocp_tod_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_nmea_out_init.exit

if.end.i:                                         ; preds = %ptp_ocp_tod_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 0) #11, !srcloc !518
  %14 = ptrtoint ptr %nmea_out.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nmea_out.i, align 4
  %uart_baud.i = getelementptr inbounds %struct.tod_reg, ptr %15, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %uart_baud.i, i32 117440512) #11, !srcloc !518
  %16 = ptrtoint ptr %nmea_out.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nmea_out.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 16777216) #11, !srcloc !518
  br label %ptp_ocp_nmea_out_init.exit

ptp_ocp_nmea_out_init.exit:                       ; preds = %if.end.i, %ptp_ocp_tod_init.exit.ptp_ocp_nmea_out_init.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #11
  %18 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  %reg.i = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 3
  %19 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 16777216) #11, !srcloc !518
  %21 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i, align 4
  %servo_offset_p.i = getelementptr inbounds %struct.ocp_reg, ptr %22, i32 0, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %servo_offset_p.i, i32 2097152) #11, !srcloc !518
  %23 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg.i, align 4
  %servo_offset_i.i = getelementptr inbounds %struct.ocp_reg, ptr %24, i32 0, i32 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %servo_offset_i.i, i32 1048576) #11, !srcloc !518
  %25 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i, align 4
  %servo_drift_p.i = getelementptr inbounds %struct.ocp_reg, ptr %26, i32 0, i32 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %servo_drift_p.i, i32 0) #11, !srcloc !518
  %27 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i, align 4
  %servo_drift_i.i = getelementptr inbounds %struct.ocp_reg, ptr %28, i32 0, i32 19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %servo_drift_i.i, i32 0) #11, !srcloc !518
  %29 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 16842752) #11, !srcloc !518
  %31 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %34 = and i32 %33, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i = icmp eq i32 %34, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i6

do.end.i:                                         ; preds = %ptp_ocp_nmea_out_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bp, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.43) #14
  br label %ptp_ocp_init_clock.exit

if.end.i6:                                        ; preds = %ptp_ocp_nmea_out_init.exit
  %37 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg.i, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %40 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 16777280) #11, !srcloc !518
  %call.i.i.i = tail call i64 @ktime_get() #11
  %42 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg.i, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %call.i12.i.i = tail call i64 @ktime_get() #11
  %sub.i.i = sub i64 %call.i12.i.i, %call.i.i.i
  %45 = lshr i64 %sub.i.i, 5
  %46 = trunc i64 %45 to i32
  %conv.i.i = mul i32 %46, 3
  %ts_window_adjust.i.i = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 38
  %47 = ptrtoint ptr %ts_window_adjust.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv.i.i, ptr %ts_window_adjust.i.i, align 4
  %48 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg.i, align 4
  %status.i = getelementptr inbounds %struct.ocp_reg, ptr %49, i32 0, i32 1
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status.i) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %51 = and i32 %50, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i5 = icmp eq i32 %51, 0
  br i1 %tobool.not.i5, label %if.then14.i, label %if.end.i6.if.end16.i_crit_edge

if.end.i6.if.end16.i_crit_edge:                   ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i42.i = tail call i64 @ktime_get_with_offset(i32 noundef 2) #11
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts.i, i64 noundef %call.i.i42.i) #11
  %ptp_info.i = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 20
  %call15.i = call i32 @ptp_ocp_settime(ptr noundef %ptp_info.i, ptr noundef nonnull %ts.i) #11
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end.i6.if.end16.i_crit_edge
  %pps_to_clk.i = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 6
  %52 = ptrtoint ptr %pps_to_clk.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pps_to_clk.i, align 8
  %tobool17.not.i = icmp eq ptr %53, null
  br i1 %tobool17.not.i, label %if.end16.i.ptp_ocp_init_clock.exit_crit_edge, label %do.body19.i

if.end16.i.ptp_ocp_init_clock.exit_crit_edge:     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_init_clock.exit

do.body19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %watchdog.i = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 24
  call void @init_timer_key(ptr noundef %watchdog.i, ptr noundef nonnull @ptp_ocp_watchdog, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @ptp_ocp_init_clock.__key) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %54, 100
  %call23.i = call i32 @mod_timer(ptr noundef %watchdog.i, i32 noundef %add.i) #11
  br label %ptp_ocp_init_clock.exit

ptp_ocp_init_clock.exit:                          ; preds = %do.body19.i, %if.end16.i.ptp_ocp_init_clock.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ -19, %do.end.i ], [ 0, %do.body19.i ], [ 0, %if.end16.i.ptp_ocp_init_clock.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_clock_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register_clkdev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ptp_ocp_utc_distribute(ptr noundef %bp, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %utc_tai_offset = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 37
  %0 = ptrtoint ptr %utc_tai_offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val, ptr %utc_tai_offset, align 8
  %irig_out = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 9
  %1 = ptrtoint ptr %irig_out to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %irig_out, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %adj_sec = getelementptr inbounds %struct.irig_master_reg, ptr %2, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  %3 = tail call i32 @llvm.bswap.i32(i32 %val) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %adj_sec, i32 %3) #11, !srcloc !518
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dcf_out = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 11
  %4 = ptrtoint ptr %dcf_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dcf_out, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %adj_sec9 = getelementptr inbounds %struct.dcf_master_reg, ptr %5, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %val) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %adj_sec9, i32 %6) #11, !srcloc !518
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %nmea_out = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 13
  %7 = ptrtoint ptr %nmea_out to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nmea_out, align 4
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %if.end10.if.end15_crit_edge, label %if.then12

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %adj_sec14 = getelementptr inbounds %struct.tod_reg, ptr %8, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  %9 = tail call i32 @llvm.bswap.i32(i32 %val) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %adj_sec14, i32 %9) #11, !srcloc !518
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10.if.end15_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_ocp_settime(ptr noundef %ptp_info, ptr nocapture noundef readonly %ts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %ptp_info, i32 -112
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %0 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tv_nsec.i, align 8
  %2 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ts, align 8
  %conv.i = trunc i64 %3 to i32
  %reg.i = getelementptr i8, ptr %ptp_info, i32 -68
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i, align 4
  %select1.i = getelementptr inbounds %struct.ocp_reg, ptr %5, i32 0, i32 2
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %select1.i) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %7 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg.i, align 4
  %select3.i = getelementptr inbounds %struct.ocp_reg, ptr %8, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %select3.i, i32 -33554432) #11, !srcloc !518
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg.i, align 4
  %adjust_ns.i = getelementptr inbounds %struct.ocp_reg, ptr %10, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  %11 = tail call i32 @llvm.bswap.i32(i32 %1) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %adjust_ns.i, i32 %11) #11, !srcloc !518
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i, align 4
  %adjust_sec.i = getelementptr inbounds %struct.ocp_reg, ptr %13, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %adjust_sec.i, i32 %14) #11, !srcloc !518
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 50331648) #11, !srcloc !518
  %17 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i, align 4
  %select9.i = getelementptr inbounds %struct.ocp_reg, ptr %18, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  %19 = shl i32 %6, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %select9.i, i32 %19) #11, !srcloc !518
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ptp_ocp_watchdog(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pps_to_clk = getelementptr i8, ptr %t, i32 -176
  %0 = ptrtoint ptr %pps_to_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pps_to_clk, align 8
  %status1 = getelementptr inbounds %struct.pps_reg, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status1) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %3 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %pps_to_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pps_to_clk, align 8
  %status3 = getelementptr inbounds %struct.pps_reg, ptr %5, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %status3, i32 %2) #11, !srcloc !518
  %gnss_lost = getelementptr i8, ptr %t, i32 56
  %6 = ptrtoint ptr %gnss_lost to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %gnss_lost, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool4.not = icmp eq i64 %7, 0
  br i1 %tobool4.not, label %do.body6, label %if.then.if.end20_crit_edge

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

do.body6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %lock = getelementptr i8, ptr %t, i32 -232
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %reg.i = getelementptr i8, ptr %t, i32 -188
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg.i, align 4
  %select1.i = getelementptr inbounds %struct.ocp_reg, ptr %9, i32 0, i32 2
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %select1.i) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg.i, align 4
  %select3.i = getelementptr inbounds %struct.ocp_reg, ptr %12, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %select3.i, i32 -33554432) #11, !srcloc !518
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i, align 4
  %drift_ns.i = getelementptr inbounds %struct.ocp_reg, ptr %14, i32 0, i32 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %drift_ns.i, i32 0) #11, !srcloc !518
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 150994944) #11, !srcloc !518
  %17 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i, align 4
  %select8.i = getelementptr inbounds %struct.ocp_reg, ptr %18, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  %19 = shl i32 %10, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %select8.i, i32 %19) #11, !srcloc !518
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #11
  %call13 = tail call i64 @ktime_get_real_seconds() #11
  %20 = ptrtoint ptr %gnss_lost to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call13, ptr %gnss_lost, align 8
  br label %if.end20

if.else:                                          ; preds = %entry
  %gnss_lost15 = getelementptr i8, ptr %t, i32 56
  %21 = ptrtoint ptr %gnss_lost15 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %gnss_lost15, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool16.not = icmp eq i64 %22, 0
  br i1 %tobool16.not, label %if.else.if.end20_crit_edge, label %if.then17

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %gnss_lost15 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %gnss_lost15, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.else.if.end20_crit_edge, %do.body6, %if.then.if.end20_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %24, 100
  %call21 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ptp_ocp_detach(ptr noundef %bp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %debug_root.i = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 25
  %0 = ptrtoint ptr %debug_root.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debug_root.i, align 8
  tail call void @debugfs_remove(ptr noundef %1) #11
  %dev1.i = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 1
  tail call void @sysfs_remove_link(ptr noundef %dev1.i, ptr noundef nonnull @.str.92) #11
  tail call void @sysfs_remove_link(ptr noundef %dev1.i, ptr noundef nonnull @.str.94) #11
  tail call void @sysfs_remove_link(ptr noundef %dev1.i, ptr noundef nonnull @.str.97) #11
  tail call void @sysfs_remove_link(ptr noundef %dev1.i, ptr noundef nonnull @.str.14) #11
  tail call void @device_remove_groups(ptr noundef %dev1.i, ptr noundef nonnull @timecard_groups) #11
  %pprev.i.i = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 24, i32 0, i32 1
  %2 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %watchdog = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 24
  %call2 = tail call i32 @del_timer_sync(ptr noundef %watchdog) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ts0 = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 15
  %4 = ptrtoint ptr %ts0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ts0, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %info.i = getelementptr inbounds %struct.ptp_ocp_ext_src, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info.i, align 4
  %enable.i = getelementptr inbounds %struct.ptp_ocp_ext_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable.i, align 4
  %call.i = tail call i32 %9(ptr noundef nonnull %5, i32 noundef -1, i1 noundef zeroext false) #11
  %bp.i = getelementptr inbounds %struct.ptp_ocp_ext_src, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %bp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bp.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %irq_vec.i = getelementptr inbounds %struct.ptp_ocp_ext_src, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %irq_vec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_vec.i, align 4
  tail call void @pci_free_irq(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %5) #11
  tail call void @kfree(ptr noundef nonnull %5) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %ts1 = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 16
  %16 = ptrtoint ptr %ts1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ts1, align 8
  %tobool7.not = icmp eq ptr %17, null
  br i1 %tobool7.not, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %info.i95 = getelementptr inbounds %struct.ptp_ocp_ext_src, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %info.i95 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info.i95, align 4
  %enable.i96 = getelementptr inbounds %struct.ptp_ocp_ext_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %enable.i96 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %enable.i96, align 4
  %call.i97 = tail call i32 %21(ptr noundef nonnull %17, i32 noundef -1, i1 noundef zeroext false) #11
  %bp.i98 = getelementptr inbounds %struct.ptp_ocp_ext_src, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %bp.i98 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bp.i98, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %irq_vec.i99 = getelementptr inbounds %struct.ptp_ocp_ext_src, ptr %17, i32 0, i32 3
  %26 = ptrtoint ptr %irq_vec.i99 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq_vec.i99, align 4
  tail call void @pci_free_irq(ptr noundef %25, i32 noundef %27, ptr noundef nonnull %17) #11
  tail call void @kfree(ptr noundef nonnull %17) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %ts2 = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 17
  %28 = ptrtoint ptr %ts2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ts2, align 4
  %tobool11.not = icmp eq ptr %29, null
  br i1 %tobool11.not, label %if.end10.if.end14_crit_edge, label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %info.i100 = getelementptr inbounds %struct.ptp_ocp_ext_src, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %info.i100 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %info.i100, align 4
  %enable.i101 = getelementptr inbounds %struct.ptp_ocp_ext_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %enable.i101 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %enable.i101, align 4
  %call.i102 = tail call i32 %33(ptr noundef nonnull %29, i32 noundef -1, i1 noundef zeroext false) #11
  %bp.i103 = getelementptr inbounds %struct.ptp_ocp_ext_src, ptr %29, i32 0, i32 1
  %34 = ptrtoint ptr %bp.i103 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bp.i103, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %irq_vec.i104 = getelementptr inbounds %struct.ptp_ocp_ext_src, ptr %29, i32 0, i32 3
  %38 = ptrtoint ptr %irq_vec.i104 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq_vec.i104, align 4
  tail call void @pci_free_irq(ptr noundef %37, i32 noundef %39, ptr noundef nonnull %29) #11
  tail call void @kfree(ptr noundef nonnull %29) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  %pps = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 14
  %40 = ptrtoint ptr %pps to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pps, align 8
  %tobool15.not = icmp eq ptr %41, null
  br i1 %tobool15.not, label %if.end14.if.end18_crit_edge, label %if.then16

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %info.i105 = getelementptr inbounds %struct.ptp_ocp_ext_src, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %info.i105 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %info.i105, align 4
  %enable.i106 = getelementptr inbounds %struct.ptp_ocp_ext_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %enable.i106 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %enable.i106, align 4
  %call.i107 = tail call i32 %45(ptr noundef nonnull %41, i32 noundef -1, i1 noundef zeroext false) #11
  %bp.i108 = getelementptr inbounds %struct.ptp_ocp_ext_src, ptr %41, i32 0, i32 1
  %46 = ptrtoint ptr %bp.i108 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bp.i108, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %irq_vec.i109 = getelementptr inbounds %struct.ptp_ocp_ext_src, ptr %41, i32 0, i32 3
  %50 = ptrtoint ptr %irq_vec.i109 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq_vec.i109, align 4
  tail call void @pci_free_irq(ptr noundef %49, i32 noundef %51, ptr noundef nonnull %41) #11
  tail call void @kfree(ptr noundef nonnull %41) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14.if.end18_crit_edge
  %gnss_port = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 29
  %52 = ptrtoint ptr %gnss_port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %gnss_port, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp.not = icmp eq i32 %53, -1
  br i1 %cmp.not, label %if.end18.if.end21_crit_edge, label %if.then19

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then19:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @serial8250_unregister_port(i32 noundef %53) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end18.if.end21_crit_edge
  %gnss2_port = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 30
  %54 = ptrtoint ptr %gnss2_port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %gnss2_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp22.not = icmp eq i32 %55, -1
  br i1 %cmp22.not, label %if.end21.if.end25_crit_edge, label %if.then23

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @serial8250_unregister_port(i32 noundef %55) #11
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21.if.end25_crit_edge
  %mac_port = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 31
  %56 = ptrtoint ptr %mac_port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mac_port, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %cmp26.not = icmp eq i32 %57, -1
  br i1 %cmp26.not, label %if.end25.if.end29_crit_edge, label %if.then27

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @serial8250_unregister_port(i32 noundef %57) #11
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end25.if.end29_crit_edge
  %nmea_port = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 32
  %58 = ptrtoint ptr %nmea_port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nmea_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %cmp30.not = icmp eq i32 %59, -1
  br i1 %cmp30.not, label %if.end29.if.end33_crit_edge, label %if.then31

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @serial8250_unregister_port(i32 noundef %59) #11
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end29.if.end33_crit_edge
  %spi_flash = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 22
  %60 = ptrtoint ptr %spi_flash to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %spi_flash, align 8
  %tobool34.not = icmp eq ptr %61, null
  br i1 %tobool34.not, label %if.end33.if.end37_crit_edge, label %if.then35

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_device_unregister(ptr noundef nonnull %61) #11
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end33.if.end37_crit_edge
  %i2c_ctrl = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 21
  %62 = ptrtoint ptr %i2c_ctrl to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i2c_ctrl, align 4
  %tobool38.not = icmp eq ptr %63, null
  br i1 %tobool38.not, label %if.end37.if.end41_crit_edge, label %if.then39

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_device_unregister(ptr noundef nonnull %63) #11
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end37.if.end41_crit_edge
  %i2c_clk = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 23
  %64 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i2c_clk, align 4
  %tobool42.not = icmp eq ptr %65, null
  br i1 %tobool42.not, label %if.end41.if.end45_crit_edge, label %if.then43

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_hw_unregister_fixed_rate(ptr noundef nonnull %65) #11
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41.if.end45_crit_edge
  %n_irqs = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 28
  %66 = ptrtoint ptr %n_irqs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %n_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool46.not = icmp eq i32 %67, 0
  br i1 %tobool46.not, label %if.end45.if.end48_crit_edge, label %if.then47

if.end45.if.end48_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bp, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %69) #11
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end45.if.end48_crit_edge
  %ptp = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 19
  %70 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ptp, align 4
  %tobool49.not = icmp eq ptr %71, null
  br i1 %tobool49.not, label %if.end48.if.end53_crit_edge, label %if.then50

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %call52 = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %71) #11
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end48.if.end53_crit_edge
  tail call void @device_unregister(ptr noundef %dev1.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_alloc_ns(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_ocp_devlink_info_get(ptr noundef %devlink, ptr noundef %req, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #11
  %0 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %call1 = tail call i32 @devlink_info_driver_name_put(ptr noundef %req, ptr noundef nonnull @.str) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup35_crit_edge

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup35

if.end:                                           ; preds = %entry
  %image = getelementptr inbounds %struct.ptp_ocp, ptr %call, i32 0, i32 18
  %1 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %image, align 8
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %if.end.if.end19_crit_edge, label %if.then3

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then3:                                         ; preds = %if.end
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #11, !srcloc !515
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %and = and i32 %4, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %shr = lshr i32 %4, 16
  %shr.sink = select i1 %tobool6.not, i32 %shr, i32 %4
  %.str.59.sink = select i1 %tobool6.not, ptr @.str.59, ptr @.str.58
  %call12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.57, i32 noundef %shr.sink)
  %call14 = call i32 @devlink_info_version_running_put(ptr noundef %req, ptr noundef nonnull %.str.59.sink, ptr noundef nonnull %buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool16.not = icmp eq i32 %call14, 0
  br i1 %tobool16.not, label %if.then3.if.end19_crit_edge, label %if.then3.cleanup35_crit_edge

if.then3.cleanup35_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup35

if.then3.if.end19_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end19:                                         ; preds = %if.then3.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %has_serial = getelementptr inbounds %struct.ptp_ocp, ptr %call, i32 0, i32 34
  %5 = ptrtoint ptr %has_serial to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %has_serial, align 2, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool20.not = icmp eq i8 %6, 0
  br i1 %tobool20.not, label %if.end22, label %if.end19.if.then25_crit_edge

if.end19.if.then25_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.end22:                                         ; preds = %if.end19
  call fastcc void @ptp_ocp_get_serial_number(ptr noundef %call)
  %7 = ptrtoint ptr %has_serial to i32
  call void @__asan_load1_noabort(i32 %7)
  %.pr = load i8, ptr %has_serial, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool24.not = icmp eq i8 %.pr, 0
  br i1 %tobool24.not, label %if.end22.if.end34_crit_edge, label %if.end22.if.then25_crit_edge

if.end22.if.then25_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.end22.if.end34_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then25:                                        ; preds = %if.end22.if.then25_crit_edge, %if.end19.if.then25_crit_edge
  %serial = getelementptr inbounds %struct.ptp_ocp, ptr %call, i32 0, i32 33
  %call28 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.60, ptr noundef %serial)
  %call30 = call i32 @devlink_info_serial_number_put(ptr noundef %req, ptr noundef nonnull %buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then25.if.end34_crit_edge, label %if.then25.cleanup35_crit_edge

if.then25.cleanup35_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup35

if.then25.if.end34_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.end34:                                         ; preds = %if.then25.if.end34_crit_edge, %if.end22.if.end34_crit_edge
  br label %cleanup35

cleanup35:                                        ; preds = %if.end34, %if.then25.cleanup35_crit_edge, %if.then3.cleanup35_crit_edge, %entry.cleanup35_crit_edge
  %retval.1 = phi i32 [ 0, %if.end34 ], [ %call14, %if.then3.cleanup35_crit_edge ], [ %call1, %entry.cleanup35_crit_edge ], [ %call30, %if.then25.cleanup35_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_ocp_devlink_flash_update(ptr noundef %devlink, ptr nocapture noundef readonly %params, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %wrote.i = alloca i32, align 4
  %erase.i = alloca %struct.erase_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #11
  %spi_flash.i = getelementptr inbounds %struct.ptp_ocp, ptr %call, i32 0, i32 22
  %0 = ptrtoint ptr %spi_flash.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi_flash.i, align 8
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call9.i = tail call ptr @device_find_child(ptr noundef %dev1.i, ptr noundef null, ptr noundef nonnull @ptp_ocp_firstchild) #11
  %tobool.not10.i = icmp eq ptr %call9.i, null
  br i1 %tobool.not10.i, label %entry.do.end_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %call12.i = phi ptr [ %call.i, %if.end.i.while.body.i_crit_edge ], [ %call9.i, %entry.while.body.i_crit_edge ]
  %last.011.i = phi ptr [ %call12.i, %if.end.i.while.body.i_crit_edge ], [ null, %entry.while.body.i_crit_edge ]
  %bus.i.i = getelementptr inbounds %struct.device, ptr %call12.i, i32 0, i32 5
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %while.body.i.cond.end7.sink.split.i.i_crit_edge

while.body.i.cond.end7.sink.split.i.i_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end7.sink.split.i.i

cond.false.i.i:                                   ; preds = %while.body.i
  %class.i.i = getelementptr inbounds %struct.device, ptr %call12.i, i32 0, i32 33
  %4 = ptrtoint ptr %class.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %class.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i.i, label %cond.false.i.i.dev_bus_name.exit.i_crit_edge, label %cond.false.i.i.cond.end7.sink.split.i.i_crit_edge

cond.false.i.i.cond.end7.sink.split.i.i_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end7.sink.split.i.i

cond.false.i.i.dev_bus_name.exit.i_crit_edge:     ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_bus_name.exit.i

cond.end7.sink.split.i.i:                         ; preds = %cond.false.i.i.cond.end7.sink.split.i.i_crit_edge, %while.body.i.cond.end7.sink.split.i.i_crit_edge
  %.sink.i.i = phi ptr [ %3, %while.body.i.cond.end7.sink.split.i.i_crit_edge ], [ %5, %cond.false.i.i.cond.end7.sink.split.i.i_crit_edge ]
  %6 = ptrtoint ptr %.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.sink.i.i, align 4
  br label %dev_bus_name.exit.i

dev_bus_name.exit.i:                              ; preds = %cond.end7.sink.split.i.i, %cond.false.i.i.dev_bus_name.exit.i_crit_edge
  %cond8.i.i = phi ptr [ @.str.75, %cond.false.i.i.dev_bus_name.exit.i_crit_edge ], [ %7, %cond.end7.sink.split.i.i ]
  %call3.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.74, ptr noundef %cond8.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  tail call void @put_device(ptr noundef %last.011.i) #11
  br i1 %tobool4.not.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %dev_bus_name.exit.i
  %call.i = tail call ptr @device_find_child(ptr noundef nonnull %call12.i, ptr noundef null, ptr noundef nonnull @ptp_ocp_firstchild) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.do.end_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %last.0.lcssa.i.ph = phi ptr [ null, %entry.do.end_crit_edge ], [ %call12.i, %if.end.i.do.end_crit_edge ]
  tail call void @put_device(ptr noundef %last.0.lcssa.i.ph) #11
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.69) #14
  br label %cleanup

if.end:                                           ; preds = %dev_bus_name.exit.i
  tail call void @devlink_flash_update_status_notify(ptr noundef %devlink, ptr noundef nonnull @.str.71, ptr noundef null, i32 noundef 0, i32 noundef 0) #11
  %10 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %params, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call12.i, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = tail call ptr @devlink_priv(ptr noundef %devlink) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wrote.i) #11
  %14 = ptrtoint ptr %wrote.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %wrote.i, align 4, !annotation !520
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %erase.i) #11
  %15 = getelementptr inbounds %struct.erase_info, ptr %erase.i, i32 0, i32 1
  %flash_start.i = getelementptr inbounds %struct.ptp_ocp, ptr %call1.i, i32 0, i32 36
  %16 = call ptr @memset(ptr %erase.i, i32 255, i32 24)
  %17 = ptrtoint ptr %flash_start.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flash_start.i, align 4
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %11, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %11, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not32.i = icmp eq i32 %20, 0
  br i1 %tobool.not32.i, label %if.end..loopexit_crit_edge, label %if.end.while.body.i15_crit_edge

if.end.while.body.i15_crit_edge:                  ; preds = %if.end
  br label %while.body.i15

if.end..loopexit_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %.loopexit

while.body.i15:                                   ; preds = %if.end12.i.while.body.i15_crit_edge, %if.end.while.body.i15_crit_edge
  %resid.034.i = phi i32 [ %sub.i, %if.end12.i.while.body.i15_crit_edge ], [ %20, %if.end.while.body.i15_crit_edge ]
  %off.033.i = phi i32 [ %add13.i, %if.end12.i.while.body.i15_crit_edge ], [ 0, %if.end.while.body.i15_crit_edge ]
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %11, align 4
  call void @devlink_flash_update_status_notify(ptr noundef %devlink, ptr noundef nonnull @.str.76, ptr noundef null, i32 noundef %off.033.i, i32 noundef %22) #11
  %23 = call i32 @llvm.umin.i32(i32 %resid.034.i, i32 4096) #11
  %add.i = add i32 %off.033.i, %18
  %conv.i = zext i32 %add.i to i64
  %24 = ptrtoint ptr %erase.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv.i, ptr %erase.i, align 8
  %25 = ptrtoint ptr %15 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 4096, ptr %15, align 8
  %call5.i = call i32 @mtd_erase(ptr noundef %13, ptr noundef nonnull %erase.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i17, label %while.body.i15.ptp_ocp_devlink_flash.exit_crit_edge

while.body.i15.ptp_ocp_devlink_flash.exit_crit_edge: ; preds = %while.body.i15
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_devlink_flash.exit

if.end.i17:                                       ; preds = %while.body.i15
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %27, i32 %off.033.i
  %call9.i16 = call i32 @mtd_write(ptr noundef %13, i64 noundef %conv.i, i32 noundef %23, ptr noundef nonnull %wrote.i, ptr noundef %arrayidx.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i16)
  %tobool10.not.i = icmp eq i32 %call9.i16, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end.i17.ptp_ocp_devlink_flash.exit_crit_edge

if.end.i17.ptp_ocp_devlink_flash.exit_crit_edge:  ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_devlink_flash.exit

if.end12.i:                                       ; preds = %if.end.i17
  %add13.i = add i32 %off.033.i, 4096
  %sub.i = sub i32 %resid.034.i, %23
  %tobool.not.i18 = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i18, label %if.end12.i..loopexit_crit_edge, label %if.end12.i.while.body.i15_crit_edge

if.end12.i.while.body.i15_crit_edge:              ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i15

if.end12.i..loopexit_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %.loopexit

ptp_ocp_devlink_flash.exit:                       ; preds = %if.end.i17.ptp_ocp_devlink_flash.exit_crit_edge, %while.body.i15.ptp_ocp_devlink_flash.exit_crit_edge
  %err.1.i = phi i32 [ %call9.i16, %if.end.i17.ptp_ocp_devlink_flash.exit_crit_edge ], [ %call5.i, %while.body.i15.ptp_ocp_devlink_flash.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %erase.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wrote.i) #11
  br label %28

.loopexit:                                        ; preds = %if.end12.i..loopexit_crit_edge, %if.end..loopexit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %erase.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wrote.i) #11
  br label %28

28:                                               ; preds = %.loopexit, %ptp_ocp_devlink_flash.exit
  %err.1.i24 = phi i32 [ 0, %.loopexit ], [ %err.1.i, %ptp_ocp_devlink_flash.exit ]
  %29 = phi ptr [ @.str.73, %.loopexit ], [ @.str.72, %ptp_ocp_devlink_flash.exit ]
  call void @devlink_flash_update_status_notify(ptr noundef %devlink, ptr noundef nonnull %29, ptr noundef null, i32 noundef 0, i32 noundef 0) #11
  call void @put_device(ptr noundef nonnull %call12.i) #11
  br label %cleanup

cleanup:                                          ; preds = %28, %do.end
  %retval.0 = phi i32 [ %err.1.i24, %28 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_driver_name_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_version_running_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ptp_ocp_get_serial_number(ptr noundef %bp) unnamed_addr #2 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_ctrl = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 21
  %0 = ptrtoint ptr %i2c_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c_ctrl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call = tail call ptr @device_find_child(ptr noundef %dev2, ptr noundef null, ptr noundef nonnull @ptp_ocp_firstchild) #11
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bp, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.61) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @i2c_verify_adapter(ptr noundef nonnull %call) #11
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end12, label %if.end16

do.end12:                                         ; preds = %if.end6
  %4 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bp, align 8
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %init_name.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end12.dev_name.exit_crit_edge

do.end12.dev_name.exit_crit_edge:                 ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end12.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %do.end12.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.64, ptr noundef %retval.0.i) #14
  br label %out

if.end16:                                         ; preds = %if.end6
  %serial = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %10 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -102, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #11
  %11 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 16)
  %13 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 88, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %11, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %17 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 88, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %18 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %serial, ptr %buf6.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i39, %if.end16
  %sz.addr.0.i = phi i8 [ 6, %if.end16 ], [ %sub.i, %if.end.i39 ]
  %20 = zext i8 %sz.addr.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.239)
  switch i8 %sz.addr.0.i, label %cond.false.i [
    i8 0, label %ptp_ocp_read_i2c.exit.thread
    i8 1, label %while.cond.i.cond.end.i_crit_edge
  ]

while.cond.i.cond.end.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

ptp_ocp_read_i2c.exit.thread:                     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %if.end25

cond.false.i:                                     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %while.cond.i.cond.end.i_crit_edge
  %cond.i = phi i8 [ 2, %cond.false.i ], [ %sz.addr.0.i, %while.cond.i.cond.end.i_crit_edge ]
  %conv14.i = zext i8 %cond.i to i16
  %21 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv14.i, ptr %len5.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef nonnull %call7, ptr noundef nonnull %msgs.i, i32 noundef 2) #11
  %22 = ptrtoint ptr %len5.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %len5.i, align 4
  %conv18.i = zext i16 %23 to i32
  %cmp19.not.i = icmp eq i32 %call.i, %conv18.i
  br i1 %cmp19.not.i, label %if.end.i39, label %ptp_ocp_read_i2c.exit

if.end.i39:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv21.i = zext i8 %cond.i to i32
  %24 = ptrtoint ptr %buf6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buf6.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 %conv21.i
  store ptr %add.ptr.i, ptr %buf6.i, align 4
  %26 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %reg.addr.i, align 1
  %add.i = add i8 %27, %cond.i
  store i8 %add.i, ptr %reg.addr.i, align 1
  %sub.i = sub i8 %sz.addr.0.i, %cond.i
  br label %while.cond.i

ptp_ocp_read_i2c.exit:                            ; preds = %cond.end.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %ptp_ocp_read_i2c.exit.if.end25_crit_edge, label %do.end22

ptp_ocp_read_i2c.exit.if.end25_crit_edge:         ; preds = %ptp_ocp_read_i2c.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

do.end22:                                         ; preds = %ptp_ocp_read_i2c.exit
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bp, align 8
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.67, i32 noundef %call.i) #14
  br label %out

if.end25:                                         ; preds = %ptp_ocp_read_i2c.exit.if.end25_crit_edge, %ptp_ocp_read_i2c.exit.thread
  %has_serial = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 34
  %30 = ptrtoint ptr %has_serial to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %has_serial, align 2
  br label %out

out:                                              ; preds = %if.end25, %do.end22, %dev_name.exit
  call void @put_device(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_serial_number_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_find_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ptp_ocp_firstchild(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_flash_update_status_notify(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ptp_ocp_dev_release(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @ptp_ocp_lock, i32 noundef 0) #11
  %id = getelementptr inbounds %struct.ptp_ocp, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %call1 = tail call ptr @idr_remove(ptr noundef nonnull @ptp_ocp_idr, i32 noundef %3) #11
  tail call void @mutex_unlock(ptr noundef nonnull @ptp_ocp_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ptp_ocp_null_adjfine(ptr nocapture noundef readnone %ptp_info, i32 noundef %scaled_ppm) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scaled_ppm)
  %cmp = icmp eq i32 %scaled_ppm, 0
  %. = select i1 %cmp, i32 0, i32 -95
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ptp_ocp_null_adjphase(ptr nocapture noundef readnone %ptp_info, i32 noundef %phase_ns) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_ocp_adjtime(ptr noundef %ptp_info, i64 noundef %delta_ns) #2 align 64 {
entry:
  %dividend.addr.i.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 1000000000, i64 %delta_ns)
  %cmp = icmp sgt i64 %delta_ns, 1000000000
  %notsub = add i64 %delta_ns, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1000000001, i64 %notsub)
  %cmp1 = icmp slt i64 %notsub, -1000000001
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %lock.i = getelementptr i8, ptr %ptp_info, i32 -112
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %reg.i.i = getelementptr i8, ptr %ptp_info, i32 -68
  %0 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777280) #11, !srcloc !518
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then
  %i.035.i.i = phi i32 [ 0, %if.then ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %2 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg.i.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %.mask.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i.i = icmp ne i32 %.mask.i, 0
  %inc.i.i = add nuw nsw i32 %i.035.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc.i.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %__ptp_ocp_gettime_locked.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

__ptp_ocp_gettime_locked.exit.i:                  ; preds = %for.body.i.i
  %5 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg.i.i, align 4
  %time_ns12.i.i = getelementptr inbounds %struct.ocp_reg, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %time_ns12.i.i) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %8 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg.i.i, align 4
  %time_sec15.i.i = getelementptr inbounds %struct.ocp_reg, ptr %9, i32 0, i32 5
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %time_sec15.i.i) #11, !srcloc !515
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  br i1 %tobool.not.i.i, label %if.then.i, label %__ptp_ocp_gettime_locked.exit.i.ptp_ocp_adjtime_coarse.exit_crit_edge, !prof !521

__ptp_ocp_gettime_locked.exit.i.ptp_ocp_adjtime_coarse.exit_crit_edge: ; preds = %__ptp_ocp_gettime_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_adjtime_coarse.exit

if.then.i:                                        ; preds = %__ptp_ocp_gettime_locked.exit.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %7) #11
  %conv.i.i = sext i32 %12 to i64
  %add.i.i = add i64 %conv.i.i, %delta_ns
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dividend.addr.i.i.i) #11
  %13 = ptrtoint ptr %dividend.addr.i.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %add.i.i, ptr %dividend.addr.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 999999999, i64 %add.i.i)
  %cmp1.i.i.i = icmp ugt i64 %add.i.i, 999999999
  %extract.t.i.i = trunc i64 %add.i.i to i32
  br i1 %cmp1.i.i.i, label %if.then.i.while.body.i.i.i_crit_edge, label %if.then.i.timespec64_add_ns.exit.i_crit_edge

if.then.i.timespec64_add_ns.exit.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %timespec64_add_ns.exit.i

if.then.i.while.body.i.i.i_crit_edge:             ; preds = %if.then.i
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.then.i.while.body.i.i.i_crit_edge
  %ret.02.i.i.i = phi i32 [ %inc.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %if.then.i.while.body.i.i.i_crit_edge ]
  %14 = phi i64 [ %sub.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %add.i.i, %if.then.i.while.body.i.i.i_crit_edge ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %dividend.addr.i.i.i, i64 %14) #11, !srcloc !522
  %15 = ptrtoint ptr %dividend.addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %dividend.addr.i.i.i, align 8
  %sub.i.i.i = add i64 %16, -1000000000
  store i64 %sub.i.i.i, ptr %dividend.addr.i.i.i, align 8
  %inc.i.i.i = add i32 %ret.02.i.i.i, 1
  %cmp.i.i.i = icmp ugt i64 %sub.i.i.i, 999999999
  br i1 %cmp.i.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge, label %__iter_div_u64_rem.exit.loopexit.i.i

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i.i

__iter_div_u64_rem.exit.loopexit.i.i:             ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %extract.t7.le.i.i = trunc i64 %sub.i.i.i to i32
  br label %timespec64_add_ns.exit.i

timespec64_add_ns.exit.i:                         ; preds = %__iter_div_u64_rem.exit.loopexit.i.i, %if.then.i.timespec64_add_ns.exit.i_crit_edge
  %.lcssa.i.off0.i.i = phi i32 [ %extract.t.i.i, %if.then.i.timespec64_add_ns.exit.i_crit_edge ], [ %extract.t7.le.i.i, %__iter_div_u64_rem.exit.loopexit.i.i ]
  %ret.0.lcssa.i.i.i = phi i32 [ 0, %if.then.i.timespec64_add_ns.exit.i_crit_edge ], [ %inc.i.i.i, %__iter_div_u64_rem.exit.loopexit.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dividend.addr.i.i.i) #11
  %add2.i.i = add i32 %ret.0.lcssa.i.i.i, %11
  %17 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i.i, align 4
  %select1.i.i = getelementptr inbounds %struct.ocp_reg, ptr %18, i32 0, i32 2
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %select1.i.i) #11, !srcloc !515
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %20 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg.i.i, align 4
  %select3.i.i = getelementptr inbounds %struct.ocp_reg, ptr %21, i32 0, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %select3.i.i, i32 -33554432) #11, !srcloc !518
  %22 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg.i.i, align 4
  %adjust_ns.i.i = getelementptr inbounds %struct.ocp_reg, ptr %23, i32 0, i32 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  call void @arm_heavy_mb() #11
  %24 = call i32 @llvm.bswap.i32(i32 %.lcssa.i.off0.i.i) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %adjust_ns.i.i, i32 %24) #11, !srcloc !518
  %25 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i.i, align 4
  %adjust_sec.i.i = getelementptr inbounds %struct.ocp_reg, ptr %26, i32 0, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  call void @arm_heavy_mb() #11
  %27 = call i32 @llvm.bswap.i32(i32 %add2.i.i) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %adjust_sec.i.i, i32 %27) #11, !srcloc !518
  %28 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 50331648) #11, !srcloc !518
  %30 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg.i.i, align 4
  %select9.i.i = getelementptr inbounds %struct.ocp_reg, ptr %31, i32 0, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  call void @arm_heavy_mb() #11
  %32 = shl i32 %19, 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %select9.i.i, i32 %32) #11, !srcloc !518
  br label %ptp_ocp_adjtime_coarse.exit

ptp_ocp_adjtime_coarse.exit:                      ; preds = %timespec64_add_ns.exit.i, %__ptp_ocp_gettime_locked.exit.i.ptp_ocp_adjtime_coarse.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %33 = lshr i64 %delta_ns, 32
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, -2147483648
  %36 = tail call i64 @llvm.abs.i64(i64 %delta_ns, i1 false)
  %cond4.off0 = trunc i64 %36 to i32
  %lock = getelementptr i8, ptr %ptp_info, i32 -112
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %or = or i32 %35, %cond4.off0
  %reg.i = getelementptr i8, ptr %ptp_info, i32 -68
  %37 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg.i, align 4
  %select1.i = getelementptr inbounds %struct.ocp_reg, ptr %38, i32 0, i32 2
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %select1.i) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %40 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg.i, align 4
  %select3.i = getelementptr inbounds %struct.ocp_reg, ptr %41, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %select3.i, i32 -33554432) #11, !srcloc !518
  %42 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg.i, align 4
  %offset_ns.i = getelementptr inbounds %struct.ocp_reg, ptr %43, i32 0, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  %44 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %offset_ns.i, i32 %44) #11, !srcloc !518
  %45 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg.i, align 4
  %offset_window_ns.i = getelementptr inbounds %struct.ocp_reg, ptr %46, i32 0, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %offset_window_ns.i, i32 13277755) #11, !srcloc !518
  %47 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 83886080) #11, !srcloc !518
  %49 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg.i, align 4
  %select9.i = getelementptr inbounds %struct.ocp_reg, ptr %50, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  %51 = shl i32 %39, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %select9.i, i32 %51) #11, !srcloc !518
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ptp_ocp_adjtime_coarse.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_ocp_gettimex(ptr noundef %ptp_info, ptr nocapture noundef writeonly %ts, ptr noundef %sts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp_info, i32 -1048
  %lock = getelementptr i8, ptr %ptp_info, i32 -112
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %call6 = tail call fastcc i32 @__ptp_ocp_gettime_locked(ptr noundef %add.ptr, ptr noundef %ts, ptr noundef %sts)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_ocp_enable(ptr nocapture noundef readonly %ptp_info, ptr nocapture noundef readonly %rq, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.240)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %entry.sw.epilog10_crit_edge
    i32 1, label %sw.bb7
  ]

entry.sw.epilog10_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog10

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %switch.lookup, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %sw.bb7.if.end_crit_edge, label %land.lhs.true

sw.bb7.if.end_crit_edge:                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %sw.bb7
  %period = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %period to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %period, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %8)
  %cmp.not = icmp eq i64 %8, 1
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %nsec = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %nsec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nsec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp9.not = icmp eq i32 %10, 0
  br i1 %cmp9.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %sw.bb7.if.end_crit_edge
  br label %cleanup

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ptp_ocp_enable, i32 0, i32 %5
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog10

sw.epilog10:                                      ; preds = %switch.lookup, %entry.sw.epilog10_crit_edge
  %.sink = phi i32 [ -24, %entry.sw.epilog10_crit_edge ], [ %switch.load, %switch.lookup ]
  %req.0 = phi i32 [ %1, %entry.sw.epilog10_crit_edge ], [ 1, %switch.lookup ]
  %ts0 = getelementptr i8, ptr %ptp_info, i32 %.sink
  %12 = ptrtoint ptr %ts0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %ext.0 = load ptr, ptr %ts0, align 4
  %tobool11.not = icmp eq ptr %ext.0, null
  br i1 %tobool11.not, label %sw.epilog10.cleanup_crit_edge, label %if.then12

sw.epilog10.cleanup_crit_edge:                    ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then12:                                        ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #13
  %info = getelementptr inbounds %struct.ptp_ocp_ext_src, ptr %ext.0, i32 0, i32 2
  %13 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info, align 4
  %enable = getelementptr inbounds %struct.ptp_ocp_ext_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool13 = icmp ne i32 %on, 0
  %call = tail call i32 %16(ptr noundef nonnull %ext.0, i32 noundef %req.0, i1 noundef zeroext %tobool13) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %sw.epilog10.cleanup_crit_edge, %if.end, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ %call, %if.then12 ], [ -6, %sw.epilog10.cleanup_crit_edge ], [ -6, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ptp_ocp_gettime_locked(ptr nocapture noundef readonly %bp, ptr nocapture noundef writeonly %ts, ptr noundef %sts) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %sts, null
  br i1 %tobool.not.i, label %entry.ptp_read_system_prets.exit_crit_edge, label %if.then.i

entry.ptp_read_system_prets.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_read_system_prets.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %sts) #11
  br label %ptp_read_system_prets.exit

ptp_read_system_prets.exit:                       ; preds = %if.then.i, %entry.ptp_read_system_prets.exit_crit_edge
  %reg = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777280) #11, !srcloc !518
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %ptp_read_system_prets.exit
  %i.035 = phi i32 [ 0, %ptp_read_system_prets.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !515
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp slt i32 %5, 0
  %inc = add nuw nsw i32 %i.035, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 100
  %or.cond = select i1 %tobool.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  br i1 %tobool.not.i, label %for.end.if.end10_crit_edge, label %land.lhs.true

for.end.if.end10_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

land.lhs.true:                                    ; preds = %for.end
  %post_ts.i = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %post_ts.i) #11
  %ts_window_adjust = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 38
  %6 = ptrtoint ptr %ts_window_adjust to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ts_window_adjust, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end10_crit_edge, label %if.then6

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then6:                                         ; preds = %land.lhs.true
  %8 = ptrtoint ptr %post_ts.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %post_ts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %9)
  %cmp.i = icmp sgt i64 %9, 9223372035
  br i1 %cmp.i, label %if.then6.timespec64_to_ns.exit_crit_edge, label %if.end.i

if.then6.timespec64_to_ns.exit_crit_edge:         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %timespec64_to_ns.exit

if.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %9)
  %cmp2.i = icmp slt i64 %9, -9223372035
  br i1 %cmp2.i, label %if.end.i.timespec64_to_ns.exit_crit_edge, label %if.end4.i

if.end.i.timespec64_to_ns.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %timespec64_to_ns.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i = mul nsw i64 %9, 1000000000
  %tv_nsec.i = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %11 to i64
  %add.i = add i64 %mul.i, %conv.i
  br label %timespec64_to_ns.exit

timespec64_to_ns.exit:                            ; preds = %if.end4.i, %if.end.i.timespec64_to_ns.exit_crit_edge, %if.then6.timespec64_to_ns.exit_crit_edge
  %retval.0.i = phi i64 [ %add.i, %if.end4.i ], [ 9223372036854775807, %if.then6.timespec64_to_ns.exit_crit_edge ], [ -9223372036854775808, %if.end.i.timespec64_to_ns.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #11
  %conv = zext i32 %7 to i64
  %sub = sub i64 %retval.0.i, %conv
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %sub) #11
  %12 = call ptr @memcpy(ptr %post_ts.i, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #11
  br label %if.end10

if.end10:                                         ; preds = %timespec64_to_ns.exit, %land.lhs.true.if.end10_crit_edge, %for.end.if.end10_crit_edge
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg, align 4
  %time_ns12 = getelementptr inbounds %struct.ocp_reg, ptr %14, i32 0, i32 4
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %time_ns12) #11, !srcloc !515
  %16 = call i32 @llvm.bswap.i32(i32 %15) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg, align 4
  %time_sec15 = getelementptr inbounds %struct.ocp_reg, ptr %18, i32 0, i32 5
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %time_sec15) #11, !srcloc !515
  %20 = call i32 @llvm.bswap.i32(i32 %19) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %conv17 = zext i32 %20 to i64
  %21 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv17, ptr %ts, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %22 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %16, ptr %tv_nsec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool19.not.inv = icmp slt i32 %5, 0
  %cond = select i1 %tobool19.not.inv, i32 0, i32 -110
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pps_lookup_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_find_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serialnum_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %has_serial = getelementptr inbounds %struct.ptp_ocp, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %has_serial to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_serial, align 2, !range !519
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @ptp_ocp_get_serial_number(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %serial = getelementptr inbounds %struct.ptp_ocp, ptr %1, i32 0, i32 33
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.103, ptr noundef %serial) #11
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gnss_sync_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %gnss_lost = getelementptr inbounds %struct.ptp_ocp, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %gnss_lost to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %gnss_lost, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.105, ptr noundef %gnss_lost) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.106) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call2, %if.then ], [ %call3, %if.else ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clock_source_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reg = getelementptr inbounds %struct.ptp_ocp, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %select1 = getelementptr inbounds %struct.ocp_reg, ptr %3, i32 0, i32 2
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %select1) #11, !srcloc !515
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %shr = lshr i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %5)
  %cmp.i5 = icmp ult i32 %5, 65536
  br i1 %cmp.i5, label %entry.ptp_ocp_select_name_from_val.exit_crit_edge, label %for.body.i

entry.ptp_ocp_select_name_from_val.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_name_from_val.exit

for.body.i:                                       ; preds = %entry
  %6 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.241)
  switch i32 %shr, label %for.cond.i.8 [
    i32 1, label %for.body.i.ptp_ocp_select_name_from_val.exit_crit_edge
    i32 2, label %ptp_ocp_select_name_from_val.exit.loopexit.fold.split
    i32 3, label %ptp_ocp_select_name_from_val.exit.loopexit.fold.split8
    i32 4, label %ptp_ocp_select_name_from_val.exit.loopexit.fold.split9
    i32 5, label %ptp_ocp_select_name_from_val.exit.loopexit.fold.split10
    i32 6, label %ptp_ocp_select_name_from_val.exit.loopexit.fold.split11
    i32 254, label %ptp_ocp_select_name_from_val.exit.loopexit.fold.split12
    i32 255, label %ptp_ocp_select_name_from_val.exit.loopexit.fold.split13
  ]

for.body.i.ptp_ocp_select_name_from_val.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_name_from_val.exit

for.cond.i.8:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_name_from_val.exit

ptp_ocp_select_name_from_val.exit.loopexit.fold.split: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_name_from_val.exit

ptp_ocp_select_name_from_val.exit.loopexit.fold.split8: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_name_from_val.exit

ptp_ocp_select_name_from_val.exit.loopexit.fold.split9: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_name_from_val.exit

ptp_ocp_select_name_from_val.exit.loopexit.fold.split10: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_name_from_val.exit

ptp_ocp_select_name_from_val.exit.loopexit.fold.split11: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_name_from_val.exit

ptp_ocp_select_name_from_val.exit.loopexit.fold.split12: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_name_from_val.exit

ptp_ocp_select_name_from_val.exit.loopexit.fold.split13: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_name_from_val.exit

ptp_ocp_select_name_from_val.exit:                ; preds = %ptp_ocp_select_name_from_val.exit.loopexit.fold.split13, %ptp_ocp_select_name_from_val.exit.loopexit.fold.split12, %ptp_ocp_select_name_from_val.exit.loopexit.fold.split11, %ptp_ocp_select_name_from_val.exit.loopexit.fold.split10, %ptp_ocp_select_name_from_val.exit.loopexit.fold.split9, %ptp_ocp_select_name_from_val.exit.loopexit.fold.split8, %ptp_ocp_select_name_from_val.exit.loopexit.fold.split, %for.cond.i.8, %for.body.i.ptp_ocp_select_name_from_val.exit_crit_edge, %entry.ptp_ocp_select_name_from_val.exit_crit_edge
  %.lcssa.i = phi ptr [ @.str.109, %entry.ptp_ocp_select_name_from_val.exit_crit_edge ], [ @.str.110, %for.body.i.ptp_ocp_select_name_from_val.exit_crit_edge ], [ null, %for.cond.i.8 ], [ @.str.111, %ptp_ocp_select_name_from_val.exit.loopexit.fold.split ], [ @.str.112, %ptp_ocp_select_name_from_val.exit.loopexit.fold.split8 ], [ @.str.113, %ptp_ocp_select_name_from_val.exit.loopexit.fold.split9 ], [ @.str.114, %ptp_ocp_select_name_from_val.exit.loopexit.fold.split10 ], [ @.str.115, %ptp_ocp_select_name_from_val.exit.loopexit.fold.split11 ], [ @.str.116, %ptp_ocp_select_name_from_val.exit.loopexit.fold.split12 ], [ @.str.117, %ptp_ocp_select_name_from_val.exit.loopexit.fold.split13 ]
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.108, ptr noundef %.lcssa.i) #11
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clock_source_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call4.i = tail call i32 @strncasecmp(ptr noundef %buf, ptr noundef nonnull @.str.109, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %entry.ptp_ocp_select_val_from_name.exit_crit_edge, label %for.inc.i

entry.ptp_ocp_select_val_from_name.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_val_from_name.exit

for.inc.i:                                        ; preds = %entry
  %call4.i.1 = tail call i32 @strncasecmp(ptr noundef %buf, ptr noundef nonnull @.str.110, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.1)
  %tobool5.not.i.1 = icmp eq i32 %call4.i.1, 0
  br i1 %tobool5.not.i.1, label %for.inc.i.ptp_ocp_select_val_from_name.exit_crit_edge, label %for.inc.i.1

for.inc.i.ptp_ocp_select_val_from_name.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_val_from_name.exit

for.inc.i.1:                                      ; preds = %for.inc.i
  %call4.i.2 = tail call i32 @strncasecmp(ptr noundef %buf, ptr noundef nonnull @.str.111, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.2)
  %tobool5.not.i.2 = icmp eq i32 %call4.i.2, 0
  br i1 %tobool5.not.i.2, label %for.inc.i.1.ptp_ocp_select_val_from_name.exit_crit_edge, label %for.inc.i.2

for.inc.i.1.ptp_ocp_select_val_from_name.exit_crit_edge: ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_val_from_name.exit

for.inc.i.2:                                      ; preds = %for.inc.i.1
  %call4.i.3 = tail call i32 @strncasecmp(ptr noundef %buf, ptr noundef nonnull @.str.112, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.3)
  %tobool5.not.i.3 = icmp eq i32 %call4.i.3, 0
  br i1 %tobool5.not.i.3, label %for.inc.i.2.ptp_ocp_select_val_from_name.exit_crit_edge, label %for.inc.i.3

for.inc.i.2.ptp_ocp_select_val_from_name.exit_crit_edge: ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_val_from_name.exit

for.inc.i.3:                                      ; preds = %for.inc.i.2
  %call4.i.4 = tail call i32 @strncasecmp(ptr noundef %buf, ptr noundef nonnull @.str.113, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.4)
  %tobool5.not.i.4 = icmp eq i32 %call4.i.4, 0
  br i1 %tobool5.not.i.4, label %for.inc.i.3.ptp_ocp_select_val_from_name.exit_crit_edge, label %for.inc.i.4

for.inc.i.3.ptp_ocp_select_val_from_name.exit_crit_edge: ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_val_from_name.exit

for.inc.i.4:                                      ; preds = %for.inc.i.3
  %call4.i.5 = tail call i32 @strncasecmp(ptr noundef %buf, ptr noundef nonnull @.str.114, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.5)
  %tobool5.not.i.5 = icmp eq i32 %call4.i.5, 0
  br i1 %tobool5.not.i.5, label %for.inc.i.4.ptp_ocp_select_val_from_name.exit_crit_edge, label %for.inc.i.5

for.inc.i.4.ptp_ocp_select_val_from_name.exit_crit_edge: ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_val_from_name.exit

for.inc.i.5:                                      ; preds = %for.inc.i.4
  %call4.i.6 = tail call i32 @strncasecmp(ptr noundef %buf, ptr noundef nonnull @.str.115, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.6)
  %tobool5.not.i.6 = icmp eq i32 %call4.i.6, 0
  br i1 %tobool5.not.i.6, label %for.inc.i.5.ptp_ocp_select_val_from_name.exit_crit_edge, label %for.inc.i.6

for.inc.i.5.ptp_ocp_select_val_from_name.exit_crit_edge: ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_val_from_name.exit

for.inc.i.6:                                      ; preds = %for.inc.i.5
  %call4.i.7 = tail call i32 @strncasecmp(ptr noundef %buf, ptr noundef nonnull @.str.116, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.7)
  %tobool5.not.i.7 = icmp eq i32 %call4.i.7, 0
  br i1 %tobool5.not.i.7, label %for.inc.i.6.ptp_ocp_select_val_from_name.exit_crit_edge, label %for.inc.i.7

for.inc.i.6.ptp_ocp_select_val_from_name.exit_crit_edge: ; preds = %for.inc.i.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_val_from_name.exit

for.inc.i.7:                                      ; preds = %for.inc.i.6
  %call4.i.8 = tail call i32 @strncasecmp(ptr noundef %buf, ptr noundef nonnull @.str.117, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.8)
  %tobool5.not.i.8 = icmp eq i32 %call4.i.8, 0
  br i1 %tobool5.not.i.8, label %for.inc.i.7.ptp_ocp_select_val_from_name.exit_crit_edge, label %for.inc.i.7.cleanup_crit_edge

for.inc.i.7.cleanup_crit_edge:                    ; preds = %for.inc.i.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.i.7.ptp_ocp_select_val_from_name.exit_crit_edge: ; preds = %for.inc.i.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_val_from_name.exit

ptp_ocp_select_val_from_name.exit:                ; preds = %for.inc.i.7.ptp_ocp_select_val_from_name.exit_crit_edge, %for.inc.i.6.ptp_ocp_select_val_from_name.exit_crit_edge, %for.inc.i.5.ptp_ocp_select_val_from_name.exit_crit_edge, %for.inc.i.4.ptp_ocp_select_val_from_name.exit_crit_edge, %for.inc.i.3.ptp_ocp_select_val_from_name.exit_crit_edge, %for.inc.i.2.ptp_ocp_select_val_from_name.exit_crit_edge, %for.inc.i.1.ptp_ocp_select_val_from_name.exit_crit_edge, %for.inc.i.ptp_ocp_select_val_from_name.exit_crit_edge, %entry.ptp_ocp_select_val_from_name.exit_crit_edge
  %i.016.i.lcssa = phi i32 [ 0, %entry.ptp_ocp_select_val_from_name.exit_crit_edge ], [ 1, %for.inc.i.ptp_ocp_select_val_from_name.exit_crit_edge ], [ 2, %for.inc.i.1.ptp_ocp_select_val_from_name.exit_crit_edge ], [ 3, %for.inc.i.2.ptp_ocp_select_val_from_name.exit_crit_edge ], [ 4, %for.inc.i.3.ptp_ocp_select_val_from_name.exit_crit_edge ], [ 5, %for.inc.i.4.ptp_ocp_select_val_from_name.exit_crit_edge ], [ 6, %for.inc.i.5.ptp_ocp_select_val_from_name.exit_crit_edge ], [ 7, %for.inc.i.6.ptp_ocp_select_val_from_name.exit_crit_edge ], [ 8, %for.inc.i.7.ptp_ocp_select_val_from_name.exit_crit_edge ]
  %value.i = getelementptr %struct.ocp_selector, ptr @ptp_ocp_clock, i32 %i.016.i.lcssa, i32 1
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %ptp_ocp_select_val_from_name.exit.cleanup_crit_edge, label %do.body2

ptp_ocp_select_val_from_name.exit.cleanup_crit_edge: ; preds = %ptp_ocp_select_val_from_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body2:                                         ; preds = %ptp_ocp_select_val_from_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %lock = getelementptr inbounds %struct.ptp_ocp, ptr %1, i32 0, i32 2
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %reg = getelementptr inbounds %struct.ptp_ocp, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %select = getelementptr inbounds %struct.ocp_reg, ptr %5, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %3) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %select, i32 %6) #11, !srcloc !518
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %ptp_ocp_select_val_from_name.exit.cleanup_crit_edge, %for.inc.i.7.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %do.body2 ], [ %3, %ptp_ocp_select_val_from_name.exit.cleanup_crit_edge ], [ -22, %for.inc.i.7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @available_clock_sources_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.109) #11
  %call.i.1 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %call.i, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.110) #11
  %add.i.1 = add i32 %call.i.1, %call.i
  %call.i.2 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %add.i.1, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.111) #11
  %add.i.2 = add i32 %call.i.2, %add.i.1
  %call.i.3 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %add.i.2, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.112) #11
  %add.i.3 = add i32 %call.i.3, %add.i.2
  %call.i.4 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %add.i.3, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.113) #11
  %add.i.4 = add i32 %call.i.4, %add.i.3
  %call.i.5 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %add.i.4, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.114) #11
  %add.i.5 = add i32 %call.i.5, %add.i.4
  %call.i.6 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %add.i.5, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.115) #11
  %add.i.6 = add i32 %call.i.6, %add.i.5
  %call.i.7 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %add.i.6, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.116) #11
  %add.i.7 = add i32 %call.i.7, %add.i.6
  %call.i.8 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %add.i.7, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.117) #11
  %add.i.8 = add i32 %call.i.8, %add.i.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.8)
  %tobool3.not.i = icmp eq i32 %add.i.8, 0
  %dec.i = add i32 %add.i.8, -1
  %spec.select = select i1 %tobool3.not.i, i32 0, i32 %dec.i
  %call4.i = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %spec.select, ptr noundef nonnull @.str.120) #11
  %add5.i = add i32 %call4.i, %spec.select
  ret i32 %add5.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sma1_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sma = getelementptr inbounds %struct.ptp_ocp, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %sma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sma, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !515
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %and = and i32 %5, 63
  %6 = load ptr, ptr @ptp_ocp_sma_in, align 4
  %call2 = tail call fastcc i32 @ptp_ocp_sma_show(i32 noundef 1, i32 noundef %and, ptr noundef %buf, ptr noundef %6)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sma1_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ptp_ocp_sma_store(ptr noundef %1, ptr noundef %buf, i32 noundef 1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %count.call1 = select i1 %tobool.not, i32 %count, i32 %call1
  ret i32 %count.call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ptp_ocp_sma_show(i32 noundef %sma_nr, i32 noundef %val, ptr noundef %buf, ptr noundef %zero_in) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %sma_nr, -1
  %arrayidx = getelementptr [4 x %struct.ptp_ocp_sma_connector], ptr @ptp_ocp_sma_map, i32 0, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.122) #11
  %2 = load i32, ptr getelementptr inbounds ([8 x %struct.ocp_selector], ptr @ptp_ocp_sma_in, i32 0, i32 0, i32 1), align 4
  %and.i = and i32 %2, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.for.inc.i_crit_edge, label %if.then.i

if.then.for.inc.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %3 = load ptr, ptr @ptp_ocp_sma_in, align 4
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %call.i, ptr noundef nonnull @.str.119, ptr noundef %3) #11
  %add.i = add i32 %call3.i, %call.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.then.for.inc.i_crit_edge
  %count.1.i = phi i32 [ %add.i, %if.then.i ], [ %call.i, %if.then.for.inc.i_crit_edge ]
  %4 = load i32, ptr getelementptr inbounds ([8 x %struct.ocp_selector], ptr @ptp_ocp_sma_in, i32 0, i32 1, i32 1), align 4
  %and.1.i = and i32 %4, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = load ptr, ptr getelementptr inbounds ([8 x %struct.ocp_selector], ptr @ptp_ocp_sma_in, i32 0, i32 1), align 4
  %call3.1.i = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %count.1.i, ptr noundef nonnull @.str.119, ptr noundef %5) #11
  %add.1.i = add i32 %call3.1.i, %count.1.i
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %count.1.1.i = phi i32 [ %add.1.i, %if.then.1.i ], [ %count.1.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %6 = load i32, ptr getelementptr inbounds ([8 x %struct.ocp_selector], ptr @ptp_ocp_sma_in, i32 0, i32 2, i32 1), align 4
  %and.2.i = and i32 %6, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = load ptr, ptr getelementptr inbounds ([8 x %struct.ocp_selector], ptr @ptp_ocp_sma_in, i32 0, i32 2), align 4
  %call3.2.i = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %count.1.1.i, ptr noundef nonnull @.str.119, ptr noundef %7) #11
  %add.2.i = add i32 %call3.2.i, %count.1.1.i
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %count.1.2.i = phi i32 [ %add.2.i, %if.then.2.i ], [ %count.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %8 = load i32, ptr getelementptr inbounds ([8 x %struct.ocp_selector], ptr @ptp_ocp_sma_in, i32 0, i32 3, i32 1), align 4
  %and.3.i = and i32 %8, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = load ptr, ptr getelementptr inbounds ([8 x %struct.ocp_selector], ptr @ptp_ocp_sma_in, i32 0, i32 3), align 4
  %call3.3.i = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %count.1.2.i, ptr noundef nonnull @.str.119, ptr noundef %9) #11
  %add.3.i = add i32 %call3.3.i, %count.1.2.i
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %count.1.3.i = phi i32 [ %add.3.i, %if.then.3.i ], [ %count.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %10 = load i32, ptr getelementptr inbounds ([8 x %struct.ocp_selector], ptr @ptp_ocp_sma_in, i32 0, i32 4, i32 1), align 4
  %and.4.i = and i32 %10, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = load ptr, ptr getelementptr inbounds ([8 x %struct.ocp_selector], ptr @ptp_ocp_sma_in, i32 0, i32 4), align 4
  %call3.4.i = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %count.1.3.i, ptr noundef nonnull @.str.119, ptr noundef %11) #11
  %add.4.i = add i32 %call3.4.i, %count.1.3.i
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %count.1.4.i = phi i32 [ %add.4.i, %if.then.4.i ], [ %count.1.3.i, %for.inc.3.i.for.inc.4.i_crit_edge ]
  %12 = load i32, ptr getelementptr inbounds ([8 x %struct.ocp_selector], ptr @ptp_ocp_sma_in, i32 0, i32 5, i32 1), align 4
  %and.5.i = and i32 %12, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.then.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5.i

if.then.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = load ptr, ptr getelementptr inbounds ([8 x %struct.ocp_selector], ptr @ptp_ocp_sma_in, i32 0, i32 5), align 4
  %call3.5.i = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %count.1.4.i, ptr noundef nonnull @.str.119, ptr noundef %13) #11
  %add.5.i = add i32 %call3.5.i, %count.1.4.i
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %count.1.5.i = phi i32 [ %add.5.i, %if.then.5.i ], [ %count.1.4.i, %for.inc.4.i.for.inc.5.i_crit_edge ]
  %14 = load i32, ptr getelementptr inbounds ([8 x %struct.ocp_selector], ptr @ptp_ocp_sma_in, i32 0, i32 6, i32 1), align 4
  %and.6.i = and i32 %14, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i)
  %tobool.not.6.i = icmp eq i32 %and.6.i, 0
  br i1 %tobool.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %if.then.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6.i

if.then.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = load ptr, ptr getelementptr inbounds ([8 x %struct.ocp_selector], ptr @ptp_ocp_sma_in, i32 0, i32 6), align 4
  %call3.6.i = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %count.1.5.i, ptr noundef nonnull @.str.119, ptr noundef %15) #11
  %add.6.i = add i32 %call3.6.i, %count.1.5.i
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %count.1.6.i = phi i32 [ %add.6.i, %if.then.6.i ], [ %count.1.5.i, %for.inc.5.i.for.inc.6.i_crit_edge ]
  %16 = load i32, ptr getelementptr inbounds ([8 x %struct.ocp_selector], ptr @ptp_ocp_sma_in, i32 0, i32 7, i32 1), align 4
  %and.7.i = and i32 %16, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i)
  %tobool.not.7.i = icmp eq i32 %and.7.i, 0
  br i1 %tobool.not.7.i, label %for.inc.6.i.for.inc.7.i_crit_edge, label %if.then.7.i

for.inc.6.i.for.inc.7.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.7.i

if.then.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = load ptr, ptr getelementptr inbounds ([8 x %struct.ocp_selector], ptr @ptp_ocp_sma_in, i32 0, i32 7), align 4
  %call3.7.i = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %count.1.6.i, ptr noundef nonnull @.str.119, ptr noundef %17) #11
  %add.7.i = add i32 %call3.7.i, %count.1.6.i
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %if.then.7.i, %for.inc.6.i.for.inc.7.i_crit_edge
  %count.1.7.i = phi i32 [ %add.7.i, %if.then.7.i ], [ %count.1.6.i, %for.inc.6.i.for.inc.7.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool4.not.i = icmp ne i32 %val, 0
  %tobool5.not.i = icmp eq ptr %zero_in, null
  %or.cond.i = or i1 %tobool4.not.i, %tobool5.not.i
  br i1 %or.cond.i, label %for.inc.7.i.ptp_ocp_show_inputs.exit_crit_edge, label %if.then6.i

for.inc.7.i.ptp_ocp_show_inputs.exit_crit_edge:   ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_show_inputs.exit

if.then6.i:                                       ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %count.1.7.i, ptr noundef nonnull @.str.119, ptr noundef nonnull %zero_in) #11
  %add8.i = add i32 %call7.i, %count.1.7.i
  br label %ptp_ocp_show_inputs.exit

ptp_ocp_show_inputs.exit:                         ; preds = %if.then6.i, %for.inc.7.i.ptp_ocp_show_inputs.exit_crit_edge
  %count.2.i = phi i32 [ %count.1.7.i, %for.inc.7.i.ptp_ocp_show_inputs.exit_crit_edge ], [ %add8.i, %if.then6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.2.i)
  %tobool10.not.i = icmp eq i32 %count.2.i, 0
  %dec.i = add i32 %count.2.i, -1
  %spec.select.i = select i1 %tobool10.not.i, i32 0, i32 %dec.i
  %call13.i = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %spec.select.i, ptr noundef nonnull @.str.120) #11
  %add14.i = add i32 %spec.select.i, %call13.i
  br label %cleanup

if.end:                                           ; preds = %entry
  %default_out_idx = getelementptr [4 x %struct.ptp_ocp_sma_connector], ptr @ptp_ocp_sma_map, i32 0, i32 %sub, i32 2
  %18 = ptrtoint ptr %default_out_idx to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %default_out_idx, align 2
  %conv = zext i16 %19 to i32
  %call.i1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.123) #11
  %20 = load ptr, ptr @ptp_ocp_sma_out, align 4
  %tobool.not9.i.i = icmp eq ptr %20, null
  br i1 %tobool.not9.i.i, label %if.end.if.then.i2_crit_edge, label %for.body.i.preheader.i

if.end.if.then.i2_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i2

for.body.i.preheader.i:                           ; preds = %if.end
  %21 = load i32, ptr getelementptr inbounds ([8 x %struct.ocp_selector], ptr @ptp_ocp_sma_out, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %val)
  %cmp.i11.i = icmp eq i32 %21, %val
  br i1 %cmp.i11.i, label %for.body.i.preheader.i.ptp_ocp_show_output.exit_crit_edge, label %for.body.i.preheader.i.for.cond.i.i_crit_edge

for.body.i.preheader.i.for.cond.i.i_crit_edge:    ; preds = %for.body.i.preheader.i
  br label %for.cond.i.i

for.body.i.preheader.i.ptp_ocp_show_output.exit_crit_edge: ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_show_output.exit

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i.preheader.i.for.cond.i.i_crit_edge
  %i.010.i12.i = phi i32 [ %inc.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.for.cond.i.i_crit_edge ]
  %inc.i.i = add i32 %i.010.i12.i, 1
  %arrayidx.i.i = getelementptr %struct.ocp_selector, ptr @ptp_ocp_sma_out, i32 %inc.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %for.cond.i.i.if.then.i2_crit_edge, label %for.body.i.i

for.cond.i.i.if.then.i2_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i2

for.body.i.i:                                     ; preds = %for.cond.i.i
  %value.i.i = getelementptr %struct.ocp_selector, ptr @ptp_ocp_sma_out, i32 %inc.i.i, i32 1
  %24 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value.i.i, align 4
  %cmp.i.i = icmp eq i32 %25, %val
  br i1 %cmp.i.i, label %for.body.i.i.ptp_ocp_show_output.exit_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

for.body.i.i.ptp_ocp_show_output.exit_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_show_output.exit

if.then.i2:                                       ; preds = %for.cond.i.i.if.then.i2_crit_edge, %if.end.if.then.i2_crit_edge
  %arrayidx.i = getelementptr [8 x %struct.ocp_selector], ptr @ptp_ocp_sma_out, i32 0, i32 %conv
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  br label %ptp_ocp_show_output.exit

ptp_ocp_show_output.exit:                         ; preds = %if.then.i2, %for.body.i.i.ptp_ocp_show_output.exit_crit_edge, %for.body.i.preheader.i.ptp_ocp_show_output.exit_crit_edge
  %name.0.i = phi ptr [ %27, %if.then.i2 ], [ %20, %for.body.i.preheader.i.ptp_ocp_show_output.exit_crit_edge ], [ %23, %for.body.i.i.ptp_ocp_show_output.exit_crit_edge ]
  %call3.i3 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %call.i1, ptr noundef nonnull @.str.108, ptr noundef %name.0.i) #11
  %add.i4 = add i32 %call3.i3, %call.i1
  br label %cleanup

cleanup:                                          ; preds = %ptp_ocp_show_output.exit, %ptp_ocp_show_inputs.exit
  %retval.0 = phi i32 [ %add14.i, %ptp_ocp_show_inputs.exit ], [ %add.i4, %ptp_ocp_show_output.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ptp_ocp_sma_store(ptr noundef %bp, ptr noundef %buf, i32 noundef %sma_nr, i32 noundef %shift) unnamed_addr #2 align 64 {
entry:
  %count.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %sma_nr, -1
  %arrayidx = getelementptr [4 x %struct.ptp_ocp_sma_connector], ptr @ptp_ocp_sma_map, i32 0, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i) #11
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %count.i, align 4, !annotation !520
  %call.i = call ptr @argv_split(i32 noundef 3264, ptr noundef %buf, ptr noundef nonnull %count.i) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sma_parse_inputs.exit.thread, label %if.end.i

sma_parse_inputs.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not.i = icmp eq i32 %4, 0
  br i1 %tobool1.not.i, label %if.end.i.sma_parse_inputs.exit.thread54_crit_edge, label %if.end3.i

if.end.i.sma_parse_inputs.exit.thread54_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sma_parse_inputs.exit.thread54

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp ne i32 %1, 0
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %call4.i = call i32 @strcasecmp(ptr noundef nonnull @.str.135, ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  %spec.select.i = zext i1 %tobool5.not.i to i32
  %not.tobool5.not.i = xor i1 %tobool5.not.i, true
  %narrow.i = select i1 %not.tobool5.not.i, i1 %cmp.i, i1 false
  %call9.i = call i32 @strcasecmp(ptr noundef nonnull @.str.136, ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  %inc12.i = select i1 %tobool5.not.i, i32 2, i32 1
  %idx.1.i = select i1 %tobool10.not.i, i32 %inc12.i, i32 %spec.select.i
  %narrow43.i = select i1 %tobool10.not.i, i1 true, i1 %narrow.i
  %cond15.i = zext i1 %narrow43.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.1.i, i32 %4)
  %cmp1645.i = icmp slt i32 %idx.1.i, %4
  br i1 %cmp1645.i, label %for.body.lr.ph.i, label %if.end3.i.if.end_crit_edge

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.end3.i
  %arrayidx17.i = getelementptr [2 x ptr], ptr @__const.sma_parse_inputs.tbl, i32 0, i32 %cond15.i
  %7 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx17.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool.not15.i.i = icmp eq ptr %10, null
  br label %for.body.i

for.body.i:                                       ; preds = %ptp_ocp_select_val_from_name.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ret.047.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %or.i, %ptp_ocp_select_val_from_name.exit.i.for.body.i_crit_edge ]
  %idx.246.i = phi i32 [ %idx.1.i, %for.body.lr.ph.i ], [ %inc20.i, %ptp_ocp_select_val_from_name.exit.i.for.body.i_crit_edge ]
  %arrayidx18.i = getelementptr ptr, ptr %call.i, i32 %idx.246.i
  %11 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx18.i, align 4
  br i1 %tobool.not15.i.i, label %for.body.i.ptp_ocp_select_val_from_name.exit.i_crit_edge, label %for.body.i.for.body.i.i_crit_edge

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.ptp_ocp_select_val_from_name.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_val_from_name.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %13 = phi ptr [ %17, %for.inc.i.i.for.body.i.i_crit_edge ], [ %10, %for.body.i.for.body.i.i_crit_edge ]
  %i.016.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.for.body.i.i_crit_edge ]
  %call.i.i = call i32 @strlen(ptr noundef nonnull %13) #17
  %call4.i.i = call i32 @strncasecmp(ptr noundef %12, ptr noundef nonnull %13, i32 noundef %call.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %value.i.i = getelementptr %struct.ocp_selector, ptr %8, i32 %i.016.i.i, i32 1
  %14 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value.i.i, align 4
  br label %ptp_ocp_select_val_from_name.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add i32 %i.016.i.i, 1
  %arrayidx.i.i = getelementptr %struct.ocp_selector, ptr %8, i32 %inc.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.ptp_ocp_select_val_from_name.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.ptp_ocp_select_val_from_name.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_val_from_name.exit.i

ptp_ocp_select_val_from_name.exit.i:              ; preds = %for.inc.i.i.ptp_ocp_select_val_from_name.exit.i_crit_edge, %if.then.i.i, %for.body.i.ptp_ocp_select_val_from_name.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %15, %if.then.i.i ], [ -22, %for.body.i.ptp_ocp_select_val_from_name.exit.i_crit_edge ], [ -22, %for.inc.i.i.ptp_ocp_select_val_from_name.exit.i_crit_edge ]
  %or.i = or i32 %retval.0.i.i, %ret.047.i
  %inc20.i = add nuw nsw i32 %idx.246.i, 1
  %exitcond.not.i = icmp eq i32 %inc20.i, %4
  br i1 %exitcond.not.i, label %for.end.i, label %ptp_ocp_select_val_from_name.exit.i.for.body.i_crit_edge

ptp_ocp_select_val_from_name.exit.i.for.body.i_crit_edge: ; preds = %ptp_ocp_select_val_from_name.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %ptp_ocp_select_val_from_name.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp21.i = icmp slt i32 %or.i, 0
  br i1 %cmp21.i, label %for.end.i.sma_parse_inputs.exit.thread54_crit_edge, label %for.end.i.if.end_crit_edge

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.end.i.sma_parse_inputs.exit.thread54_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sma_parse_inputs.exit.thread54

sma_parse_inputs.exit.thread54:                   ; preds = %for.end.i.sma_parse_inputs.exit.thread54_crit_edge, %if.end.i.sma_parse_inputs.exit.thread54_crit_edge
  call void @argv_free(ptr noundef nonnull %call.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #11
  br label %cleanup

if.end:                                           ; preds = %for.end.i.if.end_crit_edge, %if.end3.i.if.end_crit_edge
  %ret.1.i = phi i32 [ 0, %if.end3.i.if.end_crit_edge ], [ %or.i, %for.end.i.if.end_crit_edge ]
  call void @argv_free(ptr noundef nonnull %call.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cond15.i)
  %cmp3.not = icmp eq i32 %1, %cond15.i
  br i1 %cmp3.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12 = icmp eq i32 %1, 0
  %sub.i = sub i32 16, %shift
  %shl.i = shl i32 65535, %sub.i
  %lock.i = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 2
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %sma.i = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 8
  %18 = ptrtoint ptr %sma.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sma.i, align 8
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !515
  %21 = call i32 @llvm.bswap.i32(i32 %20) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %and.i = and i32 %21, %shl.i
  %shl6.i = shl i32 %ret.1.i, %shift
  %or.i26 = or i32 %and.i, %shl6.i
  %and.i.i = and i32 %or.i26, 1048592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  %irig_in.i.i.i = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 10
  %22 = ptrtoint ptr %irig_in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %irig_in.i.i.i, align 8
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !515
  %25 = call i32 @llvm.bswap.i32(i32 %24) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %26 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %27 = icmp eq i32 %26, 0
  %tobool5.not.i.i.i.i = xor i1 %tobool.i.i, %27
  br i1 %tobool5.not.i.i.i.i, label %if.then13.ptp_ocp_irig_in.exit.i.i_crit_edge, label %if.then.i.i.i.i

if.then13.ptp_ocp_irig_in.exit.i.i_crit_edge:     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_irig_in.exit.i.i

if.then.i.i.i.i:                                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %and6.i.i.i.i = and i32 %25, -2
  %spec.select.i.i.i.i = zext i1 %tobool.i.i to i32
  %or.i.i.i.i = or i32 %and6.i.i.i.i, %spec.select.i.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  call void @arm_heavy_mb() #11
  %28 = call i32 @llvm.bswap.i32(i32 %or.i.i.i.i) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %28) #11, !srcloc !518
  br label %ptp_ocp_irig_in.exit.i.i

ptp_ocp_irig_in.exit.i.i:                         ; preds = %if.then.i.i.i.i, %if.then13.ptp_ocp_irig_in.exit.i.i_crit_edge
  %and1.i.i = and i32 %or.i26, 2097184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.i.i = icmp ne i32 %and1.i.i, 0
  %dcf_in.i.i.i = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 12
  %29 = ptrtoint ptr %dcf_in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dcf_in.i.i.i, align 8
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #11, !srcloc !515
  %32 = call i32 @llvm.bswap.i32(i32 %31) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %33 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %34 = icmp eq i32 %33, 0
  %tobool5.not.i.i5.i.i = xor i1 %tobool2.i.i, %34
  br i1 %tobool5.not.i.i5.i.i, label %ptp_ocp_irig_in.exit.i.i.ptp_ocp_sma_store_inputs.exit_crit_edge, label %if.then.i.i9.i.i

ptp_ocp_irig_in.exit.i.i.ptp_ocp_sma_store_inputs.exit_crit_edge: ; preds = %ptp_ocp_irig_in.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_sma_store_inputs.exit

if.then.i.i9.i.i:                                 ; preds = %ptp_ocp_irig_in.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and6.i.i6.i.i = and i32 %32, -2
  %spec.select.i.i7.i.i = zext i1 %tobool2.i.i to i32
  %or.i.i8.i.i = or i32 %and6.i.i6.i.i, %spec.select.i.i7.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  call void @arm_heavy_mb() #11
  %35 = call i32 @llvm.bswap.i32(i32 %or.i.i8.i.i) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %35) #11, !srcloc !518
  br label %ptp_ocp_sma_store_inputs.exit

ptp_ocp_sma_store_inputs.exit:                    ; preds = %if.then.i.i9.i.i, %ptp_ocp_irig_in.exit.i.i.ptp_ocp_sma_store_inputs.exit_crit_edge
  %36 = ptrtoint ptr %sma.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sma.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  call void @arm_heavy_mb() #11
  %38 = call i32 @llvm.bswap.i32(i32 %or.i26) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %38) #11, !srcloc !518
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #11
  br label %cleanup

if.else:                                          ; preds = %if.end10
  %gpio2.i = getelementptr inbounds %struct.gpio_reg, ptr %19, i32 0, i32 2
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %gpio2.i) #11, !srcloc !515
  %40 = call i32 @llvm.bswap.i32(i32 %39) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %and.i32 = and i32 %40, %shl.i
  %shl6.i33 = shl i32 %ret.1.i, %shift
  %or.i34 = or i32 %and.i32, %shl6.i33
  %and.i.i35 = and i32 %or.i34, 1048592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i35)
  %tobool.i.i36 = icmp ne i32 %and.i.i35, 0
  %irig_out.i.i.i = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 9
  %41 = ptrtoint ptr %irig_out.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %irig_out.i.i.i, align 4
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #11, !srcloc !515
  %44 = call i32 @llvm.bswap.i32(i32 %43) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %45 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %46 = icmp eq i32 %45, 0
  %tobool5.not.i.i.i.i37 = xor i1 %tobool.i.i36, %46
  br i1 %tobool5.not.i.i.i.i37, label %if.else.ptp_ocp_irig_out.exit.i.i_crit_edge, label %if.then.i.i.i.i41

if.else.ptp_ocp_irig_out.exit.i.i_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_irig_out.exit.i.i

if.then.i.i.i.i41:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %and6.i.i.i.i38 = and i32 %44, -2
  %spec.select.i.i.i.i39 = zext i1 %tobool.i.i36 to i32
  %or.i.i.i.i40 = or i32 %and6.i.i.i.i38, %spec.select.i.i.i.i39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  call void @arm_heavy_mb() #11
  %47 = call i32 @llvm.bswap.i32(i32 %or.i.i.i.i40) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %47) #11, !srcloc !518
  br label %ptp_ocp_irig_out.exit.i.i

ptp_ocp_irig_out.exit.i.i:                        ; preds = %if.then.i.i.i.i41, %if.else.ptp_ocp_irig_out.exit.i.i_crit_edge
  %and1.i.i42 = and i32 %or.i34, 2097184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i42)
  %tobool2.i.i43 = icmp ne i32 %and1.i.i42, 0
  %dcf_out.i.i.i = getelementptr inbounds %struct.ptp_ocp, ptr %bp, i32 0, i32 11
  %48 = ptrtoint ptr %dcf_out.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dcf_out.i.i.i, align 4
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #11, !srcloc !515
  %51 = call i32 @llvm.bswap.i32(i32 %50) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %52 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %53 = icmp eq i32 %52, 0
  %tobool5.not.i.i5.i.i44 = xor i1 %tobool2.i.i43, %53
  br i1 %tobool5.not.i.i5.i.i44, label %ptp_ocp_irig_out.exit.i.i.ptp_ocp_sma_store_output.exit_crit_edge, label %if.then.i.i9.i.i48

ptp_ocp_irig_out.exit.i.i.ptp_ocp_sma_store_output.exit_crit_edge: ; preds = %ptp_ocp_irig_out.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_sma_store_output.exit

if.then.i.i9.i.i48:                               ; preds = %ptp_ocp_irig_out.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and6.i.i6.i.i45 = and i32 %51, -2
  %spec.select.i.i7.i.i46 = zext i1 %tobool2.i.i43 to i32
  %or.i.i8.i.i47 = or i32 %and6.i.i6.i.i45, %spec.select.i.i7.i.i46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  call void @arm_heavy_mb() #11
  %54 = call i32 @llvm.bswap.i32(i32 %or.i.i8.i.i47) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %54) #11, !srcloc !518
  br label %ptp_ocp_sma_store_output.exit

ptp_ocp_sma_store_output.exit:                    ; preds = %if.then.i.i9.i.i48, %ptp_ocp_irig_out.exit.i.i.ptp_ocp_sma_store_output.exit_crit_edge
  %55 = ptrtoint ptr %sma.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sma.i, align 8
  %gpio28.i = getelementptr inbounds %struct.gpio_reg, ptr %56, i32 0, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  call void @arm_heavy_mb() #11
  %57 = call i32 @llvm.bswap.i32(i32 %or.i34) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gpio28.i, i32 %57) #11, !srcloc !518
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #11
  br label %cleanup

cleanup:                                          ; preds = %ptp_ocp_sma_store_output.exit, %ptp_ocp_sma_store_inputs.exit, %if.end.cleanup_crit_edge, %sma_parse_inputs.exit.thread54, %sma_parse_inputs.exit.thread
  %retval.0 = phi i32 [ -95, %if.end.cleanup_crit_edge ], [ 0, %ptp_ocp_sma_store_output.exit ], [ 0, %ptp_ocp_sma_store_inputs.exit ], [ -12, %sma_parse_inputs.exit.thread ], [ -22, %sma_parse_inputs.exit.thread54 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @argv_split(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @argv_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sma2_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sma = getelementptr inbounds %struct.ptp_ocp, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %sma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sma, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %5 = lshr i32 %4, 8
  %and = and i32 %5, 63
  %call2 = tail call fastcc i32 @ptp_ocp_sma_show(i32 noundef 2, i32 noundef %and, ptr noundef %buf, ptr noundef null)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sma2_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ptp_ocp_sma_store(ptr noundef %1, ptr noundef %buf, i32 noundef 2, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %count.call1 = select i1 %tobool.not, i32 %count, i32 %call1
  ret i32 %count.call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sma3_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sma = getelementptr inbounds %struct.ptp_ocp, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %sma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sma, align 8
  %gpio2 = getelementptr inbounds %struct.gpio_reg, ptr %3, i32 0, i32 2
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %gpio2) #11, !srcloc !515
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %and = and i32 %5, 63
  %call2 = tail call fastcc i32 @ptp_ocp_sma_show(i32 noundef 3, i32 noundef %and, ptr noundef %buf, ptr noundef null)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sma3_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ptp_ocp_sma_store(ptr noundef %1, ptr noundef %buf, i32 noundef 3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %count.call1 = select i1 %tobool.not, i32 %count, i32 %call1
  ret i32 %count.call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sma4_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sma = getelementptr inbounds %struct.ptp_ocp, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %sma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sma, align 8
  %gpio2 = getelementptr inbounds %struct.gpio_reg, ptr %3, i32 0, i32 2
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %gpio2) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %5 = lshr i32 %4, 8
  %and = and i32 %5, 63
  %call2 = tail call fastcc i32 @ptp_ocp_sma_show(i32 noundef 4, i32 noundef %and, ptr noundef %buf, ptr noundef null)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sma4_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ptp_ocp_sma_store(ptr noundef %1, ptr noundef %buf, i32 noundef 4, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %count.call1 = select i1 %tobool.not, i32 %count, i32 %call1
  ret i32 %count.call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @available_sma_inputs_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ptp_ocp_sma_in, align 4
  %tobool.not16.i = icmp eq ptr %0, null
  br i1 %tobool.not16.i, label %entry.for.end.thread.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.thread.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %1 = phi ptr [ %3, %for.body.i.for.body.i_crit_edge ], [ %0, %entry.for.body.i_crit_edge ]
  %i.018.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %count.017.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %call.i = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %count.017.i, ptr noundef nonnull @.str.119, ptr noundef nonnull %1) #11
  %add.i = add i32 %call.i, %count.017.i
  %inc.i = add i32 %i.018.i, 1
  %arrayidx.i = getelementptr %struct.ocp_selector, ptr @ptp_ocp_sma_in, i32 %inc.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool3.not.i = icmp eq i32 %add.i, 0
  %dec.i = add i32 %add.i, -1
  br i1 %tobool3.not.i, label %for.end.i.for.end.thread.i_crit_edge, label %for.end.i.ptp_ocp_select_table_show.exit_crit_edge

for.end.i.ptp_ocp_select_table_show.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_table_show.exit

for.end.i.for.end.thread.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.end.i.for.end.thread.i_crit_edge, %entry.for.end.thread.i_crit_edge
  br label %ptp_ocp_select_table_show.exit

ptp_ocp_select_table_show.exit:                   ; preds = %for.end.thread.i, %for.end.i.ptp_ocp_select_table_show.exit_crit_edge
  %4 = phi i32 [ 0, %for.end.thread.i ], [ %dec.i, %for.end.i.ptp_ocp_select_table_show.exit_crit_edge ]
  %call4.i = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %4, ptr noundef nonnull @.str.120) #11
  %add5.i = add i32 %call4.i, %4
  ret i32 %add5.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @available_sma_outputs_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ptp_ocp_sma_out, align 4
  %tobool.not16.i = icmp eq ptr %0, null
  br i1 %tobool.not16.i, label %entry.for.end.thread.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.thread.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %1 = phi ptr [ %3, %for.body.i.for.body.i_crit_edge ], [ %0, %entry.for.body.i_crit_edge ]
  %i.018.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %count.017.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %call.i = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %count.017.i, ptr noundef nonnull @.str.119, ptr noundef nonnull %1) #11
  %add.i = add i32 %call.i, %count.017.i
  %inc.i = add i32 %i.018.i, 1
  %arrayidx.i = getelementptr %struct.ocp_selector, ptr @ptp_ocp_sma_out, i32 %inc.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool3.not.i = icmp eq i32 %add.i, 0
  %dec.i = add i32 %add.i, -1
  br i1 %tobool3.not.i, label %for.end.i.for.end.thread.i_crit_edge, label %for.end.i.ptp_ocp_select_table_show.exit_crit_edge

for.end.i.ptp_ocp_select_table_show.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_ocp_select_table_show.exit

for.end.i.for.end.thread.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.end.i.for.end.thread.i_crit_edge, %entry.for.end.thread.i_crit_edge
  br label %ptp_ocp_select_table_show.exit

ptp_ocp_select_table_show.exit:                   ; preds = %for.end.thread.i, %for.end.i.ptp_ocp_select_table_show.exit_crit_edge
  %4 = phi i32 [ 0, %for.end.thread.i ], [ %dec.i, %for.end.i.ptp_ocp_select_table_show.exit_crit_edge ]
  %call4.i = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %4, ptr noundef nonnull @.str.120) #11
  %add5.i = add i32 %call4.i, %4
  ret i32 %add5.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irig_b_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irig_out = getelementptr inbounds %struct.ptp_ocp, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %irig_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irig_out, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %5 = lshr i32 %4, 8
  %and = and i32 %5, 7
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.143, i32 noundef %and) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irig_b_mode_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !520
  %call1 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %4)
  %cmp = icmp ugt i8 %4, 7
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %and = zext i8 %4 to i32
  %shl = shl nuw nsw i32 %and, 16
  %lock = getelementptr inbounds %struct.ptp_ocp, ptr %1, i32 0, i32 2
  %call10 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %irig_out = getelementptr inbounds %struct.ptp_ocp, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %irig_out to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irig_out, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #11, !srcloc !518
  %7 = ptrtoint ptr %irig_out to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irig_out, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  call void @arm_heavy_mb() #11
  %9 = shl nuw nsw i32 %and, 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %9) #11, !srcloc !518
  %or = or i32 %shl, 1
  %10 = ptrtoint ptr %irig_out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irig_out, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  call void @arm_heavy_mb() #11
  %12 = call i32 @llvm.bswap.i32(i32 %or) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %12) #11, !srcloc !518
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end4 ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @utc_tai_offset_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %utc_tai_offset = getelementptr inbounds %struct.ptp_ocp, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %utc_tai_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %utc_tai_offset, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.143, i32 noundef %3) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @utc_tai_offset_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !520
  %call.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call fastcc void @ptp_ocp_utc_distribute(ptr noundef %1, i32 noundef %4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ts_window_adjust_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ts_window_adjust = getelementptr inbounds %struct.ptp_ocp, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %ts_window_adjust to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ts_window_adjust, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.143, i32 noundef %3) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ts_window_adjust_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !520
  %call.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %ts_window_adjust = getelementptr inbounds %struct.ptp_ocp, ptr %1, i32 0, i32 38
  %5 = ptrtoint ptr %ts_window_adjust to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ts_window_adjust, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_ocp_summary_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ptp_ocp_summary_show, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_ocp_summary_show(ptr noundef %s, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  %sts = alloca %struct.ptp_system_timestamp, align 8
  %ts = alloca %struct.timespec64, align 8
  %sys_ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sts) #11
  %2 = call ptr @memset(ptr %sts, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #11
  %3 = call ptr @memset(ptr %ts, i32 255, i32 16)
  %call = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #11
  %4 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %sma = getelementptr inbounds %struct.ptp_ocp, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %sma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sma, align 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !515
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %11 = ptrtoint ptr %sma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sma, align 8
  %gpio2 = getelementptr inbounds %struct.gpio_reg, ptr %12, i32 0, i32 2
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %gpio2) #11, !srcloc !515
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %ptp = getelementptr inbounds %struct.ptp_ocp, ptr %6, i32 0, i32 19
  %15 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ptp, align 4
  %call5 = tail call i32 @ptp_clock_index(ptr noundef %16) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.113, i32 noundef %call5) #11
  %17 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i, align 4
  %sma.i = getelementptr inbounds %struct.ptp_ocp, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %sma.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sma.i, align 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !515
  %22 = lshr i32 %21, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %and.i = and i32 %22, 63
  %23 = load ptr, ptr @ptp_ocp_sma_in, align 4
  %call2.i = tail call fastcc i32 @ptp_ocp_sma_show(i32 noundef 1, i32 noundef %and.i, ptr noundef nonnull %4, ptr noundef %23) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.148, ptr noundef nonnull %4) #11
  %24 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i, align 4
  %sma.i332 = getelementptr inbounds %struct.ptp_ocp, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %sma.i332 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sma.i332, align 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %29 = lshr i32 %28, 8
  %and.i333 = and i32 %29, 63
  %call2.i334 = tail call fastcc i32 @ptp_ocp_sma_show(i32 noundef 2, i32 noundef %and.i333, ptr noundef nonnull %4, ptr noundef null) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.149, ptr noundef nonnull %4) #11
  %30 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i, align 4
  %sma.i336 = getelementptr inbounds %struct.ptp_ocp, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %sma.i336 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sma.i336, align 8
  %gpio2.i = getelementptr inbounds %struct.gpio_reg, ptr %33, i32 0, i32 2
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %gpio2.i) #11, !srcloc !515
  %35 = lshr i32 %34, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %and.i337 = and i32 %35, 63
  %call2.i338 = tail call fastcc i32 @ptp_ocp_sma_show(i32 noundef 3, i32 noundef %and.i337, ptr noundef nonnull %4, ptr noundef null) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.150, ptr noundef nonnull %4) #11
  %36 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i, align 4
  %sma.i340 = getelementptr inbounds %struct.ptp_ocp, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %sma.i340 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sma.i340, align 8
  %gpio2.i341 = getelementptr inbounds %struct.gpio_reg, ptr %39, i32 0, i32 2
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %gpio2.i341) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %41 = lshr i32 %40, 8
  %and.i342 = and i32 %41, 63
  %call2.i343 = tail call fastcc i32 @ptp_ocp_sma_show(i32 noundef 4, i32 noundef %and.i342, ptr noundef nonnull %4, ptr noundef null) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.151, ptr noundef nonnull %4) #11
  %ts0 = getelementptr inbounds %struct.ptp_ocp, ptr %6, i32 0, i32 15
  %42 = ptrtoint ptr %ts0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ts0, align 4
  %tobool10.not = icmp eq ptr %43, null
  br i1 %tobool10.not, label %if.end.if.end16_crit_edge, label %if.then11

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool14.not = icmp eq i32 %46, 0
  %cond = select i1 %tobool14.not, ptr @.str.155, ptr @.str.154
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.153, ptr noundef nonnull %cond, ptr noundef nonnull @.str.127) #11
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end.if.end16_crit_edge
  %ts1 = getelementptr inbounds %struct.ptp_ocp, ptr %6, i32 0, i32 16
  %47 = ptrtoint ptr %ts1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ts1, align 8
  %tobool17.not = icmp eq ptr %48, null
  br i1 %tobool17.not, label %if.end16.if.end28_crit_edge, label %if.then18

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool23.not = icmp eq i32 %51, 0
  %and.i344 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i344)
  %tobool.not.i = icmp eq i32 %and.i344, 0
  %and2.i = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %def..str.137.i = select i1 %tobool3.not.i, ptr @.str.156, ptr @.str.137
  %ans.0.i = select i1 %tobool.not.i, ptr %def..str.137.i, ptr @.str.121
  %cond27 = select i1 %tobool23.not, ptr @.str.155, ptr @.str.154
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.131, ptr noundef nonnull %cond27, ptr noundef nonnull %ans.0.i) #11
  br label %if.end28

if.end28:                                         ; preds = %if.then18, %if.end16.if.end28_crit_edge
  %ts2 = getelementptr inbounds %struct.ptp_ocp, ptr %6, i32 0, i32 17
  %52 = ptrtoint ptr %ts2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ts2, align 4
  %tobool29.not = icmp eq ptr %53, null
  br i1 %tobool29.not, label %if.end28.if.end40_crit_edge, label %if.then30

if.end28.if.end40_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool35.not = icmp eq i32 %56, 0
  %and.i345 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i345)
  %tobool.not.i346 = icmp eq i32 %and.i345, 0
  %and2.i347 = and i32 %10, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i347)
  %tobool3.not.i348 = icmp eq i32 %and2.i347, 0
  %def..str.137.i349 = select i1 %tobool3.not.i348, ptr @.str.156, ptr @.str.137
  %ans.0.i351 = select i1 %tobool.not.i346, ptr %def..str.137.i349, ptr @.str.121
  %cond39 = select i1 %tobool35.not, ptr @.str.155, ptr @.str.154
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.132, ptr noundef nonnull %cond39, ptr noundef nonnull %ans.0.i351) #11
  br label %if.end40

if.end40:                                         ; preds = %if.then30, %if.end28.if.end40_crit_edge
  %pps = getelementptr inbounds %struct.ptp_ocp, ptr %6, i32 0, i32 14
  %57 = ptrtoint ptr %pps to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pps, align 8
  %tobool41.not = icmp eq ptr %58, null
  br i1 %tobool41.not, label %if.end40.if.end66_crit_edge, label %if.then42

if.end40.if.end66_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then42:                                        ; preds = %if.end40
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool47.not = icmp eq i32 %61, 0
  br i1 %tobool47.not, label %land.end64.critedge, label %land.rhs

land.rhs:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  %pps_req_map = getelementptr inbounds %struct.ptp_ocp, ptr %6, i32 0, i32 35
  %62 = ptrtoint ptr %pps_req_map to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pps_req_map, align 8
  %and = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  %cond54.c = select i1 %tobool49.not, ptr @.str.155, ptr @.str.154
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.157, ptr noundef nonnull %cond54.c, ptr noundef nonnull @.str.125) #11
  %64 = ptrtoint ptr %pps_req_map to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pps_req_map, align 8
  %and56 = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  %phi.sel = select i1 %tobool57.not, ptr @.str.155, ptr @.str.154
  br label %land.end64

land.end64.critedge:                              ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.125) #11
  br label %land.end64

land.end64:                                       ; preds = %land.end64.critedge, %land.rhs
  %66 = phi ptr [ %phi.sel, %land.rhs ], [ @.str.155, %land.end64.critedge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.112, ptr noundef nonnull %66, ptr noundef nonnull @.str.125) #11
  br label %if.end66

if.end66:                                         ; preds = %land.end64, %if.end40.if.end66_crit_edge
  %irig_out = getelementptr inbounds %struct.ptp_ocp, ptr %6, i32 0, i32 9
  %67 = ptrtoint ptr %irig_out to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %irig_out, align 4
  %tobool67.not = icmp eq ptr %68, null
  br i1 %tobool67.not, label %if.end66.if.end79_crit_edge, label %if.then68

if.end66.if.end79_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.then68:                                        ; preds = %if.end66
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %68) #11, !srcloc !515
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %and72 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  %71 = ptrtoint ptr %irig_out to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %irig_out, align 4
  %status = getelementptr inbounds %struct.irig_master_reg, ptr %72, i32 0, i32 1
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status) #11, !srcloc !515
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %75 = call ptr @memcpy(ptr %4, ptr @.str.156, i32 5)
  %and.i353 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i353)
  %tobool.not.i354 = icmp eq i32 %and.i353, 0
  br i1 %tobool.not.i354, label %if.then68.if.end.i_crit_edge, label %if.then.i

if.then68.if.end.i_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.138) #11
  %add.ptr.i = getelementptr i8, ptr %4, i32 %call1.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then68.if.end.i_crit_edge
  %ans.0.i355 = phi ptr [ %add.ptr.i, %if.then.i ], [ %4, %if.then68.if.end.i_crit_edge ]
  %and3.i = and i32 %14, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.gpio_multi_map.exit_crit_edge, label %if.then5.i

if.end.i.gpio_multi_map.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_multi_map.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %ans.0.i355, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.139) #11
  br label %gpio_multi_map.exit

gpio_multi_map.exit:                              ; preds = %if.then5.i, %if.end.i.gpio_multi_map.exit_crit_edge
  %cond78 = select i1 %tobool73.not, ptr @.str.155, ptr @.str.154
  %shr = lshr i32 %70, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.111, ptr noundef nonnull %cond78, i32 noundef %74, i32 noundef %shr, ptr noundef nonnull %4) #11
  br label %if.end79

if.end79:                                         ; preds = %gpio_multi_map.exit, %if.end66.if.end79_crit_edge
  %irig_in = getelementptr inbounds %struct.ptp_ocp, ptr %6, i32 0, i32 10
  %76 = ptrtoint ptr %irig_in to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %irig_in, align 8
  %tobool80.not = icmp eq ptr %77, null
  br i1 %tobool80.not, label %if.end79.if.end94_crit_edge, label %if.then81

if.end79.if.end94_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then81:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %77) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %79 = and i32 %78, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool86.not = icmp eq i32 %79, 0
  %80 = ptrtoint ptr %irig_in to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %irig_in, align 8
  %status89 = getelementptr inbounds %struct.irig_slave_reg, ptr %81, i32 0, i32 1
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status89) #11, !srcloc !515
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %and.i356 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i356)
  %tobool.not.i357 = icmp eq i32 %and.i356, 0
  %and2.i358 = and i32 %10, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i358)
  %tobool3.not.i359 = icmp eq i32 %and2.i358, 0
  %def..str.137.i360 = select i1 %tobool3.not.i359, ptr @.str.156, ptr @.str.137
  %ans.0.i362 = select i1 %tobool.not.i357, ptr %def..str.137.i360, ptr @.str.121
  %cond93 = select i1 %tobool86.not, ptr @.str.155, ptr @.str.154
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.160, ptr noundef nonnull %cond93, i32 noundef %83, ptr noundef nonnull %ans.0.i362) #11
  br label %if.end94

if.end94:                                         ; preds = %if.then81, %if.end79.if.end94_crit_edge
  %dcf_out = getelementptr inbounds %struct.ptp_ocp, ptr %6, i32 0, i32 11
  %84 = ptrtoint ptr %dcf_out to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dcf_out, align 4
  %tobool95.not = icmp eq ptr %85, null
  br i1 %tobool95.not, label %if.end94.if.end108_crit_edge, label %if.then96

if.end94.if.end108_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

if.then96:                                        ; preds = %if.end94
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %85) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %87 = and i32 %86, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool101.not = icmp eq i32 %87, 0
  %88 = ptrtoint ptr %dcf_out to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dcf_out, align 4
  %status104 = getelementptr inbounds %struct.dcf_master_reg, ptr %89, i32 0, i32 1
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status104) #11, !srcloc !515
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %92 = call ptr @memcpy(ptr %4, ptr @.str.156, i32 5)
  %and.i364 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i364)
  %tobool.not.i365 = icmp eq i32 %and.i364, 0
  br i1 %tobool.not.i365, label %if.then96.if.end.i372_crit_edge, label %if.then.i368

if.then96.if.end.i372_crit_edge:                  ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i372

if.then.i368:                                     ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i366 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.138) #11
  %add.ptr.i367 = getelementptr i8, ptr %4, i32 %call1.i366
  br label %if.end.i372

if.end.i372:                                      ; preds = %if.then.i368, %if.then96.if.end.i372_crit_edge
  %ans.0.i369 = phi ptr [ %add.ptr.i367, %if.then.i368 ], [ %4, %if.then96.if.end.i372_crit_edge ]
  %and3.i370 = and i32 %14, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i370)
  %tobool4.not.i371 = icmp eq i32 %and3.i370, 0
  br i1 %tobool4.not.i371, label %if.end.i372.gpio_multi_map.exit375_crit_edge, label %if.then5.i374

if.end.i372.gpio_multi_map.exit375_crit_edge:     ; preds = %if.end.i372
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_multi_map.exit375

if.then5.i374:                                    ; preds = %if.end.i372
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i373 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %ans.0.i369, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.139) #11
  br label %gpio_multi_map.exit375

gpio_multi_map.exit375:                           ; preds = %if.then5.i374, %if.end.i372.gpio_multi_map.exit375_crit_edge
  %cond107 = select i1 %tobool101.not, ptr @.str.155, ptr @.str.154
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.115, ptr noundef nonnull %cond107, i32 noundef %91, ptr noundef nonnull %4) #11
  br label %if.end108

if.end108:                                        ; preds = %gpio_multi_map.exit375, %if.end94.if.end108_crit_edge
  %dcf_in = getelementptr inbounds %struct.ptp_ocp, ptr %6, i32 0, i32 12
  %93 = ptrtoint ptr %dcf_in to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dcf_in, align 8
  %tobool109.not = icmp eq ptr %94, null
  br i1 %tobool109.not, label %if.end108.if.end123_crit_edge, label %if.then110

if.end108.if.end123_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123

if.then110:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %94) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %96 = and i32 %95, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool115.not = icmp eq i32 %96, 0
  %97 = ptrtoint ptr %dcf_in to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dcf_in, align 8
  %status118 = getelementptr inbounds %struct.dcf_slave_reg, ptr %98, i32 0, i32 1
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status118) #11, !srcloc !515
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %and.i376 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i376)
  %tobool.not.i377 = icmp eq i32 %and.i376, 0
  %and2.i378 = and i32 %10, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i378)
  %tobool3.not.i379 = icmp eq i32 %and2.i378, 0
  %def..str.137.i380 = select i1 %tobool3.not.i379, ptr @.str.156, ptr @.str.137
  %ans.0.i382 = select i1 %tobool.not.i377, ptr %def..str.137.i380, ptr @.str.121
  %cond122 = select i1 %tobool115.not, ptr @.str.155, ptr @.str.154
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.162, ptr noundef nonnull %cond122, i32 noundef %100, ptr noundef nonnull %ans.0.i382) #11
  br label %if.end123

if.end123:                                        ; preds = %if.then110, %if.end108.if.end123_crit_edge
  %nmea_out = getelementptr inbounds %struct.ptp_ocp, ptr %6, i32 0, i32 13
  %101 = ptrtoint ptr %nmea_out to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %nmea_out, align 4
  %tobool124.not = icmp eq ptr %102, null
  br i1 %tobool124.not, label %if.end123.if.end137_crit_edge, label %if.then125

if.end123.if.end137_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

if.then125:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %102) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %104 = and i32 %103, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool130.not = icmp eq i32 %104, 0
  %105 = ptrtoint ptr %nmea_out to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %nmea_out, align 4
  %status133 = getelementptr inbounds %struct.tod_reg, ptr %106, i32 0, i32 1
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status133) #11, !srcloc !515
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %cond136 = select i1 %tobool130.not, ptr @.str.155, ptr @.str.154
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.164, ptr noundef nonnull %cond136, i32 noundef %108) #11
  br label %if.end137

if.end137:                                        ; preds = %if.then125, %if.end123.if.end137_crit_edge
  %pps_select = getelementptr inbounds %struct.ptp_ocp, ptr %6, i32 0, i32 7
  %109 = ptrtoint ptr %pps_select to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pps_select, align 4
  %tobool138.not = icmp eq ptr %110, null
  br i1 %tobool138.not, label %if.end137.if.end159_crit_edge, label %if.then139

if.end137.if.end159_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159

if.then139:                                       ; preds = %if.end137
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %110) #11, !srcloc !515
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %and143 = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.else, label %if.then145

if.then145:                                       ; preds = %if.then139
  %and.i384 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i384)
  %tobool.not.i385 = icmp eq i32 %and.i384, 0
  br i1 %tobool.not.i385, label %if.else.i389, label %if.then145.if.end159_crit_edge

if.then145.if.end159_crit_edge:                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159

if.else.i389:                                     ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #13
  %and2.i386 = and i32 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i386)
  %tobool3.not.i387 = icmp eq i32 %and2.i386, 0
  %def..str.137.i388 = select i1 %tobool3.not.i387, ptr @.str.156, ptr @.str.137
  br label %if.end159

if.else:                                          ; preds = %if.then139
  %and147 = and i32 %112, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %if.else150, label %if.else.if.end159_crit_edge

if.else.if.end159_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159

if.else150:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %and151 = and i32 %112, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  %.str.156..str.127 = select i1 %tobool152.not, ptr @.str.156, ptr @.str.127
  br label %if.end159

if.end159:                                        ; preds = %if.else150, %if.else.if.end159_crit_edge, %if.else.i389, %if.then145.if.end159_crit_edge, %if.end137.if.end159_crit_edge
  %src.0 = phi ptr [ @.str.126, %if.else.if.end159_crit_edge ], [ %.str.156..str.127, %if.else150 ], [ @.str.165, %if.end137.if.end159_crit_edge ], [ @.str.121, %if.then145.if.end159_crit_edge ], [ %def..str.137.i388, %if.else.i389 ]
  %reg = getelementptr inbounds %struct.ptp_ocp, ptr %6, i32 0, i32 3
  %113 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %reg, align 4
  %select = getelementptr inbounds %struct.ocp_reg, ptr %114, i32 0, i32 2
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %select) #11, !srcloc !515
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %shr161 = lshr i32 %116, 16
  %trunc = trunc i32 %shr161 to i16
  %117 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.242)
  switch i16 %trunc, label %sw.default [
    i16 0, label %sw.bb
    i16 2, label %sw.bb163
    i16 3, label %sw.bb165
    i16 6, label %sw.bb167
  ]

sw.bb:                                            ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #13
  %118 = call ptr @memcpy(ptr %4, ptr @.str.156, i32 5)
  br label %sw.epilog

sw.bb163:                                         ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #13
  %119 = call ptr @memcpy(ptr %4, ptr @.str.111, i32 5)
  br label %sw.epilog

sw.bb165:                                         ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #13
  %call166 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.166, ptr noundef nonnull %src.0)
  br label %sw.epilog

sw.bb167:                                         ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #13
  %120 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %120, i32 4)
  store i32 1145259520, ptr %4, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #13
  %121 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %121, i32 8)
  store i64 8461818871936413184, ptr %4, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb167, %sw.bb165, %sw.bb163, %sw.bb
  %122 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %reg, align 4
  %status171 = getelementptr inbounds %struct.ocp_reg, ptr %123, i32 0, i32 1
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status171) #11, !srcloc !515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  %125 = and i32 %124, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool174.not = icmp eq i32 %125, 0
  %cond175 = select i1 %tobool174.not, ptr @.str.171, ptr @.str.170
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.169, ptr noundef nonnull %4, ptr noundef nonnull %cond175) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.172, ptr noundef nonnull %src.0) #11
  %and.i392 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i392)
  %tobool.not.i393 = icmp eq i32 %and.i392, 0
  %and2.i394 = and i32 %10, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i394)
  %tobool3.not.i395 = icmp eq i32 %and2.i394, 0
  %def..str.137.i396 = select i1 %tobool3.not.i395, ptr @.str.128, ptr @.str.137
  %ans.0.i398 = select i1 %tobool.not.i393, ptr %def..str.137.i396, ptr @.str.121
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.173, ptr noundef nonnull %ans.0.i398) #11
  %lock.i = getelementptr %struct.ptp_ocp, ptr %6, i32 0, i32 2
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %call6.i401 = call fastcc i32 @__ptp_ocp_gettime_locked(ptr noundef %6, ptr noundef nonnull %ts, ptr noundef nonnull %sts) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i401)
  %tobool178.not = icmp eq i32 %call6.i401, 0
  br i1 %tobool178.not, label %if.then179, label %sw.epilog.if.end188_crit_edge

sw.epilog.if.end188_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end188

if.then179:                                       ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sys_ts) #11
  %126 = call ptr @memset(ptr %sys_ts, i32 255, i32 16)
  %127 = ptrtoint ptr %sts to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %sts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %128)
  %cmp.i = icmp sgt i64 %128, 9223372035
  br i1 %cmp.i, label %if.then179.timespec64_to_ns.exit_crit_edge, label %if.end.i402

if.then179.timespec64_to_ns.exit_crit_edge:       ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #13
  br label %timespec64_to_ns.exit

if.end.i402:                                      ; preds = %if.then179
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %128)
  %cmp2.i = icmp slt i64 %128, -9223372035
  br i1 %cmp2.i, label %if.end.i402.timespec64_to_ns.exit_crit_edge, label %if.end4.i

if.end.i402.timespec64_to_ns.exit_crit_edge:      ; preds = %if.end.i402
  call void @__sanitizer_cov_trace_pc() #13
  br label %timespec64_to_ns.exit

if.end4.i:                                        ; preds = %if.end.i402
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i = mul nsw i64 %128, 1000000000
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %sts, i32 0, i32 1
  %129 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %130 to i64
  %add.i = add i64 %mul.i, %conv.i
  br label %timespec64_to_ns.exit

timespec64_to_ns.exit:                            ; preds = %if.end4.i, %if.end.i402.timespec64_to_ns.exit_crit_edge, %if.then179.timespec64_to_ns.exit_crit_edge
  %retval.0.i = phi i64 [ %add.i, %if.end4.i ], [ 9223372036854775807, %if.then179.timespec64_to_ns.exit_crit_edge ], [ -9223372036854775808, %if.end.i402.timespec64_to_ns.exit_crit_edge ]
  %post_ts = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1
  %131 = ptrtoint ptr %post_ts to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %post_ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %132)
  %cmp.i403 = icmp sgt i64 %132, 9223372035
  br i1 %cmp.i403, label %timespec64_to_ns.exit.timespec64_to_ns.exit412_crit_edge, label %if.end.i405

timespec64_to_ns.exit.timespec64_to_ns.exit412_crit_edge: ; preds = %timespec64_to_ns.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %timespec64_to_ns.exit412

if.end.i405:                                      ; preds = %timespec64_to_ns.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %132)
  %cmp2.i404 = icmp slt i64 %132, -9223372035
  br i1 %cmp2.i404, label %if.end.i405.timespec64_to_ns.exit412_crit_edge, label %if.end4.i410

if.end.i405.timespec64_to_ns.exit412_crit_edge:   ; preds = %if.end.i405
  call void @__sanitizer_cov_trace_pc() #13
  br label %timespec64_to_ns.exit412

if.end4.i410:                                     ; preds = %if.end.i405
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i406 = mul nsw i64 %132, 1000000000
  %tv_nsec.i407 = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1, i32 1
  %133 = ptrtoint ptr %tv_nsec.i407 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %tv_nsec.i407, align 8
  %conv.i408 = sext i32 %134 to i64
  %add.i409 = add i64 %mul.i406, %conv.i408
  br label %timespec64_to_ns.exit412

timespec64_to_ns.exit412:                         ; preds = %if.end4.i410, %if.end.i405.timespec64_to_ns.exit412_crit_edge, %timespec64_to_ns.exit.timespec64_to_ns.exit412_crit_edge
  %retval.0.i411 = phi i64 [ %add.i409, %if.end4.i410 ], [ 9223372036854775807, %timespec64_to_ns.exit.timespec64_to_ns.exit412_crit_edge ], [ -9223372036854775808, %if.end.i405.timespec64_to_ns.exit412_crit_edge ]
  %add = add i64 %retval.0.i411, %retval.0.i
  %div = sdiv i64 %add, 2
  %utc_tai_offset = getelementptr inbounds %struct.ptp_ocp, ptr %6, i32 0, i32 37
  %135 = ptrtoint ptr %utc_tai_offset to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %utc_tai_offset, align 8
  %conv = zext i32 %136 to i64
  %mul = mul nuw nsw i64 %conv, 1000000000
  %add182 = add nsw i64 %mul, %div
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %sys_ts, i64 noundef %add182) #11
  %137 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %ts, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %139 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %tv_nsec, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.125, i64 noundef %138, i32 noundef %140, ptr noundef nonnull %ts) #11
  %141 = ptrtoint ptr %sys_ts to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %sys_ts, align 8
  %tv_nsec184 = getelementptr inbounds %struct.timespec64, ptr %sys_ts, i32 0, i32 1
  %143 = ptrtoint ptr %tv_nsec184 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %tv_nsec184, align 8
  %145 = ptrtoint ptr %utc_tai_offset to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %utc_tai_offset, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.176, i64 noundef %142, i32 noundef %144, ptr noundef nonnull %sys_ts, i32 noundef %146) #11
  %147 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %148)
  %cmp.i413 = icmp sgt i64 %148, 9223372035
  br i1 %cmp.i413, label %timespec64_to_ns.exit412.timespec64_to_ns.exit422_crit_edge, label %if.end.i415

timespec64_to_ns.exit412.timespec64_to_ns.exit422_crit_edge: ; preds = %timespec64_to_ns.exit412
  call void @__sanitizer_cov_trace_pc() #13
  br label %timespec64_to_ns.exit422

if.end.i415:                                      ; preds = %timespec64_to_ns.exit412
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %148)
  %cmp2.i414 = icmp slt i64 %148, -9223372035
  br i1 %cmp2.i414, label %if.end.i415.timespec64_to_ns.exit422_crit_edge, label %if.end4.i420

if.end.i415.timespec64_to_ns.exit422_crit_edge:   ; preds = %if.end.i415
  call void @__sanitizer_cov_trace_pc() #13
  br label %timespec64_to_ns.exit422

if.end4.i420:                                     ; preds = %if.end.i415
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i416 = mul nsw i64 %148, 1000000000
  %149 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %tv_nsec, align 8
  %conv.i418 = sext i32 %150 to i64
  %add.i419 = add i64 %mul.i416, %conv.i418
  br label %timespec64_to_ns.exit422

timespec64_to_ns.exit422:                         ; preds = %if.end4.i420, %if.end.i415.timespec64_to_ns.exit422_crit_edge, %timespec64_to_ns.exit412.timespec64_to_ns.exit422_crit_edge
  %retval.0.i421 = phi i64 [ %add.i419, %if.end4.i420 ], [ 9223372036854775807, %timespec64_to_ns.exit412.timespec64_to_ns.exit422_crit_edge ], [ -9223372036854775808, %if.end.i415.timespec64_to_ns.exit422_crit_edge ]
  %sub = sub i64 %retval.0.i421, %add182
  %sub187 = sub i64 %retval.0.i411, %retval.0.i
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.75, i64 noundef %sub, i64 noundef %sub187) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sys_ts) #11
  br label %if.end188

if.end188:                                        ; preds = %timespec64_to_ns.exit422, %sw.epilog.if.end188_crit_edge
  call void @free_pages(i32 noundef %call, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end188, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end188 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sts) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister_fixed_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_storeN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 278)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 278)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84, !86, !88, !90, !91, !92, !93, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !117, !119, !121, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !145, !147, !149, !151, !153, !155, !156, !157, !158, !160, !161, !163, !165, !166, !167, !169, !170, !171, !173, !174, !176, !178, !179, !180, !181, !183, !184, !185, !186, !188, !190, !192, !194, !196, !198, !200, !202, !203, !204, !205, !207, !208, !209, !210, !212, !213, !215, !217, !218, !220, !222, !223, !225, !227, !229, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !255, !257, !259, !261, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !293, !294, !295, !297, !299, !301, !302, !304, !305, !307, !308, !310, !311, !313, !314, !316, !317, !319, !321, !322, !324, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !398, !399, !400, !401, !403, !404, !405, !407, !408, !409, !411, !412, !413, !414, !416, !417, !418, !419, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !453, !454, !455, !457, !458, !459, !461, !462, !463, !464, !466, !467, !468, !470, !471, !472, !474, !475, !476, !478, !479, !480, !482, !483, !484, !486, !487, !488, !489, !491, !493, !495, !497, !499, !501, !503, !504, !505}
!llvm.module.flags = !{!506, !507, !508, !509, !510, !511, !512, !513}
!llvm.ident = !{!514}

!0 = !{ptr @__initcall__kmod_ptp_ocp__377_2639_ptp_ocp_init6, !1, !"__initcall__kmod_ptp_ocp__377_2639_ptp_ocp_init6", i1 false, i1 false}
!1 = !{!"../drivers/ptp/ptp_ocp.c", i32 2639, i32 1}
!2 = !{ptr @__exitcall_ptp_ocp_fini, !3, !"__exitcall_ptp_ocp_fini", i1 false, i1 false}
!3 = !{!"../drivers/ptp/ptp_ocp.c", i32 2640, i32 1}
!4 = !{ptr @__UNIQUE_ID_description378, !5, !"__UNIQUE_ID_description378", i1 false, i1 false}
!5 = !{!"../drivers/ptp/ptp_ocp.c", i32 2642, i32 1}
!6 = !{ptr @__UNIQUE_ID_file379, !7, !"__UNIQUE_ID_file379", i1 false, i1 false}
!7 = !{!"../drivers/ptp/ptp_ocp.c", i32 2643, i32 1}
!8 = !{ptr @__UNIQUE_ID_license380, !7, !"__UNIQUE_ID_license380", i1 false, i1 false}
!9 = !{ptr @ptp_ocp_i2c_notifier, !10, !"ptp_ocp_i2c_notifier", i1 false, i1 false}
!10 = !{!"../drivers/ptp/ptp_ocp.c", i32 2591, i32 30}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/ptp/ptp_ocp.c", i32 2577, i32 49}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/ptp/ptp_ocp.c", i32 2584, i32 30}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/ptp/ptp_ocp.c", i32 2295, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ptp_ocp_symlink._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @ptp_ocp_symlink._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @ptp_ocp_driver, !24, !"ptp_ocp_driver", i1 false, i1 false}
!24 = !{!"../drivers/ptp/ptp_ocp.c", i32 2548, i32 26}
!25 = !{ptr @ptp_ocp_pcidev_id, !26, !"ptp_ocp_pcidev_id", i1 false, i1 false}
!26 = !{!"../drivers/ptp/ptp_ocp.c", i32 436, i32 35}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/ptp/ptp_ocp.c", i32 307, i32 3}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/ptp/ptp_ocp.c", i32 311, i32 3}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/ptp/ptp_ocp.c", i32 320, i32 3}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/ptp/ptp_ocp.c", i32 329, i32 3}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/ptp/ptp_ocp.c", i32 338, i32 3}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/ptp/ptp_ocp.c", i32 347, i32 3}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/ptp/ptp_ocp.c", i32 351, i32 3}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/ptp/ptp_ocp.c", i32 355, i32 3}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/ptp/ptp_ocp.c", i32 359, i32 3}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/ptp/ptp_ocp.c", i32 363, i32 3}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/ptp/ptp_ocp.c", i32 367, i32 3}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/ptp/ptp_ocp.c", i32 371, i32 3}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/ptp/ptp_ocp.c", i32 375, i32 3}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/ptp/ptp_ocp.c", i32 379, i32 3}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/ptp/ptp_ocp.c", i32 383, i32 3}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/ptp/ptp_ocp.c", i32 387, i32 3}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/ptp/ptp_ocp.c", i32 394, i32 12}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/ptp/ptp_ocp.c", i32 391, i32 3}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/ptp/ptp_ocp.c", i32 399, i32 3}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/ptp/ptp_ocp.c", i32 403, i32 3}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/ptp/ptp_ocp.c", i32 407, i32 3}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/ptp/ptp_ocp.c", i32 411, i32 3}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/ptp/ptp_ocp.c", i32 418, i32 12}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/ptp/ptp_ocp.c", i32 415, i32 3}
!75 = !{ptr @ocp_fb_resource, !76, !"ocp_fb_resource", i1 false, i1 false}
!76 = !{!"../drivers/ptp/ptp_ocp.c", i32 305, i32 28}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/ptp/ptp_ocp.c", i32 1339, i32 15}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/ptp/ptp_ocp.c", i32 1341, i32 3}
!81 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ptp_ocp_register_ext._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @ptp_ocp_register_ext._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/ptp/ptp_ocp.c", i32 1225, i32 15}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/ptp/ptp_ocp.c", i32 1232, i32 15}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/ptp/ptp_ocp.c", i32 831, i32 3}
!90 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ptp_ocp_init_clock._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @ptp_ocp_init_clock._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @ptp_ocp_init_clock.__key, !94, !"__key", i1 false, i1 false}
!94 = !{!"../drivers/ptp/ptp_ocp.c", i32 845, i32 3}
!95 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/ptp/ptp_ocp.c", i32 2476, i32 3}
!98 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @ptp_ocp_probe._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @ptp_ocp_probe._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/ptp/ptp_ocp.c", i32 2482, i32 3}
!103 = !{ptr @ptp_ocp_probe._entry.48, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @ptp_ocp_probe._entry_ptr.50, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/ptp/ptp_ocp.c", i32 2498, i32 3}
!107 = !{ptr @ptp_ocp_probe._entry.51, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @ptp_ocp_probe._entry_ptr.53, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/ptp/ptp_ocp.c", i32 2511, i32 3}
!111 = !{ptr @ptp_ocp_probe._entry.54, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @ptp_ocp_probe._entry_ptr.56, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @ptp_ocp_devlink_ops, !114, !"ptp_ocp_devlink_ops", i1 false, i1 false}
!114 = !{!"../drivers/ptp/ptp_ocp.c", i32 1130, i32 33}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/ptp/ptp_ocp.c", i32 1103, i32 17}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/ptp/ptp_ocp.c", i32 1105, i32 15}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/ptp/ptp_ocp.c", i32 1110, i32 15}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/ptp/ptp_ocp.c", i32 1121, i32 16}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/ptp/ptp_ocp.c", i32 978, i32 3}
!125 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @ptp_ocp_get_serial_number._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @ptp_ocp_get_serial_number._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/ptp/ptp_ocp.c", i32 984, i32 3}
!130 = !{ptr @ptp_ocp_get_serial_number._entry.63, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @ptp_ocp_get_serial_number._entry_ptr.65, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/ptp/ptp_ocp.c", i32 991, i32 3}
!134 = !{ptr @ptp_ocp_get_serial_number._entry.66, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @ptp_ocp_get_serial_number._entry_ptr.68, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/ptp/ptp_ocp.c", i32 1071, i32 3}
!138 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @ptp_ocp_devlink_flash_update._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @ptp_ocp_devlink_flash_update._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/ptp/ptp_ocp.c", i32 1075, i32 46}
!143 = !{ptr @.str.72, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/ptp/ptp_ocp.c", i32 1080, i32 14}
!145 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/ptp/ptp_ocp.c", i32 1080, i32 30}
!147 = !{ptr @.str.74, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/ptp/ptp_ocp.c", i32 1010, i32 15}
!149 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../include/linux/device.h", i32 651, i32 70}
!151 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/ptp/ptp_ocp.c", i32 1037, i32 47}
!153 = !{ptr @.str.77, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/ptp/ptp_ocp.c", i32 2253, i32 3}
!155 = !{ptr @.str.78, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @ptp_ocp_device_init._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @ptp_ocp_device_init._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @ptp_ocp_device_init.__key, !159, !"__key", i1 false, i1 false}
!159 = !{!"../drivers/ptp/ptp_ocp.c", i32 2259, i32 2}
!160 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.80, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/ptp/ptp_ocp.c", i32 2267, i32 25}
!163 = !{ptr @.str.82, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/ptp/ptp_ocp.c", i32 2275, i32 3}
!165 = !{ptr @ptp_ocp_device_init._entry.81, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @ptp_ocp_device_init._entry_ptr.83, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.84, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/ptp/ptp_ocp.c", i32 442, i32 8}
!169 = !{ptr @.str.85, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @ptp_ocp_lock, !168, !"ptp_ocp_lock", i1 false, i1 false}
!171 = !{ptr @.str.86, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/ptp/ptp_ocp.c", i32 443, i32 8}
!173 = !{ptr @ptp_ocp_idr, !172, !"ptp_ocp_idr", i1 false, i1 false}
!174 = !{ptr @ptp_ocp_clock_info, !175, !"ptp_ocp_clock_info", i1 false, i1 false}
!175 = !{!"../drivers/ptp/ptp_ocp.c", i32 730, i32 36}
!176 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/ptp/ptp_ocp.c", i32 1450, i32 4}
!178 = !{ptr @.str.88, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @ptp_ocp_register_resources._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @ptp_ocp_register_resources._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.89, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/ptp/ptp_ocp.c", i32 1433, i32 3}
!183 = !{ptr @.str.90, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @ptp_ocp_allow_irq._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @ptp_ocp_allow_irq._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.91, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/ptp/ptp_ocp.c", i32 2322, i32 16}
!188 = !{ptr @.str.92, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/ptp/ptp_ocp.c", i32 2323, i32 31}
!190 = !{ptr @.str.93, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/ptp/ptp_ocp.c", i32 2327, i32 31}
!192 = !{ptr @.str.94, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/ptp/ptp_ocp.c", i32 2331, i32 31}
!194 = !{ptr @.str.95, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/ptp/ptp_ocp.c", i32 2335, i32 31}
!196 = !{ptr @.str.96, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/ptp/ptp_ocp.c", i32 2337, i32 15}
!198 = !{ptr @.str.97, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/ptp/ptp_ocp.c", i32 2338, i32 30}
!200 = !{ptr @.str.98, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/ptp/ptp_ocp.c", i32 2345, i32 3}
!202 = !{ptr @.str.99, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @ptp_ocp_complete._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @ptp_ocp_complete._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.100, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/ptp/ptp_ocp.c", i32 2307, i32 3}
!207 = !{ptr @.str.101, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @ptp_ocp_link_child._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @ptp_ocp_link_child._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @timecard_groups, !211, !"timecard_groups", i1 false, i1 false}
!211 = !{!"../drivers/ptp/ptp_ocp.c", i32 1993, i32 1}
!212 = !{ptr @timecard_group, !211, !"timecard_group", i1 false, i1 false}
!213 = !{ptr @timecard_attrs, !214, !"timecard_attrs", i1 false, i1 false}
!214 = !{!"../drivers/ptp/ptp_ocp.c", i32 1977, i32 26}
!215 = !{ptr @.str.102, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/ptp/ptp_ocp.c", i32 1823, i32 8}
!217 = !{ptr @dev_attr_serialnum, !216, !"dev_attr_serialnum", i1 false, i1 false}
!218 = !{ptr @.str.103, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/ptp/ptp_ocp.c", i32 1821, i32 25}
!220 = !{ptr @.str.104, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/ptp/ptp_ocp.c", i32 1838, i32 8}
!222 = !{ptr @dev_attr_gnss_sync, !221, !"dev_attr_gnss_sync", i1 false, i1 false}
!223 = !{ptr @.str.105, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/ptp/ptp_ocp.c", i32 1832, i32 25}
!225 = !{ptr @.str.106, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/ptp/ptp_ocp.c", i32 1834, i32 25}
!227 = !{ptr @.str.107, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/ptp/ptp_ocp.c", i32 1967, i32 8}
!229 = !{ptr @dev_attr_clock_source, !228, !"dev_attr_clock_source", i1 false, i1 false}
!230 = !{ptr @.str.108, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/ptp/ptp_ocp.c", i32 1946, i32 25}
!232 = !{ptr @.str.109, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/ptp/ptp_ocp.c", i32 451, i32 12}
!234 = !{ptr @.str.110, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/ptp/ptp_ocp.c", i32 452, i32 12}
!236 = !{ptr @.str.111, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/ptp/ptp_ocp.c", i32 453, i32 12}
!238 = !{ptr @.str.112, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/ptp/ptp_ocp.c", i32 454, i32 12}
!240 = !{ptr @.str.113, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/ptp/ptp_ocp.c", i32 455, i32 12}
!242 = !{ptr @.str.114, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/ptp/ptp_ocp.c", i32 456, i32 12}
!244 = !{ptr @.str.115, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/ptp/ptp_ocp.c", i32 457, i32 12}
!246 = !{ptr @.str.116, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/ptp/ptp_ocp.c", i32 458, i32 12}
!248 = !{ptr @.str.117, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/ptp/ptp_ocp.c", i32 459, i32 12}
!250 = !{ptr @ptp_ocp_clock, !251, !"ptp_ocp_clock", i1 false, i1 false}
!251 = !{!"../drivers/ptp/ptp_ocp.c", i32 450, i32 28}
!252 = !{ptr @.str.118, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/ptp/ptp_ocp.c", i32 1975, i32 8}
!254 = !{ptr @dev_attr_available_clock_sources, !253, !"dev_attr_available_clock_sources", i1 false, i1 false}
!255 = !{ptr @.str.119, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/ptp/ptp_ocp.c", i32 518, i32 38}
!257 = !{ptr @.str.120, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/ptp/ptp_ocp.c", i32 521, i32 37}
!259 = !{ptr @.str.121, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/ptp/ptp_ocp.c", i32 1792, i32 8}
!261 = !{ptr @dev_attr_sma1, !260, !"dev_attr_sma1", i1 false, i1 false}
!262 = !{ptr @ptp_ocp_sma_map, !263, !"ptp_ocp_sma_map", i1 false, i1 false}
!263 = !{!"../drivers/ptp/ptp_ocp.c", i32 1533, i32 3}
!264 = !{ptr @.str.122, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/ptp/ptp_ocp.c", i32 1575, i32 26}
!266 = !{ptr @.str.123, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/ptp/ptp_ocp.c", i32 1560, i32 26}
!268 = !{ptr @.str.124, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/ptp/ptp_ocp.c", i32 475, i32 12}
!270 = !{ptr @.str.125, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/ptp/ptp_ocp.c", i32 476, i32 12}
!272 = !{ptr @.str.126, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/ptp/ptp_ocp.c", i32 477, i32 12}
!274 = !{ptr @.str.127, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/ptp/ptp_ocp.c", i32 478, i32 12}
!276 = !{ptr @.str.128, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/ptp/ptp_ocp.c", i32 479, i32 12}
!278 = !{ptr @ptp_ocp_sma_out, !279, !"ptp_ocp_sma_out", i1 false, i1 false}
!279 = !{!"../drivers/ptp/ptp_ocp.c", i32 474, i32 28}
!280 = !{ptr @.str.129, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/ptp/ptp_ocp.c", i32 465, i32 12}
!282 = !{ptr @.str.130, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/ptp/ptp_ocp.c", i32 466, i32 12}
!284 = !{ptr @.str.131, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/ptp/ptp_ocp.c", i32 467, i32 12}
!286 = !{ptr @.str.132, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/ptp/ptp_ocp.c", i32 468, i32 12}
!288 = !{ptr @ptp_ocp_sma_in, !289, !"ptp_ocp_sma_in", i1 false, i1 false}
!289 = !{!"../drivers/ptp/ptp_ocp.c", i32 463, i32 28}
!290 = !{ptr @.str.133, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/ptp/ptp_ocp.c", i32 1737, i32 3}
!292 = !{ptr @.str.134, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @ptp_ocp_sma_store._entry, !291, !"_entry", i1 false, i1 false}
!294 = !{ptr @ptp_ocp_sma_store._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.135, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/ptp/ptp_ocp.c", i32 1608, i32 18}
!297 = !{ptr @.str.136, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/ptp/ptp_ocp.c", i32 1612, i32 18}
!299 = !{ptr @.str.137, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/ptp/ptp_ocp.c", i32 1793, i32 8}
!301 = !{ptr @dev_attr_sma2, !300, !"dev_attr_sma2", i1 false, i1 false}
!302 = !{ptr @.str.138, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/ptp/ptp_ocp.c", i32 1794, i32 8}
!304 = !{ptr @dev_attr_sma3, !303, !"dev_attr_sma3", i1 false, i1 false}
!305 = !{ptr @.str.139, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/ptp/ptp_ocp.c", i32 1795, i32 8}
!307 = !{ptr @dev_attr_sma4, !306, !"dev_attr_sma4", i1 false, i1 false}
!308 = !{ptr @.str.140, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/ptp/ptp_ocp.c", i32 1803, i32 8}
!310 = !{ptr @dev_attr_available_sma_inputs, !309, !"dev_attr_available_sma_inputs", i1 false, i1 false}
!311 = !{ptr @.str.141, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/ptp/ptp_ocp.c", i32 1811, i32 8}
!313 = !{ptr @dev_attr_available_sma_outputs, !312, !"dev_attr_available_sma_outputs", i1 false, i1 false}
!314 = !{ptr @.str.142, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/ptp/ptp_ocp.c", i32 1934, i32 8}
!316 = !{ptr @dev_attr_irig_b_mode, !315, !"dev_attr_irig_b_mode", i1 false, i1 false}
!317 = !{ptr @.str.143, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/ptp/ptp_ocp.c", i32 1904, i32 25}
!319 = !{ptr @.str.144, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/ptp/ptp_ocp.c", i32 1866, i32 8}
!321 = !{ptr @dev_attr_utc_tai_offset, !320, !"dev_attr_utc_tai_offset", i1 false, i1 false}
!322 = !{ptr @.str.145, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/ptp/ptp_ocp.c", i32 1894, i32 8}
!324 = !{ptr @dev_attr_ts_window_adjust, !323, !"dev_attr_ts_window_adjust", i1 false, i1 false}
!325 = !{ptr @.str.146, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/ptp/ptp_ocp.c", i32 2212, i32 22}
!327 = !{ptr @ptp_ocp_debugfs_root, !328, !"ptp_ocp_debugfs_root", i1 false, i1 false}
!328 = !{!"../drivers/ptp/ptp_ocp.c", i32 2203, i32 23}
!329 = !{ptr @ptp_ocp_summary_fops, !330, !"ptp_ocp_summary_fops", i1 false, i1 false}
!330 = !{!"../drivers/ptp/ptp_ocp.c", i32 2201, i32 1}
!331 = !{ptr @.str.147, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/ptp/ptp_ocp.c", i32 2043, i32 16}
!333 = !{ptr @.str.148, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/ptp/ptp_ocp.c", i32 2046, i32 16}
!335 = !{ptr @.str.149, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/ptp/ptp_ocp.c", i32 2049, i32 16}
!337 = !{ptr @.str.150, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/ptp/ptp_ocp.c", i32 2052, i32 16}
!339 = !{ptr @.str.151, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/ptp/ptp_ocp.c", i32 2055, i32 16}
!341 = !{ptr @.str.152, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/ptp/ptp_ocp.c", i32 2061, i32 17}
!343 = !{ptr @.str.153, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/ptp/ptp_ocp.c", i32 2061, i32 39}
!345 = !{ptr @.str.154, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/ptp/ptp_ocp.c", i32 2062, i32 12}
!347 = !{ptr @.str.155, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/ptp/ptp_ocp.c", i32 2062, i32 20}
!349 = !{ptr @.str.156, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/ptp/ptp_ocp.c", i32 2068, i32 45}
!351 = !{ptr @.str.157, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/ptp/ptp_ocp.c", i32 2086, i32 39}
!353 = !{ptr @.str.158, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/ptp/ptp_ocp.c", i32 2099, i32 17}
!355 = !{ptr @.str.159, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/ptp/ptp_ocp.c", i32 2107, i32 17}
!357 = !{ptr @.str.160, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/ptp/ptp_ocp.c", i32 2107, i32 50}
!359 = !{ptr @.str.161, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/ptp/ptp_ocp.c", i32 2115, i32 17}
!361 = !{ptr @.str.162, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/ptp/ptp_ocp.c", i32 2123, i32 50}
!363 = !{ptr @.str.163, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/ptp/ptp_ocp.c", i32 2130, i32 17}
!365 = !{ptr @.str.164, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/ptp/ptp_ocp.c", i32 2130, i32 41}
!367 = !{ptr @.str.165, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/ptp/ptp_ocp.c", i32 2146, i32 9}
!369 = !{ptr @.str.166, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/ptp/ptp_ocp.c", i32 2159, i32 16}
!371 = distinct !{null, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/ptp/ptp_ocp.c", i32 2165, i32 15}
!373 = !{ptr @.str.168, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/ptp/ptp_ocp.c", i32 2169, i32 16}
!375 = !{ptr @.str.169, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/ptp/ptp_ocp.c", i32 2169, i32 40}
!377 = !{ptr @.str.170, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/ptp/ptp_ocp.c", i32 2170, i32 33}
!379 = !{ptr @.str.171, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/ptp/ptp_ocp.c", i32 2170, i32 42}
!381 = !{ptr @.str.172, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/ptp/ptp_ocp.c", i32 2173, i32 16}
!383 = !{ptr @.str.173, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/ptp/ptp_ocp.c", i32 2176, i32 16}
!385 = !{ptr @.str.174, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/ptp/ptp_ocp.c", i32 2188, i32 17}
!387 = !{ptr @.str.175, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/ptp/ptp_ocp.c", i32 2190, i32 17}
!389 = !{ptr @.str.176, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/ptp/ptp_ocp.c", i32 2190, i32 58}
!391 = !{ptr @.str.177, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/ptp/ptp_ocp.c", i32 2193, i32 17}
!393 = !{ptr @ptp_ocp_info.nmea_baud, !394, !"nmea_baud", i1 false, i1 false}
!394 = !{!"../drivers/ptp/ptp_ocp.c", i32 2383, i32 13}
!395 = !{ptr @.str.178, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/ptp/ptp_ocp.c", i32 2398, i32 3}
!397 = !{ptr @.str.179, !396, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @.str.180, !396, !"<string literal>", i1 false, i1 false}
!399 = !{ptr @ptp_ocp_info._entry, !396, !"_entry", i1 false, i1 false}
!400 = !{ptr @ptp_ocp_info._entry_ptr, !396, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.182, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/ptp/ptp_ocp.c", i32 2400, i32 4}
!403 = !{ptr @ptp_ocp_info._entry.181, !402, !"_entry", i1 false, i1 false}
!404 = !{ptr @ptp_ocp_info._entry_ptr.183, !402, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.185, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/ptp/ptp_ocp.c", i32 2403, i32 4}
!407 = !{ptr @ptp_ocp_info._entry.184, !406, !"_entry", i1 false, i1 false}
!408 = !{ptr @ptp_ocp_info._entry_ptr.186, !406, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.187, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/ptp/ptp_ocp.c", i32 2361, i32 2}
!411 = !{ptr @.str.188, !410, !"<string literal>", i1 false, i1 false}
!412 = !{ptr @ptp_ocp_phc_info._entry, !410, !"_entry", i1 false, i1 false}
!413 = !{ptr @ptp_ocp_phc_info._entry_ptr, !410, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @.str.190, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/ptp/ptp_ocp.c", i32 2368, i32 3}
!416 = !{ptr @ptp_ocp_phc_info._entry.189, !415, !"_entry", i1 false, i1 false}
!417 = !{ptr @ptp_ocp_phc_info._entry_ptr.191, !415, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @.str.192, !415, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @.str.193, !415, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @.str.194, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/ptp/ptp_ocp.c", i32 890, i32 11}
!422 = !{ptr @.str.195, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/ptp/ptp_ocp.c", i32 890, i32 23}
!424 = !{ptr @.str.196, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/ptp/ptp_ocp.c", i32 890, i32 35}
!426 = !{ptr @.str.197, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/ptp/ptp_ocp.c", i32 891, i32 3}
!428 = !{ptr @.str.198, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/ptp/ptp_ocp.c", i32 891, i32 10}
!430 = !{ptr @.str.199, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/ptp/ptp_ocp.c", i32 891, i32 21}
!432 = !{ptr @.str.200, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/ptp/ptp_ocp.c", i32 891, i32 31}
!434 = !{ptr @ptp_ocp_tod_info.proto_name, !435, !"proto_name", i1 false, i1 false}
!435 = !{!"../drivers/ptp/ptp_ocp.c", i32 889, i32 28}
!436 = !{ptr @.str.201, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/ptp/ptp_ocp.c", i32 894, i32 3}
!438 = !{ptr @.str.202, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/ptp/ptp_ocp.c", i32 894, i32 10}
!440 = !{ptr @.str.203, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/ptp/ptp_ocp.c", i32 894, i32 22}
!442 = !{ptr @.str.204, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/ptp/ptp_ocp.c", i32 894, i32 29}
!444 = !{ptr @.str.205, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/ptp/ptp_ocp.c", i32 894, i32 40}
!446 = !{ptr @.str.206, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/ptp/ptp_ocp.c", i32 894, i32 51}
!448 = !{ptr @ptp_ocp_tod_info.gnss_name, !449, !"gnss_name", i1 false, i1 false}
!449 = !{!"../drivers/ptp/ptp_ocp.c", i32 893, i32 28}
!450 = !{ptr @.str.207, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/ptp/ptp_ocp.c", i32 900, i32 2}
!452 = !{ptr @.str.208, !451, !"<string literal>", i1 false, i1 false}
!453 = !{ptr @ptp_ocp_tod_info._entry, !451, !"_entry", i1 false, i1 false}
!454 = !{ptr @ptp_ocp_tod_info._entry_ptr, !451, !"_entry_ptr", i1 false, i1 false}
!455 = !{ptr @.str.210, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/ptp/ptp_ocp.c", i32 906, i32 2}
!457 = !{ptr @ptp_ocp_tod_info._entry.209, !456, !"_entry", i1 false, i1 false}
!458 = !{ptr @ptp_ocp_tod_info._entry_ptr.211, !456, !"_entry_ptr", i1 false, i1 false}
!459 = !{ptr @.str.213, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/ptp/ptp_ocp.c", i32 907, i32 2}
!461 = !{ptr @ptp_ocp_tod_info._entry.212, !460, !"_entry", i1 false, i1 false}
!462 = !{ptr @ptp_ocp_tod_info._entry_ptr.214, !460, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @.str.215, !460, !"<string literal>", i1 false, i1 false}
!464 = !{ptr @.str.217, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/ptp/ptp_ocp.c", i32 912, i32 3}
!466 = !{ptr @ptp_ocp_tod_info._entry.216, !465, !"_entry", i1 false, i1 false}
!467 = !{ptr @ptp_ocp_tod_info._entry_ptr.218, !465, !"_entry_ptr", i1 false, i1 false}
!468 = !{ptr @.str.220, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/ptp/ptp_ocp.c", i32 915, i32 2}
!470 = !{ptr @ptp_ocp_tod_info._entry.219, !469, !"_entry", i1 false, i1 false}
!471 = !{ptr @ptp_ocp_tod_info._entry_ptr.221, !469, !"_entry_ptr", i1 false, i1 false}
!472 = !{ptr @.str.223, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/ptp/ptp_ocp.c", i32 918, i32 2}
!474 = !{ptr @ptp_ocp_tod_info._entry.222, !473, !"_entry", i1 false, i1 false}
!475 = !{ptr @ptp_ocp_tod_info._entry_ptr.224, !473, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @.str.226, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/ptp/ptp_ocp.c", i32 921, i32 2}
!478 = !{ptr @ptp_ocp_tod_info._entry.225, !477, !"_entry", i1 false, i1 false}
!479 = !{ptr @ptp_ocp_tod_info._entry_ptr.227, !477, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @.str.229, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/ptp/ptp_ocp.c", i32 922, i32 2}
!482 = !{ptr @ptp_ocp_tod_info._entry.228, !481, !"_entry", i1 false, i1 false}
!483 = !{ptr @ptp_ocp_tod_info._entry_ptr.230, !481, !"_entry_ptr", i1 false, i1 false}
!484 = !{ptr @.str.231, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/ptp/ptp_ocp.c", i32 2377, i32 3}
!486 = !{ptr @.str.232, !485, !"<string literal>", i1 false, i1 false}
!487 = !{ptr @ptp_ocp_serial_info._entry, !485, !"_entry", i1 false, i1 false}
!488 = !{ptr @ptp_ocp_serial_info._entry_ptr, !485, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @.str.233, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/ptp/ptp_ocp.c", i32 31, i32 11}
!491 = !{ptr @timecard_class, !492, !"timecard_class", i1 false, i1 false}
!492 = !{!"../drivers/ptp/ptp_ocp.c", i32 29, i32 21}
!493 = !{ptr @.str.234, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/ptp/ptp_ocp.c", i32 2603, i32 9}
!495 = !{ptr @ptp_ocp_init.__key, !496, !"__key", i1 false, i1 false}
!496 = !{!"../drivers/ptp/ptp_ocp.c", i32 2604, i32 8}
!497 = !{ptr @.str.235, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/ptp/ptp_ocp.c", i32 2608, i32 9}
!499 = !{ptr @.str.236, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/ptp/ptp_ocp.c", i32 2613, i32 9}
!501 = !{ptr @.str.237, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/ptp/ptp_ocp.c", i32 2626, i32 2}
!503 = !{ptr @.str.238, !502, !"<string literal>", i1 false, i1 false}
!504 = !{ptr @ptp_ocp_init._entry, !502, !"_entry", i1 false, i1 false}
!505 = !{ptr @ptp_ocp_init._entry_ptr, !502, !"_entry_ptr", i1 false, i1 false}
!506 = !{i32 1, !"wchar_size", i32 2}
!507 = !{i32 1, !"min_enum_size", i32 4}
!508 = !{i32 8, !"branch-target-enforcement", i32 0}
!509 = !{i32 8, !"sign-return-address", i32 0}
!510 = !{i32 8, !"sign-return-address-all", i32 0}
!511 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!512 = !{i32 7, !"uwtable", i32 1}
!513 = !{i32 7, !"frame-pointer", i32 2}
!514 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!515 = !{i64 5800328}
!516 = !{i64 2153340677}
!517 = !{i64 2153342032}
!518 = !{i64 5799910}
!519 = !{i8 0, i8 2}
!520 = !{!"auto-init"}
!521 = !{!"branch_weights", i32 2000, i32 1}
!522 = !{i64 1410533}
