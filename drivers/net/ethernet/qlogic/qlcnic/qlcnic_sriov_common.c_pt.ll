; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.qlcnic_nic_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qlcnic_hardware_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.qlcnic_mailbox_metadata = type { i32, i32, i32 }
%struct.qlcnic_adapter = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, i8, i8, i8, [6 x i8], i64, i8, i8, i8, [128 x i32], i8, ptr, ptr, ptr, %struct.qlcnic_adapter_stats, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.qlcnic_filter_hash, %struct.qlcnic_filter_hash, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, ptr }
%struct.qlcnic_adapter_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.qlcnic_filter_hash = type { ptr, i8, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.qlcnic_hardware_context = type { ptr, ptr, i32, %struct.rwlock_t, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i32, i32, i32, [3 x i32], i32, i32, i32, i32, ptr, %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_fw_dump, %struct.qlcnic_fdt, %struct.qlc_83xx_reset, %struct.qlc_83xx_idc, ptr, ptr, ptr, ptr, ptr, [5 x i32], [4 x i32], ptr, i8, [6 x i8], i8, ptr, i32, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.qlcnic_nic_intr_coalesce = type { i8, i8, i16, i16, i16, i16, i16, i32 }
%struct.qlcnic_fw_dump = type { i8, i8, i32, i32, ptr, ptr, i32, ptr, i8, i32, i32, i32, i32 }
%struct.qlcnic_fdt = type { i32, i16, i16, i16, i16, [16 x i8], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i16, i8, [65 x i8] }
%struct.qlc_83xx_reset = type { ptr, i32, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, i8, i8 }
%struct.qlc_83xx_idc = type { ptr, i64, i64, i32, i32, i32, i8, i8, i8, i8, i8, i8, ptr }
%struct.qlcnic_sriov = type { i16, i8, i8, i8, i16, ptr, i16, %struct.qlcnic_resources, %struct.qlcnic_back_channel, ptr }
%struct.qlcnic_resources = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16 }
%struct.qlcnic_back_channel = type { i16, ptr, ptr, ptr, ptr, %struct.list_head, %struct.work_struct, %struct.spinlock }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.143, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.143 = type { ptr }
%struct.qlcnic_vf_info = type { i8, i16, i16, ptr, i32, i32, %struct.completion, %struct.work_struct, %struct.work_struct, %struct.mutex, ptr, ptr, %struct.qlcnic_trans_list, %struct.qlcnic_trans_list, ptr, ptr, %struct.spinlock }
%struct.qlcnic_trans_list = type { %struct.spinlock, %struct.list_head, i32 }
%struct.qlcnic_vport = type { i16, i16, i16, i16, i8, i8, i8, [6 x i8] }
%struct.qlcnic_async_cmd = type { %struct.list_head, ptr }
%struct.qlcnic_cmd_args = type { %struct.completion, %struct.list_head, %struct._cdrp_cmd, %struct._cdrp_cmd, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct._cdrp_cmd = type { i32, ptr }
%struct.qlcnic_bc_hdr = type { i8, i8, i8, i8, i16, i8, i8, i64 }
%struct.qlcnic_info = type { i16, i16, i16, i16, i32, i8, i16, i16, i16, i16, i16, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16 }
%struct.qlcnic_bc_trans = type { i8, i8, i8, i8, i16, i16, i16, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, %struct.completion, ptr }
%struct.qlcnic_bc_payload = type { [126 x i64] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.qlcnic_mailbox = type { ptr, ptr, ptr, %struct.work_struct, %struct.completion, %struct.list_head, i32, %struct.spinlock, %struct.spinlock, i32, i32 }
%struct.qlcnic_intrpt_config = type { i8, i8, i16, i32 }
%struct.qlcnic_mac_vlan_list = type { %struct.list_head, [8 x i8], i16, i32 }
%struct.qlcnic_host_sds_ring = type { i32, i32, ptr, ptr, ptr, ptr, %struct.napi_struct, [3 x %struct.list_head], ptr, i32, i32, [28 x i8], [72 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bc-trans\00", [23 x i8] zeroinitializer }, align 32
@qlcnic_sriov_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 170, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot create bc-trans workqueue\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qlcnic_sriov_init\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qlcnic_sriov_init._entry_ptr = internal global ptr @qlcnic_sriov_init._entry, section ".printk_index", align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"async\00", [26 x i8] zeroinitializer }, align 32
@qlcnic_sriov_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 179, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot create async workqueue\0A\00", [33 x i8] zeroinitializer }, align 32
@qlcnic_sriov_init._entry_ptr.10 = internal global ptr @qlcnic_sriov_init._entry.8, section ".printk_index", align 4
@qlcnic_sriov_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&bc->vf_async_work)\00", [58 x i8] zeroinitializer }, align 32
@qlcnic_sriov_init.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&bc->queue_lock\00", [16 x i8] zeroinitializer }, align 32
@qlcnic_sriov_init.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&vf->send_cmd_lock\00", [45 x i8] zeroinitializer }, align 32
@qlcnic_sriov_init.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&vf->vlan_list_lock\00", [44 x i8] zeroinitializer }, align 32
@qlcnic_sriov_init.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&vf->rcv_act.lock\00", [46 x i8] zeroinitializer }, align 32
@qlcnic_sriov_init.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&vf->rcv_pend.lock\00", [45 x i8] zeroinitializer }, align 32
@qlcnic_sriov_init.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&vf->trans_work)\00", [61 x i8] zeroinitializer }, align 32
@qlcnic_sriov_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 217, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"MAC Address %pM is configured for VF %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qlcnic_sriov_init._entry_ptr.27 = internal global ptr @qlcnic_sriov_init._entry.24, section ".printk_index", align 4
@qlcnic_sriov_get_vf_vport_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 372, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get vport info, err=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qlcnic_sriov_get_vf_vport_info\00", [33 x i8] zeroinitializer }, align 32
@qlcnic_sriov_get_vf_vport_info._entry_ptr = internal global ptr @qlcnic_sriov_get_vf_vport_info._entry, section ".printk_index", align 4
@qlcnic_sriov_get_vf_vport_info._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 417, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [305 x i8], [79 x i8] } { [305 x i8] c"\0A\09min_tx_bw: %d, max_tx_bw: %d max_tx_ques: %d,\0A\09max_tx_mac_filters: %d max_rx_mcast_mac_filters: %d,\0A\09max_rx_ucast_mac_filters: 0x%x, max_rx_ip_addr: %d,\0A\09max_rx_lro_flow: %d max_rx_status_rings: %d,\0A\09max_rx_buf_rings: %d, max_rx_ques: %d, max_tx_vlan_keys %d\0A\09local_ipv6_addr: %d, remote_ipv6_addr: %d\0A\00", [79 x i8] zeroinitializer }, align 32
@qlcnic_sriov_get_vf_vport_info._entry_ptr.32 = internal global ptr @qlcnic_sriov_get_vf_vport_info._entry.30, section ".printk_index", align 4
@qlcnic_sriov_vf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 638, ptr @.str.35, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to read mac addr\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qlcnic_sriov_vf_init\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@qlcnic_sriov_vf_init._entry_ptr = internal global ptr @qlcnic_sriov_vf_init._entry, section ".printk_index", align 4
@qlcnic_sriov_vf_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&adapter->idc_aen_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@qlcnic_sriov_vf_init.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&adapter->idc_aen_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@qlcnic_sriov_vf_set_ops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 653, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"HAL Version: %d Non Privileged SRIOV function\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qlcnic_sriov_vf_set_ops\00", [40 x i8] zeroinitializer }, align 32
@qlcnic_sriov_vf_set_ops._entry_ptr = internal global ptr @qlcnic_sriov_vf_set_ops._entry, section ".printk_index", align 4
@qlcnic_sriov_vf_ops = internal global { %struct.qlcnic_nic_template, [48 x i8] } { %struct.qlcnic_nic_template { ptr @qlcnic_config_bridged_mode, ptr @qlcnic_config_led, ptr null, ptr null, ptr null, ptr @qlcnic_sriov_vf_cancel_fw_work, ptr @qlcnic_83xx_napi_add, ptr @qlcnic_83xx_napi_del, ptr @qlcnic_83xx_config_ipaddr, ptr @qlcnic_83xx_clear_legacy_intr, ptr @qlcnic_sriov_vf_shutdown, ptr @qlcnic_sriov_vf_resume }, [48 x i8] zeroinitializer }, align 32
@qlcnic_sriov_vf_hw_ops = internal global { %struct.qlcnic_hardware_ops, [44 x i8] } { %struct.qlcnic_hardware_ops { ptr @qlcnic_83xx_read_crb, ptr @qlcnic_83xx_write_crb, ptr @qlcnic_83xx_rd_reg_indirect, ptr @qlcnic_83xx_wrt_reg_indirect, ptr null, ptr @qlcnic_83xx_get_mac_address, ptr @qlcnic_83xx_setup_intr, ptr @qlcnic_83xx_alloc_mbx_args, ptr @qlcnic_sriov_issue_cmd, ptr @qlcnic_83xx_get_func_no, ptr @qlcnic_83xx_cam_lock, ptr @qlcnic_83xx_cam_unlock, ptr null, ptr null, ptr @qlcnic_83xx_process_rcv_ring_diag, ptr @qlcnic_83xx_create_rx_ctx, ptr @qlcnic_83xx_create_tx_ctx, ptr @qlcnic_83xx_del_rx_ctx, ptr @qlcnic_83xx_del_tx_ctx, ptr @qlcnic_83xx_setup_link_event, ptr @qlcnic_83xx_get_nic_info, ptr @qlcnic_83xx_get_pci_info, ptr @qlcnic_83xx_set_nic_info, ptr @qlcnic_83xx_sre_macaddr_change, ptr @qlcnic_83xx_napi_enable, ptr @qlcnic_83xx_napi_disable, ptr @qlcnic_83xx_config_intr_coal, ptr @qlcnic_83xx_config_rss, ptr @qlcnic_83xx_config_hw_lro, ptr null, ptr null, ptr @qlcnic_83xx_nic_set_promisc, ptr @qlcnic_83xx_change_l2_filter, ptr @qlcnic_83xx_get_port_info, ptr null, ptr @qlcnic_sriov_vf_free_mac_list, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qlcnic_83xx_enable_sds_intr, ptr @qlcnic_83xx_disable_sds_intr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qlcnic_83xx_encap_rx_offload, ptr @qlcnic_83xx_encap_tx_offload }, [44 x i8] zeroinitializer }, align 32
@qlcnic_83xx_reg_tbl = external dso_local constant [0 x i32], align 4
@qlcnic_83xx_ext_reg_tbl = external dso_local constant [0 x i32], align 4
@qlcnic_sriov_cfg_bc_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 1343, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to %s bc events, err=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qlcnic_sriov_cfg_bc_intr\00", [39 x i8] zeroinitializer }, align 32
@qlcnic_sriov_cfg_bc_intr._entry_ptr = internal global ptr @qlcnic_sriov_cfg_bc_intr._entry, section ".printk_index", align 4
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@qlcnic_sriov_vf_set_multi.bcast_addr = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@qlcnic_sriov_cfg_vf_guest_vlan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 2077, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to configure guest VLAN, err=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qlcnic_sriov_cfg_vf_guest_vlan\00", [33 x i8] zeroinitializer }, align 32
@qlcnic_sriov_cfg_vf_guest_vlan._entry_ptr = internal global ptr @qlcnic_sriov_cfg_vf_guest_vlan._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@qlcnic_sriov_channel_cfg_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 1478, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed bc channel %s %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qlcnic_sriov_channel_cfg_cmd\00", [35 x i8] zeroinitializer }, align 32
@qlcnic_sriov_channel_cfg_cmd._entry_ptr = internal global ptr @qlcnic_sriov_channel_cfg_cmd._entry, section ".printk_index", align 4
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"term\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"init\00", [27 x i8] zeroinitializer }, align 32
@qlcnic_use_msi_x = external dso_local local_unnamed_addr global i32, align 4
@qlcnic_use_msi = external dso_local local_unnamed_addr global i32, align 4
@qlcnic_sriov_setup_vf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 537, ptr @.str.35, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Device does not support MSI interrupts\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qlcnic_sriov_setup_vf\00", [42 x i8] zeroinitializer }, align 32
@qlcnic_sriov_setup_vf._entry_ptr = internal global ptr @qlcnic_sriov_setup_vf._entry, section ".printk_index", align 4
@qlcnic_sriov_setup_vf._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.4, i32 545, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to setup interrupt\0A\00", [37 x i8] zeroinitializer }, align 32
@qlcnic_sriov_setup_vf._entry_ptr.56 = internal global ptr @qlcnic_sriov_setup_vf._entry.54, section ".printk_index", align 4
@qlcnic_sriov_setup_vf._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.4, i32 579, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: XGbE port initialized\0A\00", [37 x i8] zeroinitializer }, align 32
@qlcnic_sriov_setup_vf._entry_ptr.59 = internal global ptr @qlcnic_sriov_setup_vf._entry.57, section ".printk_index", align 4
@qlcnic_sriov_vf_init_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.4, i32 518, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HAL Version: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qlcnic_sriov_vf_init_driver\00", [36 x i8] zeroinitializer }, align 32
@qlcnic_sriov_vf_init_driver._entry_ptr = internal global ptr @qlcnic_sriov_vf_init_driver._entry, section ".printk_index", align 4
@qlcnic_sriov_get_vf_acl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.4, i32 479, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get ACL, err=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qlcnic_sriov_get_vf_acl\00", [40 x i8] zeroinitializer }, align 32
@qlcnic_sriov_get_vf_acl._entry_ptr = internal global ptr @qlcnic_sriov_get_vf_acl._entry, section ".printk_index", align 4
@qlcnic_sriov_set_guest_vlan_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.4, i32 444, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Number of allowed Guest VLANs = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qlcnic_sriov_set_guest_vlan_mode\00", [63 x i8] zeroinitializer }, align 32
@qlcnic_sriov_set_guest_vlan_mode._entry_ptr = internal global ptr @qlcnic_sriov_set_guest_vlan_mode._entry, section ".printk_index", align 4
@qlcnic_sriov_vf_handle_dev_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.4, i32 1751, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Reinitialization of VF 0x%x done after FW reset\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qlcnic_sriov_vf_handle_dev_ready\00", [63 x i8] zeroinitializer }, align 32
@qlcnic_sriov_vf_handle_dev_ready._entry_ptr = internal global ptr @qlcnic_sriov_vf_handle_dev_ready._entry, section ".printk_index", align 4
@qlcnic_sriov_vf_handle_dev_ready._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.4, i32 1755, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: Reinitialization of VF 0x%x failed after FW reset\0A\00", [41 x i8] zeroinitializer }, align 32
@qlcnic_sriov_vf_handle_dev_ready._entry_ptr.70 = internal global ptr @qlcnic_sriov_vf_handle_dev_ready._entry.68, section ".printk_index", align 4
@qlcnic_sriov_vf_handle_dev_ready._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.4, i32 1758, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Current state 0x%x after FW reset\0A\00", [61 x i8] zeroinitializer }, align 32
@qlcnic_sriov_vf_handle_dev_ready._entry_ptr.73 = internal global ptr @qlcnic_sriov_vf_handle_dev_ready._entry.71, section ".printk_index", align 4
@qlcnic_sriov_vf_handle_context_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.4, i32 1781, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Resetting context, wait here to check if FW is in failed state\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"qlcnic_sriov_vf_handle_context_reset\00", [59 x i8] zeroinitializer }, align 32
@qlcnic_sriov_vf_handle_context_reset._entry_ptr = internal global ptr @qlcnic_sriov_vf_handle_context_reset._entry, section ".printk_index", align 4
@qlcnic_sriov_vf_handle_context_reset._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.4, i32 1795, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"Device context resets have exceeded the threshold, device interface will be shutdown\0A\00", [42 x i8] zeroinitializer }, align 32
@qlcnic_sriov_vf_handle_context_reset._entry_ptr.78 = internal global ptr @qlcnic_sriov_vf_handle_context_reset._entry.76, section ".printk_index", align 4
@qlcnic_sriov_vf_handle_context_reset._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.4, i32 1799, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Resetting context of VF 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@qlcnic_sriov_vf_handle_context_reset._entry_ptr.81 = internal global ptr @qlcnic_sriov_vf_handle_context_reset._entry.79, section ".printk_index", align 4
@qlcnic_sriov_vf_handle_context_reset._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.75, ptr @.str.4, i32 1801, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Context reset count %d for VF 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@qlcnic_sriov_vf_handle_context_reset._entry_ptr.84 = internal global ptr @qlcnic_sriov_vf_handle_context_reset._entry.82, section ".printk_index", align 4
@qlcnic_sriov_vf_handle_context_reset._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.75, ptr @.str.4, i32 1813, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Done resetting context for VF 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@qlcnic_sriov_vf_handle_context_reset._entry_ptr.87 = internal global ptr @qlcnic_sriov_vf_handle_context_reset._entry.85, section ".printk_index", align 4
@qlcnic_sriov_vf_handle_context_reset._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.75, ptr @.str.4, i32 1816, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Reinitialization of VF 0x%x failed\0A\00", [56 x i8] zeroinitializer }, align 32
@qlcnic_sriov_vf_handle_context_reset._entry_ptr.90 = internal global ptr @qlcnic_sriov_vf_handle_context_reset._entry.88, section ".printk_index", align 4
@qlcnic_sriov_vf_handle_context_reset._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.75, ptr @.str.4, i32 1818, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Current state 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@qlcnic_sriov_vf_handle_context_reset._entry_ptr.93 = internal global ptr @qlcnic_sriov_vf_handle_context_reset._entry.91, section ".printk_index", align 4
@qlcnic_sriov_vf_idc_init_reset_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.4, i32 1877, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Firmware hang detected by VF 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"qlcnic_sriov_vf_idc_init_reset_state\00", [59 x i8] zeroinitializer }, align 32
@qlcnic_sriov_vf_idc_init_reset_state._entry_ptr = internal global ptr @qlcnic_sriov_vf_idc_init_reset_state._entry, section ".printk_index", align 4
@qlcnic_sriov_vf_idc_need_quiescent_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.4, i32 1857, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Device is in quiescent state\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"qlcnic_sriov_vf_idc_need_quiescent_state\00", [55 x i8] zeroinitializer }, align 32
@qlcnic_sriov_vf_idc_need_quiescent_state._entry_ptr = internal global ptr @qlcnic_sriov_vf_idc_need_quiescent_state._entry, section ".printk_index", align 4
@qlcnic_sriov_vf_idc_failed_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.4, i32 1842, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Device is in failed state\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qlcnic_sriov_vf_idc_failed_state\00", [63 x i8] zeroinitializer }, align 32
@qlcnic_sriov_vf_idc_failed_state._entry_ptr = internal global ptr @qlcnic_sriov_vf_idc_failed_state._entry, section ".printk_index", align 4
@qlcnic_sriov_vf_idc_unknown_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.4, i32 1889, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Device in unknown state\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"qlcnic_sriov_vf_idc_unknown_state\00", [62 x i8] zeroinitializer }, align 32
@qlcnic_sriov_vf_idc_unknown_state._entry_ptr = internal global ptr @qlcnic_sriov_vf_idc_unknown_state._entry, section ".printk_index", align 4
@__qlcnic_sriov_issue_cmd._entry = internal constant %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.4, i32 1394, ptr null, ptr null }, align 1
@.str.102 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s: %s: MBX not Ready!(cmd 0x%x) for VF 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__qlcnic_sriov_issue_cmd\00", [39 x i8] zeroinitializer }, align 32
@__qlcnic_sriov_issue_cmd._entry_ptr = internal global ptr @__qlcnic_sriov_issue_cmd._entry, section ".printk_index", align 4
@__qlcnic_sriov_issue_cmd._entry.104 = internal constant %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.4, i32 1401, ptr @.str.5, ptr @.str.6 }, align 1
@.str.105 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"MBX command 0x%x timed out for VF %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__qlcnic_sriov_issue_cmd._entry_ptr.106 = internal global ptr @__qlcnic_sriov_issue_cmd._entry.104, section ".printk_index", align 4
@__qlcnic_sriov_issue_cmd._entry.107 = internal constant %struct.pi_entry { ptr @.str.108, ptr @.str.103, ptr @.str.4, i32 1431, ptr @.str.5, ptr @.str.6 }, align 1
@.str.108 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"MBX command 0x%x failed with err:0x%x for VF %d\0A\00", [47 x i8] zeroinitializer }, align 32
@__qlcnic_sriov_issue_cmd._entry_ptr.109 = internal global ptr @__qlcnic_sriov_issue_cmd._entry.107, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@qlcnic_sriov_post_bc_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.4, i32 331, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%s: Mailbox not available, cmd_op=0x%x, cmd_type=0x%x, pci_func=0x%x, op_mode=0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qlcnic_sriov_post_bc_msg\00", [39 x i8] zeroinitializer }, align 32
@qlcnic_sriov_post_bc_msg._entry_ptr = internal global ptr @qlcnic_sriov_post_bc_msg._entry, section ".printk_index", align 4
@qlcnic_sriov_post_bc_msg._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.4, i32 339, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"%s: Mailbox command timed out, cmd_op=0x%x, cmd_type=0x%x, pci_func=0x%x, op_mode=0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@qlcnic_sriov_post_bc_msg._entry_ptr.114 = internal global ptr @qlcnic_sriov_post_bc_msg._entry.112, section ".printk_index", align 4
@qlcnic_sriov_handle_flr_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.4, i32 1292, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Invalid event to VF. VF should not get FLR event\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qlcnic_sriov_handle_flr_event\00", [34 x i8] zeroinitializer }, align 32
@qlcnic_sriov_handle_flr_event._entry_ptr = internal global ptr @qlcnic_sriov_handle_flr_event._entry, section ".printk_index", align 4
@qlcnic_sriov_bc_mbx_tbl = internal constant { [4 x %struct.qlcnic_mailbox_metadata], [48 x i8] } { [4 x %struct.qlcnic_mailbox_metadata] [%struct.qlcnic_mailbox_metadata { i32 0, i32 2, i32 2 }, %struct.qlcnic_mailbox_metadata { i32 1, i32 2, i32 2 }, %struct.qlcnic_mailbox_metadata { i32 2, i32 3, i32 14 }, %struct.qlcnic_mailbox_metadata { i32 3, i32 2, i32 2 }], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 33840, i64 33856, i64 35888]
@__sancov_gen_cov_switch_values.118 = internal global [5 x i64] [i64 3, i64 16, i64 33840, i64 33856, i64 35888]
@__sancov_gen_cov_switch_values.119 = internal global [5 x i64] [i64 3, i64 16, i64 33840, i64 33856, i64 35888]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 16, i64 33840, i64 33856, i64 35888]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.123 = internal global [8 x i64] [i64 6, i64 8, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.125 = internal global [5 x i64] [i64 3, i64 16, i64 33840, i64 33856, i64 35888]
@__sancov_gen_cov_switch_values.126 = internal global [5 x i64] [i64 3, i64 16, i64 33840, i64 33856, i64 35888]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 26]
@__sancov_gen_cov_switch_values.128 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 166, i32 7 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 169, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 176, i32 7 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 179, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 185, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 186, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 193, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 194, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 197, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 198, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 201, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 215, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 371, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 404, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 638, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 640, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 651, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [20 x i8] c"qlcnic_sriov_vf_ops\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 83, i32 35 }
@___asan_gen_.264 = private unnamed_addr constant [23 x i8] c"qlcnic_sriov_vf_hw_ops\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 46, i32 35 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1341, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant [11 x i8] c"bcast_addr\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1545, i32 18 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 2076, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 87, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1476, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 536, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 545, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 578, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 517, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 478, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 443, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1749, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1753, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1757, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1780, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1794, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1799, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1800, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1813, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1815, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1818, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1876, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1857, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1842, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1889, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1393, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1400, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1429, i32 4 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 328, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 336, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.498 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1291, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant [24 x i8] c"qlcnic_sriov_bc_mbx_tbl\00", align 1
@___asan_gen_.502 = private constant [60 x i8] c"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 95, i32 45 }
@llvm.compiler.used = appending global [164 x ptr] [ptr @__qlcnic_sriov_issue_cmd._entry, ptr @__qlcnic_sriov_issue_cmd._entry.104, ptr @__qlcnic_sriov_issue_cmd._entry.107, ptr @__qlcnic_sriov_issue_cmd._entry_ptr, ptr @__qlcnic_sriov_issue_cmd._entry_ptr.106, ptr @__qlcnic_sriov_issue_cmd._entry_ptr.109, ptr @qlcnic_sriov_cfg_bc_intr._entry, ptr @qlcnic_sriov_cfg_bc_intr._entry_ptr, ptr @qlcnic_sriov_cfg_vf_guest_vlan._entry, ptr @qlcnic_sriov_cfg_vf_guest_vlan._entry_ptr, ptr @qlcnic_sriov_channel_cfg_cmd._entry, ptr @qlcnic_sriov_channel_cfg_cmd._entry_ptr, ptr @qlcnic_sriov_get_vf_acl._entry, ptr @qlcnic_sriov_get_vf_acl._entry_ptr, ptr @qlcnic_sriov_get_vf_vport_info._entry, ptr @qlcnic_sriov_get_vf_vport_info._entry.30, ptr @qlcnic_sriov_get_vf_vport_info._entry_ptr, ptr @qlcnic_sriov_get_vf_vport_info._entry_ptr.32, ptr @qlcnic_sriov_handle_flr_event._entry, ptr @qlcnic_sriov_handle_flr_event._entry_ptr, ptr @qlcnic_sriov_init._entry, ptr @qlcnic_sriov_init._entry.24, ptr @qlcnic_sriov_init._entry.8, ptr @qlcnic_sriov_init._entry_ptr, ptr @qlcnic_sriov_init._entry_ptr.10, ptr @qlcnic_sriov_init._entry_ptr.27, ptr @qlcnic_sriov_post_bc_msg._entry, ptr @qlcnic_sriov_post_bc_msg._entry.112, ptr @qlcnic_sriov_post_bc_msg._entry_ptr, ptr @qlcnic_sriov_post_bc_msg._entry_ptr.114, ptr @qlcnic_sriov_set_guest_vlan_mode._entry, ptr @qlcnic_sriov_set_guest_vlan_mode._entry_ptr, ptr @qlcnic_sriov_setup_vf._entry, ptr @qlcnic_sriov_setup_vf._entry.54, ptr @qlcnic_sriov_setup_vf._entry.57, ptr @qlcnic_sriov_setup_vf._entry_ptr, ptr @qlcnic_sriov_setup_vf._entry_ptr.56, ptr @qlcnic_sriov_setup_vf._entry_ptr.59, ptr @qlcnic_sriov_vf_handle_context_reset._entry, ptr @qlcnic_sriov_vf_handle_context_reset._entry.76, ptr @qlcnic_sriov_vf_handle_context_reset._entry.79, ptr @qlcnic_sriov_vf_handle_context_reset._entry.82, ptr @qlcnic_sriov_vf_handle_context_reset._entry.85, ptr @qlcnic_sriov_vf_handle_context_reset._entry.88, ptr @qlcnic_sriov_vf_handle_context_reset._entry.91, ptr @qlcnic_sriov_vf_handle_context_reset._entry_ptr, ptr @qlcnic_sriov_vf_handle_context_reset._entry_ptr.78, ptr @qlcnic_sriov_vf_handle_context_reset._entry_ptr.81, ptr @qlcnic_sriov_vf_handle_context_reset._entry_ptr.84, ptr @qlcnic_sriov_vf_handle_context_reset._entry_ptr.87, ptr @qlcnic_sriov_vf_handle_context_reset._entry_ptr.90, ptr @qlcnic_sriov_vf_handle_context_reset._entry_ptr.93, ptr @qlcnic_sriov_vf_handle_dev_ready._entry, ptr @qlcnic_sriov_vf_handle_dev_ready._entry.68, ptr @qlcnic_sriov_vf_handle_dev_ready._entry.71, ptr @qlcnic_sriov_vf_handle_dev_ready._entry_ptr, ptr @qlcnic_sriov_vf_handle_dev_ready._entry_ptr.70, ptr @qlcnic_sriov_vf_handle_dev_ready._entry_ptr.73, ptr @qlcnic_sriov_vf_idc_failed_state._entry, ptr @qlcnic_sriov_vf_idc_failed_state._entry_ptr, ptr @qlcnic_sriov_vf_idc_init_reset_state._entry, ptr @qlcnic_sriov_vf_idc_init_reset_state._entry_ptr, ptr @qlcnic_sriov_vf_idc_need_quiescent_state._entry, ptr @qlcnic_sriov_vf_idc_need_quiescent_state._entry_ptr, ptr @qlcnic_sriov_vf_idc_unknown_state._entry, ptr @qlcnic_sriov_vf_idc_unknown_state._entry_ptr, ptr @qlcnic_sriov_vf_init._entry, ptr @qlcnic_sriov_vf_init._entry_ptr, ptr @qlcnic_sriov_vf_init_driver._entry, ptr @qlcnic_sriov_vf_init_driver._entry_ptr, ptr @qlcnic_sriov_vf_set_ops._entry, ptr @qlcnic_sriov_vf_set_ops._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @qlcnic_sriov_init.__key, ptr @.str.11, ptr @qlcnic_sriov_init.__key.12, ptr @.str.13, ptr @qlcnic_sriov_init.__key.14, ptr @.str.15, ptr @qlcnic_sriov_init.__key.16, ptr @.str.17, ptr @qlcnic_sriov_init.__key.18, ptr @.str.19, ptr @qlcnic_sriov_init.__key.20, ptr @.str.21, ptr @qlcnic_sriov_init.__key.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @qlcnic_sriov_vf_init.__key, ptr @.str.36, ptr @qlcnic_sriov_vf_init.__key.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @qlcnic_sriov_vf_ops, ptr @qlcnic_sriov_vf_hw_ops, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @qlcnic_sriov_vf_set_multi.bcast_addr, ptr @.str.45, ptr @.str.46, ptr @init_completion.__key, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @qlcnic_sriov_bc_mbx_tbl], section "llvm.metadata"
@0 = internal global [125 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_init.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_init.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_init.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_init.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_init.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_init.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_get_vf_vport_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_get_vf_vport_info._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 305, i32 384, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_vf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_vf_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_vf_init.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_vf_set_ops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_vf_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_vf_hw_ops to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_cfg_bc_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_vf_set_multi.bcast_addr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_cfg_vf_guest_vlan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_channel_cfg_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_setup_vf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_setup_vf._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_setup_vf._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_vf_init_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_get_vf_acl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_set_guest_vlan_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_vf_handle_dev_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_vf_handle_dev_ready._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_vf_handle_dev_ready._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_vf_handle_context_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_vf_handle_context_reset._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_vf_handle_context_reset._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_vf_handle_context_reset._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_vf_handle_context_reset._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_vf_handle_context_reset._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_vf_handle_context_reset._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_vf_idc_init_reset_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_vf_idc_need_quiescent_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_vf_idc_failed_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_vf_idc_unknown_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_post_bc_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_post_bc_msg._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_handle_flr_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_sriov_bc_mbx_tbl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_sriov_init(ptr noundef %adapter, i32 noundef %num_vfs) local_unnamed_addr #0 align 64 {
entry:
  %stride.i = alloca i16, align 2
  %offset.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 164) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %sriov4 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 54
  %6 = ptrtoint ptr %sriov4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %sriov4, align 8
  %conv = trunc i32 %num_vfs to i8
  %num_vfs5 = getelementptr inbounds %struct.qlcnic_sriov, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %num_vfs5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %num_vfs5, align 2
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_vfs, i32 428) #12
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !226

kcalloc.exit.thread:                              ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %vf_info171 = getelementptr inbounds %struct.qlcnic_sriov, ptr %call7.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %vf_info171 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %vf_info171, align 8
  br label %qlcnic_free_sriov

if.end7.i.i:                                      ; preds = %if.end3
  %11 = extractvalue { i32, i1 } %8, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #16
  %vf_info = getelementptr inbounds %struct.qlcnic_sriov, ptr %call7.i.i, i32 0, i32 9
  %12 = ptrtoint ptr %vf_info to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i.i, ptr %vf_info, align 8
  %tobool9.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool9.not, label %if.end7.i.i.qlcnic_free_sriov_crit_edge, label %if.end11

if.end7.i.i.qlcnic_free_sriov_crit_edge:          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_free_sriov

if.end11:                                         ; preds = %if.end7.i.i
  %call12 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.1) #12
  %cmp = icmp eq ptr %call12, null
  br i1 %cmp, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #17
  br label %qlcnic_free_vf_info

if.end15:                                         ; preds = %if.end11
  %bc_trans_wq = getelementptr inbounds %struct.qlcnic_sriov, ptr %call7.i.i, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %bc_trans_wq to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call12, ptr %bc_trans_wq, align 8
  %call16 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.7) #12
  %cmp17 = icmp eq ptr %call16, null
  br i1 %cmp17, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %pdev23 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %16 = ptrtoint ptr %pdev23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev23, align 8
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.9) #17
  br label %qlcnic_destroy_trans_wq

if.end25:                                         ; preds = %if.end15
  %bc_async_wq = getelementptr inbounds %struct.qlcnic_sriov, ptr %call7.i.i, i32 0, i32 8, i32 2
  %18 = ptrtoint ptr %bc_async_wq to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call16, ptr %bc_async_wq, align 4
  %async_cmd_list = getelementptr inbounds %struct.qlcnic_sriov, ptr %call7.i.i, i32 0, i32 8, i32 5
  %19 = ptrtoint ptr %async_cmd_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %async_cmd_list, ptr %async_cmd_list, align 8
  %prev.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %call7.i.i, i32 0, i32 8, i32 5, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %async_cmd_list, ptr %prev.i, align 4
  %vf_async_work = getelementptr inbounds %struct.qlcnic_sriov, ptr %call7.i.i, i32 0, i32 8, i32 6
  tail call void @__init_work(ptr noundef %vf_async_work, i32 noundef 0) #12
  %21 = ptrtoint ptr %vf_async_work to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -64, ptr %vf_async_work, align 8
  %lockdep_map = getelementptr inbounds %struct.qlcnic_sriov, ptr %call7.i.i, i32 0, i32 8, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @qlcnic_sriov_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry30 = getelementptr inbounds %struct.qlcnic_sriov, ptr %call7.i.i, i32 0, i32 8, i32 6, i32 1
  %22 = ptrtoint ptr %entry30 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry30, ptr %entry30, align 4
  %prev.i163 = getelementptr inbounds %struct.qlcnic_sriov, ptr %call7.i.i, i32 0, i32 8, i32 6, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i163 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry30, ptr %prev.i163, align 8
  %func = getelementptr inbounds %struct.qlcnic_sriov, ptr %call7.i.i, i32 0, i32 8, i32 6, i32 2
  %24 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @qlcnic_sriov_handle_async_issue_cmd, ptr %func, align 4
  %queue_lock = getelementptr inbounds %struct.qlcnic_sriov, ptr %call7.i.i, i32 0, i32 8, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %queue_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @qlcnic_sriov_init.__key.12, i16 noundef signext 3) #12
  %adapter38 = getelementptr inbounds %struct.qlcnic_sriov, ptr %call7.i.i, i32 0, i32 8, i32 4
  %25 = ptrtoint ptr %adapter38 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %adapter, ptr %adapter38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vfs)
  %cmp39178.not = icmp eq i32 %num_vfs, 0
  br i1 %cmp39178.not, label %if.end25.cleanup_crit_edge, label %for.body.lr.ph

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end25
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0179 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %26 = ptrtoint ptr %vf_info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vf_info, align 8
  %arrayidx = getelementptr %struct.qlcnic_vf_info, ptr %27, i32 %i.0179
  %adapter42 = getelementptr %struct.qlcnic_vf_info, ptr %27, i32 %i.0179, i32 14
  %28 = ptrtoint ptr %adapter42 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %adapter, ptr %adapter42, align 4
  %29 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %stride.i) #12
  %31 = ptrtoint ptr %stride.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %stride.i, align 2, !annotation !227
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %offset.i) #12
  %32 = ptrtoint ptr %offset.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -1, ptr %offset.i, align 2, !annotation !227
  %device1.i.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 8
  %33 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %device1.i.i, align 2
  %35 = zext i16 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i16 %34, label %if.end.i [
    i16 -31696, label %for.body.qlcnic_sriov_virtid_fn.exit_crit_edge
    i16 -31680, label %for.body.qlcnic_sriov_virtid_fn.exit_crit_edge181
    i16 -29648, label %for.body.qlcnic_sriov_virtid_fn.exit_crit_edge182
  ]

for.body.qlcnic_sriov_virtid_fn.exit_crit_edge182: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_virtid_fn.exit

for.body.qlcnic_sriov_virtid_fn.exit_crit_edge181: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_virtid_fn.exit

for.body.qlcnic_sriov_virtid_fn.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_virtid_fn.exit

if.end.i:                                         ; preds = %for.body
  %call1.i = call zeroext i16 @pci_find_ext_capability(ptr noundef %30, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1.i)
  %tobool.not.i = icmp eq i16 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i.qlcnic_sriov_virtid_fn.exit_crit_edge, label %if.end3.i

if.end.i.qlcnic_sriov_virtid_fn.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_virtid_fn.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i16 %call1.i to i32
  %add.i = add nuw nsw i32 %conv.i, 20
  %call4.i = call i32 @pci_read_config_word(ptr noundef %30, i32 noundef %add.i, ptr noundef nonnull %offset.i) #12
  %add5.i = add nuw nsw i32 %conv.i, 22
  %call6.i = call i32 @pci_read_config_word(ptr noundef %30, i32 noundef %add5.i, ptr noundef nonnull %stride.i) #12
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 6
  %36 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %devfn.i, align 4
  %38 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %offset.i, align 2
  %conv7.i = zext i16 %39 to i32
  %add8.i = add i32 %37, %conv7.i
  %40 = ptrtoint ptr %stride.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %stride.i, align 2
  %conv9.i = zext i16 %41 to i32
  %mul.i = mul i32 %i.0179, %conv9.i
  %add10.i = add i32 %add8.i, %mul.i
  %and.i = and i32 %add10.i, 255
  br label %qlcnic_sriov_virtid_fn.exit

qlcnic_sriov_virtid_fn.exit:                      ; preds = %if.end3.i, %if.end.i.qlcnic_sriov_virtid_fn.exit_crit_edge, %for.body.qlcnic_sriov_virtid_fn.exit_crit_edge, %for.body.qlcnic_sriov_virtid_fn.exit_crit_edge181, %for.body.qlcnic_sriov_virtid_fn.exit_crit_edge182
  %retval.0.i = phi i32 [ %and.i, %if.end3.i ], [ 0, %if.end.i.qlcnic_sriov_virtid_fn.exit_crit_edge ], [ 0, %for.body.qlcnic_sriov_virtid_fn.exit_crit_edge ], [ 0, %for.body.qlcnic_sriov_virtid_fn.exit_crit_edge181 ], [ 0, %for.body.qlcnic_sriov_virtid_fn.exit_crit_edge182 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %offset.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %stride.i) #12
  %conv44 = trunc i32 %retval.0.i to i8
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv44, ptr %arrayidx, align 4
  %send_cmd_lock = getelementptr %struct.qlcnic_vf_info, ptr %27, i32 %i.0179, i32 9
  call void @__mutex_init(ptr noundef %send_cmd_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @qlcnic_sriov_init.__key.14) #12
  %vlan_list_lock = getelementptr %struct.qlcnic_vf_info, ptr %27, i32 %i.0179, i32 16
  call void @__raw_spin_lock_init(ptr noundef %vlan_list_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @qlcnic_sriov_init.__key.16, i16 noundef signext 3) #12
  %rcv_act = getelementptr %struct.qlcnic_vf_info, ptr %27, i32 %i.0179, i32 12
  %wait_list = getelementptr %struct.qlcnic_vf_info, ptr %27, i32 %i.0179, i32 12, i32 1
  %43 = ptrtoint ptr %wait_list to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %wait_list, ptr %wait_list, align 4
  %prev.i164 = getelementptr %struct.qlcnic_vf_info, ptr %27, i32 %i.0179, i32 12, i32 1, i32 1
  %44 = ptrtoint ptr %prev.i164 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %wait_list, ptr %prev.i164, align 4
  %rcv_pend = getelementptr %struct.qlcnic_vf_info, ptr %27, i32 %i.0179, i32 13
  %wait_list52 = getelementptr %struct.qlcnic_vf_info, ptr %27, i32 %i.0179, i32 13, i32 1
  %45 = ptrtoint ptr %wait_list52 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %wait_list52, ptr %wait_list52, align 4
  %prev.i165 = getelementptr %struct.qlcnic_vf_info, ptr %27, i32 %i.0179, i32 13, i32 1, i32 1
  %46 = ptrtoint ptr %prev.i165 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %wait_list52, ptr %prev.i165, align 4
  call void @__raw_spin_lock_init(ptr noundef %rcv_act, ptr noundef nonnull @.str.19, ptr noundef nonnull @qlcnic_sriov_init.__key.18, i16 noundef signext 3) #12
  call void @__raw_spin_lock_init(ptr noundef %rcv_pend, ptr noundef nonnull @.str.21, ptr noundef nonnull @qlcnic_sriov_init.__key.20, i16 noundef signext 3) #12
  %ch_free_cmpl = getelementptr %struct.qlcnic_vf_info, ptr %27, i32 %i.0179, i32 6
  %47 = ptrtoint ptr %ch_free_cmpl to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %ch_free_cmpl, align 4
  %wait.i = getelementptr %struct.qlcnic_vf_info, ptr %27, i32 %i.0179, i32 6, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @init_completion.__key) #12
  %trans_work = getelementptr %struct.qlcnic_vf_info, ptr %27, i32 %i.0179, i32 7
  call void @__init_work(ptr noundef %trans_work, i32 noundef 0) #12
  %48 = ptrtoint ptr %trans_work to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -64, ptr %trans_work, align 4
  %lockdep_map70 = getelementptr %struct.qlcnic_vf_info, ptr %27, i32 %i.0179, i32 7, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map70, ptr noundef nonnull @.str.23, ptr noundef nonnull @qlcnic_sriov_init.__key.22, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry72 = getelementptr %struct.qlcnic_vf_info, ptr %27, i32 %i.0179, i32 7, i32 1
  %49 = ptrtoint ptr %entry72 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %entry72, ptr %entry72, align 4
  %prev.i166 = getelementptr %struct.qlcnic_vf_info, ptr %27, i32 %i.0179, i32 7, i32 1, i32 1
  %50 = ptrtoint ptr %prev.i166 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %entry72, ptr %prev.i166, align 4
  %func74 = getelementptr %struct.qlcnic_vf_info, ptr %27, i32 %i.0179, i32 7, i32 2
  %51 = ptrtoint ptr %func74 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @qlcnic_sriov_process_bc_cmd, ptr %func74, align 4
  %52 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adapter, align 8
  %op_mode.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %53, i32 0, i32 30
  %54 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %op_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %55)
  %cmp.i = icmp eq i16 %55, 3
  br i1 %cmp.i, label %if.then78, label %qlcnic_sriov_virtid_fn.exit.for.inc_crit_edge

qlcnic_sriov_virtid_fn.exit.for.inc_crit_edge:    ; preds = %qlcnic_sriov_virtid_fn.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then78:                                        ; preds = %qlcnic_sriov_virtid_fn.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i169 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3520, i32 noundef 18) #15
  %tobool80.not = icmp eq ptr %call7.i.i169, null
  br i1 %tobool80.not, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %bc_async_wq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bc_async_wq, align 4
  call void @destroy_workqueue(ptr noundef %58) #12
  br label %qlcnic_destroy_trans_wq

if.end82:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %vf_info to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vf_info, align 8
  %vp85 = getelementptr %struct.qlcnic_vf_info, ptr %60, i32 %i.0179, i32 15
  %61 = ptrtoint ptr %vp85 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.i169, ptr %vp85, align 4
  %vlan_mode = getelementptr inbounds %struct.qlcnic_vport, ptr %call7.i.i169, i32 0, i32 4
  %62 = ptrtoint ptr %vlan_mode to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 2, ptr %vlan_mode, align 8
  %max_tx_bw = getelementptr inbounds %struct.qlcnic_vport, ptr %call7.i.i169, i32 0, i32 1
  %63 = ptrtoint ptr %max_tx_bw to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 100, ptr %max_tx_bw, align 2
  %min_tx_bw = getelementptr inbounds %struct.qlcnic_vport, ptr %call7.i.i169, i32 0, i32 2
  %64 = ptrtoint ptr %min_tx_bw to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 1, ptr %min_tx_bw, align 4
  %spoofchk = getelementptr inbounds %struct.qlcnic_vport, ptr %call7.i.i169, i32 0, i32 6
  %65 = ptrtoint ptr %spoofchk to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %spoofchk, align 2
  %mac = getelementptr inbounds %struct.qlcnic_vport, ptr %call7.i.i169, i32 0, i32 7
  call void @get_random_bytes(ptr noundef %mac, i32 noundef 6) #12
  %66 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %mac, align 1
  %68 = and i8 %67, -4
  %69 = or i8 %68, 2
  store i8 %69, ptr %mac, align 1
  %70 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev.i, align 8
  %dev90 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev90, ptr noundef nonnull @.str.25, ptr noundef %mac, i32 noundef %i.0179) #17
  br label %for.inc

for.inc:                                          ; preds = %if.end82, %qlcnic_sriov_virtid_fn.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0179, 1
  %exitcond.not = icmp eq i32 %inc, %num_vfs
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

qlcnic_destroy_trans_wq:                          ; preds = %if.then81, %if.then19
  %72 = ptrtoint ptr %bc_trans_wq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bc_trans_wq, align 8
  call void @destroy_workqueue(ptr noundef %73) #12
  br label %qlcnic_free_vf_info

qlcnic_free_vf_info:                              ; preds = %qlcnic_destroy_trans_wq, %if.then14
  %74 = ptrtoint ptr %vf_info to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vf_info, align 8
  call void @kfree(ptr noundef %75) #12
  br label %qlcnic_free_sriov

qlcnic_free_sriov:                                ; preds = %qlcnic_free_vf_info, %if.end7.i.i.qlcnic_free_sriov_crit_edge, %kcalloc.exit.thread
  %76 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %adapter, align 8
  %sriov98 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %77, i32 0, i32 54
  %78 = ptrtoint ptr %sriov98 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sriov98, align 8
  call void @kfree(ptr noundef %79) #12
  br label %cleanup

cleanup:                                          ; preds = %qlcnic_free_sriov, %for.inc.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %qlcnic_free_sriov ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlcnic_sriov_handle_async_issue_cmd(ptr noundef %work) #0 align 64 {
entry:
  %del_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %del_list) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %del_list, i32 0, i32 1
  %1 = ptrtoint ptr %del_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %del_list, ptr %del_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %del_list, ptr %0, align 4
  %async_cmd_list = getelementptr i8, ptr %work, i32 -8
  %queue_lock = getelementptr i8, ptr %work, i32 44
  call void @_raw_spin_lock(ptr noundef %queue_lock) #12
  %3 = ptrtoint ptr %async_cmd_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %async_cmd_list, align 4
  %cmp.i.not.i = icmp eq ptr %4, %async_cmd_list
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %del_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %del_list, align 4
  %prev2.i.i = getelementptr i8, ptr %work, i32 -4
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %del_list, ptr %prev3.i.i, align 4
  store ptr %4, ptr %del_list, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i, align 4
  %12 = ptrtoint ptr %async_cmd_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %async_cmd_list, ptr %async_cmd_list, align 4
  store ptr %async_cmd_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %queue_lock) #12
  %13 = ptrtoint ptr %del_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %del_list, align 4
  %cmp.not33 = icmp eq ptr %14, %del_list
  br i1 %cmp.not33, label %list_splice_init.exit.for.end_crit_edge, label %for.body.lr.ph

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice_init.exit
  %adapter = getelementptr i8, ptr %work, i32 -12
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %entry1.034 = phi ptr [ %14, %for.body.lr.ph ], [ %tmp.0, %list_del.exit.for.body_crit_edge ]
  %15 = ptrtoint ptr %entry1.034 to i32
  call void @__asan_load4_noabort(i32 %15)
  %tmp.0 = load ptr, ptr %entry1.034, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.034) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.034, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %entry1.034 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %entry1.034, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %22 = ptrtoint ptr %entry1.034 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.034, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry1.034, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmd14 = getelementptr inbounds %struct.qlcnic_async_cmd, ptr %entry1.034, i32 0, i32 1
  %24 = ptrtoint ptr %cmd14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmd14, align 4
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 4
  %call = call fastcc i32 @__qlcnic_sriov_issue_cmd(ptr noundef %27, ptr noundef %25)
  call void @kfree(ptr noundef %entry1.034) #12
  %cmp.not = icmp eq ptr %tmp.0, %del_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  %28 = ptrtoint ptr %async_cmd_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %async_cmd_list, align 4
  %cmp.i.not = icmp eq ptr %29, %async_cmd_list
  br i1 %cmp.i.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %bc_async_wq = getelementptr i8, ptr %work, i32 -20
  %30 = ptrtoint ptr %bc_async_wq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bc_async_wq, align 4
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %work) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %del_list) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlcnic_sriov_process_bc_cmd(ptr noundef %work) #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -76
  %adapter1 = getelementptr i8, ptr %work, i32 300
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #12
  %need_fw_reset = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %need_fw_reset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %need_fw_reset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr i8, ptr %work, i32 -60
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = call ptr @memset(ptr %cmd, i32 0, i32 120)
  %wait_list = getelementptr i8, ptr %work, i32 232
  %8 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wait_list, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 -20
  %req_hdr = getelementptr i8, ptr %9, i32 8
  %10 = ptrtoint ptr %req_hdr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %req_hdr, align 4
  %seq_id = getelementptr inbounds %struct.qlcnic_bc_hdr, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %seq_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %seq_id, align 4
  %req_pay41.i = getelementptr i8, ptr %9, i32 16
  %14 = ptrtoint ptr %req_pay41.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %req_pay41.i, align 4
  %req42.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2
  %arg43.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %arg43.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %arg43.i, align 4
  %rsp_pay44.i = getelementptr i8, ptr %9, i32 20
  %17 = ptrtoint ptr %rsp_pay44.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rsp_pay44.i, align 4
  %rsp45.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3
  %arg46.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %arg46.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %arg46.i, align 4
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %15, align 4
  %conv52.i = and i32 %21, 255
  %cmd_op53.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 10
  %22 = ptrtoint ptr %cmd_op53.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv52.i, ptr %cmd_op53.i, align 4
  %rsp_pay_size54.i = getelementptr i8, ptr %9, i32 -12
  %23 = ptrtoint ptr %rsp_pay_size54.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %rsp_pay_size54.i, align 4
  %.frozen = freeze i16 %24
  %25 = udiv i16 %.frozen, 1008
  %26 = mul i16 %25, 1008
  %rem56.i.decomposed = sub i16 %.frozen, %26
  %conv61.i = trunc i16 %25 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem56.i.decomposed)
  %tobool62.not.i = icmp ne i16 %rem56.i.decomposed, 0
  %inc64.i = zext i1 %tobool62.not.i to i8
  %spec.select184.i = add nuw nsw i8 %inc64.i, %conv61.i
  %req_pay_size66.i = getelementptr i8, ptr %9, i32 -14
  %27 = ptrtoint ptr %req_pay_size66.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %req_pay_size66.i, align 2
  %29 = lshr i16 %28, 2
  %div68.i = zext i16 %29 to i32
  %30 = ptrtoint ptr %req42.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div68.i, ptr %req42.i, align 4
  %31 = ptrtoint ptr %rsp_pay_size54.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rsp_pay_size54.i, align 4
  %33 = lshr i16 %32, 2
  %div73.i = zext i16 %33 to i32
  %34 = ptrtoint ptr %rsp45.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div73.i, ptr %rsp45.i, align 4
  %rsp_hdr76.i = getelementptr i8, ptr %9, i32 12
  %35 = ptrtoint ptr %rsp_hdr76.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rsp_hdr76.i, align 4
  %37 = ptrtoint ptr %req_hdr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %req_hdr, align 4
  %op_type.i = getelementptr inbounds %struct.qlcnic_bc_hdr, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %op_type.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i = load i8, ptr %op_type.i, align 2
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %conv78.i = zext i8 %bf.lshr.i to i32
  %op_type79.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 8
  %40 = ptrtoint ptr %op_type79.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv78.i, ptr %op_type79.i, align 4
  %.pre.i = zext i8 %spec.select184.i to i32
  %cmd_op.0.i = trunc i32 %21 to i8
  %conv81.i = zext i16 %13 to i32
  %trans_id.i = getelementptr i8, ptr %9, i32 -8
  %41 = ptrtoint ptr %trans_id.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv81.i, ptr %trans_id.i, align 4
  %42 = trunc i32 %21 to i16
  %conv82.i = and i16 %42, 255
  %cmd_id.i = getelementptr i8, ptr %9, i32 -16
  %43 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv82.i, ptr %cmd_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select184.i)
  %cmp84240.not.i = icmp eq i8 %spec.select184.i, 0
  br i1 %cmp84240.not.i, label %if.end4.if.end12_crit_edge, label %if.end4.for.body.i_crit_edge

if.end4.for.body.i_crit_edge:                     ; preds = %if.end4
  br label %for.body.i

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end4.for.body.i_crit_edge
  %i.0241.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end4.for.body.i_crit_edge ]
  %arrayidx86.i = getelementptr %struct.qlcnic_bc_hdr, ptr %36, i32 %i.0241.i
  %version.i = getelementptr %struct.qlcnic_bc_hdr, ptr %36, i32 %i.0241.i, i32 3
  %44 = ptrtoint ptr %version.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 2, ptr %version.i, align 1
  %msg_type88.i = getelementptr %struct.qlcnic_bc_hdr, ptr %36, i32 %i.0241.i, i32 2
  %45 = ptrtoint ptr %msg_type88.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load89.i = load i8, ptr %msg_type88.i, align 2
  %46 = ptrtoint ptr %op_type79.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %op_type79.i, align 4
  %conv91.i = trunc i32 %47 to i8
  %bf.shl.i = shl i8 %conv91.i, 7
  %bf.set.i = and i8 %bf.load89.i, 112
  %bf.clear96.i = or i8 %bf.set.i, 1
  %bf.set97.i = or i8 %bf.shl.i, %bf.clear96.i
  store i8 %bf.set97.i, ptr %msg_type88.i, align 2
  %num_cmds.i = getelementptr %struct.qlcnic_bc_hdr, ptr %36, i32 %i.0241.i, i32 1
  %48 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %num_cmds.i, align 1
  %49 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %spec.select184.i, ptr %arrayidx86.i, align 8
  %add.i = add nuw nsw i32 %i.0241.i, 1
  %conv101.i = trunc i32 %add.i to i8
  %frag_num.i = getelementptr %struct.qlcnic_bc_hdr, ptr %36, i32 %i.0241.i, i32 6
  %50 = ptrtoint ptr %frag_num.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv101.i, ptr %frag_num.i, align 1
  %cmd_op104.i = getelementptr %struct.qlcnic_bc_hdr, ptr %36, i32 %i.0241.i, i32 5
  %51 = ptrtoint ptr %cmd_op104.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %cmd_op.0.i, ptr %cmd_op104.i, align 2
  %seq_id.i = getelementptr %struct.qlcnic_bc_hdr, ptr %36, i32 %i.0241.i, i32 4
  %52 = ptrtoint ptr %seq_id.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %13, ptr %seq_id.i, align 4
  %exitcond.not.i = icmp eq i32 %add.i, %.pre.i
  br i1 %exitcond.not.i, label %for.body.i.if.end12_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.if.end12_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end12:                                         ; preds = %for.body.i.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 8
  %op_mode.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %54, i32 0, i32 30
  %55 = ptrtoint ptr %op_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %op_mode.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %56)
  %cmp.i.i = icmp eq i16 %56, 3
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  call void @qlcnic_sriov_pf_process_bc_cmd(ptr noundef %1, ptr noundef %add.ptr7, ptr noundef nonnull %cmd) #12
  br label %cleanup_trans

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %arg46.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arg46.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %or.i = or i32 %60, 301989888
  store i32 %or.i, ptr %58, align 4
  br label %cleanup_trans

cleanup_trans:                                    ; preds = %if.end.i, %if.then.i
  %trans_state = getelementptr i8, ptr %9, i32 -4
  %61 = ptrtoint ptr %trans_state to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %trans_state, align 4
  %call13 = call fastcc i32 @__qlcnic_sriov_send_bc_msg(ptr noundef %add.ptr7, ptr noundef %add.ptr, i8 noundef zeroext 1)
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd) #12
  %rcv_act.i = getelementptr i8, ptr %work, i32 188
  %call5.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rcv_act.i) #12
  %count.i = getelementptr i8, ptr %work, i32 240
  %62 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %63, -1
  store i32 %dec.i, ptr %count.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %cleanup_trans.qlcnic_sriov_clear_trans.exit_crit_edge

cleanup_trans.qlcnic_sriov_clear_trans.exit_crit_edge: ; preds = %cleanup_trans
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_clear_trans.exit

if.end.i.i.i:                                     ; preds = %cleanup_trans
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr i8, ptr %9, i32 4
  %64 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i.i, align 4
  %66 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %9, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %qlcnic_sriov_clear_trans.exit

qlcnic_sriov_clear_trans.exit:                    ; preds = %if.end.i.i.i, %cleanup_trans.qlcnic_sriov_clear_trans.exit_crit_edge
  %70 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  %prev.i.i = getelementptr i8, ptr %9, i32 4
  %71 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %72 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp9.i = icmp slt i32 %73, 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rcv_act.i, i32 noundef %call5.i) #12
  %tobool.not.i = icmp eq ptr %add.ptr7, null
  br i1 %tobool.not.i, label %qlcnic_sriov_clear_trans.exit.qlcnic_sriov_cleanup_transaction.exit_crit_edge, label %if.end.i37

qlcnic_sriov_clear_trans.exit.qlcnic_sriov_cleanup_transaction.exit_crit_edge: ; preds = %qlcnic_sriov_clear_trans.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_cleanup_transaction.exit

if.end.i37:                                       ; preds = %qlcnic_sriov_clear_trans.exit
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %req_hdr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %req_hdr, align 4
  call void @kfree(ptr noundef %75) #12
  %76 = ptrtoint ptr %rsp_hdr76.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rsp_hdr76.i, align 4
  call void @kfree(ptr noundef %77) #12
  call void @kfree(ptr noundef nonnull %add.ptr7) #12
  br label %qlcnic_sriov_cleanup_transaction.exit

qlcnic_sriov_cleanup_transaction.exit:            ; preds = %if.end.i37, %qlcnic_sriov_clear_trans.exit.qlcnic_sriov_cleanup_transaction.exit_crit_edge
  br i1 %cmp9.i, label %qlcnic_sriov_cleanup_transaction.exit.cleanup_crit_edge, label %if.then16

qlcnic_sriov_cleanup_transaction.exit.cleanup_crit_edge: ; preds = %qlcnic_sriov_cleanup_transaction.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then16:                                        ; preds = %qlcnic_sriov_cleanup_transaction.exit
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 8
  %sriov = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %79, i32 0, i32 54
  %80 = ptrtoint ptr %sriov to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sriov, align 8
  %82 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %state, align 4
  %84 = and i32 %83, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i38 = icmp eq i32 %84, 0
  br i1 %tobool.not.i38, label %lor.lhs.false.i, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then16
  %85 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %adapter1, align 4
  %need_fw_reset.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %86, i32 0, i32 24
  %87 = ptrtoint ptr %need_fw_reset.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %need_fw_reset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool1.not.i = icmp eq i8 %88, 0
  br i1 %tobool1.not.i, label %if.end.i39, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i39:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %bc_trans_wq.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %81, i32 0, i32 8, i32 1
  %89 = ptrtoint ptr %bc_trans_wq.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bc_trans_wq.i, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %90, ptr noundef %work) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i39, %lor.lhs.false.i.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %qlcnic_sriov_cleanup_transaction.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_sriov_cleanup_list(ptr noundef %t_list) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #12
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %t_list) #12
  %wait_list = getelementptr inbounds %struct.qlcnic_trans_list, ptr %t_list, i32 0, i32 1
  %1 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %wait_list, align 4
  %cmp.i.not17 = icmp eq ptr %2, %wait_list
  br i1 %cmp.i.not17, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %count = getelementptr inbounds %struct.qlcnic_trans_list, ptr %t_list, i32 0, i32 2
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %arg8 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  br label %while.body

while.body:                                       ; preds = %qlcnic_sriov_cleanup_transaction.exit.while.body_crit_edge, %while.body.lr.ph
  %3 = phi ptr [ %2, %while.body.lr.ph ], [ %25, %qlcnic_sriov_cleanup_transaction.exit.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %3, i32 -20
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #12
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %count, align 4
  %req_pay = getelementptr i8, ptr %3, i32 16
  %14 = ptrtoint ptr %req_pay to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %req_pay, align 4
  %16 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %arg, align 4
  %rsp_pay = getelementptr i8, ptr %3, i32 20
  %17 = ptrtoint ptr %rsp_pay to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rsp_pay, align 4
  %19 = ptrtoint ptr %arg8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %arg8, align 4
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd) #12
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %list_del.exit.qlcnic_sriov_cleanup_transaction.exit_crit_edge, label %if.end.i

list_del.exit.qlcnic_sriov_cleanup_transaction.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_cleanup_transaction.exit

if.end.i:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %req_hdr.i = getelementptr i8, ptr %3, i32 8
  %20 = ptrtoint ptr %req_hdr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %req_hdr.i, align 4
  call void @kfree(ptr noundef %21) #12
  %rsp_hdr.i = getelementptr i8, ptr %3, i32 12
  %22 = ptrtoint ptr %rsp_hdr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rsp_hdr.i, align 4
  call void @kfree(ptr noundef %23) #12
  call void @kfree(ptr noundef nonnull %add.ptr) #12
  br label %qlcnic_sriov_cleanup_transaction.exit

qlcnic_sriov_cleanup_transaction.exit:            ; preds = %if.end.i, %list_del.exit.qlcnic_sriov_cleanup_transaction.exit_crit_edge
  %24 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %wait_list, align 4
  %cmp.i.not = icmp eq ptr %25, %wait_list
  br i1 %cmp.i.not, label %qlcnic_sriov_cleanup_transaction.exit.while.end_crit_edge, label %qlcnic_sriov_cleanup_transaction.exit.while.body_crit_edge

qlcnic_sriov_cleanup_transaction.exit.while.body_crit_edge: ; preds = %qlcnic_sriov_cleanup_transaction.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

qlcnic_sriov_cleanup_transaction.exit.while.end_crit_edge: ; preds = %qlcnic_sriov_cleanup_transaction.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %qlcnic_sriov_cleanup_transaction.exit.while.end_crit_edge, %entry.while.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %t_list, i32 noundef %call2) #12
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_free_mbx_args(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__qlcnic_sriov_cleanup(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %sriov1 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %sriov1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov1, align 8
  %state.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bc2 = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 8
  tail call void @qlcnic_sriov_cleanup_async_list(ptr noundef %bc2)
  %bc_async_wq = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 8, i32 2
  %7 = ptrtoint ptr %bc_async_wq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bc_async_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %8) #12
  %num_vfs = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_vfs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp39.not = icmp eq i8 %10, 0
  br i1 %cmp39.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %vf_info = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %11 = ptrtoint ptr %vf_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vf_info, align 4
  %rcv_pend = getelementptr %struct.qlcnic_vf_info, ptr %12, i32 %i.040, i32 13
  tail call void @qlcnic_sriov_cleanup_list(ptr noundef %rcv_pend)
  %trans_work = getelementptr %struct.qlcnic_vf_info, ptr %12, i32 %i.040, i32 7
  %call4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %trans_work) #12
  %rcv_act = getelementptr %struct.qlcnic_vf_info, ptr %12, i32 %i.040, i32 12
  tail call void @qlcnic_sriov_cleanup_list(ptr noundef %rcv_act)
  %inc = add nuw nsw i32 %i.040, 1
  %13 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_vfs, align 2
  %conv = zext i8 %14 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %bc_trans_wq = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %bc_trans_wq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bc_trans_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %16) #12
  %17 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num_vfs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp842.not = icmp eq i8 %18, 0
  br i1 %cmp842.not, label %for.end.for.end15_crit_edge, label %for.body10.lr.ph

for.end.for.end15_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end15

for.body10.lr.ph:                                 ; preds = %for.end
  %vf_info11 = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 9
  br label %for.body10

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body10.lr.ph
  %i.143 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc14, %for.body10.for.body10_crit_edge ]
  %19 = ptrtoint ptr %vf_info11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vf_info11, align 4
  %vp = getelementptr %struct.qlcnic_vf_info, ptr %20, i32 %i.143, i32 15
  %21 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vp, align 4
  tail call void @kfree(ptr noundef %22) #12
  %inc14 = add nuw nsw i32 %i.143, 1
  %23 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_vfs, align 2
  %conv7 = zext i8 %24 to i32
  %cmp8 = icmp ult i32 %inc14, %conv7
  br i1 %cmp8, label %for.body10.for.body10_crit_edge, label %for.body10.for.end15_crit_edge

for.body10.for.end15_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end15

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body10

for.end15:                                        ; preds = %for.body10.for.end15_crit_edge, %for.end.for.end15_crit_edge
  %vf_info16 = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 9
  %25 = ptrtoint ptr %vf_info16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vf_info16, align 4
  tail call void @kfree(ptr noundef %26) #12
  %27 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter, align 8
  %sriov18 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %28, i32 0, i32 54
  %29 = ptrtoint ptr %sriov18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sriov18, align 8
  tail call void @kfree(ptr noundef %30) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end15, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_sriov_cleanup_async_list(ptr noundef %bc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %async_cmd_list = getelementptr inbounds %struct.qlcnic_back_channel, ptr %bc, i32 0, i32 5
  %bc_async_wq = getelementptr inbounds %struct.qlcnic_back_channel, ptr %bc, i32 0, i32 2
  %0 = ptrtoint ptr %bc_async_wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_async_wq, align 4
  tail call void @flush_workqueue(ptr noundef %1) #12
  %vf_async_work = getelementptr inbounds %struct.qlcnic_back_channel, ptr %bc, i32 0, i32 6
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %vf_async_work) #12
  %queue_lock = getelementptr inbounds %struct.qlcnic_back_channel, ptr %bc, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %queue_lock) #12
  %2 = ptrtoint ptr %async_cmd_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %async_cmd_list, align 4
  %cmp.i.not11 = icmp eq ptr %3, %async_cmd_list
  br i1 %cmp.i.not11, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = phi ptr [ %16, %list_del.exit.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #12
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmd = getelementptr inbounds %struct.qlcnic_async_cmd, ptr %4, i32 0, i32 1
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd, align 4
  tail call void @kfree(ptr noundef %14) #12
  tail call void @kfree(ptr noundef %4) #12
  %15 = ptrtoint ptr %async_cmd_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %async_cmd_list, align 4
  %cmp.i.not = icmp eq ptr %16, %async_cmd_list
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %queue_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_sriov_cleanup(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i.i = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.end

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 8
  %sriov1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %4, i32 0, i32 54
  %5 = ptrtoint ptr %sriov1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sriov1.i, align 8
  %num_vfs.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %num_vfs.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_vfs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp9.not.i = icmp eq i8 %8, 0
  br i1 %cmp9.not.i, label %if.end.qlcnic_sriov_free_vlans.exit_crit_edge, label %for.body.lr.ph.i

if.end.qlcnic_sriov_free_vlans.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_free_vlans.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %vf_info.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %6, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %vf_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vf_info.i, align 4
  %sriov_vlans.i = getelementptr %struct.qlcnic_vf_info, ptr %10, i32 %i.010.i, i32 3
  %11 = ptrtoint ptr %sriov_vlans.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sriov_vlans.i, align 4
  tail call void @kfree(ptr noundef %12) #12
  %13 = ptrtoint ptr %sriov_vlans.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %sriov_vlans.i, align 4
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %14 = ptrtoint ptr %num_vfs.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_vfs.i, align 2
  %conv.i = zext i8 %15 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.qlcnic_sriov_free_vlans.exit_crit_edge

for.body.i.qlcnic_sriov_free_vlans.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_free_vlans.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

qlcnic_sriov_free_vlans.exit:                     ; preds = %for.body.i.qlcnic_sriov_free_vlans.exit_crit_edge, %if.end.qlcnic_sriov_free_vlans.exit_crit_edge
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter, align 8
  %op_mode.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %17, i32 0, i32 30
  %18 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %op_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %19)
  %cmp.i12 = icmp eq i16 %19, 3
  br i1 %cmp.i12, label %if.then2, label %qlcnic_sriov_free_vlans.exit.if.end3_crit_edge

qlcnic_sriov_free_vlans.exit.if.end3_crit_edge:   ; preds = %qlcnic_sriov_free_vlans.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %qlcnic_sriov_free_vlans.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @qlcnic_sriov_pf_cleanup(ptr noundef %adapter) #12
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %qlcnic_sriov_free_vlans.exit.if.end3_crit_edge
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %device1.i, align 2
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.118)
  switch i16 %23, label %if.end3.if.end6_crit_edge [
    i16 -31696, label %if.end3.if.then5_crit_edge
    i16 -31680, label %if.end3.if.then5_crit_edge13
    i16 -29648, label %if.end3.if.then5_crit_edge14
  ]

if.end3.if.then5_crit_edge14:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.end3.if.then5_crit_edge13:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.end3.if.then5_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then5:                                         ; preds = %if.end3.if.then5_crit_edge, %if.end3.if.then5_crit_edge13, %if.end3.if.then5_crit_edge14
  %call.i = tail call fastcc i32 @qlcnic_sriov_channel_cfg_cmd(ptr noundef %adapter, i8 noundef zeroext 1) #12
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd.i.i) #12
  %25 = call ptr @memset(ptr %cmd.i.i, i32 255, i32 120)
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state, align 4
  %28 = and i32 %27, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i, label %if.then5.qlcnic_sriov_vf_cleanup.exit_crit_edge, label %if.end.i.i

if.then5.qlcnic_sriov_vf_cleanup.exit_crit_edge:  ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_vf_cleanup.exit

if.end.i.i:                                       ; preds = %if.then5
  %29 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter, align 8
  %hw_ops.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %30, i32 0, i32 46
  %31 = ptrtoint ptr %hw_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_ops.i.i.i, align 4
  %alloc_mbx_args.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %alloc_mbx_args.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %alloc_mbx_args.i.i.i, align 4
  %call.i.i.i = call i32 %34(ptr noundef nonnull %cmd.i.i, ptr noundef %adapter, i32 noundef 49) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.qlcnic_sriov_vf_cleanup.exit_crit_edge

if.end.i.i.qlcnic_sriov_vf_cleanup.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_vf_cleanup.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  %call8.i.i = call i32 @qlcnic_83xx_issue_cmd(ptr noundef %adapter, ptr noundef nonnull %cmd.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %cmp.not.i.i, label %if.end4.i.i.if.end11.i.i_crit_edge, label %do.end.i.i

if.end4.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i.i

do.end.i.i:                                       ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.44, i32 noundef %call8.i.i) #17
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %do.end.i.i, %if.end4.i.i.if.end11.i.i_crit_edge
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i.i) #12
  br label %qlcnic_sriov_vf_cleanup.exit

qlcnic_sriov_vf_cleanup.exit:                     ; preds = %if.end11.i.i, %if.end.i.i.qlcnic_sriov_vf_cleanup.exit_crit_edge, %if.then5.qlcnic_sriov_vf_cleanup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i.i) #12
  call void @__qlcnic_sriov_cleanup(ptr noundef %adapter) #12
  br label %if.end6

if.end6:                                          ; preds = %qlcnic_sriov_vf_cleanup.exit, %if.end3.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_sriov_free_vlans(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %sriov1 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %sriov1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov1, align 8
  %num_vfs = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_vfs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp9.not = icmp eq i8 %5, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vf_info = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %vf_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vf_info, align 4
  %sriov_vlans = getelementptr %struct.qlcnic_vf_info, ptr %7, i32 %i.010, i32 3
  %8 = ptrtoint ptr %sriov_vlans to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sriov_vlans, align 4
  tail call void @kfree(ptr noundef %9) #12
  %10 = ptrtoint ptr %sriov_vlans to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %sriov_vlans, align 4
  %inc = add nuw nsw i32 %i.010, 1
  %11 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_vfs, align 2
  %conv = zext i8 %12 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_sriov_pf_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_sriov_get_vf_vport_info(ptr noundef %adapter, ptr noundef %npar_info, i16 noundef zeroext %vport_id) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #12
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %4, i32 0, i32 46
  %5 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i = call i32 %8(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 33) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %vport_id to i32
  %shl = shl nuw i32 %conv, 16
  %or = or i32 %shl, 1
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %hw_ops.i190 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 46
  %14 = ptrtoint ptr %hw_ops.i190 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_ops.i190, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %qlcnic_issue_cmd.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

qlcnic_issue_cmd.exit:                            ; preds = %if.end
  %call.i191 = call i32 %17(ptr noundef %adapter, ptr noundef nonnull %cmd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %tobool3.not = icmp eq i32 %call.i191, 0
  br i1 %tobool3.not, label %if.end7, label %qlcnic_issue_cmd.exit.do.end_crit_edge

qlcnic_issue_cmd.exit.do.end_crit_edge:           ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %qlcnic_issue_cmd.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.0.i194 = phi i32 [ %call.i191, %qlcnic_issue_cmd.exit.do.end_crit_edge ], [ -5, %if.end.do.end_crit_edge ]
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.28, i32 noundef %retval.0.i194) #17
  br label %cleanup.sink.split

if.end7:                                          ; preds = %qlcnic_issue_cmd.exit
  %arg8 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %arg8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arg8, align 4
  %arrayidx9 = getelementptr i32, ptr %21, i32 2
  %22 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx9, align 4
  %and10 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end7.if.end17_crit_edge, label %if.then12

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %shr = lshr i32 %23, 16
  %conv16 = trunc i32 %shr to i16
  %min_tx_bw = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 9
  %24 = ptrtoint ptr %min_tx_bw to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv16, ptr %min_tx_bw, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end7.if.end17_crit_edge
  %and18 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end25_crit_edge, label %if.then20

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx23 = getelementptr i32, ptr %21, i32 3
  %25 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx23, align 4
  %conv24 = trunc i32 %26 to i16
  %max_tx_bw = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 10
  %27 = ptrtoint ptr %max_tx_bw to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv24, ptr %max_tx_bw, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end17.if.end25_crit_edge
  %and26 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end34_crit_edge, label %if.then28

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx31 = getelementptr i32, ptr %21, i32 3
  %28 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx31, align 4
  %shr32 = lshr i32 %29, 16
  %conv33 = trunc i32 %shr32 to i16
  %max_tx_ques = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 7
  %30 = ptrtoint ptr %max_tx_ques to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv33, ptr %max_tx_ques, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %if.end25.if.end34_crit_edge
  %and35 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end42_crit_edge, label %if.then37

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx40 = getelementptr i32, ptr %21, i32 4
  %31 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx40, align 4
  %conv41 = trunc i32 %32 to i16
  %max_tx_mac_filters = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 17
  %33 = ptrtoint ptr %max_tx_mac_filters to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv41, ptr %max_tx_mac_filters, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %if.end34.if.end42_crit_edge
  %and43 = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.if.end51_crit_edge, label %if.then45

if.end42.if.end51_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx48 = getelementptr i32, ptr %21, i32 4
  %34 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx48, align 4
  %shr49 = lshr i32 %35, 16
  %conv50 = trunc i32 %shr49 to i16
  %max_rx_mcast_mac_filters = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 18
  %36 = ptrtoint ptr %max_rx_mcast_mac_filters to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv50, ptr %max_rx_mcast_mac_filters, align 2
  br label %if.end51

if.end51:                                         ; preds = %if.then45, %if.end42.if.end51_crit_edge
  %and52 = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end59_crit_edge, label %if.then54

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx57 = getelementptr i32, ptr %21, i32 5
  %37 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx57, align 4
  %conv58 = trunc i32 %38 to i16
  %max_rx_ucast_mac_filters = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 19
  %39 = ptrtoint ptr %max_rx_ucast_mac_filters to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv58, ptr %max_rx_ucast_mac_filters, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %if.end51.if.end59_crit_edge
  %and60 = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end59.if.end68_crit_edge, label %if.then62

if.end59.if.end68_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx65 = getelementptr i32, ptr %21, i32 5
  %40 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx65, align 4
  %shr66 = lshr i32 %41, 16
  %conv67 = trunc i32 %shr66 to i16
  %max_rx_ip_addr = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 20
  %42 = ptrtoint ptr %max_rx_ip_addr to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv67, ptr %max_rx_ip_addr, align 2
  br label %if.end68

if.end68:                                         ; preds = %if.then62, %if.end59.if.end68_crit_edge
  %and69 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end68.if.end76_crit_edge, label %if.then71

if.end68.if.end76_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx74 = getelementptr i32, ptr %21, i32 6
  %43 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx74, align 4
  %conv75 = trunc i32 %44 to i16
  %max_rx_lro_flow = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 21
  %45 = ptrtoint ptr %max_rx_lro_flow to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv75, ptr %max_rx_lro_flow, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %if.end68.if.end76_crit_edge
  %and77 = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end76.if.end85_crit_edge, label %if.then79

if.end76.if.end85_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx82 = getelementptr i32, ptr %21, i32 6
  %46 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx82, align 4
  %shr83 = lshr i32 %47, 16
  %conv84 = trunc i32 %shr83 to i16
  %max_rx_status_rings = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 22
  %48 = ptrtoint ptr %max_rx_status_rings to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv84, ptr %max_rx_status_rings, align 2
  br label %if.end85

if.end85:                                         ; preds = %if.then79, %if.end76.if.end85_crit_edge
  %and86 = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end85.if.end93_crit_edge, label %if.then88

if.end85.if.end93_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx91 = getelementptr i32, ptr %21, i32 7
  %49 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx91, align 4
  %conv92 = trunc i32 %50 to i16
  %max_rx_buf_rings = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 23
  %51 = ptrtoint ptr %max_rx_buf_rings to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv92, ptr %max_rx_buf_rings, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then88, %if.end85.if.end93_crit_edge
  %arrayidx96 = getelementptr i32, ptr %21, i32 7
  %52 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx96, align 4
  %shr97 = lshr i32 %53, 16
  %conv98 = trunc i32 %shr97 to i16
  %max_rx_ques = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 8
  %54 = ptrtoint ptr %max_rx_ques to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv98, ptr %max_rx_ques, align 2
  %arrayidx101 = getelementptr i32, ptr %21, i32 8
  %55 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx101, align 4
  %conv102 = trunc i32 %56 to i16
  %max_tx_vlan_keys = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 24
  %57 = ptrtoint ptr %max_tx_vlan_keys to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv102, ptr %max_tx_vlan_keys, align 2
  %58 = load i32, ptr %arrayidx101, align 4
  %shr106 = lshr i32 %58, 16
  %conv107 = trunc i32 %shr106 to i16
  %max_local_ipv6_addrs = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 30
  %59 = ptrtoint ptr %max_local_ipv6_addrs to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv107, ptr %max_local_ipv6_addrs, align 4
  %arrayidx110 = getelementptr i32, ptr %21, i32 9
  %60 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx110, align 4
  %conv111 = trunc i32 %61 to i16
  %max_remote_ipv6_addrs = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 31
  %62 = ptrtoint ptr %max_remote_ipv6_addrs to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv111, ptr %max_remote_ipv6_addrs, align 2
  %min_tx_bw115 = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 9
  %63 = ptrtoint ptr %min_tx_bw115 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %min_tx_bw115, align 4
  %conv116 = zext i16 %64 to i32
  %max_tx_bw117 = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 10
  %65 = ptrtoint ptr %max_tx_bw117 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %max_tx_bw117, align 2
  %conv118 = zext i16 %66 to i32
  %max_tx_ques119 = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 7
  %67 = ptrtoint ptr %max_tx_ques119 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %max_tx_ques119, align 4
  %conv120 = zext i16 %68 to i32
  %max_tx_mac_filters121 = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 17
  %69 = ptrtoint ptr %max_tx_mac_filters121 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %max_tx_mac_filters121, align 4
  %conv122 = zext i16 %70 to i32
  %max_rx_mcast_mac_filters123 = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 18
  %71 = ptrtoint ptr %max_rx_mcast_mac_filters123 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %max_rx_mcast_mac_filters123, align 2
  %conv124 = zext i16 %72 to i32
  %max_rx_ucast_mac_filters125 = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 19
  %73 = ptrtoint ptr %max_rx_ucast_mac_filters125 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %max_rx_ucast_mac_filters125, align 4
  %conv126 = zext i16 %74 to i32
  %max_rx_ip_addr127 = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 20
  %75 = ptrtoint ptr %max_rx_ip_addr127 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %max_rx_ip_addr127, align 2
  %conv128 = zext i16 %76 to i32
  %max_rx_lro_flow129 = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 21
  %77 = ptrtoint ptr %max_rx_lro_flow129 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %max_rx_lro_flow129, align 4
  %conv130 = zext i16 %78 to i32
  %max_rx_status_rings131 = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 22
  %79 = ptrtoint ptr %max_rx_status_rings131 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %max_rx_status_rings131, align 2
  %conv132 = zext i16 %80 to i32
  %max_rx_buf_rings133 = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 23
  %81 = ptrtoint ptr %max_rx_buf_rings133 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %max_rx_buf_rings133, align 4
  %conv134 = zext i16 %82 to i32
  %conv138 = and i32 %56, 65535
  %conv142 = and i32 %61, 65535
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %conv116, i32 noundef %conv118, i32 noundef %conv120, i32 noundef %conv122, i32 noundef %conv124, i32 noundef %conv126, i32 noundef %conv128, i32 noundef %conv130, i32 noundef %conv132, i32 noundef %conv134, i32 noundef %shr97, i32 noundef %conv138, i32 noundef %shr106, i32 noundef %conv142) #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end93, %do.end
  %retval.0.ph = phi i32 [ 0, %if.end93 ], [ %retval.0.i194, %do.end ]
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_sriov_vf_init(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i82.i = alloca %struct.qlcnic_cmd_args, align 4
  %cmd.i.i = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %status = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 3
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status) #12
  %delay = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 2
  %2 = ptrtoint ptr %delay to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 100, ptr %delay, align 8
  %reset_context = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %reset_context to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %reset_context, align 4
  %fw_fail_cnt = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 22
  %4 = ptrtoint ptr %fw_fail_cnt to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %fw_fail_cnt, align 8
  %msix_supported = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %msix_supported to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %msix_supported, align 1
  %need_fw_reset = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 24
  %6 = ptrtoint ptr %need_fw_reset to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %need_fw_reset, align 2
  %flags = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %or = or i32 %8, 65536
  store i32 %or, ptr %flags, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  tail call void @msleep(i32 noundef 20) #12
  %9 = ptrtoint ptr %fw_fail_cnt to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fw_fail_cnt, align 8
  %inc.i = add i8 %10, 1
  store i8 %inc.i, ptr %fw_fail_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %inc.i)
  %cmp.i = icmp ugt i8 %inc.i, 5
  br i1 %cmp.i, label %do.body.i.cleanup_crit_edge, label %if.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %do.body.i
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %ext_reg_tbl.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %12, i32 0, i32 56
  %15 = ptrtoint ptr %ext_reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ext_reg_tbl.i, align 8
  %arrayidx.i = getelementptr i32, ptr %16, i32 12
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %18
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !229
  %cmp4.not.i = icmp eq i32 %19, 50331648
  br i1 %cmp4.not.i, label %if.end, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

if.end:                                           ; preds = %if.end.i
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 8
  %or.i = or i32 %21, 8388608
  store i32 %or.i, ptr %flags, align 8
  %22 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter, align 8
  %total_nic_func.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %23, i32 0, i32 36
  %24 = ptrtoint ptr %total_nic_func.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %total_nic_func.i, align 8
  %vf_mc_list.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 58
  %25 = ptrtoint ptr %vf_mc_list.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %vf_mc_list.i, ptr %vf_mc_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 58, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %vf_mc_list.i, ptr %prev.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qlcnic_use_msi_x to i32))
  %27 = load i32, ptr @qlcnic_use_msi_x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.if.end.i51_crit_edge

if.end.if.end.i51_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i51

land.lhs.true.i:                                  ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qlcnic_use_msi to i32))
  %28 = load i32, ptr @qlcnic_use_msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool1.not.i = icmp eq i32 %28, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i51_crit_edge, label %do.end.i

land.lhs.true.i.if.end.i51_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i51

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %29 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.52) #17
  br label %if.end.i51

if.end.i51:                                       ; preds = %do.end.i, %land.lhs.true.i.if.end.i51_crit_edge, %if.end.if.end.i51_crit_edge
  tail call void @qlcnic_set_tx_ring_count(ptr noundef %adapter, i8 noundef zeroext 1) #12
  tail call void @qlcnic_set_sds_ring_count(ptr noundef %adapter, i8 noundef zeroext 1) #12
  %31 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter, align 8
  %hw_ops.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %32, i32 0, i32 46
  %33 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_ops.i.i, align 4
  %setup_intr.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %setup_intr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %setup_intr.i.i, align 4
  %call.i.i = tail call i32 %36(ptr noundef %adapter) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end9.i, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #14
  %pdev7.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %37 = ptrtoint ptr %pdev7.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev7.i, align 8
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.55) #17
  br label %qlcnic_sriov_setup_vf.exit

if.end9.i:                                        ; preds = %if.end.i51
  %call10.i = tail call i32 @qlcnic_83xx_setup_mbx_intr(ptr noundef %adapter) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end9.i.qlcnic_sriov_setup_vf.exit_crit_edge

if.end9.i.qlcnic_sriov_setup_vf.exit_crit_edge:   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_setup_vf.exit

if.end13.i:                                       ; preds = %if.end9.i
  %call14.i = tail call i32 @qlcnic_sriov_init(ptr noundef %adapter, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end13.i.err_out_disable_mbx_intr.i_crit_edge

if.end13.i.err_out_disable_mbx_intr.i_crit_edge:  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_disable_mbx_intr.i

if.end17.i:                                       ; preds = %if.end13.i
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd.i.i) #12
  %39 = call ptr @memset(ptr %cmd.i.i, i32 255, i32 120)
  %state.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %40 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %state.i.i, align 4
  %42 = and i32 %41, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i, label %qlcnic_sriov_cfg_bc_intr.exit.thread.i, label %if.end.i.i

qlcnic_sriov_cfg_bc_intr.exit.thread.i:           ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i.i) #12
  br label %if.end21.i

if.end.i.i:                                       ; preds = %if.end17.i
  %43 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adapter, align 8
  %hw_ops.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %44, i32 0, i32 46
  %45 = ptrtoint ptr %hw_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw_ops.i.i.i, align 4
  %alloc_mbx_args.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %alloc_mbx_args.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %alloc_mbx_args.i.i.i, align 4
  %call.i.i.i = call i32 %48(ptr noundef nonnull %cmd.i.i, ptr noundef %adapter, i32 noundef 49) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %qlcnic_sriov_cfg_bc_intr.exit.thread101.i

qlcnic_sriov_cfg_bc_intr.exit.thread101.i:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i.i) #12
  br label %err_out_cleanup_sriov.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %arg.i.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i.i, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arg.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %50, i32 1
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 240, ptr %arrayidx.i.i, align 4
  %call8.i.i = call i32 @qlcnic_83xx_issue_cmd(ptr noundef %adapter, ptr noundef nonnull %cmd.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %cmp.not.i.i, label %qlcnic_sriov_cfg_bc_intr.exit.thread104.i, label %qlcnic_sriov_cfg_bc_intr.exit.i

qlcnic_sriov_cfg_bc_intr.exit.thread104.i:        ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i.i) #12
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i.i) #12
  br label %if.end21.i

qlcnic_sriov_cfg_bc_intr.exit.i:                  ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %52 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.43, i32 noundef %call8.i.i) #17
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i.i) #12
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i.i) #12
  br label %err_out_cleanup_sriov.i

if.end21.i:                                       ; preds = %qlcnic_sriov_cfg_bc_intr.exit.thread104.i, %qlcnic_sriov_cfg_bc_intr.exit.thread.i
  %call22.i = call fastcc i32 @qlcnic_sriov_channel_cfg_cmd(ptr noundef %adapter, i8 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end21.i.err_out_disable_bc_intr.i_crit_edge

if.end21.i.err_out_disable_bc_intr.i_crit_edge:   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_disable_bc_intr.i

if.end25.i:                                       ; preds = %if.end21.i
  %call26.i = call fastcc i32 @qlcnic_sriov_vf_init_driver(ptr noundef %adapter) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end25.i.err_out_send_channel_term.i_crit_edge

if.end25.i.err_out_send_channel_term.i_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_send_channel_term.i

if.end29.i:                                       ; preds = %if.end25.i
  %call30.i = call fastcc i32 @qlcnic_sriov_get_vf_acl(ptr noundef %adapter) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end29.i.err_out_send_channel_term.i_crit_edge

if.end29.i.err_out_send_channel_term.i_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_send_channel_term.i

if.end33.i:                                       ; preds = %if.end29.i
  %netdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %54 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %netdev.i, align 4
  %call34.i = call i32 @qlcnic_setup_netdev(ptr noundef %adapter, ptr noundef %55) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end6, label %if.end33.i.err_out_send_channel_term.i_crit_edge

if.end33.i.err_out_send_channel_term.i_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_send_channel_term.i

err_out_send_channel_term.i:                      ; preds = %if.end33.i.err_out_send_channel_term.i_crit_edge, %if.end29.i.err_out_send_channel_term.i_crit_edge, %if.end25.i.err_out_send_channel_term.i_crit_edge
  %err.0.i = phi i32 [ %call26.i, %if.end25.i.err_out_send_channel_term.i_crit_edge ], [ %call30.i, %if.end29.i.err_out_send_channel_term.i_crit_edge ], [ %call34.i, %if.end33.i.err_out_send_channel_term.i_crit_edge ]
  %call46.i = call fastcc i32 @qlcnic_sriov_channel_cfg_cmd(ptr noundef %adapter, i8 noundef zeroext 1) #12
  br label %err_out_disable_bc_intr.i

err_out_disable_bc_intr.i:                        ; preds = %err_out_send_channel_term.i, %if.end21.i.err_out_disable_bc_intr.i_crit_edge
  %err.1.i = phi i32 [ %call22.i, %if.end21.i.err_out_disable_bc_intr.i_crit_edge ], [ %err.0.i, %err_out_send_channel_term.i ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd.i82.i) #12
  %56 = call ptr @memset(ptr %cmd.i82.i, i32 255, i32 120)
  %57 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %state.i.i, align 4
  %59 = and i32 %58, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i84.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i84.i, label %err_out_disable_bc_intr.i.qlcnic_sriov_cfg_bc_intr.exit98.i_crit_edge, label %if.end.i89.i

err_out_disable_bc_intr.i.qlcnic_sriov_cfg_bc_intr.exit98.i_crit_edge: ; preds = %err_out_disable_bc_intr.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_cfg_bc_intr.exit98.i

if.end.i89.i:                                     ; preds = %err_out_disable_bc_intr.i
  %60 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %adapter, align 8
  %hw_ops.i.i85.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %61, i32 0, i32 46
  %62 = ptrtoint ptr %hw_ops.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw_ops.i.i85.i, align 4
  %alloc_mbx_args.i.i86.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %alloc_mbx_args.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %alloc_mbx_args.i.i86.i, align 4
  %call.i.i87.i = call i32 %65(ptr noundef nonnull %cmd.i82.i, ptr noundef %adapter, i32 noundef 49) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i87.i)
  %tobool2.not.i88.i = icmp eq i32 %call.i.i87.i, 0
  br i1 %tobool2.not.i88.i, label %if.end4.i90.i, label %if.end.i89.i.qlcnic_sriov_cfg_bc_intr.exit98.i_crit_edge

if.end.i89.i.qlcnic_sriov_cfg_bc_intr.exit98.i_crit_edge: ; preds = %if.end.i89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_cfg_bc_intr.exit98.i

if.end4.i90.i:                                    ; preds = %if.end.i89.i
  %call8.i91.i = call i32 @qlcnic_83xx_issue_cmd(ptr noundef %adapter, ptr noundef nonnull %cmd.i82.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i91.i)
  %cmp.not.i92.i = icmp eq i32 %call8.i91.i, 0
  br i1 %cmp.not.i92.i, label %if.end4.i90.i.if.end11.i96.i_crit_edge, label %do.end.i95.i

if.end4.i90.i.if.end11.i96.i_crit_edge:           ; preds = %if.end4.i90.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i96.i

do.end.i95.i:                                     ; preds = %if.end4.i90.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i93.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %66 = ptrtoint ptr %pdev.i93.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev.i93.i, align 8
  %dev.i94.i = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i94.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.44, i32 noundef %call8.i91.i) #17
  br label %if.end11.i96.i

if.end11.i96.i:                                   ; preds = %do.end.i95.i, %if.end4.i90.i.if.end11.i96.i_crit_edge
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i82.i) #12
  br label %qlcnic_sriov_cfg_bc_intr.exit98.i

qlcnic_sriov_cfg_bc_intr.exit98.i:                ; preds = %if.end11.i96.i, %if.end.i89.i.qlcnic_sriov_cfg_bc_intr.exit98.i_crit_edge, %err_out_disable_bc_intr.i.qlcnic_sriov_cfg_bc_intr.exit98.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i82.i) #12
  br label %err_out_cleanup_sriov.i

err_out_cleanup_sriov.i:                          ; preds = %qlcnic_sriov_cfg_bc_intr.exit98.i, %qlcnic_sriov_cfg_bc_intr.exit.i, %qlcnic_sriov_cfg_bc_intr.exit.thread101.i
  %err.2.i = phi i32 [ %call8.i.i, %qlcnic_sriov_cfg_bc_intr.exit.i ], [ %err.1.i, %qlcnic_sriov_cfg_bc_intr.exit98.i ], [ -12, %qlcnic_sriov_cfg_bc_intr.exit.thread101.i ]
  call void @__qlcnic_sriov_cleanup(ptr noundef %adapter) #12
  br label %err_out_disable_mbx_intr.i

err_out_disable_mbx_intr.i:                       ; preds = %err_out_cleanup_sriov.i, %if.end13.i.err_out_disable_mbx_intr.i_crit_edge
  %err.3.i = phi i32 [ %call14.i, %if.end13.i.err_out_disable_mbx_intr.i_crit_edge ], [ %err.2.i, %err_out_cleanup_sriov.i ]
  call void @qlcnic_83xx_free_mbx_intr(ptr noundef %adapter) #12
  br label %qlcnic_sriov_setup_vf.exit

qlcnic_sriov_setup_vf.exit:                       ; preds = %err_out_disable_mbx_intr.i, %if.end9.i.qlcnic_sriov_setup_vf.exit_crit_edge, %do.end6.i
  %err.4.i = phi i32 [ %call.i.i, %do.end6.i ], [ %call10.i, %if.end9.i.qlcnic_sriov_setup_vf.exit_crit_edge ], [ %err.3.i, %err_out_disable_mbx_intr.i ]
  call void @qlcnic_teardown_intr(ptr noundef %adapter) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end33.i
  %pdev38.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %68 = ptrtoint ptr %pdev38.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev38.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44, i32 8
  %70 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %adapter, ptr %driver_data.i.i.i, align 4
  %71 = load ptr, ptr %pdev38.i, align 8
  %dev43.i = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  %72 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev43.i, ptr noundef nonnull @.str.58, ptr noundef %73) #17
  %74 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %adapter, align 8
  %delay.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %75, i32 0, i32 51, i32 2
  %76 = ptrtoint ptr %delay.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %delay.i, align 8
  %conv.i = trunc i64 %77 to i32
  call void @qlcnic_schedule_work(ptr noundef %adapter, ptr noundef nonnull @qlcnic_sriov_vf_poll_dev_state, i32 noundef %conv.i) #12
  %call7 = call i32 @qlcnic_read_mac_addr(ptr noundef %adapter) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.do.body12_crit_edge, label %do.end

if.end6.do.body12_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %pdev38.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdev38.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.33) #17
  br label %do.body12

do.body12:                                        ; preds = %do.end, %if.end6.do.body12_crit_edge
  %idc_aen_work = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 53
  call void @__init_work(ptr noundef %idc_aen_work, i32 noundef 0) #12
  %80 = ptrtoint ptr %idc_aen_work to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -64, ptr %idc_aen_work, align 4
  %lockdep_map = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 53, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.36, ptr noundef nonnull @qlcnic_sriov_vf_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry19 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 53, i32 0, i32 1
  %81 = ptrtoint ptr %entry19 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %entry19, ptr %entry19, align 4
  %prev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 53, i32 0, i32 1, i32 1
  %82 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %entry19, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 53, i32 0, i32 2
  %83 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @qlcnic_83xx_idc_aen_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 53, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.38, ptr noundef nonnull @qlcnic_sriov_vf_init.__key.37) #12
  call void @_clear_bit(i32 noundef 2, ptr noundef %state.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body12, %qlcnic_sriov_setup_vf.exit, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body12 ], [ %err.4.i, %qlcnic_sriov_setup_vf.exit ], [ -5, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_read_mac_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_idc_aen_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_sriov_vf_set_ops(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %op_mode = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %op_mode to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 4, ptr %op_mode, align 2
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %fw_hal_version = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 44
  %5 = ptrtoint ptr %fw_hal_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_hal_version, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %6) #17
  %nic_ops = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 43
  %7 = ptrtoint ptr %nic_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @qlcnic_sriov_vf_ops, ptr %nic_ops, align 8
  %state = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 10, ptr noundef %state) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @qlcnic_sriov_vf_register_map(ptr nocapture noundef writeonly %ahw) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_ops = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %ahw, i32 0, i32 46
  %0 = ptrtoint ptr %hw_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @qlcnic_sriov_vf_hw_ops, ptr %hw_ops, align 4
  %reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %ahw, i32 0, i32 55
  %1 = ptrtoint ptr %reg_tbl to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @qlcnic_83xx_reg_tbl, ptr %reg_tbl, align 4
  %ext_reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %ahw, i32 0, i32 56
  %2 = ptrtoint ptr %ext_reg_tbl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @qlcnic_83xx_ext_reg_tbl, ptr %ext_reg_tbl, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_sriov_func_to_index(ptr nocapture noundef readonly %adapter, i8 noundef zeroext %pci_func) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %sriov = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %sriov to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov, align 8
  %vf_info1 = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %vf_info1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vf_info1, align 4
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device1.i, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.119)
  switch i16 %9, label %for.cond.preheader [
    i16 -31696, label %entry.cleanup_crit_edge
    i16 -31680, label %entry.cleanup_crit_edge23
    i16 -29648, label %entry.cleanup_crit_edge24
  ]

entry.cleanup_crit_edge24:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.cleanup_crit_edge23:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_vfs = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_vfs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp20.not = icmp eq i8 %12, 0
  br i1 %cmp20.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.preheader

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i8 %12 to i32
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %indvars.iv
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %pci_func)
  %cmp9 = icmp eq i8 %14, %pci_func
  br i1 %cmp9, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge23, %entry.cleanup_crit_edge24
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge23 ], [ 0, %entry.cleanup_crit_edge24 ], [ -22, %for.cond.preheader.cleanup_crit_edge ], [ %indvars.iv, %for.body.cleanup_crit_edge ], [ -22, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__qlcnic_sriov_add_act_list(ptr nocapture noundef readonly %sriov, ptr noundef %vf, ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 12, i32 2
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %count, align 4
  %list = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 9
  %wait_list = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 12, i32 1
  %prev.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 12, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %3, ptr noundef %wait_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i, align 4
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %wait_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then, label %list_add_tail.exit.if.end_crit_edge

list_add_tail.exit.if.end_crit_edge:              ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %list_add_tail.exit
  %state.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 5
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.then
  %adapter.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 14
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 4
  %need_fw_reset.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %14, i32 0, i32 24
  %15 = ptrtoint ptr %need_fw_reset.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %need_fw_reset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool1.not.i = icmp eq i8 %16, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %bc_trans_wq.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %sriov, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %bc_trans_wq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bc_trans_wq.i, align 4
  %trans_work.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 7
  %call.i.i5 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %trans_work.i) #12
  br label %if.end

if.end:                                           ; preds = %if.end.i, %lor.lhs.false.i.if.end_crit_edge, %if.then.if.end_crit_edge, %list_add_tail.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_sriov_handle_bc_event(ptr nocapture noundef readonly %adapter, i32 noundef %event) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i.i = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %sriov1 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %sriov1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov1, align 8
  %shr.i = lshr i32 %event, 4
  %conv.i = trunc i32 %shr.i to i8
  %vf_info1.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %vf_info1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vf_info1.i, align 4
  %pdev.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %6 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device1.i.i, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.120)
  switch i16 %9, label %for.cond.preheader.i [
    i16 -31696, label %entry.if.end_crit_edge
    i16 -31680, label %entry.if.end_crit_edge53
    i16 -29648, label %entry.if.end_crit_edge54
  ]

entry.if.end_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.preheader.i:                             ; preds = %entry
  %num_vfs.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %num_vfs.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_vfs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp20.not.i = icmp eq i8 %12, 0
  br i1 %cmp20.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %wide.trip.count.i = zext i8 %12 to i32
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %indvars.iv.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %conv.i)
  %cmp9.i = icmp eq i8 %14, %conv.i
  br i1 %cmp9.i, label %for.body.i.if.end_crit_edge, label %for.cond.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %entry.if.end_crit_edge, %entry.if.end_crit_edge53, %entry.if.end_crit_edge54
  %retval.0.i.ph = phi i32 [ 0, %entry.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge53 ], [ 0, %entry.if.end_crit_edge54 ], [ %indvars.iv.i, %for.body.i.if.end_crit_edge ]
  %arrayidx = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %retval.0.i.ph
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %arrayidx, align 4
  %and.i = and i32 %event, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ch_free_cmpl = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %retval.0.i.ph, i32 6
  tail call void @complete(ptr noundef %ch_free_cmpl) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %and.i27 = and i32 %event, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27)
  %tobool.i28.not = icmp eq i32 %and.i27, 0
  br i1 %tobool.i28.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end6
  %adapter1.i = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %retval.0.i.ph, i32 14
  %16 = ptrtoint ptr %adapter1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter1.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %op_mode.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %19, i32 0, i32 30
  %20 = ptrtoint ptr %op_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %op_mode.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %21)
  %cmp.i.i = icmp eq i16 %21, 3
  br i1 %cmp.i.i, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @qlcnic_sriov_pf_handle_flr(ptr noundef %3, ptr noundef %arrayidx) #12
  br label %cleanup

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %17, i32 0, i32 4
  %22 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.115) #17
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %and.i29 = and i32 %event, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %tobool.i30.not = icmp eq i32 %and.i29, 0
  br i1 %tobool.i30.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  %adapter.i = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %retval.0.i.ph, i32 14
  %24 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %add.ptr3.i = getelementptr i8, ptr %29, i32 2056
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #12, !srcloc !228
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !230
  %hdr.sroa.0.sroa.0.0.extract.shift.i = lshr i32 %31, 24
  %hdr.sroa.0.sroa.0.0.extract.trunc.i = trunc i32 %hdr.sroa.0.sroa.0.0.extract.shift.i to i8
  %hdr.sroa.0.sroa.6.0.extract.shift.i = lshr i32 %31, 8
  %32 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %add.ptr3.1.i = getelementptr i8, ptr %37, i32 2060
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.1.i) #12, !srcloc !228
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !230
  %hdr.sroa.9.sroa.0.0.extract.shift.i = lshr i32 %39, 16
  %hdr.sroa.9.sroa.0.0.extract.trunc.i = trunc i32 %hdr.sroa.9.sroa.0.0.extract.shift.i to i16
  %hdr.sroa.9.sroa.7.0.extract.shift.i = lshr i32 %39, 8
  %hdr.sroa.9.sroa.7.0.extract.trunc.i = trunc i32 %hdr.sroa.9.sroa.7.0.extract.shift.i to i8
  %40 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %add.ptr3.2.i = getelementptr i8, ptr %45, i32 2064
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.2.i) #12, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !230
  %47 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adapter.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  %add.ptr3.3.i = getelementptr i8, ptr %52, i32 2068
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.3.i) #12, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !230
  %bf.clear.i = and i32 %hdr.sroa.0.sroa.6.0.extract.shift.i, 15
  %54 = zext i32 %bf.clear.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %bf.clear.i, label %if.then11.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb8.i
  ]

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then11
  %55 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd.i.i) #12
  %57 = call ptr @memset(ptr %cmd.i.i, i32 255, i32 120)
  %need_fw_reset.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %56, i32 0, i32 24
  %58 = ptrtoint ptr %need_fw_reset.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %need_fw_reset.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i.i = icmp eq i8 %59, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb.i.qlcnic_sriov_handle_bc_cmd.exit.i_crit_edge

sw.bb.i.qlcnic_sriov_handle_bc_cmd.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_handle_bc_cmd.exit.i

if.end.i.i:                                       ; preds = %sw.bb.i
  %state.i.i = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %retval.0.i.ph, i32 5
  %60 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %state.i.i, align 4
  %62 = and i32 %61, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool2.not.i.i = icmp ne i32 %62, 0
  %63 = and i32 %31, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.not.i.i = icmp ne i32 %63, 0
  %or.cond.i = select i1 %tobool2.not.i.i, i1 true, i1 %cmp.not.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hdr.sroa.9.sroa.7.0.extract.trunc.i)
  %cmp7.not.i.i = icmp eq i8 %hdr.sroa.9.sroa.7.0.extract.trunc.i, 0
  %or.cond52.i = select i1 %or.cond.i, i1 true, i1 %cmp7.not.i.i
  br i1 %or.cond52.i, label %if.end10.i.i, label %if.end.i.i.qlcnic_sriov_handle_bc_cmd.exit.i_crit_edge

if.end.i.i.qlcnic_sriov_handle_bc_cmd.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_handle_bc_cmd.exit.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  %64 = and i32 %39, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp12.i.not.i = icmp eq i32 %64, 0
  br i1 %cmp12.i.not.i, label %if.end15.i.i, label %if.then14.i.i

if.then14.i.i:                                    ; preds = %if.end10.i.i
  %rcv_pend.i.i.i = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %retval.0.i.ph, i32 13
  tail call void @_raw_spin_lock(ptr noundef %rcv_pend.i.i.i) #12
  %count.i.i.i = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %retval.0.i.ph, i32 13, i32 2
  %65 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp.i.i.i = icmp sgt i32 %66, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then14.i.i.qlcnic_sriov_handle_pending_trans.exit.i.i_crit_edge

if.then14.i.i.qlcnic_sriov_handle_pending_trans.exit.i.i_crit_edge: ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_handle_pending_trans.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then14.i.i
  %wait_list.i.i.i = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %retval.0.i.ph, i32 13, i32 1
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.then.i.i.i
  %node.0.in.i.i.i = phi ptr [ %wait_list.i.i.i, %if.then.i.i.i ], [ %node.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %67 = ptrtoint ptr %node.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %node.0.i.i.i = load ptr, ptr %node.0.in.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %node.0.i.i.i, %wait_list.i.i.i
  br i1 %cmp.i.not.i.i.i, label %for.cond.i.i.i.qlcnic_sriov_handle_pending_trans.exit.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.qlcnic_sriov_handle_pending_trans.exit.i.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_handle_pending_trans.exit.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %trans_id.i.i.i = getelementptr i8, ptr %node.0.i.i.i, i32 -8
  %68 = ptrtoint ptr %trans_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %trans_id.i.i.i, align 4
  %cmp5.i.i.i = icmp eq i32 %69, %hdr.sroa.9.sroa.0.0.extract.shift.i
  br i1 %cmp5.i.i.i, label %if.then11.i.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i

if.then11.i.i.i:                                  ; preds = %for.body.i.i.i
  %curr_req_frag.i.i.i = getelementptr i8, ptr %node.0.i.i.i, i32 -17
  %70 = ptrtoint ptr %curr_req_frag.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %curr_req_frag.i.i.i, align 1
  %conv12.i.i.i = zext i8 %71 to i32
  %req_pay_size.i.i.i = getelementptr i8, ptr %node.0.i.i.i, i32 -14
  %72 = ptrtoint ptr %req_pay_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %req_pay_size.i.i.i, align 2
  %conv13.i.i.i = zext i16 %73 to i32
  %74 = mul nuw nsw i32 %conv12.i.i.i, 1008
  %mul.i.i.i.i = add nuw nsw i32 %74, 1008
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.i.i, i32 %conv13.i.i.i)
  %tobool.not.i.i.i.i = icmp ugt i32 %mul.i.i.i.i, %conv13.i.i.i
  %rem.i62.i.i.i = urem i16 %73, 1008
  %75 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %adapter.i, align 4
  %req_hdr.i.i.i = getelementptr i8, ptr %node.0.i.i.i, i32 8
  %77 = ptrtoint ptr %req_hdr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %req_hdr.i.i.i, align 4
  %add.ptr16.i.i.i = getelementptr %struct.qlcnic_bc_hdr, ptr %78, i32 %conv12.i.i.i
  %req_pay.i.i.i = getelementptr i8, ptr %node.0.i.i.i, i32 16
  %79 = ptrtoint ptr %req_pay.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %req_pay.i.i.i, align 4
  %81 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %76, align 8
  %83 = lshr i16 %rem.i62.i.i.i, 2
  %84 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %82, align 8
  %add.ptr7.i.i.i.i = getelementptr i8, ptr %85, i32 2056
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i.i) #12, !srcloc !228
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !231
  %incdec.ptr.i.i.i.i = getelementptr i32, ptr %add.ptr16.i.i.i, i32 1
  %88 = ptrtoint ptr %add.ptr16.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %add.ptr16.i.i.i, align 4
  %89 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %82, align 8
  %add.ptr7.1.i.i.i.i = getelementptr i8, ptr %90, i32 2060
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.1.i.i.i.i) #12, !srcloc !228
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !231
  %incdec.ptr.1.i.i.i.i = getelementptr i32, ptr %add.ptr16.i.i.i, i32 2
  %93 = ptrtoint ptr %incdec.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %incdec.ptr.i.i.i.i, align 4
  %94 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %82, align 8
  %add.ptr7.2.i.i.i.i = getelementptr i8, ptr %95, i32 2064
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.2.i.i.i.i) #12, !srcloc !228
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !231
  %incdec.ptr.2.i.i.i.i = getelementptr i32, ptr %add.ptr16.i.i.i, i32 3
  %98 = ptrtoint ptr %incdec.ptr.1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %incdec.ptr.1.i.i.i.i, align 4
  %99 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %82, align 8
  %add.ptr7.3.i.i.i.i = getelementptr i8, ptr %100, i32 2068
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.3.i.i.i.i) #12, !srcloc !228
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !231
  %103 = ptrtoint ptr %incdec.ptr.2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %incdec.ptr.2.i.i.i.i, align 4
  %narrow.i.i.i = add nuw nsw i16 %83, 4
  %rem.i.zext.op.op.op.i.i.i = zext i16 %narrow.i.i.i to i32
  %conv12.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %rem.i.zext.op.op.op.i.i.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv12.i.i.i.i)
  %cmp1344.i.i.i.i = icmp ugt i32 %conv12.i.i.i.i, 4
  br i1 %cmp1344.i.i.i.i, label %for.body15.i.preheader.i.i.i, label %if.then11.i.i.i.qlcnic_sriov_pull_bc_msg.exit.i.i.i_crit_edge

if.then11.i.i.i.qlcnic_sriov_pull_bc_msg.exit.i.i.i_crit_edge: ; preds = %if.then11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_pull_bc_msg.exit.i.i.i

for.body15.i.preheader.i.i.i:                     ; preds = %if.then11.i.i.i
  %add.ptr17.i.i.i = getelementptr %struct.qlcnic_bc_payload, ptr %80, i32 %conv12.i.i.i
  br label %for.body15.i.i.i.i

for.body15.i.i.i.i:                               ; preds = %for.body15.i.i.i.i.for.body15.i.i.i.i_crit_edge, %for.body15.i.preheader.i.i.i
  %indvars.iv.i.i.i.i = phi i32 [ %indvars.iv.next.i.i.i.i, %for.body15.i.i.i.i.for.body15.i.i.i.i_crit_edge ], [ 4, %for.body15.i.preheader.i.i.i ]
  %pay.addr.047.i.i.i.i = phi ptr [ %incdec.ptr26.i.i.i.i, %for.body15.i.i.i.i.for.body15.i.i.i.i_crit_edge ], [ %add.ptr17.i.i.i, %for.body15.i.preheader.i.i.i ]
  %i.146.i.i.i.i = phi i8 [ %inc28.i.i.i.i, %for.body15.i.i.i.i.for.body15.i.i.i.i_crit_edge ], [ 6, %for.body15.i.preheader.i.i.i ]
  %104 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %82, align 8
  %add.ptr19.i.i.i.i = getelementptr i8, ptr %105, i32 2048
  %conv20.i.i.i.i = zext i8 %i.146.i.i.i.i to i32
  %mul21.i.i.i.i = shl nuw nsw i32 %conv20.i.i.i.i, 2
  %add.ptr22.i.i.i.i = getelementptr i8, ptr %add.ptr19.i.i.i.i, i32 %mul21.i.i.i.i
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i.i.i.i) #12, !srcloc !228
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !232
  %incdec.ptr26.i.i.i.i = getelementptr i32, ptr %pay.addr.047.i.i.i.i, i32 1
  %108 = ptrtoint ptr %pay.addr.047.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %pay.addr.047.i.i.i.i, align 4
  %inc28.i.i.i.i = add i8 %i.146.i.i.i.i, 1
  %indvars.iv.next.i.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %indvars.iv.next.i.i.i.i, %conv12.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %for.body15.i.i.i.i.qlcnic_sriov_pull_bc_msg.exit.i.i.i_crit_edge, label %for.body15.i.i.i.i.for.body15.i.i.i.i_crit_edge

for.body15.i.i.i.i.for.body15.i.i.i.i_crit_edge:  ; preds = %for.body15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body15.i.i.i.i

for.body15.i.i.i.i.qlcnic_sriov_pull_bc_msg.exit.i.i.i_crit_edge: ; preds = %for.body15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_pull_bc_msg.exit.i.i.i

qlcnic_sriov_pull_bc_msg.exit.i.i.i:              ; preds = %for.body15.i.i.i.i.qlcnic_sriov_pull_bc_msg.exit.i.i.i_crit_edge, %if.then11.i.i.i.qlcnic_sriov_pull_bc_msg.exit.i.i.i_crit_edge
  %109 = ptrtoint ptr %curr_req_frag.i.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %curr_req_frag.i.i.i, align 1
  %inc.i.i.i = add i8 %110, 1
  store i8 %inc.i.i.i, ptr %curr_req_frag.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %inc.i.i.i, i8 %hdr.sroa.0.sroa.0.0.extract.trunc.i)
  %cmp22.not.i.i.i = icmp ult i8 %inc.i.i.i, %hdr.sroa.0.sroa.0.0.extract.trunc.i
  br i1 %cmp22.not.i.i.i, label %qlcnic_sriov_pull_bc_msg.exit.i.i.i.qlcnic_sriov_handle_pending_trans.exit.i.i_crit_edge, label %if.then24.i.i.i

qlcnic_sriov_pull_bc_msg.exit.i.i.i.qlcnic_sriov_handle_pending_trans.exit.i.i_crit_edge: ; preds = %qlcnic_sriov_pull_bc_msg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_handle_pending_trans.exit.i.i

if.then24.i.i.i:                                  ; preds = %qlcnic_sriov_pull_bc_msg.exit.i.i.i
  %111 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %count.i.i.i, align 4
  %dec.i.i.i = add i32 %112, -1
  store i32 %dec.i.i.i, ptr %count.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.0.i.i.i) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then24.i.i.i.list_del.exit.i.i.i_crit_edge

if.then24.i.i.i.list_del.exit.i.i.i_crit_edge:    ; preds = %if.then24.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then24.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %node.0.i.i.i, i32 0, i32 1
  %113 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %115 = ptrtoint ptr %node.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %node.0.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %114, ptr %prev1.i.i.i.i.i.i, align 4
  %118 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %116, ptr %114, align 4
  br label %list_del.exit.i.i.i

list_del.exit.i.i.i:                              ; preds = %if.end.i.i.i.i.i, %if.then24.i.i.i.list_del.exit.i.i.i_crit_edge
  %119 = ptrtoint ptr %node.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr inttoptr (i32 256 to ptr), ptr %node.0.i.i.i, align 4
  %prev.i.i.i.i = getelementptr %struct.list_head, ptr %node.0.i.i.i, i32 0, i32 1
  %120 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %rcv_pend.i.i.i) #12
  %rcv_act.i.i.i.i = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %retval.0.i.ph, i32 12
  tail call void @_raw_spin_lock(ptr noundef %rcv_act.i.i.i.i) #12
  %count.i.i.i.i.i = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %retval.0.i.ph, i32 12, i32 2
  %121 = ptrtoint ptr %count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %count.i.i.i.i.i, align 4
  %inc.i.i.i.i.i = add i32 %122, 1
  store i32 %inc.i.i.i.i.i, ptr %count.i.i.i.i.i, align 4
  %wait_list.i.i.i.i.i = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %retval.0.i.ph, i32 12, i32 1
  %prev.i.i.i.i.i.i = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %retval.0.i.ph, i32 12, i32 1, i32 1
  %123 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.0.i.i.i, ptr noundef %124, ptr noundef %wait_list.i.i.i.i.i) #12
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %list_del.exit.i.i.i.list_add_tail.exit.i.i.i.i.i_crit_edge

list_del.exit.i.i.i.list_add_tail.exit.i.i.i.i.i_crit_edge: ; preds = %list_del.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %list_del.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %125 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %node.0.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %126 = ptrtoint ptr %node.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %wait_list.i.i.i.i.i, ptr %node.0.i.i.i, align 4
  %127 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %124, ptr %prev.i.i.i.i, align 4
  %128 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %node.0.i.i.i, ptr %124, align 4
  br label %list_add_tail.exit.i.i.i.i.i

list_add_tail.exit.i.i.i.i.i:                     ; preds = %if.end.i.i.i.i.i.i.i, %list_del.exit.i.i.i.list_add_tail.exit.i.i.i.i.i_crit_edge
  %129 = ptrtoint ptr %count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %130)
  %cmp.i.i.i.i.i = icmp eq i32 %130, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %list_add_tail.exit.i.i.i.i.i.qlcnic_sriov_handle_pending_trans.exit.i.i_crit_edge

list_add_tail.exit.i.i.i.i.i.qlcnic_sriov_handle_pending_trans.exit.i.i_crit_edge: ; preds = %list_add_tail.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_handle_pending_trans.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %list_add_tail.exit.i.i.i.i.i
  %131 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %state.i.i, align 4
  %133 = and i32 %132, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %133, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %lor.lhs.false.i.i.i.i.i.i, label %if.then.i.i.i.i.i.qlcnic_sriov_handle_pending_trans.exit.i.i_crit_edge

if.then.i.i.i.i.i.qlcnic_sriov_handle_pending_trans.exit.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_handle_pending_trans.exit.i.i

lor.lhs.false.i.i.i.i.i.i:                        ; preds = %if.then.i.i.i.i.i
  %134 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %adapter.i, align 4
  %need_fw_reset.i.i.i.i.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %135, i32 0, i32 24
  %136 = ptrtoint ptr %need_fw_reset.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %need_fw_reset.i.i.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool1.not.i.i.i.i.i.i = icmp eq i8 %137, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %lor.lhs.false.i.i.i.i.i.i.qlcnic_sriov_handle_pending_trans.exit.i.i_crit_edge

lor.lhs.false.i.i.i.i.i.i.qlcnic_sriov_handle_pending_trans.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_handle_pending_trans.exit.i.i

if.end.i.i.i.i.i.i:                               ; preds = %lor.lhs.false.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %bc_trans_wq.i.i.i.i.i.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 8, i32 1
  %138 = ptrtoint ptr %bc_trans_wq.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %bc_trans_wq.i.i.i.i.i.i, align 4
  %trans_work.i.i.i.i.i.i = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %retval.0.i.ph, i32 7
  %call.i.i5.i.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %139, ptr noundef %trans_work.i.i.i.i.i.i) #12
  br label %qlcnic_sriov_handle_pending_trans.exit.i.i

qlcnic_sriov_handle_pending_trans.exit.i.i:       ; preds = %if.end.i.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i.qlcnic_sriov_handle_pending_trans.exit.i.i_crit_edge, %if.then.i.i.i.i.i.qlcnic_sriov_handle_pending_trans.exit.i.i_crit_edge, %list_add_tail.exit.i.i.i.i.i.qlcnic_sriov_handle_pending_trans.exit.i.i_crit_edge, %qlcnic_sriov_pull_bc_msg.exit.i.i.i.qlcnic_sriov_handle_pending_trans.exit.i.i_crit_edge, %for.cond.i.i.i.qlcnic_sriov_handle_pending_trans.exit.i.i_crit_edge, %if.then14.i.i.qlcnic_sriov_handle_pending_trans.exit.i.i_crit_edge
  %rcv_pend.sink.i.i.i = phi ptr [ %rcv_act.i.i.i.i, %list_add_tail.exit.i.i.i.i.i.qlcnic_sriov_handle_pending_trans.exit.i.i_crit_edge ], [ %rcv_act.i.i.i.i, %if.then.i.i.i.i.i.qlcnic_sriov_handle_pending_trans.exit.i.i_crit_edge ], [ %rcv_act.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i.qlcnic_sriov_handle_pending_trans.exit.i.i_crit_edge ], [ %rcv_act.i.i.i.i, %if.end.i.i.i.i.i.i ], [ %rcv_pend.i.i.i, %if.then14.i.i.qlcnic_sriov_handle_pending_trans.exit.i.i_crit_edge ], [ %rcv_pend.i.i.i, %qlcnic_sriov_pull_bc_msg.exit.i.i.i.qlcnic_sriov_handle_pending_trans.exit.i.i_crit_edge ], [ %rcv_pend.i.i.i, %for.cond.i.i.i.qlcnic_sriov_handle_pending_trans.exit.i.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %rcv_pend.sink.i.i.i) #12
  br label %qlcnic_sriov_handle_bc_cmd.exit.i

if.end15.i.i:                                     ; preds = %if.end10.i.i
  %140 = call ptr @memset(ptr %cmd.i.i, i32 0, i32 120)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %141 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %141, i32 noundef 2848, i32 noundef 104) #15
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end15.i.i.qlcnic_sriov_handle_bc_cmd.exit.i_crit_edge, label %if.end20.i.i

if.end15.i.i.qlcnic_sriov_handle_bc_cmd.exit.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_handle_bc_cmd.exit.i

if.end20.i.i:                                     ; preds = %if.end15.i.i
  %resp_cmpl.i.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %call7.i.i.i.i.i, i32 0, i32 14
  %142 = ptrtoint ptr %resp_cmpl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %resp_cmpl.i.i.i, align 4
  %wait.i.i.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %call7.i.i.i.i.i, i32 0, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @init_completion.__key) #12
  %conv28.i.i = and i32 %hdr.sroa.9.sroa.7.0.extract.shift.i, 255
  br i1 %cmp.not.i.i, label %if.then27.i.i, label %if.end32.i.i

if.then27.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %hdr.sroa.9.sroa.7.0.extract.trunc.i)
  %switch.i.i = icmp ult i8 %hdr.sroa.9.sroa.7.0.extract.trunc.i, 4
  br i1 %switch.i.i, label %if.then.i106.i.i, label %if.then27.i.i.qlcnic_sriov_cleanup_transaction.exit.i.i_crit_edge

if.then27.i.i.qlcnic_sriov_cleanup_transaction.exit.i.i_crit_edge: ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_cleanup_transaction.exit.i.i

if.then.i106.i.i:                                 ; preds = %if.then27.i.i
  %op_type.i.i.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i.i, i32 0, i32 8
  %143 = ptrtoint ptr %op_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 1, ptr %op_type.i.i.i, align 4
  %in_args.i.i.i = getelementptr %struct.qlcnic_mailbox_metadata, ptr @qlcnic_sriov_bc_mbx_tbl, i32 %conv28.i.i, i32 1
  %144 = ptrtoint ptr %in_args.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %in_args.i.i.i, align 4
  %req.i.i.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i.i, i32 0, i32 2
  %146 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %req.i.i.i, align 4
  %out_args.i.i.i = getelementptr %struct.qlcnic_mailbox_metadata, ptr @qlcnic_sriov_bc_mbx_tbl, i32 %conv28.i.i, i32 2
  %147 = ptrtoint ptr %out_args.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %out_args.i.i.i, align 4
  %rsp.i.i.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i.i, i32 0, i32 3
  %149 = ptrtoint ptr %rsp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %rsp.i.i.i, align 4
  %150 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %145, i32 4) #12
  %151 = extractvalue { i32, i1 } %150, 1
  br i1 %151, label %kcalloc.exit.thread.i.i.i, label %if.end7.i.i.i.i.i, !prof !226

kcalloc.exit.thread.i.i.i:                        ; preds = %if.then.i106.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arg97.i.i.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i.i, i32 0, i32 2, i32 1
  br label %qlcnic_sriov_cleanup_transaction.exit.sink.split.i.i

if.end7.i.i.i.i.i:                                ; preds = %if.then.i106.i.i
  %152 = extractvalue { i32, i1 } %150, 0
  %call8.i.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %152, i32 noundef 2848) #16
  %arg.i.i.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i.i, i32 0, i32 2, i32 1
  %153 = ptrtoint ptr %arg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call8.i.i.i.i.i, ptr %arg.i.i.i, align 4
  %tobool.not.i110.i.i = icmp eq ptr %call8.i.i.i.i.i, null
  br i1 %tobool.not.i110.i.i, label %if.end7.i.i.i.i.i.qlcnic_sriov_cleanup_transaction.exit.i.i_crit_edge, label %if.end.i111.i.i

if.end7.i.i.i.i.i.qlcnic_sriov_cleanup_transaction.exit.i.i_crit_edge: ; preds = %if.end7.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_cleanup_transaction.exit.i.i

if.end.i111.i.i:                                  ; preds = %if.end7.i.i.i.i.i
  %154 = ptrtoint ptr %rsp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %rsp.i.i.i, align 4
  %156 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %155, i32 4) #12
  %157 = extractvalue { i32, i1 } %156, 1
  br i1 %157, label %kcalloc.exit95.thread.i.i.i, label %if.end7.i.i93.i.i.i, !prof !226

kcalloc.exit95.thread.i.i.i:                      ; preds = %if.end.i111.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arg15105.i.i.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i.i, i32 0, i32 3, i32 1
  %158 = ptrtoint ptr %arg15105.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %arg15105.i.i.i, align 4
  br label %if.then19.i.i.i

if.end7.i.i93.i.i.i:                              ; preds = %if.end.i111.i.i
  %159 = extractvalue { i32, i1 } %156, 0
  %call8.i.i92.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %159, i32 noundef 2848) #16
  %arg15.i.i.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i.i, i32 0, i32 3, i32 1
  %160 = ptrtoint ptr %arg15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %call8.i.i92.i.i.i, ptr %arg15.i.i.i, align 4
  %tobool18.not.i.i.i = icmp eq ptr %call8.i.i92.i.i.i, null
  br i1 %tobool18.not.i.i.i, label %if.end7.i.i93.i.i.i.if.then19.i.i.i_crit_edge, label %if.end32.thread132.i.i

if.end7.i.i93.i.i.i.if.then19.i.i.i_crit_edge:    ; preds = %if.end7.i.i93.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19.i.i.i

if.then19.i.i.i:                                  ; preds = %if.end7.i.i93.i.i.i.if.then19.i.i.i_crit_edge, %kcalloc.exit95.thread.i.i.i
  %161 = ptrtoint ptr %arg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arg.i.i.i, align 4
  tail call void @kfree(ptr noundef %162) #12
  br label %qlcnic_sriov_cleanup_transaction.exit.sink.split.i.i

if.end32.thread132.i.i:                           ; preds = %if.end7.i.i93.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %163 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %req.i.i.i, align 4
  %shl.i.i.i = shl i32 %164, 16
  %or.i.i.i = or i32 %shl.i.i.i, %conv28.i.i
  %or27.i.i.i = or i32 %or.i.i.i, 1610612736
  %165 = ptrtoint ptr %arg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arg.i.i.i, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %or27.i.i.i, ptr %166, align 4
  %168 = ptrtoint ptr %rsp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %rsp.i.i.i, align 4
  %shl33.i.i.i = shl i32 %169, 16
  %or34.i.i.i = or i32 %shl33.i.i.i, %conv28.i.i
  %170 = ptrtoint ptr %arg15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arg15.i.i.i, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %or34.i.i.i, ptr %171, align 4
  br label %if.end35.i.i

if.end32.i.i:                                     ; preds = %if.end20.i.i
  %173 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %56, align 8
  %hw_ops.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %174, i32 0, i32 46
  %175 = ptrtoint ptr %hw_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %hw_ops.i.i.i, align 4
  %alloc_mbx_args.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %176, i32 0, i32 7
  %177 = ptrtoint ptr %alloc_mbx_args.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %alloc_mbx_args.i.i.i, align 4
  %call.i.i.i = call i32 %178(ptr noundef nonnull %cmd.i.i, ptr noundef %56, i32 noundef %conv28.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool33.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool33.not.i.i, label %if.end32.i.i.if.end35.i.i_crit_edge, label %if.end32.i.i.qlcnic_sriov_cleanup_transaction.exit.i.i_crit_edge

if.end32.i.i.qlcnic_sriov_cleanup_transaction.exit.i.i_crit_edge: ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_cleanup_transaction.exit.i.i

if.end32.i.i.if.end35.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i.i

qlcnic_sriov_cleanup_transaction.exit.sink.split.i.i: ; preds = %if.then19.i.i.i, %kcalloc.exit.thread.i.i.i
  %arg97.i.sink.i.i = phi ptr [ %arg97.i.i.i, %kcalloc.exit.thread.i.i.i ], [ %arg.i.i.i, %if.then19.i.i.i ]
  %179 = ptrtoint ptr %arg97.i.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr null, ptr %arg97.i.sink.i.i, align 4
  br label %qlcnic_sriov_cleanup_transaction.exit.i.i

qlcnic_sriov_cleanup_transaction.exit.i.i:        ; preds = %qlcnic_sriov_cleanup_transaction.exit.sink.split.i.i, %if.end32.i.i.qlcnic_sriov_cleanup_transaction.exit.i.i_crit_edge, %if.end7.i.i.i.i.i.qlcnic_sriov_cleanup_transaction.exit.i.i_crit_edge, %if.then27.i.i.qlcnic_sriov_cleanup_transaction.exit.i.i_crit_edge
  %req_hdr.i114.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %call7.i.i.i.i.i, i32 0, i32 10
  %180 = ptrtoint ptr %req_hdr.i114.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %req_hdr.i114.i.i, align 4
  call void @kfree(ptr noundef %181) #12
  %rsp_hdr.i.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %call7.i.i.i.i.i, i32 0, i32 11
  %182 = ptrtoint ptr %rsp_hdr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %rsp_hdr.i.i.i, align 8
  call void @kfree(ptr noundef %183) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #12
  br label %qlcnic_sriov_handle_bc_cmd.exit.i

if.end35.i.i:                                     ; preds = %if.end32.i.i.if.end35.i.i_crit_edge, %if.end32.thread132.i.i
  %bf.lshr38.i.i = lshr i32 %31, 15
  %conv39.i.i = and i32 %bf.lshr38.i.i, 1
  %op_type40.i.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i.i, i32 0, i32 8
  %184 = ptrtoint ptr %op_type40.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %conv39.i.i, ptr %op_type40.i.i, align 4
  %call41.i.i = call fastcc i32 @qlcnic_sriov_prepare_bc_hdr(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef nonnull %cmd.i.i, i16 noundef zeroext %hdr.sroa.9.sroa.0.0.extract.trunc.i, i8 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i.i)
  %tobool42.not.i.i = icmp eq i32 %call41.i.i, 0
  br i1 %tobool42.not.i.i, label %if.end44.i.i, label %qlcnic_sriov_cleanup_transaction.exit.i

qlcnic_sriov_cleanup_transaction.exit.i:          ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i.i) #12
  %req_hdr.i36.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %call7.i.i.i.i.i, i32 0, i32 10
  %185 = ptrtoint ptr %req_hdr.i36.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %req_hdr.i36.i, align 4
  call void @kfree(ptr noundef %186) #12
  %rsp_hdr.i37.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %call7.i.i.i.i.i, i32 0, i32 11
  %187 = ptrtoint ptr %rsp_hdr.i37.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %rsp_hdr.i37.i, align 8
  call void @kfree(ptr noundef %188) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #12
  br label %qlcnic_sriov_handle_bc_cmd.exit.i

if.end44.i.i:                                     ; preds = %if.end35.i.i
  %req_pay_size.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %call7.i.i.i.i.i, i32 0, i32 5
  %189 = ptrtoint ptr %req_pay_size.i.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %req_pay_size.i.i, align 2
  %conv45.i.i = zext i16 %190 to i32
  %curr_req_frag.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %191 = ptrtoint ptr %curr_req_frag.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %curr_req_frag.i.i, align 1
  %conv.i116.i.i = zext i8 %192 to i32
  %193 = mul nuw nsw i32 %conv.i116.i.i, 1008
  %mul.i.i.i = add nuw nsw i32 %193, 1008
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.i, i32 %conv45.i.i)
  %tobool.not.i117.i.i = icmp ugt i32 %mul.i.i.i, %conv45.i.i
  %rem.i135.i.i = urem i16 %190, 1008
  %194 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %adapter.i, align 4
  %req_hdr.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %call7.i.i.i.i.i, i32 0, i32 10
  %196 = ptrtoint ptr %req_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %req_hdr.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.qlcnic_bc_hdr, ptr %197, i32 %conv.i116.i.i
  %req_pay.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %call7.i.i.i.i.i, i32 0, i32 12
  %198 = ptrtoint ptr %req_pay.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %req_pay.i.i, align 4
  %200 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %195, align 8
  %202 = lshr i16 %rem.i135.i.i, 2
  %203 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %201, align 8
  %add.ptr7.i.i = getelementptr i8, ptr %204, i32 2056
  %205 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #12, !srcloc !228
  %206 = call i32 @llvm.bswap.i32(i32 %205) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !231
  %incdec.ptr.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 1
  %207 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %add.ptr.i.i, align 4
  %208 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %201, align 8
  %add.ptr7.1.i.i = getelementptr i8, ptr %209, i32 2060
  %210 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.1.i.i) #12, !srcloc !228
  %211 = call i32 @llvm.bswap.i32(i32 %210) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !231
  %incdec.ptr.1.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 2
  %212 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %incdec.ptr.i.i, align 4
  %213 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %201, align 8
  %add.ptr7.2.i.i = getelementptr i8, ptr %214, i32 2064
  %215 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.2.i.i) #12, !srcloc !228
  %216 = call i32 @llvm.bswap.i32(i32 %215) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !231
  %incdec.ptr.2.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 3
  %217 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %216, ptr %incdec.ptr.1.i.i, align 4
  %218 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %201, align 8
  %add.ptr7.3.i.i = getelementptr i8, ptr %219, i32 2068
  %220 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.3.i.i) #12, !srcloc !228
  %221 = call i32 @llvm.bswap.i32(i32 %220) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !231
  %222 = ptrtoint ptr %incdec.ptr.2.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %incdec.ptr.2.i.i, align 4
  %narrow.i = add nuw nsw i16 %202, 4
  %rem.i.zext.i.op.op.op.i = zext i16 %narrow.i to i32
  %conv12.i.i = select i1 %tobool.not.i117.i.i, i32 %rem.i.zext.i.op.op.op.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv12.i.i)
  %cmp1344.i.i = icmp ugt i32 %conv12.i.i, 4
  br i1 %cmp1344.i.i, label %for.body15.i.preheader.i, label %if.end44.i.i.qlcnic_sriov_pull_bc_msg.exit.i_crit_edge

if.end44.i.i.qlcnic_sriov_pull_bc_msg.exit.i_crit_edge: ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_pull_bc_msg.exit.i

for.body15.i.preheader.i:                         ; preds = %if.end44.i.i
  %add.ptr52.i.i = getelementptr %struct.qlcnic_bc_payload, ptr %199, i32 %conv.i116.i.i
  br label %for.body15.i.i

for.body15.i.i:                                   ; preds = %for.body15.i.i.for.body15.i.i_crit_edge, %for.body15.i.preheader.i
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.body15.i.i.for.body15.i.i_crit_edge ], [ 4, %for.body15.i.preheader.i ]
  %pay.addr.047.i.i = phi ptr [ %incdec.ptr26.i.i, %for.body15.i.i.for.body15.i.i_crit_edge ], [ %add.ptr52.i.i, %for.body15.i.preheader.i ]
  %i.146.i.i = phi i8 [ %inc28.i.i, %for.body15.i.i.for.body15.i.i_crit_edge ], [ 6, %for.body15.i.preheader.i ]
  %223 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %201, align 8
  %add.ptr19.i.i = getelementptr i8, ptr %224, i32 2048
  %conv20.i.i = zext i8 %i.146.i.i to i32
  %mul21.i.i = shl nuw nsw i32 %conv20.i.i, 2
  %add.ptr22.i.i = getelementptr i8, ptr %add.ptr19.i.i, i32 %mul21.i.i
  %225 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i.i) #12, !srcloc !228
  %226 = call i32 @llvm.bswap.i32(i32 %225) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !232
  %incdec.ptr26.i.i = getelementptr i32, ptr %pay.addr.047.i.i, i32 1
  %227 = ptrtoint ptr %pay.addr.047.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %pay.addr.047.i.i, align 4
  %inc28.i.i = add i8 %i.146.i.i, 1
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %conv12.i.i
  br i1 %exitcond.not.i.i, label %for.body15.i.i.qlcnic_sriov_pull_bc_msg.exit.i_crit_edge, label %for.body15.i.i.for.body15.i.i_crit_edge

for.body15.i.i.for.body15.i.i_crit_edge:          ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body15.i.i

for.body15.i.i.qlcnic_sriov_pull_bc_msg.exit.i_crit_edge: ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_pull_bc_msg.exit.i

qlcnic_sriov_pull_bc_msg.exit.i:                  ; preds = %for.body15.i.i.qlcnic_sriov_pull_bc_msg.exit.i_crit_edge, %if.end44.i.i.qlcnic_sriov_pull_bc_msg.exit.i_crit_edge
  %228 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx, align 4
  %230 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %229, ptr %call7.i.i.i.i.i, align 8
  %vf53.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %call7.i.i.i.i.i, i32 0, i32 15
  %231 = ptrtoint ptr %vf53.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %arrayidx, ptr %vf53.i.i, align 4
  %trans_id.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %call7.i.i.i.i.i, i32 0, i32 7
  %232 = ptrtoint ptr %trans_id.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %hdr.sroa.9.sroa.0.0.extract.shift.i, ptr %trans_id.i.i, align 4
  %233 = ptrtoint ptr %curr_req_frag.i.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %curr_req_frag.i.i, align 1
  %inc.i.i = add i8 %234, 1
  store i8 %inc.i.i, ptr %curr_req_frag.i.i, align 1
  %call57.i.i = call zeroext i1 @qlcnic_sriov_soft_flr_check(ptr noundef %56, ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef %arrayidx) #12
  br i1 %call57.i.i, label %qlcnic_sriov_pull_bc_msg.exit.i.qlcnic_sriov_handle_bc_cmd.exit.i_crit_edge, label %if.end59.i.i

qlcnic_sriov_pull_bc_msg.exit.i.qlcnic_sriov_handle_bc_cmd.exit.i_crit_edge: ; preds = %qlcnic_sriov_pull_bc_msg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_handle_bc_cmd.exit.i

if.end59.i.i:                                     ; preds = %qlcnic_sriov_pull_bc_msg.exit.i
  %235 = ptrtoint ptr %curr_req_frag.i.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %curr_req_frag.i.i, align 1
  %237 = ptrtoint ptr %req_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %req_hdr.i.i, align 4
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %238, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %236, i8 %240)
  %cmp64.i.i = icmp eq i8 %236, %240
  br i1 %cmp64.i.i, label %if.then66.i.i, label %if.else71.i.i

if.then66.i.i:                                    ; preds = %if.end59.i.i
  %rcv_act.i.i = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %retval.0.i.ph, i32 12
  call void @_raw_spin_lock(ptr noundef %rcv_act.i.i) #12
  %count.i.i25.i = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %retval.0.i.ph, i32 12, i32 2
  %241 = ptrtoint ptr %count.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %count.i.i25.i, align 4
  %inc.i.i26.i = add i32 %242, 1
  store i32 %inc.i.i26.i, ptr %count.i.i25.i, align 4
  %list.i.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %call7.i.i.i.i.i, i32 0, i32 9
  %wait_list.i.i27.i = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %retval.0.i.ph, i32 12, i32 1
  %prev.i.i.i28.i = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %retval.0.i.ph, i32 12, i32 1, i32 1
  %243 = ptrtoint ptr %prev.i.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %prev.i.i.i28.i, align 4
  %call.i.i.i.i29.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i.i, ptr noundef %244, ptr noundef %wait_list.i.i27.i) #12
  br i1 %call.i.i.i.i29.i, label %if.end.i.i.i.i30.i, label %if.then66.i.i.list_add_tail.exit.i.i.i_crit_edge

if.then66.i.i.list_add_tail.exit.i.i.i_crit_edge: ; preds = %if.then66.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i.i.i

if.end.i.i.i.i30.i:                               ; preds = %if.then66.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %245 = ptrtoint ptr %prev.i.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %list.i.i.i, ptr %prev.i.i.i28.i, align 4
  %246 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %wait_list.i.i27.i, ptr %list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %call7.i.i.i.i.i, i32 0, i32 9, i32 1
  %247 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %244, ptr %prev3.i.i.i.i.i, align 8
  %248 = ptrtoint ptr %244 to i32
  call void @__asan_store4_noabort(i32 %248)
  store volatile ptr %list.i.i.i, ptr %244, align 4
  br label %list_add_tail.exit.i.i.i

list_add_tail.exit.i.i.i:                         ; preds = %if.end.i.i.i.i30.i, %if.then66.i.i.list_add_tail.exit.i.i.i_crit_edge
  %249 = ptrtoint ptr %count.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %count.i.i25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %250)
  %cmp.i.i31.i = icmp eq i32 %250, 1
  br i1 %cmp.i.i31.i, label %if.then.i.i33.i, label %list_add_tail.exit.i.i.i.qlcnic_sriov_add_act_list.exit.i_crit_edge

list_add_tail.exit.i.i.i.qlcnic_sriov_add_act_list.exit.i_crit_edge: ; preds = %list_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_add_act_list.exit.i

if.then.i.i33.i:                                  ; preds = %list_add_tail.exit.i.i.i
  %251 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load volatile i32, ptr %state.i.i, align 4
  %253 = and i32 %252, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %tobool.not.i.i.i32.i = icmp eq i32 %253, 0
  br i1 %tobool.not.i.i.i32.i, label %lor.lhs.false.i.i.i.i, label %if.then.i.i33.i.qlcnic_sriov_add_act_list.exit.i_crit_edge

if.then.i.i33.i.qlcnic_sriov_add_act_list.exit.i_crit_edge: ; preds = %if.then.i.i33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_add_act_list.exit.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.then.i.i33.i
  %254 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %adapter.i, align 4
  %need_fw_reset.i.i.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %255, i32 0, i32 24
  %256 = ptrtoint ptr %need_fw_reset.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %need_fw_reset.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %tobool1.not.i.i.i.i = icmp eq i8 %257, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.i.i.i34.i, label %lor.lhs.false.i.i.i.i.qlcnic_sriov_add_act_list.exit.i_crit_edge

lor.lhs.false.i.i.i.i.qlcnic_sriov_add_act_list.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_add_act_list.exit.i

if.end.i.i.i34.i:                                 ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %bc_trans_wq.i.i.i.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 8, i32 1
  %258 = ptrtoint ptr %bc_trans_wq.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %bc_trans_wq.i.i.i.i, align 4
  %trans_work.i.i.i.i = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %retval.0.i.ph, i32 7
  %call.i.i5.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %259, ptr noundef %trans_work.i.i.i.i) #12
  br label %qlcnic_sriov_add_act_list.exit.i

qlcnic_sriov_add_act_list.exit.i:                 ; preds = %if.end.i.i.i34.i, %lor.lhs.false.i.i.i.i.qlcnic_sriov_add_act_list.exit.i_crit_edge, %if.then.i.i33.i.qlcnic_sriov_add_act_list.exit.i_crit_edge, %list_add_tail.exit.i.i.i.qlcnic_sriov_add_act_list.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %rcv_act.i.i) #12
  br label %qlcnic_sriov_handle_bc_cmd.exit.i

if.else71.i.i:                                    ; preds = %if.end59.i.i
  %rcv_pend.i.i = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %retval.0.i.ph, i32 13
  call void @_raw_spin_lock(ptr noundef %rcv_pend.i.i) #12
  %list.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %call7.i.i.i.i.i, i32 0, i32 9
  %wait_list.i.i = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %retval.0.i.ph, i32 13, i32 1
  %prev.i.i.i = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %retval.0.i.ph, i32 13, i32 1, i32 1
  %260 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %261, ptr noundef %wait_list.i.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.else71.i.i.list_add_tail.exit.i.i_crit_edge

if.else71.i.i.list_add_tail.exit.i.i_crit_edge:   ; preds = %if.else71.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.else71.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %262 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %263 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %wait_list.i.i, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %call7.i.i.i.i.i, i32 0, i32 9, i32 1
  %264 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %261, ptr %prev3.i.i.i.i, align 8
  %265 = ptrtoint ptr %261 to i32
  call void @__asan_store4_noabort(i32 %265)
  store volatile ptr %list.i.i, ptr %261, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.else71.i.i.list_add_tail.exit.i.i_crit_edge
  %count.i.i = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %retval.0.i.ph, i32 13, i32 2
  %266 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %count.i.i, align 4
  %inc74.i.i = add i32 %267, 1
  store i32 %inc74.i.i, ptr %count.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %rcv_pend.i.i) #12
  br label %qlcnic_sriov_handle_bc_cmd.exit.i

qlcnic_sriov_handle_bc_cmd.exit.i:                ; preds = %list_add_tail.exit.i.i, %qlcnic_sriov_add_act_list.exit.i, %qlcnic_sriov_pull_bc_msg.exit.i.qlcnic_sriov_handle_bc_cmd.exit.i_crit_edge, %qlcnic_sriov_cleanup_transaction.exit.i, %qlcnic_sriov_cleanup_transaction.exit.i.i, %if.end15.i.i.qlcnic_sriov_handle_bc_cmd.exit.i_crit_edge, %qlcnic_sriov_handle_pending_trans.exit.i.i, %if.end.i.i.qlcnic_sriov_handle_bc_cmd.exit.i_crit_edge, %sw.bb.i.qlcnic_sriov_handle_bc_cmd.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i.i) #12
  br label %cleanup

sw.bb8.i:                                         ; preds = %if.then11
  %state.i14.i = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %retval.0.i.ph, i32 5
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i14.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i15.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i15.i, label %if.end.i16.i, label %sw.bb8.i.cleanup_crit_edge

sw.bb8.i.cleanup_crit_edge:                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i16.i:                                     ; preds = %sw.bb8.i
  %send_cmd.i.i = getelementptr %struct.qlcnic_vf_info, ptr %5, i32 %retval.0.i.ph, i32 10
  %268 = ptrtoint ptr %send_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %send_cmd.i.i, align 4
  %cmp.i.i31 = icmp eq ptr %269, null
  br i1 %cmp.i.i31, label %if.end.i16.i.clear_send.i.i_crit_edge, label %if.end2.i.i

if.end.i16.i.clear_send.i.i_crit_edge:            ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_send.i.i

if.end2.i.i:                                      ; preds = %if.end.i16.i
  %trans_id.i17.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %269, i32 0, i32 7
  %270 = ptrtoint ptr %trans_id.i17.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %trans_id.i17.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %271, i32 %hdr.sroa.9.sroa.0.0.extract.shift.i)
  %cmp3.not.i.i = icmp eq i32 %271, %hdr.sroa.9.sroa.0.0.extract.shift.i
  br i1 %cmp3.not.i.i, label %if.end6.i.i, label %if.end2.i.i.clear_send.i.i_crit_edge

if.end2.i.i.clear_send.i.i_crit_edge:             ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_send.i.i

if.end6.i.i:                                      ; preds = %if.end2.i.i
  %rsp_pay_size.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %269, i32 0, i32 6
  %272 = ptrtoint ptr %rsp_pay_size.i.i to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %rsp_pay_size.i.i, align 4
  %conv7.i.i = zext i16 %273 to i32
  %curr_rsp_frag.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %269, i32 0, i32 2
  %274 = ptrtoint ptr %curr_rsp_frag.i.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %curr_rsp_frag.i.i, align 2
  %conv.i.i19.i = zext i8 %275 to i32
  %276 = mul nuw nsw i32 %conv.i.i19.i, 1008
  %mul.i.i20.i = add nuw nsw i32 %276, 1008
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i20.i, i32 %conv7.i.i)
  %tobool.not.i.i21.i = icmp ugt i32 %mul.i.i20.i, %conv7.i.i
  %rem.i37.i.i = urem i16 %273, 1008
  %277 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %adapter.i, align 4
  %rsp_hdr.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %269, i32 0, i32 11
  %279 = ptrtoint ptr %rsp_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %rsp_hdr.i.i, align 4
  %add.ptr.i22.i = getelementptr %struct.qlcnic_bc_hdr, ptr %280, i32 %conv.i.i19.i
  %rsp_pay.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %269, i32 0, i32 13
  %281 = ptrtoint ptr %rsp_pay.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %rsp_pay.i.i, align 4
  %283 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %278, align 8
  %285 = lshr i16 %rem.i37.i.i, 2
  %286 = ptrtoint ptr %284 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %284, align 8
  %add.ptr7.i.i.i = getelementptr i8, ptr %287, i32 2056
  %288 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i) #12, !srcloc !228
  %289 = tail call i32 @llvm.bswap.i32(i32 %288) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !231
  %incdec.ptr.i.i.i = getelementptr i32, ptr %add.ptr.i22.i, i32 1
  %290 = ptrtoint ptr %add.ptr.i22.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %289, ptr %add.ptr.i22.i, align 4
  %291 = ptrtoint ptr %284 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %284, align 8
  %add.ptr7.1.i.i.i = getelementptr i8, ptr %292, i32 2060
  %293 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.1.i.i.i) #12, !srcloc !228
  %294 = tail call i32 @llvm.bswap.i32(i32 %293) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !231
  %incdec.ptr.1.i.i.i = getelementptr i32, ptr %add.ptr.i22.i, i32 2
  %295 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %294, ptr %incdec.ptr.i.i.i, align 4
  %296 = ptrtoint ptr %284 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %284, align 8
  %add.ptr7.2.i.i.i = getelementptr i8, ptr %297, i32 2064
  %298 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.2.i.i.i) #12, !srcloc !228
  %299 = tail call i32 @llvm.bswap.i32(i32 %298) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !231
  %incdec.ptr.2.i.i.i = getelementptr i32, ptr %add.ptr.i22.i, i32 3
  %300 = ptrtoint ptr %incdec.ptr.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %299, ptr %incdec.ptr.1.i.i.i, align 4
  %301 = ptrtoint ptr %284 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %284, align 8
  %add.ptr7.3.i.i.i = getelementptr i8, ptr %302, i32 2068
  %303 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.3.i.i.i) #12, !srcloc !228
  %304 = tail call i32 @llvm.bswap.i32(i32 %303) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !231
  %305 = ptrtoint ptr %incdec.ptr.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 %304, ptr %incdec.ptr.2.i.i.i, align 4
  %narrow.i.i = add nuw nsw i16 %285, 4
  %rem.i.zext.op.op.op.i.i = zext i16 %narrow.i.i to i32
  %conv12.i.i23.i = select i1 %tobool.not.i.i21.i, i32 %rem.i.zext.op.op.op.i.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv12.i.i23.i)
  %cmp1344.i.i.i = icmp ugt i32 %conv12.i.i23.i, 4
  br i1 %cmp1344.i.i.i, label %for.body15.i.preheader.i.i, label %if.end6.i.i.qlcnic_sriov_pull_bc_msg.exit.i.i_crit_edge

if.end6.i.i.qlcnic_sriov_pull_bc_msg.exit.i.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_pull_bc_msg.exit.i.i

for.body15.i.preheader.i.i:                       ; preds = %if.end6.i.i
  %add.ptr13.i.i = getelementptr %struct.qlcnic_bc_payload, ptr %282, i32 %conv.i.i19.i
  br label %for.body15.i.i.i

for.body15.i.i.i:                                 ; preds = %for.body15.i.i.i.for.body15.i.i.i_crit_edge, %for.body15.i.preheader.i.i
  %indvars.iv.i.i.i = phi i32 [ %indvars.iv.next.i.i.i, %for.body15.i.i.i.for.body15.i.i.i_crit_edge ], [ 4, %for.body15.i.preheader.i.i ]
  %pay.addr.047.i.i.i = phi ptr [ %incdec.ptr26.i.i.i, %for.body15.i.i.i.for.body15.i.i.i_crit_edge ], [ %add.ptr13.i.i, %for.body15.i.preheader.i.i ]
  %i.146.i.i.i = phi i8 [ %inc28.i.i.i, %for.body15.i.i.i.for.body15.i.i.i_crit_edge ], [ 6, %for.body15.i.preheader.i.i ]
  %306 = ptrtoint ptr %284 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %284, align 8
  %add.ptr19.i.i.i = getelementptr i8, ptr %307, i32 2048
  %conv20.i.i.i = zext i8 %i.146.i.i.i to i32
  %mul21.i.i.i = shl nuw nsw i32 %conv20.i.i.i, 2
  %add.ptr22.i.i.i = getelementptr i8, ptr %add.ptr19.i.i.i, i32 %mul21.i.i.i
  %308 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i.i.i) #12, !srcloc !228
  %309 = tail call i32 @llvm.bswap.i32(i32 %308) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !232
  %incdec.ptr26.i.i.i = getelementptr i32, ptr %pay.addr.047.i.i.i, i32 1
  %310 = ptrtoint ptr %pay.addr.047.i.i.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %309, ptr %pay.addr.047.i.i.i, align 4
  %inc28.i.i.i = add i8 %i.146.i.i.i, 1
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %indvars.iv.next.i.i.i, %conv12.i.i23.i
  br i1 %exitcond.not.i.i.i, label %for.body15.i.i.i.qlcnic_sriov_pull_bc_msg.exit.i.i_crit_edge, label %for.body15.i.i.i.for.body15.i.i.i_crit_edge

for.body15.i.i.i.for.body15.i.i.i_crit_edge:      ; preds = %for.body15.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body15.i.i.i

for.body15.i.i.i.qlcnic_sriov_pull_bc_msg.exit.i.i_crit_edge: ; preds = %for.body15.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_pull_bc_msg.exit.i.i

qlcnic_sriov_pull_bc_msg.exit.i.i:                ; preds = %for.body15.i.i.i.qlcnic_sriov_pull_bc_msg.exit.i.i_crit_edge, %if.end6.i.i.qlcnic_sriov_pull_bc_msg.exit.i.i_crit_edge
  %311 = ptrtoint ptr %curr_rsp_frag.i.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %curr_rsp_frag.i.i, align 2
  %inc.i24.i = add i8 %312, 1
  store i8 %inc.i24.i, ptr %curr_rsp_frag.i.i, align 2
  %313 = ptrtoint ptr %rsp_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %rsp_hdr.i.i, align 4
  %315 = ptrtoint ptr %314 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %314, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %inc.i24.i, i8 %316)
  %cmp18.i.i = icmp ult i8 %inc.i24.i, %316
  br i1 %cmp18.i.i, label %qlcnic_sriov_pull_bc_msg.exit.i.i.clear_send.i.i_crit_edge, label %if.end21.i.i

qlcnic_sriov_pull_bc_msg.exit.i.i.clear_send.i.i_crit_edge: ; preds = %qlcnic_sriov_pull_bc_msg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_send.i.i

if.end21.i.i:                                     ; preds = %qlcnic_sriov_pull_bc_msg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %resp_cmpl.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %269, i32 0, i32 14
  tail call void @complete(ptr noundef %resp_cmpl.i.i) #12
  br label %clear_send.i.i

clear_send.i.i:                                   ; preds = %if.end21.i.i, %qlcnic_sriov_pull_bc_msg.exit.i.i.clear_send.i.i_crit_edge, %if.end2.i.i.clear_send.i.i_crit_edge, %if.end.i16.i.clear_send.i.i_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i14.i) #12
  br label %cleanup

cleanup:                                          ; preds = %clear_send.i.i, %sw.bb8.i.cleanup_crit_edge, %qlcnic_sriov_handle_bc_cmd.exit.i, %if.then11.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end.i, %if.then.i, %for.cond.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_sriov_cfg_bc_intr(ptr noundef %adapter, i8 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #12
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %state = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %state, align 4
  %3 = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i = call i32 %9(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 49) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool5.not = icmp eq i8 %enable, 0
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 240, ptr %arrayidx, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %call8 = call i32 @qlcnic_83xx_issue_cmd(ptr noundef %adapter, ptr noundef nonnull %cmd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 0
  br i1 %cmp.not, label %if.end7.if.end11_crit_edge, label %do.end

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %cond = select i1 %tobool5.not, ptr @.str.44, ptr @.str.43
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull %cond, i32 noundef %call8) #17
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.end7.if.end11_crit_edge
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end11 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_issue_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_sriov_vf_set_multi(ptr noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %state = getelementptr i8, ptr %netdev, i32 2324
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %flags5 = getelementptr i8, ptr %netdev, i32 2328
  %6 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags5, align 8
  %and6 = lshr i32 %7, 11
  %and6.lobit = and i32 %and6, 1
  %8 = xor i32 %and6.lobit, 1
  br label %if.end34

if.else:                                          ; preds = %if.end
  %and11 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.else.if.end34_crit_edge

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

lor.lhs.false:                                    ; preds = %if.else
  %mc = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66, i32 1
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 8
  %max_mc_count = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %max_mc_count to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %max_mc_count, align 8
  %conv = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp = icmp sgt i32 %10, %conv
  br i1 %cmp, label %lor.lhs.false.if.end34_crit_edge, label %if.else15

lor.lhs.false.if.end34_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.else15:                                        ; preds = %lor.lhs.false
  tail call fastcc void @qlcnic_vf_add_mc_list(ptr noundef %netdev, ptr noundef nonnull @qlcnic_sriov_vf_set_multi.bcast_addr, i32 noundef 2)
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp18 = icmp eq i32 %14, 0
  br i1 %cmp18, label %if.else15.if.end34_crit_edge, label %if.then20

if.else15.if.end34_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then20:                                        ; preds = %if.else15
  tail call void @qlcnic_flush_mcast_mac(ptr noundef %add.ptr.i) #12
  %15 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %15)
  %ha.0128 = load ptr, ptr %mc, align 4
  %cmp25.not129 = icmp eq ptr %ha.0128, %mc
  br i1 %cmp25.not129, label %if.then20.if.end34_crit_edge, label %if.then20.for.body_crit_edge

if.then20.for.body_crit_edge:                     ; preds = %if.then20
  br label %for.body

if.then20.if.end34_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then20.for.body_crit_edge
  %ha.0130 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.0128, %if.then20.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0130, i32 0, i32 2
  tail call fastcc void @qlcnic_vf_add_mc_list(ptr noundef %netdev, ptr noundef %addr, i32 noundef 1)
  %16 = ptrtoint ptr %ha.0130 to i32
  call void @__asan_load4_noabort(i32 %16)
  %ha.0 = load ptr, ptr %ha.0130, align 4
  %cmp25.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp25.not, label %for.body.if.end34_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.end34_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.end34:                                         ; preds = %for.body.if.end34_crit_edge, %if.then20.if.end34_crit_edge, %if.else15.if.end34_crit_edge, %lor.lhs.false.if.end34_crit_edge, %if.else.if.end34_crit_edge, %if.then4
  %mode.0 = phi i32 [ 0, %if.else15.if.end34_crit_edge ], [ %8, %if.then4 ], [ 2, %lor.lhs.false.if.end34_crit_edge ], [ 2, %if.else.if.end34_crit_edge ], [ 0, %if.then20.if.end34_crit_edge ], [ 0, %for.body.if.end34_crit_edge ]
  %uc = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 65
  %count35 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 65, i32 1
  %17 = ptrtoint ptr %count35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count35, align 8
  %max_uc_count = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 22
  %19 = ptrtoint ptr %max_uc_count to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %max_uc_count, align 8
  %conv36 = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv36)
  %cmp37 = icmp sgt i32 %18, %conv36
  br i1 %cmp37, label %if.end70.thread, label %if.else40

if.else40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp43 = icmp eq i32 %18, 0
  br i1 %cmp43, label %if.else40.if.end70_crit_edge, label %for.cond52.preheader

if.else40.if.end70_crit_edge:                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

for.cond52.preheader:                             ; preds = %if.else40
  %21 = ptrtoint ptr %uc to i32
  call void @__asan_load4_noabort(i32 %21)
  %ha.1131 = load ptr, ptr %uc, align 4
  %cmp56.not132 = icmp eq ptr %ha.1131, %uc
  br i1 %cmp56.not132, label %for.cond52.preheader.if.end70_crit_edge, label %for.cond52.preheader.for.body59_crit_edge

for.cond52.preheader.for.body59_crit_edge:        ; preds = %for.cond52.preheader
  br label %for.body59

for.cond52.preheader.if.end70_crit_edge:          ; preds = %for.cond52.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

for.body59:                                       ; preds = %for.body59.for.body59_crit_edge, %for.cond52.preheader.for.body59_crit_edge
  %ha.1133 = phi ptr [ %ha.1, %for.body59.for.body59_crit_edge ], [ %ha.1131, %for.cond52.preheader.for.body59_crit_edge ]
  %addr60 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.1133, i32 0, i32 2
  tail call fastcc void @qlcnic_vf_add_mc_list(ptr noundef %netdev, ptr noundef %addr60, i32 noundef 0)
  %22 = ptrtoint ptr %ha.1133 to i32
  call void @__asan_load4_noabort(i32 %22)
  %ha.1 = load ptr, ptr %ha.1133, align 4
  %cmp56.not = icmp eq ptr %ha.1, %uc
  br i1 %cmp56.not, label %for.body59.if.end70_crit_edge, label %for.body59.for.body59_crit_edge

for.body59.for.body59_crit_edge:                  ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body59

for.body59.if.end70_crit_edge:                    ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.end70:                                         ; preds = %for.body59.if.end70_crit_edge, %for.cond52.preheader.if.end70_crit_edge, %if.else40.if.end70_crit_edge
  %pdev = getelementptr i8, ptr %netdev, i32 2320
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 8
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 49
  %25 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %25, i32 5)
  %bf.load = load i40, ptr %is_virtfn, align 1
  %26 = and i40 %bf.load, 65536
  %tobool71.not = icmp eq i40 %26, 0
  br i1 %tobool71.not, label %if.end70.if.end81_crit_edge, label %if.then72

if.end70.if.end81_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.end70.thread:                                  ; preds = %if.end34
  %pdev118 = getelementptr i8, ptr %netdev, i32 2320
  %27 = ptrtoint ptr %pdev118 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev118, align 8
  %is_virtfn119 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 49
  %29 = ptrtoint ptr %is_virtfn119 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 5)
  %bf.load120 = load i40, ptr %is_virtfn119, align 1
  %30 = and i40 %bf.load120, 65536
  %tobool71.not121 = icmp eq i40 %30, 0
  br i1 %tobool71.not121, label %if.end70.thread.if.end81_crit_edge, label %if.end70.thread.land.lhs.true_crit_edge

if.end70.thread.land.lhs.true_crit_edge:          ; preds = %if.end70.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.end70.thread.if.end81_crit_edge:               ; preds = %if.end70.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then72:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode.0)
  %cmp73 = icmp eq i32 %mode.0, 1
  br i1 %cmp73, label %if.then72.land.lhs.true_crit_edge, label %if.then72.if.end81.sink.split_crit_edge

if.then72.if.end81.sink.split_crit_edge:          ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81.sink.split

if.then72.land.lhs.true_crit_edge:                ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then72.land.lhs.true_crit_edge, %if.end70.thread.land.lhs.true_crit_edge
  %fdb_mac_learn = getelementptr i8, ptr %netdev, i32 2393
  %31 = ptrtoint ptr %fdb_mac_learn to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fdb_mac_learn, align 1, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool75.not = icmp eq i8 %32, 0
  br i1 %tobool75.not, label %if.then76, label %land.lhs.true.if.end81.sink.split_crit_edge

land.lhs.true.if.end81.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81.sink.split

if.then76:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @qlcnic_alloc_lb_filters_mem(ptr noundef %add.ptr.i) #12
  br label %if.end81.sink.split

if.end81.sink.split:                              ; preds = %if.then76, %land.lhs.true.if.end81.sink.split_crit_edge, %if.then72.if.end81.sink.split_crit_edge
  %.sink134 = phi i8 [ 1, %if.then76 ], [ 0, %land.lhs.true.if.end81.sink.split_crit_edge ], [ 0, %if.then72.if.end81.sink.split_crit_edge ]
  %mode.1123.ph = phi i32 [ 1, %if.then76 ], [ 1, %land.lhs.true.if.end81.sink.split_crit_edge ], [ %mode.0, %if.then72.if.end81.sink.split_crit_edge ]
  %drv_mac_learn = getelementptr i8, ptr %netdev, i32 2392
  %33 = ptrtoint ptr %drv_mac_learn to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %.sink134, ptr %drv_mac_learn, align 8
  %rx_mac_learn = getelementptr i8, ptr %netdev, i32 2394
  %34 = ptrtoint ptr %rx_mac_learn to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %.sink134, ptr %rx_mac_learn, align 2
  br label %if.end81

if.end81:                                         ; preds = %if.end81.sink.split, %if.end70.thread.if.end81_crit_edge, %if.end70.if.end81_crit_edge
  %mode.1123 = phi i32 [ 1, %if.end70.thread.if.end81_crit_edge ], [ %mode.0, %if.end70.if.end81_crit_edge ], [ %mode.1123.ph, %if.end81.sink.split ]
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %36, i32 0, i32 46
  %37 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw_ops.i, align 4
  %config_promisc_mode.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %38, i32 0, i32 31
  %39 = ptrtoint ptr %config_promisc_mode.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %config_promisc_mode.i, align 4
  %call.i = tail call i32 %40(ptr noundef %add.ptr.i, i32 noundef %mode.1123) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlcnic_vf_add_mc_list(ptr noundef %netdev, ptr noundef %mac, i32 noundef %mac_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %sriov1 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %sriov1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov1, align 8
  %vf_info = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %vf_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vf_info, align 4
  %vlan_list_lock.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %5, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %vlan_list_lock.i) #12
  %num_vlan.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %num_vlan.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_vlan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.not = icmp eq i32 %7, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %vlan_list_lock.i) #12
  br i1 %tobool.not.i.not, label %entry.if.end15.sink.split_crit_edge, label %if.else

entry.if.end15.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split

if.else:                                          ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %vlan_list_lock.i) #12
  %num_allowed_vlans = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %num_allowed_vlans to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_allowed_vlans, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp32.not = icmp eq i16 %9, 0
  br i1 %cmp32.not, label %if.else.for.end_crit_edge, label %for.body.lr.ph

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else
  %sriov_vlans = getelementptr inbounds %struct.qlcnic_vf_info, ptr %5, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %sriov_vlans to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sriov_vlans, align 4
  %arrayidx7 = getelementptr i16, ptr %11, i32 %i.033
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 @qlcnic_nic_add_mac(ptr noundef %add.ptr.i, ptr noundef %mac, i16 noundef zeroext %13, i32 noundef %mac_type) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.033, 1
  %14 = ptrtoint ptr %num_allowed_vlans to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_allowed_vlans, align 2
  %conv = zext i16 %15 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %vlan_list_lock.i) #12
  %pdev.i = getelementptr i8, ptr %netdev, i32 2320
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %device1.i, align 2
  %20 = and i16 %19, -1025
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32704, i16 %20)
  %21 = icmp eq i16 %20, -32704
  br i1 %21, label %for.end.if.end15.sink.split_crit_edge, label %for.end.if.end15_crit_edge

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

for.end.if.end15.sink.split_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %for.end.if.end15.sink.split_crit_edge, %entry.if.end15.sink.split_crit_edge
  %call13 = tail call i32 @qlcnic_nic_add_mac(ptr noundef %add.ptr.i, ptr noundef %mac, i16 noundef zeroext 0, i32 noundef %mac_type) #12
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %for.end.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_flush_mcast_mac(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_alloc_lb_filters_mem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_sriov_cfg_vf_guest_vlan(ptr noundef %adapter, i16 noundef zeroext %vid, i8 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %sriov1 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %sriov1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov1, align 8
  %netdev2 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %4 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev2, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #12
  %6 = call ptr @memset(ptr %cmd, i32 0, i32 120)
  %conv = zext i16 %vid to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %cmp = icmp eq i16 %vid, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %vf_info = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 9
  %7 = ptrtoint ptr %vf_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vf_info, align 4
  %vlan_list_lock.i.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %8, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %vlan_list_lock.i.i) #12
  %num_vlan.i.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %num_vlan.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_vlan.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.not.i = icmp eq i32 %10, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %vlan_list_lock.i.i) #12
  %vlan_mode.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %vlan_mode.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %vlan_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp.not.i = icmp eq i8 %12, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool.not.i = icmp eq i8 %enable, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  %pdev.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %13 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %device1.i.i, align 2
  %17 = and i16 %16, -2049
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31696, i16 %17)
  %18 = icmp ne i16 %17, -31696
  %brmerge.i = select i1 %18, i1 true, i1 %tobool.not.i.not.i
  br i1 %brmerge.i, label %if.end11.i, label %if.then5.i.cleanup_crit_edge

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11.i:                                       ; preds = %if.then5.i
  tail call void @_raw_spin_lock_bh(ptr noundef %vlan_list_lock.i.i) #12
  %19 = ptrtoint ptr %num_vlan.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_vlan.i.i, align 4
  %num_allowed_vlans.i.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %num_allowed_vlans.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_allowed_vlans.i.i, align 2
  %conv.i.i = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv.i.i)
  %cmp.not.i.i = icmp slt i32 %20, %conv.i.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %vlan_list_lock.i.i) #12
  br i1 %cmp.not.i.i, label %if.end15.i, label %if.end11.i.cleanup_crit_edge

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15.i:                                       ; preds = %if.end11.i
  %any_vlan.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %any_vlan.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %any_vlan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool16.not.i = icmp eq i8 %24, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.end7_crit_edge, label %for.cond.preheader.i

if.end15.i.if.end7_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

for.cond.preheader.i:                             ; preds = %if.end15.i
  %25 = ptrtoint ptr %num_allowed_vlans.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %num_allowed_vlans.i.i, align 2
  %conv18.i = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp1966.not.i = icmp eq i16 %26, 0
  br i1 %cmp1966.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %allowed_vlans.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 5
  %27 = ptrtoint ptr %allowed_vlans.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %allowed_vlans.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.068.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %allowed.067.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %spec.select.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx21.i = getelementptr i16, ptr %28, i32 %i.068.i
  %29 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx21.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %vid)
  %cmp24.i = icmp eq i16 %30, %vid
  %spec.select.i = select i1 %cmp24.i, i8 1, i8 %allowed.067.i
  %inc.i = add nuw nsw i32 %i.068.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv18.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.i)
  %phi.cmp.i = icmp eq i8 %spec.select.i, 0
  br i1 %phi.cmp.i, label %for.end.i.cleanup_crit_edge, label %for.end.i.if.end7_crit_edge

for.end.i.if.end7_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i
  br i1 %tobool.not.i.not.i, label %if.else.i.cleanup_crit_edge, label %lor.lhs.false.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.else.i
  %sriov_vlans.i.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %8, i32 0, i32 3
  %31 = ptrtoint ptr %sriov_vlans.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sriov_vlans.i.i, align 4
  %tobool.not.i57.i = icmp eq ptr %32, null
  br i1 %tobool.not.i57.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %lor.lhs.false.i
  tail call void @_raw_spin_lock_bh(ptr noundef %vlan_list_lock.i.i) #12
  %num_allowed_vlans.i59.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 4
  %33 = ptrtoint ptr %num_allowed_vlans.i59.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %num_allowed_vlans.i59.i, align 2
  %conv.i60.i = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp17.not.i.i = icmp eq i16 %34, 0
  br i1 %cmp17.not.i.i, label %if.end.i.i.qlcnic_sriov_check_vlan_id.exit.thread63.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.qlcnic_sriov_check_vlan_id.exit.thread63.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_check_vlan_id.exit.thread63.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %35 = ptrtoint ptr %sriov_vlans.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sriov_vlans.i.i, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i60.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.qlcnic_sriov_check_vlan_id.exit.thread63.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.cond.i.i.qlcnic_sriov_check_vlan_id.exit.thread63.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_check_vlan_id.exit.thread63.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.018.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i16, ptr %36, i32 %i.018.i.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %vid)
  %cmp5.i.i = icmp eq i16 %38, %vid
  br i1 %cmp5.i.i, label %qlcnic_sriov_check_vlan_id.exit.i, label %for.cond.i.i

qlcnic_sriov_check_vlan_id.exit.thread63.i:       ; preds = %for.cond.i.i.qlcnic_sriov_check_vlan_id.exit.thread63.i_crit_edge, %if.end.i.i.qlcnic_sriov_check_vlan_id.exit.thread63.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %vlan_list_lock.i.i) #12
  br label %cleanup

qlcnic_sriov_check_vlan_id.exit.i:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %vlan_list_lock.i.i) #12
  br label %if.end7

if.end7:                                          ; preds = %qlcnic_sriov_check_vlan_id.exit.i, %for.end.i.if.end7_crit_edge, %if.end15.i.if.end7_crit_edge
  %op_type.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 8
  %39 = ptrtoint ptr %op_type.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %op_type.i, align 4
  %req.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2
  %40 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %req.i, align 4
  %rsp.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3
  %41 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %rsp.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 2848, i32 noundef 8) #15
  %arg.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i.i.i, ptr %arg.i, align 4
  %tobool.not.i50 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i50, label %if.end7.cleanup_crit_edge, label %if.end.i51

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i51:                                       ; preds = %if.end7
  %44 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rsp.i, align 4
  %46 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %45, i32 4) #12
  %47 = extractvalue { i32, i1 } %46, 1
  br i1 %47, label %kcalloc.exit95.thread.i, label %if.end7.i.i93.i, !prof !226

kcalloc.exit95.thread.i:                          ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #14
  %arg15105.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %arg15105.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %arg15105.i, align 4
  br label %if.then19.i

if.end7.i.i93.i:                                  ; preds = %if.end.i51
  %49 = extractvalue { i32, i1 } %46, 0
  %call8.i.i92.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %49, i32 noundef 2848) #16
  %arg15.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %50 = ptrtoint ptr %arg15.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call8.i.i92.i, ptr %arg15.i, align 4
  %tobool18.not.i = icmp eq ptr %call8.i.i92.i, null
  br i1 %tobool18.not.i, label %if.end7.i.i93.i.if.then19.i_crit_edge, label %if.end11

if.end7.i.i93.i.if.then19.i_crit_edge:            ; preds = %if.end7.i.i93.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19.i

if.then19.i:                                      ; preds = %if.end7.i.i93.i.if.then19.i_crit_edge, %kcalloc.exit95.thread.i
  %51 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arg.i, align 4
  tail call void @kfree(ptr noundef %52) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7.i.i93.i
  %53 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %req.i, align 4
  %shl.i = shl i32 %54, 16
  %or27.i = or i32 %shl.i, 1610612739
  %55 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arg.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or27.i, ptr %56, align 4
  %58 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rsp.i, align 4
  %shl33.i = shl i32 %59, 16
  %or34.i = or i32 %shl33.i, 3
  %60 = ptrtoint ptr %arg15.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arg15.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or34.i, ptr %61, align 4
  %63 = and i8 %enable, 1
  %and = zext i8 %63 to i32
  %shl = shl nuw i32 %conv, 16
  %or = or i32 %shl, %and
  %64 = load ptr, ptr %arg.i, align 4
  %arrayidx14 = getelementptr i32, ptr %64, i32 1
  %65 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or, ptr %arrayidx14, align 4
  %bc = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 8
  tail call void @qlcnic_sriov_cleanup_async_list(ptr noundef %bc)
  %66 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %67, i32 0, i32 46
  %68 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw_ops.i, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i53 = icmp eq ptr %71, null
  br i1 %tobool.not.i53, label %if.end11.do.end_crit_edge, label %qlcnic_issue_cmd.exit

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

qlcnic_issue_cmd.exit:                            ; preds = %if.end11
  %call.i = call i32 %71(ptr noundef %adapter, ptr noundef nonnull %cmd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.else, label %qlcnic_issue_cmd.exit.do.end_crit_edge

qlcnic_issue_cmd.exit.do.end_crit_edge:           ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %qlcnic_issue_cmd.exit.do.end_crit_edge, %if.end11.do.end_crit_edge
  %retval.0.i5486 = phi i32 [ %call.i, %qlcnic_issue_cmd.exit.do.end_crit_edge ], [ -5, %if.end11.do.end_crit_edge ]
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %72 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %retval.0.i5486) #17
  br label %if.end22

if.else:                                          ; preds = %qlcnic_issue_cmd.exit
  %nested_level.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 73
  %74 = ptrtoint ptr %nested_level.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %nested_level.i, align 1
  call fastcc void @local_bh_disable() #12
  %addr_list_lock.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 63
  %conv.i = zext i8 %75 to i32
  call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i, i32 noundef %conv.i) #12
  %76 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %adapter, align 8
  %hw_ops.i55 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %77, i32 0, i32 46
  %78 = ptrtoint ptr %hw_ops.i55 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw_ops.i55, align 4
  %free_mac_list.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %79, i32 0, i32 35
  %80 = ptrtoint ptr %free_mac_list.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %free_mac_list.i, align 4
  call void %81(ptr noundef %adapter) #12
  call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i) #12
  %sriov_vlans.i70 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %8, i32 0, i32 3
  %82 = ptrtoint ptr %sriov_vlans.i70 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sriov_vlans.i70, align 4
  %tobool.not.i71 = icmp eq ptr %83, null
  br i1 %tobool.not.i, label %if.else20, label %if.then19

if.then19:                                        ; preds = %if.else
  br i1 %tobool.not.i71, label %if.then19.if.end21_crit_edge, label %if.end.i58

if.then19.if.end21_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end.i58:                                       ; preds = %if.then19
  %adapter1.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %8, i32 0, i32 14
  %84 = ptrtoint ptr %adapter1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %adapter1.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 8
  %sriov2.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %87, i32 0, i32 54
  %88 = ptrtoint ptr %sriov2.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sriov2.i, align 8
  call void @_raw_spin_lock_bh(ptr noundef %vlan_list_lock.i.i) #12
  %num_allowed_vlans.i.i59 = getelementptr inbounds %struct.qlcnic_sriov, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %num_allowed_vlans.i.i59 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %num_allowed_vlans.i.i59, align 2
  %conv.i.i60 = zext i16 %91 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %cmp10.not.i.i = icmp eq i16 %91, 0
  br i1 %cmp10.not.i.i, label %if.end.i58.if.end21.sink.split_crit_edge, label %for.body.lr.ph.i.i61

if.end.i58.if.end21.sink.split_crit_edge:         ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.sink.split

for.body.lr.ph.i.i61:                             ; preds = %if.end.i58
  %92 = ptrtoint ptr %sriov_vlans.i70 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sriov_vlans.i70, align 4
  br label %for.body.i.i65

for.cond.i.i63:                                   ; preds = %for.body.i.i65
  %inc4.i.i = add nuw nsw i32 %i.011.i.i, 1
  %exitcond.not.i.i62 = icmp eq i32 %inc4.i.i, %conv.i.i60
  br i1 %exitcond.not.i.i62, label %for.cond.i.i63.if.end21.sink.split_crit_edge, label %for.cond.i.i63.for.body.i.i65_crit_edge

for.cond.i.i63.for.body.i.i65_crit_edge:          ; preds = %for.cond.i.i63
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i65

for.cond.i.i63.if.end21.sink.split_crit_edge:     ; preds = %for.cond.i.i63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.sink.split

for.body.i.i65:                                   ; preds = %for.cond.i.i63.for.body.i.i65_crit_edge, %for.body.lr.ph.i.i61
  %i.011.i.i = phi i32 [ 0, %for.body.lr.ph.i.i61 ], [ %inc4.i.i, %for.cond.i.i63.for.body.i.i65_crit_edge ]
  %arrayidx.i.i64 = getelementptr i16, ptr %93, i32 %i.011.i.i
  %94 = ptrtoint ptr %arrayidx.i.i64 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx.i.i64, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool.not.i.i = icmp eq i16 %95, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.cond.i.i63

if.then.i.i:                                      ; preds = %for.body.i.i65
  call void @__sanitizer_cov_trace_pc() #14
  %96 = ptrtoint ptr %arrayidx.i.i64 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %vid, ptr %arrayidx.i.i64, align 2
  br label %if.end21.sink.split.sink.split

if.else20:                                        ; preds = %if.else
  br i1 %tobool.not.i71, label %if.else20.if.end21_crit_edge, label %if.end.i73

if.else20.if.end21_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end.i73:                                       ; preds = %if.else20
  %adapter1.i68 = getelementptr inbounds %struct.qlcnic_vf_info, ptr %8, i32 0, i32 14
  %97 = ptrtoint ptr %adapter1.i68 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %adapter1.i68, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 8
  %sriov2.i69 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %100, i32 0, i32 54
  %101 = ptrtoint ptr %sriov2.i69 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sriov2.i69, align 8
  call void @_raw_spin_lock_bh(ptr noundef %vlan_list_lock.i.i) #12
  %num_allowed_vlans.i14.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %102, i32 0, i32 4
  %103 = ptrtoint ptr %num_allowed_vlans.i14.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %num_allowed_vlans.i14.i, align 2
  %conv.i15.i = zext i16 %104 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %cmp13.not.i.i = icmp eq i16 %104, 0
  br i1 %cmp13.not.i.i, label %if.end.i73.if.end21.sink.split_crit_edge, label %for.body.lr.ph.i17.i

if.end.i73.if.end21.sink.split_crit_edge:         ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.sink.split

for.body.lr.ph.i17.i:                             ; preds = %if.end.i73
  %105 = ptrtoint ptr %sriov_vlans.i70 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sriov_vlans.i70, align 4
  br label %for.body.i22.i

for.cond.i20.i:                                   ; preds = %for.body.i22.i
  %inc.i18.i = add nuw nsw i32 %i.014.i.i, 1
  %exitcond.not.i19.i = icmp eq i32 %inc.i18.i, %conv.i15.i
  br i1 %exitcond.not.i19.i, label %for.cond.i20.i.if.end21.sink.split_crit_edge, label %for.cond.i20.i.for.body.i22.i_crit_edge

for.cond.i20.i.for.body.i22.i_crit_edge:          ; preds = %for.cond.i20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i22.i

for.cond.i20.i.if.end21.sink.split_crit_edge:     ; preds = %for.cond.i20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.sink.split

for.body.i22.i:                                   ; preds = %for.cond.i20.i.for.body.i22.i_crit_edge, %for.body.lr.ph.i17.i
  %i.014.i.i = phi i32 [ 0, %for.body.lr.ph.i17.i ], [ %inc.i18.i, %for.cond.i20.i.for.body.i22.i_crit_edge ]
  %arrayidx.i21.i = getelementptr i16, ptr %106, i32 %i.014.i.i
  %107 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %arrayidx.i21.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %108, i16 %vid)
  %cmp4.i.i = icmp eq i16 %108, %vid
  br i1 %cmp4.i.i, label %if.then.i24.i, label %for.cond.i20.i

if.then.i24.i:                                    ; preds = %for.body.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  %109 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 0, ptr %arrayidx.i21.i, align 2
  br label %if.end21.sink.split.sink.split

if.end21.sink.split.sink.split:                   ; preds = %if.then.i24.i, %if.then.i.i
  %.sink94 = phi i32 [ -1, %if.then.i24.i ], [ 1, %if.then.i.i ]
  %110 = ptrtoint ptr %num_vlan.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %num_vlan.i.i, align 4
  %dec.i.i = add i32 %111, %.sink94
  store i32 %dec.i.i, ptr %num_vlan.i.i, align 4
  br label %if.end21.sink.split

if.end21.sink.split:                              ; preds = %if.end21.sink.split.sink.split, %for.cond.i20.i.if.end21.sink.split_crit_edge, %if.end.i73.if.end21.sink.split_crit_edge, %for.cond.i.i63.if.end21.sink.split_crit_edge, %if.end.i58.if.end21.sink.split_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %vlan_list_lock.i.i) #12
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %if.else20.if.end21_crit_edge, %if.then19.if.end21_crit_edge
  %112 = ptrtoint ptr %nested_level.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %nested_level.i, align 1
  call fastcc void @local_bh_disable() #12
  %conv.i78 = zext i8 %113 to i32
  call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i, i32 noundef %conv.i78) #12
  call void @qlcnic_set_multi(ptr noundef %5) #12
  call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i) #12
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %do.end
  %retval.0.i5487 = phi i32 [ 0, %if.end21 ], [ %retval.0.i5486, %do.end ]
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then19.i, %if.end7.cleanup_crit_edge, %qlcnic_sriov_check_vlan_id.exit.thread63.i, %lor.lhs.false.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %if.then5.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i5487, %if.end22 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then5.i.cleanup_crit_edge ], [ -22, %if.end11.i.cleanup_crit_edge ], [ -22, %for.end.i.cleanup_crit_edge ], [ -22, %if.else.i.cleanup_crit_edge ], [ -22, %qlcnic_sriov_check_vlan_id.exit.thread63.i ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %for.cond.preheader.i.cleanup_crit_edge ], [ -12, %if.then19.i ], [ -12, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_set_multi(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_sriov_alloc_vlans(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %sriov1 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %sriov1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov1, align 8
  %num_vfs = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_vfs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp20.not = icmp eq i8 %5, 0
  br i1 %cmp20.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %vf_info = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 9
  %num_allowed_vlans = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %vf_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vf_info, align 4
  %8 = ptrtoint ptr %num_allowed_vlans to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_allowed_vlans, align 2
  %conv3 = zext i16 %9 to i32
  %10 = shl nuw nsw i32 %conv3, 1
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #16
  %sriov_vlans = getelementptr %struct.qlcnic_vf_info, ptr %7, i32 %i.021, i32 3
  %11 = ptrtoint ptr %sriov_vlans to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8.i.i, ptr %sriov_vlans, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.021, 1
  %12 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_vfs, align 2
  %conv = zext i8 %13 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_sriov_add_vlan_id(ptr nocapture noundef readonly %sriov, ptr nocapture noundef %vf, i16 noundef zeroext %vlan_id) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_allowed_vlans = getelementptr inbounds %struct.qlcnic_sriov, ptr %sriov, i32 0, i32 4
  %0 = ptrtoint ptr %num_allowed_vlans to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_allowed_vlans, align 2
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp10.not = icmp eq i16 %1, 0
  br i1 %cmp10.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %sriov_vlans = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 3
  %2 = ptrtoint ptr %sriov_vlans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov_vlans, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc4 = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc4, %conv
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc4, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %3, i32 %i.011
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %vlan_id, ptr %arrayidx, align 2
  %num_vlan = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 4
  %7 = ptrtoint ptr %num_vlan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_vlan, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %num_vlan, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_sriov_del_vlan_id(ptr nocapture noundef readonly %sriov, ptr nocapture noundef %vf, i16 noundef zeroext %vlan_id) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_allowed_vlans = getelementptr inbounds %struct.qlcnic_sriov, ptr %sriov, i32 0, i32 4
  %0 = ptrtoint ptr %num_allowed_vlans to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_allowed_vlans, align 2
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp13.not = icmp eq i16 %1, 0
  br i1 %cmp13.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %sriov_vlans = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 3
  %2 = ptrtoint ptr %sriov_vlans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov_vlans, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %3, i32 %i.014
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %vlan_id)
  %cmp4 = icmp eq i16 %5, %vlan_id
  br i1 %cmp4, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %arrayidx, align 2
  %num_vlan = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 4
  %7 = ptrtoint ptr %num_vlan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_vlan, align 4
  %dec = add i32 %8, -1
  store i32 %dec, ptr %num_vlan, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @qlcnic_sriov_check_any_vlan(ptr noundef %vf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_list_lock = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %vlan_list_lock) #12
  %num_vlan = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 4
  %0 = ptrtoint ptr %num_vlan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_vlan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp ne i32 %1, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %vlan_list_lock) #12
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_sriov_channel_cfg_cmd(ptr noundef %adapter, i8 noundef zeroext %cmd_op) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #12
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %sriov = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %sriov to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov, align 8
  %vf_info = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %vf_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vf_info, align 4
  %6 = call ptr @memset(ptr %cmd, i32 0, i32 120)
  %conv = zext i8 %cmd_op to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %cmd_op)
  %switch = icmp ult i8 %cmd_op, 4
  br i1 %switch, label %if.then.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %op_type.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 8
  %7 = ptrtoint ptr %op_type.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %op_type.i, align 4
  %in_args.i = getelementptr %struct.qlcnic_mailbox_metadata, ptr @qlcnic_sriov_bc_mbx_tbl, i32 %conv, i32 1
  %8 = ptrtoint ptr %in_args.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %in_args.i, align 4
  %req.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2
  %10 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %req.i, align 4
  %out_args.i = getelementptr %struct.qlcnic_mailbox_metadata, ptr @qlcnic_sriov_bc_mbx_tbl, i32 %conv, i32 2
  %11 = ptrtoint ptr %out_args.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %out_args.i, align 4
  %rsp.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3
  %13 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rsp.i, align 4
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 4) #12
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %if.then.i.cleanup_crit_edge, label %if.end7.i.i.i, !prof !226

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %if.then.i
  %16 = extractvalue { i32, i1 } %14, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 2848) #16
  %arg.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8.i.i.i, ptr %arg.i, align 4
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.cleanup_crit_edge, label %if.end.i

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end7.i.i.i
  %18 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rsp.i, align 4
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %19, i32 4) #12
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %if.end.i.if.then19.i_crit_edge, label %if.end7.i.i93.i, !prof !226

if.end.i.if.then19.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19.i

if.end7.i.i93.i:                                  ; preds = %if.end.i
  %22 = extractvalue { i32, i1 } %20, 0
  %call8.i.i92.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 2848) #16
  %arg15.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %arg15.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call8.i.i92.i, ptr %arg15.i, align 4
  %tobool18.not.i = icmp eq ptr %call8.i.i92.i, null
  br i1 %tobool18.not.i, label %if.end7.i.i93.i.if.then19.i_crit_edge, label %if.end

if.end7.i.i93.i.if.then19.i_crit_edge:            ; preds = %if.end7.i.i93.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19.i

if.then19.i:                                      ; preds = %if.end7.i.i93.i.if.then19.i_crit_edge, %if.end.i.if.then19.i_crit_edge
  %24 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arg.i, align 4
  tail call void @kfree(ptr noundef %25) #12
  %26 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arg.i, align 4
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i93.i
  %27 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %req.i, align 4
  %shl.i = shl i32 %28, 16
  %or.i = or i32 %shl.i, %conv
  %or27.i = or i32 %or.i, 1610612736
  %29 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arg.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or27.i, ptr %30, align 4
  %32 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rsp.i, align 4
  %shl33.i = shl i32 %33, 16
  %or34.i = or i32 %shl33.i, %conv
  %34 = ptrtoint ptr %arg15.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arg15.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or34.i, ptr %35, align 4
  %37 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %38, i32 0, i32 46
  %39 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw_ops.i, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i30 = icmp eq ptr %42, null
  br i1 %tobool.not.i30, label %if.end.do.end_crit_edge, label %qlcnic_issue_cmd.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

qlcnic_issue_cmd.exit:                            ; preds = %if.end
  %call.i = call i32 %42(ptr noundef %adapter, ptr noundef nonnull %cmd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end6, label %qlcnic_issue_cmd.exit.do.end_crit_edge

qlcnic_issue_cmd.exit.do.end_crit_edge:           ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %qlcnic_issue_cmd.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.0.i3237 = phi i32 [ %call.i, %qlcnic_issue_cmd.exit.do.end_crit_edge ], [ -5, %if.end.do.end_crit_edge ]
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %43 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cmd_op)
  %tobool5.not = icmp eq i8 %cmd_op, 0
  %cond = select i1 %tobool5.not, ptr @.str.51, ptr @.str.50
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48, ptr noundef nonnull %cond, i32 noundef %retval.0.i3237) #17
  br label %out

if.end6:                                          ; preds = %qlcnic_issue_cmd.exit
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arg, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %shr.mask = and i32 %48, -33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %shr.mask)
  %cmp = icmp eq i32 %shr.mask, 67108864
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end14

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %conv15 = and i32 %48, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15)
  %cmp16 = icmp eq i32 %conv15, 0
  %state = getelementptr inbounds %struct.qlcnic_vf_info, ptr %5, i32 0, i32 5
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  call void @_set_bit(i32 noundef 3, ptr noundef %state) #12
  br label %out

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  call void @_clear_bit(i32 noundef 3, ptr noundef %state) #12
  br label %out

out:                                              ; preds = %if.else, %if.then18, %do.end
  %retval.0.i3238 = phi i32 [ 0, %if.then18 ], [ 0, %if.else ], [ %retval.0.i3237, %do.end ]
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end6.cleanup_crit_edge, %if.then19.i, %if.end7.i.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i3238, %out ], [ 2, %if.end6.cleanup_crit_edge ], [ -12, %if.then19.i ], [ -12, %if.end7.i.i.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.then.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_set_tx_ring_count(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_set_sds_ring_count(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_setup_mbx_intr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_sriov_vf_init_driver(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  %nic_info = alloca %struct.qlcnic_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %nic_info) #12
  %2 = call ptr @memset(ptr %nic_info, i32 255, i32 72)
  %call = call i32 @qlcnic_sriov_get_vf_vport_info(ptr noundef %adapter, ptr noundef nonnull %nic_info, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_rx_mcast_mac_filters = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info, i32 0, i32 18
  %3 = ptrtoint ptr %max_rx_mcast_mac_filters to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %max_rx_mcast_mac_filters, align 2
  %conv = trunc i16 %4 to i8
  %max_mc_count = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %max_mc_count to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %max_mc_count, align 8
  %pci_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pci_func, align 1
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_ops.i, align 4
  %get_nic_info.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %get_nic_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_nic_info.i, align 4
  %call.i = call i32 %13(ptr noundef %adapter, ptr noundef nonnull %nic_info, i8 noundef zeroext %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @qlcnic_83xx_get_port_info(ptr noundef %adapter) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %num_rxd.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 8
  %14 = ptrtoint ptr %num_rxd.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2048, ptr %num_rxd.i, align 2
  %max_rxd.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 10
  %15 = ptrtoint ptr %max_rxd.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 8192, ptr %max_rxd.i, align 2
  %num_jumbo_rxd.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 9
  %16 = ptrtoint ptr %num_jumbo_rxd.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 512, ptr %num_jumbo_rxd.i, align 8
  %max_jumbo_rxd.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 11
  %17 = ptrtoint ptr %max_jumbo_rxd.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1024, ptr %max_jumbo_rxd.i, align 4
  %num_txd.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 7
  %18 = ptrtoint ptr %num_txd.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1024, ptr %num_txd.i, align 4
  %max_rds_rings.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 12
  %19 = ptrtoint ptr %max_rds_rings.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %max_rds_rings.i, align 2
  %flags = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 8
  %or = or i32 %21, 128
  store i32 %or, ptr %flags, align 8
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter, align 8
  %fw_hal_version = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %fw_hal_version to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fw_hal_version, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.60, i32 noundef %27) #17
  %phys_port = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info, i32 0, i32 2
  %28 = ptrtoint ptr %phys_port to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %phys_port, align 4
  %conv11 = trunc i16 %29 to i8
  %physical_port = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 12
  %30 = ptrtoint ptr %physical_port to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv11, ptr %physical_port, align 1
  %switch_mode = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info, i32 0, i32 3
  %31 = ptrtoint ptr %switch_mode to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %switch_mode, align 2
  %switch_mode12 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 31
  %33 = ptrtoint ptr %switch_mode12 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %switch_mode12, align 4
  %max_mtu = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info, i32 0, i32 6
  %34 = ptrtoint ptr %max_mtu to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %max_mtu, align 2
  %max_mtu13 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 34
  %36 = ptrtoint ptr %max_mtu13 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %max_mtu13, align 2
  %op_mode = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info, i32 0, i32 1
  %37 = ptrtoint ptr %op_mode to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %op_mode, align 2
  %op_mode14 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 30
  %39 = ptrtoint ptr %op_mode14 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %op_mode14, align 2
  %capabilities = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info, i32 0, i32 4
  %40 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %capabilities, align 4
  %capabilities15 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 40
  %42 = ptrtoint ptr %capabilities15 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %capabilities15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %call, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %nic_info) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_sriov_get_vf_acl(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %sriov1 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %sriov1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov1, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #12
  %4 = call ptr @memset(ptr %cmd, i32 0, i32 120)
  %op_type.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 8
  %5 = ptrtoint ptr %op_type.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %op_type.i, align 4
  %req.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %req.i, align 4
  %rsp.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3
  %7 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 14, ptr %rsp.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2848, i32 noundef 12) #15
  %arg.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i.i.i, ptr %arg.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %10 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rsp.i, align 4
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 4) #12
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.end.i.if.then19.i_crit_edge, label %if.end7.i.i93.i, !prof !226

if.end.i.if.then19.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19.i

if.end7.i.i93.i:                                  ; preds = %if.end.i
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i.i92.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 2848) #16
  %arg15.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %arg15.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8.i.i92.i, ptr %arg15.i, align 4
  %tobool18.not.i = icmp eq ptr %call8.i.i92.i, null
  br i1 %tobool18.not.i, label %if.end7.i.i93.i.if.then19.i_crit_edge, label %if.end

if.end7.i.i93.i.if.then19.i_crit_edge:            ; preds = %if.end7.i.i93.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19.i

if.then19.i:                                      ; preds = %if.end7.i.i93.i.if.then19.i_crit_edge, %if.end.i.if.then19.i_crit_edge
  %16 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arg.i, align 4
  tail call void @kfree(ptr noundef %17) #12
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i93.i
  %18 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %req.i, align 4
  %shl.i = shl i32 %19, 16
  %or27.i = or i32 %shl.i, 1610612738
  %20 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arg.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or27.i, ptr %21, align 4
  %23 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rsp.i, align 4
  %shl33.i = shl i32 %24, 16
  %or34.i = or i32 %shl33.i, 2
  %25 = ptrtoint ptr %arg15.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arg15.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or34.i, ptr %26, align 4
  %28 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %29, i32 0, i32 46
  %30 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_ops.i, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i22 = icmp eq ptr %33, null
  br i1 %tobool.not.i22, label %if.end.do.end_crit_edge, label %qlcnic_issue_cmd.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

qlcnic_issue_cmd.exit:                            ; preds = %if.end
  %call.i = call i32 %33(ptr noundef %adapter, ptr noundef nonnull %cmd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.else, label %qlcnic_issue_cmd.exit.do.end_crit_edge

qlcnic_issue_cmd.exit.do.end_crit_edge:           ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %qlcnic_issue_cmd.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.0.i2336 = phi i32 [ %call.i, %qlcnic_issue_cmd.exit.do.end_crit_edge ], [ -5, %if.end.do.end_crit_edge ]
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62, i32 noundef %retval.0.i2336) #17
  br label %if.end10

if.else:                                          ; preds = %qlcnic_issue_cmd.exit
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %37, i32 1
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx, align 4
  %40 = trunc i32 %39 to i8
  %conv = and i8 %40, 3
  %vlan_mode = getelementptr inbounds %struct.qlcnic_sriov, ptr %3, i32 0, i32 3
  %41 = ptrtoint ptr %vlan_mode to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv, ptr %vlan_mode, align 4
  %conv6 = zext i8 %conv to i32
  %42 = zext i32 %conv6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %conv6, label %if.else.if.end10_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb8
  ]

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

sw.bb:                                            ; preds = %if.else
  %43 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adapter, align 8
  %sriov1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %44, i32 0, i32 54
  %45 = ptrtoint ptr %sriov1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sriov1.i, align 8
  %allowed_vlans.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %allowed_vlans.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %allowed_vlans.i, align 4
  %tobool.not.i24 = icmp eq ptr %48, null
  br i1 %tobool.not.i24, label %if.end.i26, label %sw.bb.if.end10_crit_edge

sw.bb.if.end10_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end.i26:                                       ; preds = %sw.bb
  %49 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arg, align 4
  %arrayidx.i = getelementptr i32, ptr %50, i32 2
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i, align 4
  %53 = trunc i32 %52 to i8
  %conv.i = and i8 %53, 15
  %any_vlan.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %46, i32 0, i32 2
  %54 = ptrtoint ptr %any_vlan.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv.i, ptr %any_vlan.i, align 1
  %55 = load ptr, ptr %arg, align 4
  %arrayidx4.i = getelementptr i32, ptr %55, i32 2
  %56 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx4.i, align 4
  %shr.i = lshr i32 %57, 16
  %conv5.i = trunc i32 %shr.i to i16
  %num_allowed_vlans.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %46, i32 0, i32 4
  %58 = ptrtoint ptr %num_allowed_vlans.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv5.i, ptr %num_allowed_vlans.i, align 2
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %59 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.64, i32 noundef %shr.i) #17
  %61 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adapter, align 8
  %sriov1.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %62, i32 0, i32 54
  %63 = ptrtoint ptr %sriov1.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sriov1.i.i, align 8
  %num_vfs.i.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %num_vfs.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %num_vfs.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp20.not.i.i = icmp eq i8 %66, 0
  br i1 %cmp20.not.i.i, label %if.end.i26.if.end10.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i26.if.end10.i_crit_edge:                  ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i26
  %vf_info.i.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %64, i32 0, i32 9
  %num_allowed_vlans.i.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %64, i32 0, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.021.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %67 = ptrtoint ptr %vf_info.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vf_info.i.i, align 4
  %69 = ptrtoint ptr %num_allowed_vlans.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %num_allowed_vlans.i.i, align 2
  %conv3.i.i = zext i16 %70 to i32
  %71 = shl nuw nsw i32 %conv3.i.i, 1
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %71, i32 noundef 3520) #16
  %sriov_vlans.i.i = getelementptr %struct.qlcnic_vf_info, ptr %68, i32 %i.021.i.i, i32 3
  %72 = ptrtoint ptr %sriov_vlans.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call8.i.i.i.i, ptr %sriov_vlans.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end10_crit_edge, label %for.inc.i.i

for.body.i.i.if.end10_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.021.i.i, 1
  %73 = ptrtoint ptr %num_vfs.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %num_vfs.i.i, align 2
  %conv.i.i = zext i8 %74 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end10.i_crit_edge

for.inc.i.i.if.end10.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

if.end10.i:                                       ; preds = %for.inc.i.i.if.end10.i_crit_edge, %if.end.i26.if.end10.i_crit_edge
  %75 = ptrtoint ptr %any_vlan.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %any_vlan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool12.not.i = icmp eq i8 %76, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end10_crit_edge, label %if.end14.i

if.end10.i.if.end10_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end14.i:                                       ; preds = %if.end10.i
  %77 = ptrtoint ptr %num_allowed_vlans.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %num_allowed_vlans.i, align 2
  %conv16.i = zext i16 %78 to i32
  %79 = shl nuw nsw i32 %conv16.i, 1
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %79, i32 noundef 3520) #16
  %80 = ptrtoint ptr %allowed_vlans.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call8.i.i.i, ptr %allowed_vlans.i, align 4
  %tobool20.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool20.not.i, label %if.end14.i.if.end10_crit_edge, label %if.end22.i

if.end14.i.if.end10_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end22.i:                                       ; preds = %if.end14.i
  %81 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arg, align 4
  %arrayidx25.i = getelementptr i32, ptr %82, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %cmp62.not.i = icmp eq i16 %78, 0
  br i1 %cmp62.not.i, label %if.end22.i.if.end10_crit_edge, label %if.end22.i.for.body.i_crit_edge

if.end22.i.for.body.i_crit_edge:                  ; preds = %if.end22.i
  br label %for.body.i

if.end22.i.if.end10_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end22.i.for.body.i_crit_edge
  %i.063.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end22.i.for.body.i_crit_edge ]
  %arrayidx27.i = getelementptr i16, ptr %arrayidx25.i, i32 %i.063.i
  %83 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx27.i, align 2
  %85 = ptrtoint ptr %allowed_vlans.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %allowed_vlans.i, align 4
  %arrayidx29.i = getelementptr i16, ptr %86, i32 %i.063.i
  %87 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %84, ptr %arrayidx29.i, align 2
  %inc.i = add nuw nsw i32 %i.063.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv16.i
  br i1 %exitcond.not.i, label %for.body.i.if.end10_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.if.end10_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

sw.bb8:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arg, align 4
  %arrayidx.i30 = getelementptr i32, ptr %89, i32 1
  %90 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i30, align 4
  %shr.i31 = lshr i32 %91, 16
  %conv2.i = trunc i32 %shr.i31 to i16
  %rx_pvid.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 27
  %92 = ptrtoint ptr %rx_pvid.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv2.i, ptr %rx_pvid.i, align 2
  %flags.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  %93 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags.i, align 8
  %and3.i = and i32 %94, -257
  store i32 %and3.i, ptr %flags.i, align 8
  br label %if.end10

if.end10:                                         ; preds = %sw.bb8, %for.body.i.if.end10_crit_edge, %if.end22.i.if.end10_crit_edge, %if.end14.i.if.end10_crit_edge, %if.end10.i.if.end10_crit_edge, %for.body.i.i.if.end10_crit_edge, %sw.bb.if.end10_crit_edge, %if.else.if.end10_crit_edge, %do.end
  %ret.0 = phi i32 [ %retval.0.i2336, %do.end ], [ 0, %if.else.if.end10_crit_edge ], [ 0, %sw.bb8 ], [ 0, %sw.bb.if.end10_crit_edge ], [ 0, %if.end10.i.if.end10_crit_edge ], [ -12, %if.end14.i.if.end10_crit_edge ], [ 0, %if.end22.i.if.end10_crit_edge ], [ 0, %for.body.i.if.end10_crit_edge ], [ -12, %for.body.i.i.if.end10_crit_edge ]
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then19.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end10 ], [ -12, %if.then19.i ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_setup_netdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_schedule_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlcnic_sriov_vf_poll_dev_state(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -840
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ext_reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 56
  %4 = ptrtoint ptr %ext_reg_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext_reg_tbl, align 8
  %arrayidx = getelementptr i32, ptr %5, i32 12
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #12, !srcloc !228
  %9 = lshr i32 %8, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !234
  %conv = trunc i32 %9 to i8
  %curr_state = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 6
  %10 = ptrtoint ptr %curr_state to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %curr_state, align 4
  %11 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.123)
  switch i8 %conv, label %sw.default [
    i8 3, label %sw.bb
    i8 4, label %entry.sw.bb10_crit_edge
    i8 2, label %entry.sw.bb10_crit_edge129
    i8 5, label %sw.bb12
    i8 6, label %sw.bb14
    i8 7, label %land.lhs.true.critedge35
  ]

entry.sw.bb10_crit_edge129:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

sw.bb:                                            ; preds = %entry
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %prev_state.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 51, i32 7
  %14 = ptrtoint ptr %prev_state.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %prev_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp.not.i = icmp eq i8 %15, 3
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  %pdev.i.i = getelementptr i8, ptr %work, i32 -824
  %16 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i.i, align 8
  %dev2.i.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %pci_func.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 6
  %18 = ptrtoint ptr %pci_func.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pci_func.i.i, align 1
  %20 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.124)
  switch i8 %15, label %if.then.i.qlcnic_sriov_vf_idc_ready_state.exit_crit_edge [
    i8 4, label %if.then.i.if.then.i.i_crit_edge
    i8 2, label %if.then.i.if.then.i.i_crit_edge130
  ]

if.then.i.if.then.i.i_crit_edge130:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.then.i.if.then.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.then.i.qlcnic_sriov_vf_idc_ready_state.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_vf_idc_ready_state.exit

if.then.i.i:                                      ; preds = %if.then.i.if.then.i.i_crit_edge, %if.then.i.if.then.i.i_crit_edge130
  %call.i.i = tail call fastcc i32 @qlcnic_sriov_vf_reinit_driver(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then9.i.i, label %do.end13.i.i

if.then9.i.i:                                     ; preds = %if.then.i.i
  %netdev1.i.i.i = getelementptr i8, ptr %work, i32 -828
  %21 = ptrtoint ptr %netdev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev1.i.i.i, align 4
  %state.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state.i.i.i.i, align 4
  %and1.i.i.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.then9.i.i.qlcnic_sriov_vf_attach.exit.i.i_crit_edge, label %if.then.i.i.i

if.then9.i.i.qlcnic_sriov_vf_attach.exit.i.i_crit_edge: ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_vf_attach.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then9.i.i
  %call2.i.i.i = tail call i32 @qlcnic_up(ptr noundef %add.ptr, ptr noundef %22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then3.i.i.i, label %if.then.i.i.i.qlcnic_sriov_vf_attach.exit.i.i_crit_edge

if.then.i.i.i.qlcnic_sriov_vf_attach.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_vf_attach.exit.i.i

if.then3.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @qlcnic_restore_indev_addr(ptr noundef %22, i32 noundef 1) #12
  br label %qlcnic_sriov_vf_attach.exit.i.i

qlcnic_sriov_vf_attach.exit.i.i:                  ; preds = %if.then3.i.i.i, %if.then.i.i.i.qlcnic_sriov_vf_attach.exit.i.i_crit_edge, %if.then9.i.i.qlcnic_sriov_vf_attach.exit.i.i_crit_edge
  tail call void @netif_device_attach(ptr noundef %22) #12
  %fw_fail_cnt.i.i = getelementptr i8, ptr %work, i32 -792
  %25 = ptrtoint ptr %fw_fail_cnt.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %fw_fail_cnt.i.i, align 8
  %conv10.i.i = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef %conv10.i.i) #17
  br label %qlcnic_sriov_vf_idc_ready_state.exit

do.end13.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv14.i.i = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.67, i32 noundef %conv14.i.i) #17
  %26 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %13, align 8
  %ext_reg_tbl.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 56
  %28 = ptrtoint ptr %ext_reg_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ext_reg_tbl.i.i, align 8
  %arrayidx.i.i = getelementptr i32, ptr %29, i32 12
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 %31
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !228
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.72, i32 noundef %33) #17
  br label %qlcnic_sriov_vf_idc_ready_state.exit

if.else.i:                                        ; preds = %sw.bb
  %reset_context.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 13
  %34 = ptrtoint ptr %reset_context.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %reset_context.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i, label %if.else.i.qlcnic_sriov_vf_idc_ready_state.exit_crit_edge, label %if.then3.i

if.else.i.qlcnic_sriov_vf_idc_ready_state.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_vf_idc_ready_state.exit

if.then3.i:                                       ; preds = %if.else.i
  %mailbox.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 59
  %36 = ptrtoint ptr %mailbox.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mailbox.i.i, align 8
  %pdev.i10.i = getelementptr i8, ptr %work, i32 -824
  %38 = ptrtoint ptr %pdev.i10.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev.i10.i, align 8
  %dev2.i11.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %pci_func.i12.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 6
  %40 = ptrtoint ptr %pci_func.i12.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %pci_func.i12.i, align 1
  %reset_ctx_cnt.i.i = getelementptr i8, ptr %work, i32 -789
  %42 = ptrtoint ptr %reset_ctx_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %reset_ctx_cnt.i.i, align 1
  %inc.i.i = add i8 %43, 1
  store i8 %inc.i.i, ptr %reset_ctx_cnt.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %inc.i.i)
  %cmp.i.i = icmp ult i8 %inc.i.i, 3
  br i1 %cmp.i.i, label %if.then.i13.i, label %if.end.i.i

if.then.i13.i:                                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  %need_fw_reset.i.i = getelementptr i8, ptr %work, i32 -790
  %44 = ptrtoint ptr %need_fw_reset.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %need_fw_reset.i.i, align 2
  %status.i.i = getelementptr inbounds %struct.qlcnic_mailbox, ptr %37, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %status.i.i) #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i11.i, ptr noundef nonnull @.str.74) #17
  br label %qlcnic_sriov_vf_idc_ready_state.exit

if.end.i.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %inc.i.i)
  %cmp8.i.i = icmp ugt i8 %inc.i.i, 8
  br i1 %cmp8.i.i, label %if.then10.i.i, label %do.end19.i.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  %status11.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 51, i32 3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %status11.i.i) #12
  %tx_timeo_cnt.i.i = getelementptr i8, ptr %work, i32 -791
  %45 = ptrtoint ptr %tx_timeo_cnt.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %tx_timeo_cnt.i.i, align 1
  %fw_fail_cnt.i14.i = getelementptr i8, ptr %work, i32 -792
  %46 = ptrtoint ptr %fw_fail_cnt.i14.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %fw_fail_cnt.i14.i, align 8
  %47 = ptrtoint ptr %reset_ctx_cnt.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %reset_ctx_cnt.i.i, align 1
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr, align 8
  %intr_tbl2.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %49, i32 0, i32 53
  %50 = ptrtoint ptr %intr_tbl2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %intr_tbl2.i.i.i, align 4
  %netdev3.i.i.i = getelementptr i8, ptr %work, i32 -828
  %52 = ptrtoint ptr %netdev3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %netdev3.i.i.i, align 4
  %num_msix.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %49, i32 0, i32 19
  %54 = ptrtoint ptr %num_msix.i.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %num_msix.i.i.i, align 2
  %sub.i.i.i = add i8 %55, -1
  tail call void @netif_device_detach(ptr noundef %53) #12
  tail call void @qlcnic_83xx_detach_mailbox_work(ptr noundef %add.ptr) #12
  tail call void @qlcnic_83xx_disable_mbx_intr(ptr noundef %add.ptr) #12
  %state.i.i.i15.i = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 6
  %56 = ptrtoint ptr %state.i.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %state.i.i.i15.i, align 4
  %and1.i.i.i.i16.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i16.i)
  %tobool.i.not.i.i17.i = icmp eq i32 %and1.i.i.i.i16.i, 0
  br i1 %tobool.i.not.i.i17.i, label %if.then10.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i18.i

if.then10.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

if.then.i.i18.i:                                  ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @qlcnic_down(ptr noundef %add.ptr, ptr noundef %53) #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i18.i, %if.then10.i.i.if.end.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sub.i.i.i)
  %cmp28.not.i.i.i = icmp eq i8 %sub.i.i.i, 0
  br i1 %cmp28.not.i.i.i, label %if.end.i.i.i.qlcnic_sriov_vf_detach.exit.i.i_crit_edge, label %for.body.preheader.i.i.i

if.end.i.i.i.qlcnic_sriov_vf_detach.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_vf_detach.exit.i.i

for.body.preheader.i.i.i:                         ; preds = %if.end.i.i.i
  %wide.trip.count.i.i.i = zext i8 %sub.i.i.i to i32
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %indvars.iv.i.i.i = phi i32 [ 0, %for.body.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %58 = trunc i32 %indvars.iv.i.i.i to i16
  %id.i.i.i = getelementptr %struct.qlcnic_intrpt_config, ptr %51, i32 %indvars.iv.i.i.i, i32 2
  %59 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %id.i.i.i, align 2
  %enabled.i.i.i = getelementptr %struct.qlcnic_intrpt_config, ptr %51, i32 %indvars.iv.i.i.i, i32 1
  %60 = ptrtoint ptr %enabled.i.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %enabled.i.i.i, align 1
  %src.i.i.i = getelementptr %struct.qlcnic_intrpt_config, ptr %51, i32 %indvars.iv.i.i.i, i32 3
  %61 = ptrtoint ptr %src.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %src.i.i.i, align 4
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.qlcnic_sriov_vf_detach.exit.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.body.i.i.i.qlcnic_sriov_vf_detach.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_vf_detach.exit.i.i

qlcnic_sriov_vf_detach.exit.i.i:                  ; preds = %for.body.i.i.i.qlcnic_sriov_vf_detach.exit.i.i_crit_edge, %if.end.i.i.i.qlcnic_sriov_vf_detach.exit.i.i_crit_edge
  %reset_context.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %49, i32 0, i32 13
  %62 = ptrtoint ptr %reset_context.i.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %reset_context.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i11.i, ptr noundef nonnull @.str.77) #17
  br label %qlcnic_sriov_vf_idc_ready_state.exit

do.end19.i.i:                                     ; preds = %if.end.i.i
  %conv20.i.i = zext i8 %41 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i11.i, ptr noundef nonnull @.str.80, i32 noundef %conv20.i.i) #17
  %63 = ptrtoint ptr %reset_ctx_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %reset_ctx_cnt.i.i, align 1
  %conv25.i.i = zext i8 %64 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i11.i, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.75, i32 noundef %conv25.i.i, i32 noundef %conv20.i.i) #17
  %state27.i.i = getelementptr i8, ptr %work, i32 -820
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state27.i.i) #12
  %need_fw_reset28.i.i = getelementptr i8, ptr %work, i32 -790
  %65 = ptrtoint ptr %need_fw_reset28.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %need_fw_reset28.i.i, align 2
  %status29.i.i = getelementptr inbounds %struct.qlcnic_mailbox, ptr %37, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %status29.i.i) #12
  %66 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr, align 8
  %intr_tbl2.i87.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %67, i32 0, i32 53
  %68 = ptrtoint ptr %intr_tbl2.i87.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %intr_tbl2.i87.i.i, align 4
  %netdev3.i88.i.i = getelementptr i8, ptr %work, i32 -828
  %70 = ptrtoint ptr %netdev3.i88.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %netdev3.i88.i.i, align 4
  %num_msix.i89.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %67, i32 0, i32 19
  %72 = ptrtoint ptr %num_msix.i89.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %num_msix.i89.i.i, align 2
  %sub.i90.i.i = add i8 %73, -1
  tail call void @netif_device_detach(ptr noundef %71) #12
  tail call void @qlcnic_83xx_detach_mailbox_work(ptr noundef %add.ptr) #12
  tail call void @qlcnic_83xx_disable_mbx_intr(ptr noundef %add.ptr) #12
  %state.i.i91.i.i = getelementptr inbounds %struct.net_device, ptr %71, i32 0, i32 6
  %74 = ptrtoint ptr %state.i.i91.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %state.i.i91.i.i, align 4
  %and1.i.i.i92.i.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i92.i.i)
  %tobool.i.not.i93.i.i = icmp eq i32 %and1.i.i.i92.i.i, 0
  br i1 %tobool.i.not.i93.i.i, label %do.end19.i.i.if.end.i96.i.i_crit_edge, label %if.then.i94.i.i

do.end19.i.i.if.end.i96.i.i_crit_edge:            ; preds = %do.end19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i96.i.i

if.then.i94.i.i:                                  ; preds = %do.end19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @qlcnic_down(ptr noundef %add.ptr, ptr noundef %71) #12
  br label %if.end.i96.i.i

if.end.i96.i.i:                                   ; preds = %if.then.i94.i.i, %do.end19.i.i.if.end.i96.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sub.i90.i.i)
  %cmp28.not.i95.i.i = icmp eq i8 %sub.i90.i.i, 0
  br i1 %cmp28.not.i95.i.i, label %if.end.i96.i.i.qlcnic_sriov_vf_detach.exit107.i.i_crit_edge, label %for.body.preheader.i98.i.i

if.end.i96.i.i.qlcnic_sriov_vf_detach.exit107.i.i_crit_edge: ; preds = %if.end.i96.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_vf_detach.exit107.i.i

for.body.preheader.i98.i.i:                       ; preds = %if.end.i96.i.i
  %wide.trip.count.i97.i.i = zext i8 %sub.i90.i.i to i32
  br label %for.body.i105.i.i

for.body.i105.i.i:                                ; preds = %for.body.i105.i.i.for.body.i105.i.i_crit_edge, %for.body.preheader.i98.i.i
  %indvars.iv.i99.i.i = phi i32 [ 0, %for.body.preheader.i98.i.i ], [ %indvars.iv.next.i103.i.i, %for.body.i105.i.i.for.body.i105.i.i_crit_edge ]
  %76 = trunc i32 %indvars.iv.i99.i.i to i16
  %id.i100.i.i = getelementptr %struct.qlcnic_intrpt_config, ptr %69, i32 %indvars.iv.i99.i.i, i32 2
  %77 = ptrtoint ptr %id.i100.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %id.i100.i.i, align 2
  %enabled.i101.i.i = getelementptr %struct.qlcnic_intrpt_config, ptr %69, i32 %indvars.iv.i99.i.i, i32 1
  %78 = ptrtoint ptr %enabled.i101.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %enabled.i101.i.i, align 1
  %src.i102.i.i = getelementptr %struct.qlcnic_intrpt_config, ptr %69, i32 %indvars.iv.i99.i.i, i32 3
  %79 = ptrtoint ptr %src.i102.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %src.i102.i.i, align 4
  %indvars.iv.next.i103.i.i = add nuw nsw i32 %indvars.iv.i99.i.i, 1
  %exitcond.not.i104.i.i = icmp eq i32 %indvars.iv.next.i103.i.i, %wide.trip.count.i97.i.i
  br i1 %exitcond.not.i104.i.i, label %for.body.i105.i.i.qlcnic_sriov_vf_detach.exit107.i.i_crit_edge, label %for.body.i105.i.i.for.body.i105.i.i_crit_edge

for.body.i105.i.i.for.body.i105.i.i_crit_edge:    ; preds = %for.body.i105.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i105.i.i

for.body.i105.i.i.qlcnic_sriov_vf_detach.exit107.i.i_crit_edge: ; preds = %for.body.i105.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_vf_detach.exit107.i.i

qlcnic_sriov_vf_detach.exit107.i.i:               ; preds = %for.body.i105.i.i.qlcnic_sriov_vf_detach.exit107.i.i_crit_edge, %if.end.i96.i.i.qlcnic_sriov_vf_detach.exit107.i.i_crit_edge
  %reset_context.i106.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %67, i32 0, i32 13
  %80 = ptrtoint ptr %reset_context.i106.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %reset_context.i106.i.i, align 4
  %81 = ptrtoint ptr %need_fw_reset28.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %need_fw_reset28.i.i, align 2
  %call.i19.i = tail call fastcc i32 @qlcnic_sriov_vf_reinit_driver(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %tobool.not.i20.i = icmp eq i32 %call.i19.i, 0
  br i1 %tobool.not.i20.i, label %if.then31.i.i, label %do.end41.i.i

if.then31.i.i:                                    ; preds = %qlcnic_sriov_vf_detach.exit107.i.i
  %82 = ptrtoint ptr %netdev3.i88.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %netdev3.i88.i.i, align 4
  %state.i.i108.i.i = getelementptr inbounds %struct.net_device, ptr %83, i32 0, i32 6
  %84 = ptrtoint ptr %state.i.i108.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %state.i.i108.i.i, align 4
  %and1.i.i.i109.i.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i109.i.i)
  %tobool.i.not.i110.i.i = icmp eq i32 %and1.i.i.i109.i.i, 0
  br i1 %tobool.i.not.i110.i.i, label %if.then31.i.i.qlcnic_sriov_vf_attach.exit.i24.i_crit_edge, label %if.then.i111.i.i

if.then31.i.i.qlcnic_sriov_vf_attach.exit.i24.i_crit_edge: ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_vf_attach.exit.i24.i

if.then.i111.i.i:                                 ; preds = %if.then31.i.i
  %call2.i.i21.i = tail call i32 @qlcnic_up(ptr noundef %add.ptr, ptr noundef %83) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i21.i)
  %tobool.not.i.i22.i = icmp eq i32 %call2.i.i21.i, 0
  br i1 %tobool.not.i.i22.i, label %if.then3.i.i23.i, label %if.then.i111.i.i.qlcnic_sriov_vf_attach.exit.i24.i_crit_edge

if.then.i111.i.i.qlcnic_sriov_vf_attach.exit.i24.i_crit_edge: ; preds = %if.then.i111.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_vf_attach.exit.i24.i

if.then3.i.i23.i:                                 ; preds = %if.then.i111.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @qlcnic_restore_indev_addr(ptr noundef %83, i32 noundef 1) #12
  br label %qlcnic_sriov_vf_attach.exit.i24.i

qlcnic_sriov_vf_attach.exit.i24.i:                ; preds = %if.then3.i.i23.i, %if.then.i111.i.i.qlcnic_sriov_vf_attach.exit.i24.i_crit_edge, %if.then31.i.i.qlcnic_sriov_vf_attach.exit.i24.i_crit_edge
  tail call void @netif_device_attach(ptr noundef %83) #12
  %tx_timeo_cnt32.i.i = getelementptr i8, ptr %work, i32 -791
  %86 = ptrtoint ptr %tx_timeo_cnt32.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %tx_timeo_cnt32.i.i, align 1
  %87 = ptrtoint ptr %reset_ctx_cnt.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %reset_ctx_cnt.i.i, align 1
  %fw_fail_cnt34.i.i = getelementptr i8, ptr %work, i32 -792
  %88 = ptrtoint ptr %fw_fail_cnt34.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %fw_fail_cnt34.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i11.i, ptr noundef nonnull @.str.86, i32 noundef %conv20.i.i) #17
  br label %qlcnic_sriov_vf_idc_ready_state.exit

do.end41.i.i:                                     ; preds = %qlcnic_sriov_vf_detach.exit107.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i11.i, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.75, i32 noundef %conv20.i.i) #17
  %89 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %13, align 8
  %ext_reg_tbl.i25.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 56
  %91 = ptrtoint ptr %ext_reg_tbl.i25.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ext_reg_tbl.i25.i, align 8
  %arrayidx.i26.i = getelementptr i32, ptr %92, i32 12
  %93 = ptrtoint ptr %arrayidx.i26.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.i26.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %90, i32 %94
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i) #12, !srcloc !228
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !236
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i11.i, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.75, i32 noundef %96) #17
  br label %qlcnic_sriov_vf_idc_ready_state.exit

qlcnic_sriov_vf_idc_ready_state.exit:             ; preds = %do.end41.i.i, %qlcnic_sriov_vf_attach.exit.i24.i, %qlcnic_sriov_vf_detach.exit.i.i, %if.then.i13.i, %if.else.i.qlcnic_sriov_vf_idc_ready_state.exit_crit_edge, %do.end13.i.i, %qlcnic_sriov_vf_attach.exit.i.i, %if.then.i.qlcnic_sriov_vf_idc_ready_state.exit_crit_edge
  %phi.cmp = phi i1 [ true, %if.then.i.qlcnic_sriov_vf_idc_ready_state.exit_crit_edge ], [ true, %qlcnic_sriov_vf_attach.exit.i.i ], [ true, %do.end13.i.i ], [ true, %if.else.i.qlcnic_sriov_vf_idc_ready_state.exit_crit_edge ], [ true, %if.then.i13.i ], [ false, %qlcnic_sriov_vf_detach.exit.i.i ], [ true, %qlcnic_sriov_vf_attach.exit.i24.i ], [ true, %do.end41.i.i ]
  %state.i = getelementptr i8, ptr %work, i32 -820
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state.i) #12
  %97 = ptrtoint ptr %curr_state to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %curr_state, align 4
  %prev_state = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 7
  %99 = ptrtoint ptr %prev_state to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %prev_state, align 1
  %fnum.i = getelementptr i8, ptr %work, i32 308
  %100 = ptrtoint ptr %fnum.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %fnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i42 = icmp eq i8 %101, 0
  br i1 %tobool.not.i42, label %qlcnic_sriov_vf_idc_ready_state.exit.qlcnic_sriov_vf_periodic_tasks.exit_crit_edge, label %if.then.i43

qlcnic_sriov_vf_idc_ready_state.exit.qlcnic_sriov_vf_periodic_tasks.exit_crit_edge: ; preds = %qlcnic_sriov_vf_idc_ready_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_vf_periodic_tasks.exit

if.then.i43:                                      ; preds = %qlcnic_sriov_vf_idc_ready_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @qlcnic_prune_lb_filters(ptr noundef %add.ptr) #12
  br label %qlcnic_sriov_vf_periodic_tasks.exit

qlcnic_sriov_vf_periodic_tasks.exit:              ; preds = %if.then.i43, %qlcnic_sriov_vf_idc_ready_state.exit.qlcnic_sriov_vf_periodic_tasks.exit_crit_edge
  br i1 %phi.cmp, label %qlcnic_sriov_vf_periodic_tasks.exit.land.lhs.true_crit_edge, label %qlcnic_sriov_vf_periodic_tasks.exit.if.end_crit_edge

qlcnic_sriov_vf_periodic_tasks.exit.if.end_crit_edge: ; preds = %qlcnic_sriov_vf_periodic_tasks.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

qlcnic_sriov_vf_periodic_tasks.exit.land.lhs.true_crit_edge: ; preds = %qlcnic_sriov_vf_periodic_tasks.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

sw.bb10:                                          ; preds = %entry.sw.bb10_crit_edge, %entry.sw.bb10_crit_edge129
  %102 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr, align 8
  %prev_state.i44 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %103, i32 0, i32 51, i32 7
  %104 = ptrtoint ptr %prev_state.i44 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %prev_state.i44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %105)
  %cmp.i = icmp eq i8 %105, 3
  br i1 %cmp.i, label %do.end.i, label %sw.bb10.qlcnic_sriov_vf_idc_init_reset_state.exit_crit_edge

sw.bb10.qlcnic_sriov_vf_idc_init_reset_state.exit_crit_edge: ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_vf_idc_init_reset_state.exit

do.end.i:                                         ; preds = %sw.bb10
  %pci_func.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %103, i32 0, i32 6
  %106 = ptrtoint ptr %pci_func.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %pci_func.i, align 1
  %mailbox.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %103, i32 0, i32 59
  %108 = ptrtoint ptr %mailbox.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mailbox.i, align 8
  %pdev.i = getelementptr i8, ptr %work, i32 -824
  %110 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44
  %conv5.i = zext i8 %107 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.94, i32 noundef %conv5.i) #17
  %state.i45 = getelementptr i8, ptr %work, i32 -820
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state.i45) #12
  %tx_timeo_cnt.i = getelementptr i8, ptr %work, i32 -791
  %112 = ptrtoint ptr %tx_timeo_cnt.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %tx_timeo_cnt.i, align 1
  %reset_ctx_cnt.i = getelementptr i8, ptr %work, i32 -789
  %113 = ptrtoint ptr %reset_ctx_cnt.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %reset_ctx_cnt.i, align 1
  %status.i = getelementptr inbounds %struct.qlcnic_mailbox, ptr %109, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %status.i) #12
  %114 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %add.ptr, align 8
  %intr_tbl2.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %115, i32 0, i32 53
  %116 = ptrtoint ptr %intr_tbl2.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %intr_tbl2.i.i, align 4
  %netdev3.i.i = getelementptr i8, ptr %work, i32 -828
  %118 = ptrtoint ptr %netdev3.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %netdev3.i.i, align 4
  %num_msix.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %115, i32 0, i32 19
  %120 = ptrtoint ptr %num_msix.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %num_msix.i.i, align 2
  %sub.i.i = add i8 %121, -1
  tail call void @netif_device_detach(ptr noundef %119) #12
  tail call void @qlcnic_83xx_detach_mailbox_work(ptr noundef %add.ptr) #12
  tail call void @qlcnic_83xx_disable_mbx_intr(ptr noundef %add.ptr) #12
  %state.i.i.i = getelementptr inbounds %struct.net_device, ptr %119, i32 0, i32 6
  %122 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %do.end.i.if.end.i.i47_crit_edge, label %if.then.i.i46

do.end.i.if.end.i.i47_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i47

if.then.i.i46:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @qlcnic_down(ptr noundef %add.ptr, ptr noundef %119) #12
  br label %if.end.i.i47

if.end.i.i47:                                     ; preds = %if.then.i.i46, %do.end.i.if.end.i.i47_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sub.i.i)
  %cmp28.not.i.i = icmp eq i8 %sub.i.i, 0
  br i1 %cmp28.not.i.i, label %if.end.i.i47.qlcnic_sriov_vf_detach.exit.i_crit_edge, label %for.body.preheader.i.i

if.end.i.i47.qlcnic_sriov_vf_detach.exit.i_crit_edge: ; preds = %if.end.i.i47
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_vf_detach.exit.i

for.body.preheader.i.i:                           ; preds = %if.end.i.i47
  %wide.trip.count.i.i = zext i8 %sub.i.i to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %124 = trunc i32 %indvars.iv.i.i to i16
  %id.i.i = getelementptr %struct.qlcnic_intrpt_config, ptr %117, i32 %indvars.iv.i.i, i32 2
  %125 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %id.i.i, align 2
  %enabled.i.i = getelementptr %struct.qlcnic_intrpt_config, ptr %117, i32 %indvars.iv.i.i, i32 1
  %126 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %enabled.i.i, align 1
  %src.i.i = getelementptr %struct.qlcnic_intrpt_config, ptr %117, i32 %indvars.iv.i.i, i32 3
  %127 = ptrtoint ptr %src.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %src.i.i, align 4
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.qlcnic_sriov_vf_detach.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.qlcnic_sriov_vf_detach.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_vf_detach.exit.i

qlcnic_sriov_vf_detach.exit.i:                    ; preds = %for.body.i.i.qlcnic_sriov_vf_detach.exit.i_crit_edge, %if.end.i.i47.qlcnic_sriov_vf_detach.exit.i_crit_edge
  %reset_context.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %115, i32 0, i32 13
  %128 = ptrtoint ptr %reset_context.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %reset_context.i.i, align 4
  br label %qlcnic_sriov_vf_idc_init_reset_state.exit

qlcnic_sriov_vf_idc_init_reset_state.exit:        ; preds = %qlcnic_sriov_vf_detach.exit.i, %sw.bb10.qlcnic_sriov_vf_idc_init_reset_state.exit_crit_edge
  %129 = ptrtoint ptr %curr_state to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %curr_state, align 4
  %prev_state.c41 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 7
  %131 = ptrtoint ptr %prev_state.c41 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %prev_state.c41, align 1
  %fnum.i48 = getelementptr i8, ptr %work, i32 308
  %132 = ptrtoint ptr %fnum.i48 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %fnum.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool.not.i49 = icmp eq i8 %133, 0
  br i1 %tobool.not.i49, label %qlcnic_sriov_vf_idc_init_reset_state.exit.land.lhs.true_crit_edge, label %qlcnic_sriov_vf_idc_init_reset_state.exit.land.lhs.true.sink.split_crit_edge

qlcnic_sriov_vf_idc_init_reset_state.exit.land.lhs.true.sink.split_crit_edge: ; preds = %qlcnic_sriov_vf_idc_init_reset_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.sink.split

qlcnic_sriov_vf_idc_init_reset_state.exit.land.lhs.true_crit_edge: ; preds = %qlcnic_sriov_vf_idc_init_reset_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

sw.bb12:                                          ; preds = %entry
  %134 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %add.ptr, align 8
  %mailbox.i52 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %135, i32 0, i32 59
  %136 = ptrtoint ptr %mailbox.i52 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mailbox.i52, align 8
  %pdev.i53 = getelementptr i8, ptr %work, i32 -824
  %138 = ptrtoint ptr %pdev.i53 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pdev.i53, align 8
  %dev.i54 = getelementptr inbounds %struct.pci_dev, ptr %139, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i54, ptr noundef nonnull @.str.96) #17
  %prev_state.i55 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %135, i32 0, i32 51, i32 7
  %140 = ptrtoint ptr %prev_state.i55 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %prev_state.i55, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %141)
  %cmp.i56 = icmp eq i8 %141, 3
  br i1 %cmp.i56, label %if.then.i68, label %sw.bb12.qlcnic_sriov_vf_idc_need_quiescent_state.exit_crit_edge

sw.bb12.qlcnic_sriov_vf_idc_need_quiescent_state.exit_crit_edge: ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_vf_idc_need_quiescent_state.exit

if.then.i68:                                      ; preds = %sw.bb12
  %state.i57 = getelementptr i8, ptr %work, i32 -820
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state.i57) #12
  %tx_timeo_cnt.i58 = getelementptr i8, ptr %work, i32 -791
  %142 = ptrtoint ptr %tx_timeo_cnt.i58 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %tx_timeo_cnt.i58, align 1
  %reset_ctx_cnt.i59 = getelementptr i8, ptr %work, i32 -789
  %143 = ptrtoint ptr %reset_ctx_cnt.i59 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %reset_ctx_cnt.i59, align 1
  %status.i60 = getelementptr inbounds %struct.qlcnic_mailbox, ptr %137, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %status.i60) #12
  %144 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %add.ptr, align 8
  %intr_tbl2.i.i61 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %145, i32 0, i32 53
  %146 = ptrtoint ptr %intr_tbl2.i.i61 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %intr_tbl2.i.i61, align 4
  %netdev3.i.i62 = getelementptr i8, ptr %work, i32 -828
  %148 = ptrtoint ptr %netdev3.i.i62 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %netdev3.i.i62, align 4
  %num_msix.i.i63 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %145, i32 0, i32 19
  %150 = ptrtoint ptr %num_msix.i.i63 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %num_msix.i.i63, align 2
  %sub.i.i64 = add i8 %151, -1
  tail call void @netif_device_detach(ptr noundef %149) #12
  tail call void @qlcnic_83xx_detach_mailbox_work(ptr noundef %add.ptr) #12
  tail call void @qlcnic_83xx_disable_mbx_intr(ptr noundef %add.ptr) #12
  %state.i.i.i65 = getelementptr inbounds %struct.net_device, ptr %149, i32 0, i32 6
  %152 = ptrtoint ptr %state.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %state.i.i.i65, align 4
  %and1.i.i.i.i66 = and i32 %153, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i66)
  %tobool.i.not.i.i67 = icmp eq i32 %and1.i.i.i.i66, 0
  br i1 %tobool.i.not.i.i67, label %if.then.i68.if.end.i.i71_crit_edge, label %if.then.i.i69

if.then.i68.if.end.i.i71_crit_edge:               ; preds = %if.then.i68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i71

if.then.i.i69:                                    ; preds = %if.then.i68
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @qlcnic_down(ptr noundef %add.ptr, ptr noundef %149) #12
  br label %if.end.i.i71

if.end.i.i71:                                     ; preds = %if.then.i.i69, %if.then.i68.if.end.i.i71_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sub.i.i64)
  %cmp28.not.i.i70 = icmp eq i8 %sub.i.i64, 0
  br i1 %cmp28.not.i.i70, label %if.end.i.i71.qlcnic_sriov_vf_detach.exit.i82_crit_edge, label %for.body.preheader.i.i73

if.end.i.i71.qlcnic_sriov_vf_detach.exit.i82_crit_edge: ; preds = %if.end.i.i71
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_vf_detach.exit.i82

for.body.preheader.i.i73:                         ; preds = %if.end.i.i71
  %wide.trip.count.i.i72 = zext i8 %sub.i.i64 to i32
  br label %for.body.i.i80

for.body.i.i80:                                   ; preds = %for.body.i.i80.for.body.i.i80_crit_edge, %for.body.preheader.i.i73
  %indvars.iv.i.i74 = phi i32 [ 0, %for.body.preheader.i.i73 ], [ %indvars.iv.next.i.i78, %for.body.i.i80.for.body.i.i80_crit_edge ]
  %154 = trunc i32 %indvars.iv.i.i74 to i16
  %id.i.i75 = getelementptr %struct.qlcnic_intrpt_config, ptr %147, i32 %indvars.iv.i.i74, i32 2
  %155 = ptrtoint ptr %id.i.i75 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %154, ptr %id.i.i75, align 2
  %enabled.i.i76 = getelementptr %struct.qlcnic_intrpt_config, ptr %147, i32 %indvars.iv.i.i74, i32 1
  %156 = ptrtoint ptr %enabled.i.i76 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %enabled.i.i76, align 1
  %src.i.i77 = getelementptr %struct.qlcnic_intrpt_config, ptr %147, i32 %indvars.iv.i.i74, i32 3
  %157 = ptrtoint ptr %src.i.i77 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %src.i.i77, align 4
  %indvars.iv.next.i.i78 = add nuw nsw i32 %indvars.iv.i.i74, 1
  %exitcond.not.i.i79 = icmp eq i32 %indvars.iv.next.i.i78, %wide.trip.count.i.i72
  br i1 %exitcond.not.i.i79, label %for.body.i.i80.qlcnic_sriov_vf_detach.exit.i82_crit_edge, label %for.body.i.i80.for.body.i.i80_crit_edge

for.body.i.i80.for.body.i.i80_crit_edge:          ; preds = %for.body.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i80

for.body.i.i80.qlcnic_sriov_vf_detach.exit.i82_crit_edge: ; preds = %for.body.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_vf_detach.exit.i82

qlcnic_sriov_vf_detach.exit.i82:                  ; preds = %for.body.i.i80.qlcnic_sriov_vf_detach.exit.i82_crit_edge, %if.end.i.i71.qlcnic_sriov_vf_detach.exit.i82_crit_edge
  %reset_context.i.i81 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %145, i32 0, i32 13
  %158 = ptrtoint ptr %reset_context.i.i81 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %reset_context.i.i81, align 4
  br label %qlcnic_sriov_vf_idc_need_quiescent_state.exit

qlcnic_sriov_vf_idc_need_quiescent_state.exit:    ; preds = %qlcnic_sriov_vf_detach.exit.i82, %sw.bb12.qlcnic_sriov_vf_idc_need_quiescent_state.exit_crit_edge
  %159 = ptrtoint ptr %curr_state to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %curr_state, align 4
  %prev_state.c39 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 7
  %161 = ptrtoint ptr %prev_state.c39 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %prev_state.c39, align 1
  %fnum.i83 = getelementptr i8, ptr %work, i32 308
  %162 = ptrtoint ptr %fnum.i83 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %fnum.i83, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool.not.i84 = icmp eq i8 %163, 0
  br i1 %tobool.not.i84, label %qlcnic_sriov_vf_idc_need_quiescent_state.exit.land.lhs.true_crit_edge, label %qlcnic_sriov_vf_idc_need_quiescent_state.exit.land.lhs.true.sink.split_crit_edge

qlcnic_sriov_vf_idc_need_quiescent_state.exit.land.lhs.true.sink.split_crit_edge: ; preds = %qlcnic_sriov_vf_idc_need_quiescent_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.sink.split

qlcnic_sriov_vf_idc_need_quiescent_state.exit.land.lhs.true_crit_edge: ; preds = %qlcnic_sriov_vf_idc_need_quiescent_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

sw.bb14:                                          ; preds = %entry
  %164 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %add.ptr, align 8
  %pdev.i87 = getelementptr i8, ptr %work, i32 -824
  %166 = ptrtoint ptr %pdev.i87 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %pdev.i87, align 8
  %dev.i88 = getelementptr inbounds %struct.pci_dev, ptr %167, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i88, ptr noundef nonnull @.str.98) #17
  %prev_state.i89 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %165, i32 0, i32 51, i32 7
  %168 = ptrtoint ptr %prev_state.i89 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %prev_state.i89, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %169)
  %cmp.i90 = icmp eq i8 %169, 3
  br i1 %cmp.i90, label %if.then.i98, label %sw.bb14.qlcnic_sriov_vf_idc_failed_state.exit_crit_edge

sw.bb14.qlcnic_sriov_vf_idc_failed_state.exit_crit_edge: ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_vf_idc_failed_state.exit

if.then.i98:                                      ; preds = %sw.bb14
  %170 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %add.ptr, align 8
  %intr_tbl2.i.i91 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %171, i32 0, i32 53
  %172 = ptrtoint ptr %intr_tbl2.i.i91 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %intr_tbl2.i.i91, align 4
  %netdev3.i.i92 = getelementptr i8, ptr %work, i32 -828
  %174 = ptrtoint ptr %netdev3.i.i92 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %netdev3.i.i92, align 4
  %num_msix.i.i93 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %171, i32 0, i32 19
  %176 = ptrtoint ptr %num_msix.i.i93 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %num_msix.i.i93, align 2
  %sub.i.i94 = add i8 %177, -1
  tail call void @netif_device_detach(ptr noundef %175) #12
  tail call void @qlcnic_83xx_detach_mailbox_work(ptr noundef %add.ptr) #12
  tail call void @qlcnic_83xx_disable_mbx_intr(ptr noundef %add.ptr) #12
  %state.i.i.i95 = getelementptr inbounds %struct.net_device, ptr %175, i32 0, i32 6
  %178 = ptrtoint ptr %state.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %state.i.i.i95, align 4
  %and1.i.i.i.i96 = and i32 %179, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i96)
  %tobool.i.not.i.i97 = icmp eq i32 %and1.i.i.i.i96, 0
  br i1 %tobool.i.not.i.i97, label %if.then.i98.if.end.i.i101_crit_edge, label %if.then.i.i99

if.then.i98.if.end.i.i101_crit_edge:              ; preds = %if.then.i98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i101

if.then.i.i99:                                    ; preds = %if.then.i98
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @qlcnic_down(ptr noundef %add.ptr, ptr noundef %175) #12
  br label %if.end.i.i101

if.end.i.i101:                                    ; preds = %if.then.i.i99, %if.then.i98.if.end.i.i101_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sub.i.i94)
  %cmp28.not.i.i100 = icmp eq i8 %sub.i.i94, 0
  br i1 %cmp28.not.i.i100, label %if.end.i.i101.qlcnic_sriov_vf_detach.exit.i112_crit_edge, label %for.body.preheader.i.i103

if.end.i.i101.qlcnic_sriov_vf_detach.exit.i112_crit_edge: ; preds = %if.end.i.i101
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_vf_detach.exit.i112

for.body.preheader.i.i103:                        ; preds = %if.end.i.i101
  %wide.trip.count.i.i102 = zext i8 %sub.i.i94 to i32
  br label %for.body.i.i110

for.body.i.i110:                                  ; preds = %for.body.i.i110.for.body.i.i110_crit_edge, %for.body.preheader.i.i103
  %indvars.iv.i.i104 = phi i32 [ 0, %for.body.preheader.i.i103 ], [ %indvars.iv.next.i.i108, %for.body.i.i110.for.body.i.i110_crit_edge ]
  %180 = trunc i32 %indvars.iv.i.i104 to i16
  %id.i.i105 = getelementptr %struct.qlcnic_intrpt_config, ptr %173, i32 %indvars.iv.i.i104, i32 2
  %181 = ptrtoint ptr %id.i.i105 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %180, ptr %id.i.i105, align 2
  %enabled.i.i106 = getelementptr %struct.qlcnic_intrpt_config, ptr %173, i32 %indvars.iv.i.i104, i32 1
  %182 = ptrtoint ptr %enabled.i.i106 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %enabled.i.i106, align 1
  %src.i.i107 = getelementptr %struct.qlcnic_intrpt_config, ptr %173, i32 %indvars.iv.i.i104, i32 3
  %183 = ptrtoint ptr %src.i.i107 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %src.i.i107, align 4
  %indvars.iv.next.i.i108 = add nuw nsw i32 %indvars.iv.i.i104, 1
  %exitcond.not.i.i109 = icmp eq i32 %indvars.iv.next.i.i108, %wide.trip.count.i.i102
  br i1 %exitcond.not.i.i109, label %for.body.i.i110.qlcnic_sriov_vf_detach.exit.i112_crit_edge, label %for.body.i.i110.for.body.i.i110_crit_edge

for.body.i.i110.for.body.i.i110_crit_edge:        ; preds = %for.body.i.i110
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i110

for.body.i.i110.qlcnic_sriov_vf_detach.exit.i112_crit_edge: ; preds = %for.body.i.i110
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_vf_detach.exit.i112

qlcnic_sriov_vf_detach.exit.i112:                 ; preds = %for.body.i.i110.qlcnic_sriov_vf_detach.exit.i112_crit_edge, %if.end.i.i101.qlcnic_sriov_vf_detach.exit.i112_crit_edge
  %reset_context.i.i111 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %171, i32 0, i32 13
  %184 = ptrtoint ptr %reset_context.i.i111 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 0, ptr %reset_context.i.i111, align 4
  br label %qlcnic_sriov_vf_idc_failed_state.exit

qlcnic_sriov_vf_idc_failed_state.exit:            ; preds = %qlcnic_sriov_vf_detach.exit.i112, %sw.bb14.qlcnic_sriov_vf_idc_failed_state.exit_crit_edge
  %status.i113 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %165, i32 0, i32 51, i32 3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %status.i113) #12
  %state.i114 = getelementptr i8, ptr %work, i32 -820
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state.i114) #12
  %185 = ptrtoint ptr %curr_state to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %curr_state, align 4
  %prev_state.c37 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 7
  %187 = ptrtoint ptr %prev_state.c37 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %186, ptr %prev_state.c37, align 1
  %fnum.i115 = getelementptr i8, ptr %work, i32 308
  %188 = ptrtoint ptr %fnum.i115 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %fnum.i115, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool.not.i116 = icmp eq i8 %189, 0
  br i1 %tobool.not.i116, label %qlcnic_sriov_vf_idc_failed_state.exit.if.end_crit_edge, label %if.then.i117

qlcnic_sriov_vf_idc_failed_state.exit.if.end_crit_edge: ; preds = %qlcnic_sriov_vf_idc_failed_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i117:                                     ; preds = %qlcnic_sriov_vf_idc_failed_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @qlcnic_prune_lb_filters(ptr noundef %add.ptr) #12
  br label %if.end

sw.default:                                       ; preds = %entry
  %pdev.i119 = getelementptr i8, ptr %work, i32 -824
  %190 = ptrtoint ptr %pdev.i119 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %pdev.i119, align 8
  %dev.i120 = getelementptr inbounds %struct.pci_dev, ptr %191, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i120, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101) #17
  %192 = ptrtoint ptr %curr_state to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %curr_state, align 4
  %prev_state.c = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 7
  %194 = ptrtoint ptr %prev_state.c to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %193, ptr %prev_state.c, align 1
  %fnum.i121 = getelementptr i8, ptr %work, i32 308
  %195 = ptrtoint ptr %fnum.i121 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %fnum.i121, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool.not.i122 = icmp eq i8 %196, 0
  br i1 %tobool.not.i122, label %sw.default.land.lhs.true_crit_edge, label %sw.default.land.lhs.true.sink.split_crit_edge

sw.default.land.lhs.true.sink.split_crit_edge:    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.sink.split

sw.default.land.lhs.true_crit_edge:               ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

land.lhs.true.critedge35:                         ; preds = %entry
  %prev_state.c36 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 7
  %197 = ptrtoint ptr %prev_state.c36 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 7, ptr %prev_state.c36, align 1
  %fnum.i125 = getelementptr i8, ptr %work, i32 308
  %198 = ptrtoint ptr %fnum.i125 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %fnum.i125, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool.not.i126 = icmp eq i8 %199, 0
  br i1 %tobool.not.i126, label %land.lhs.true.critedge35.land.lhs.true_crit_edge, label %land.lhs.true.critedge35.land.lhs.true.sink.split_crit_edge

land.lhs.true.critedge35.land.lhs.true.sink.split_crit_edge: ; preds = %land.lhs.true.critedge35
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.sink.split

land.lhs.true.critedge35.land.lhs.true_crit_edge: ; preds = %land.lhs.true.critedge35
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

land.lhs.true.sink.split:                         ; preds = %land.lhs.true.critedge35.land.lhs.true.sink.split_crit_edge, %sw.default.land.lhs.true.sink.split_crit_edge, %qlcnic_sriov_vf_idc_need_quiescent_state.exit.land.lhs.true.sink.split_crit_edge, %qlcnic_sriov_vf_idc_init_reset_state.exit.land.lhs.true.sink.split_crit_edge
  tail call void @qlcnic_prune_lb_filters(ptr noundef %add.ptr) #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.true.sink.split, %land.lhs.true.critedge35.land.lhs.true_crit_edge, %sw.default.land.lhs.true_crit_edge, %qlcnic_sriov_vf_idc_need_quiescent_state.exit.land.lhs.true_crit_edge, %qlcnic_sriov_vf_idc_init_reset_state.exit.land.lhs.true_crit_edge, %qlcnic_sriov_vf_periodic_tasks.exit.land.lhs.true_crit_edge
  %status = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 3
  %200 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load volatile i32, ptr %status, align 4
  %202 = and i32 %201, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool19.not = icmp eq i32 %202, 0
  br i1 %tobool19.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %delay = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 2
  %203 = ptrtoint ptr %delay to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %delay, align 8
  %conv20 = trunc i64 %204 to i32
  tail call void @qlcnic_schedule_work(ptr noundef %add.ptr, ptr noundef nonnull @qlcnic_sriov_vf_poll_dev_state, i32 noundef %conv20) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %if.then.i117, %qlcnic_sriov_vf_idc_failed_state.exit.if.end_crit_edge, %qlcnic_sriov_vf_periodic_tasks.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_free_mbx_intr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_teardown_intr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_get_port_info(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_sriov_vf_reinit_driver(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  %cmd.i22 = alloca %struct.qlcnic_cmd_args, align 4
  %cmd.i = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %need_fw_reset = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 24
  %0 = ptrtoint ptr %need_fw_reset to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %need_fw_reset, align 2
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %mailbox = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 59
  %3 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mailbox, align 8
  tail call void @qlcnic_83xx_reinit_mbx_work(ptr noundef %4) #12
  tail call void @qlcnic_83xx_enable_mbx_interrupt(ptr noundef %adapter) #12
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd.i) #12
  %5 = call ptr @memset(ptr %cmd.i, i32 255, i32 120)
  %state.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %qlcnic_sriov_cfg_bc_intr.exit.thread, label %if.end.i

qlcnic_sriov_cfg_bc_intr.exit.thread:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i) #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %9 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter, align 8
  %hw_ops.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %10, i32 0, i32 46
  %11 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_ops.i.i, align 4
  %alloc_mbx_args.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %alloc_mbx_args.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %alloc_mbx_args.i.i, align 4
  %call.i.i = call i32 %14(ptr noundef nonnull %cmd.i, ptr noundef %adapter, i32 noundef 49) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %qlcnic_sriov_cfg_bc_intr.exit.thread41

qlcnic_sriov_cfg_bc_intr.exit.thread41:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i) #12
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %arg.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arg.i, align 4
  %arrayidx.i = getelementptr i32, ptr %16, i32 1
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 240, ptr %arrayidx.i, align 4
  %call8.i = call i32 @qlcnic_83xx_issue_cmd(ptr noundef %adapter, ptr noundef nonnull %cmd.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.not.i = icmp eq i32 %call8.i, 0
  br i1 %cmp.not.i, label %qlcnic_sriov_cfg_bc_intr.exit.thread44, label %qlcnic_sriov_cfg_bc_intr.exit

qlcnic_sriov_cfg_bc_intr.exit.thread44:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i) #12
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i) #12
  br label %if.end

qlcnic_sriov_cfg_bc_intr.exit:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %18 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.43, i32 noundef %call8.i) #17
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i) #12
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i) #12
  br label %cleanup

if.end:                                           ; preds = %qlcnic_sriov_cfg_bc_intr.exit.thread44, %qlcnic_sriov_cfg_bc_intr.exit.thread
  %call1 = call fastcc i32 @qlcnic_sriov_channel_cfg_cmd(ptr noundef %adapter, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_out_cleanup_bc_intr_crit_edge

if.end.err_out_cleanup_bc_intr_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_cleanup_bc_intr

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @qlcnic_sriov_vf_init_driver(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %err_out_term_channel

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_out_term_channel:                             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = call fastcc i32 @qlcnic_sriov_channel_cfg_cmd(ptr noundef %adapter, i8 noundef zeroext 1)
  br label %err_out_cleanup_bc_intr

err_out_cleanup_bc_intr:                          ; preds = %err_out_term_channel, %if.end.err_out_cleanup_bc_intr_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.err_out_cleanup_bc_intr_crit_edge ], [ %call5, %err_out_term_channel ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd.i22) #12
  %20 = call ptr @memset(ptr %cmd.i22, i32 255, i32 120)
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state.i, align 4
  %23 = and i32 %22, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i24 = icmp eq i32 %23, 0
  br i1 %tobool.not.i24, label %err_out_cleanup_bc_intr.qlcnic_sriov_cfg_bc_intr.exit38_crit_edge, label %if.end.i29

err_out_cleanup_bc_intr.qlcnic_sriov_cfg_bc_intr.exit38_crit_edge: ; preds = %err_out_cleanup_bc_intr
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_cfg_bc_intr.exit38

if.end.i29:                                       ; preds = %err_out_cleanup_bc_intr
  %24 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter, align 8
  %hw_ops.i.i25 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %25, i32 0, i32 46
  %26 = ptrtoint ptr %hw_ops.i.i25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_ops.i.i25, align 4
  %alloc_mbx_args.i.i26 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %alloc_mbx_args.i.i26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %alloc_mbx_args.i.i26, align 4
  %call.i.i27 = call i32 %29(ptr noundef nonnull %cmd.i22, ptr noundef %adapter, i32 noundef 49) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i27)
  %tobool2.not.i28 = icmp eq i32 %call.i.i27, 0
  br i1 %tobool2.not.i28, label %if.end4.i30, label %if.end.i29.qlcnic_sriov_cfg_bc_intr.exit38_crit_edge

if.end.i29.qlcnic_sriov_cfg_bc_intr.exit38_crit_edge: ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_cfg_bc_intr.exit38

if.end4.i30:                                      ; preds = %if.end.i29
  %call8.i31 = call i32 @qlcnic_83xx_issue_cmd(ptr noundef %adapter, ptr noundef nonnull %cmd.i22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i31)
  %cmp.not.i32 = icmp eq i32 %call8.i31, 0
  br i1 %cmp.not.i32, label %if.end4.i30.if.end11.i36_crit_edge, label %do.end.i35

if.end4.i30.if.end11.i36_crit_edge:               ; preds = %if.end4.i30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i36

do.end.i35:                                       ; preds = %if.end4.i30
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i33 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %30 = ptrtoint ptr %pdev.i33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i33, align 8
  %dev.i34 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i34, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.44, i32 noundef %call8.i31) #17
  br label %if.end11.i36

if.end11.i36:                                     ; preds = %do.end.i35, %if.end4.i30.if.end11.i36_crit_edge
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i22) #12
  br label %qlcnic_sriov_cfg_bc_intr.exit38

qlcnic_sriov_cfg_bc_intr.exit38:                  ; preds = %if.end11.i36, %if.end.i29.qlcnic_sriov_cfg_bc_intr.exit38_crit_edge, %err_out_cleanup_bc_intr.qlcnic_sriov_cfg_bc_intr.exit38_crit_edge
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i22) #12
  br label %cleanup

cleanup:                                          ; preds = %qlcnic_sriov_cfg_bc_intr.exit38, %if.end4.cleanup_crit_edge, %qlcnic_sriov_cfg_bc_intr.exit, %qlcnic_sriov_cfg_bc_intr.exit.thread41
  %retval.0 = phi i32 [ %err.0, %qlcnic_sriov_cfg_bc_intr.exit38 ], [ %call8.i, %qlcnic_sriov_cfg_bc_intr.exit ], [ 0, %if.end4.cleanup_crit_edge ], [ -12, %qlcnic_sriov_cfg_bc_intr.exit.thread41 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_reinit_mbx_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_enable_mbx_interrupt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_up(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_restore_indev_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_detach_mailbox_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_disable_mbx_intr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_down(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_prune_lb_filters(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_config_bridged_mode(ptr noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_config_led(ptr noundef %adapter, i32 noundef %state, i32 noundef %rate) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %nic_ops = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 43
  %0 = ptrtoint ptr %nic_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_ops, align 8
  %config_led = getelementptr inbounds %struct.qlcnic_nic_template, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config_led to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config_led, align 4
  %call = tail call i32 %3(ptr noundef %adapter, i32 noundef %state, i32 noundef %rate) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlcnic_sriov_vf_cancel_fw_work(ptr noundef %adapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %call6 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not7 = icmp eq i32 %call6, 0
  br i1 %tobool.not7, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @msleep(i32 noundef 20) #12
  %call = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %state) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %status = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %status) #12
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #12
  %fw_work = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 52
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %fw_work) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_napi_add(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_napi_del(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_config_ipaddr(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_clear_legacy_intr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sriov_vf_shutdown(ptr noundef %pdev) #0 align 64 {
entry:
  %cmd.i = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %netdev1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 4
  tail call void @netif_device_detach(ptr noundef %3) #12
  %nic_ops.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 43
  %4 = ptrtoint ptr %nic_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nic_ops.i, align 8
  %cancel_idc_work.i = getelementptr inbounds %struct.qlcnic_nic_template, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %cancel_idc_work.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cancel_idc_work.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.qlcnic_cancel_idc_work.exit_crit_edge, label %if.then.i

entry.qlcnic_cancel_idc_work.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_cancel_idc_work.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %7(ptr noundef %1) #12
  br label %qlcnic_cancel_idc_work.exit

qlcnic_cancel_idc_work.exit:                      ; preds = %if.then.i, %entry.qlcnic_cancel_idc_work.exit_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %qlcnic_cancel_idc_work.exit.if.end_crit_edge, label %if.then

qlcnic_cancel_idc_work.exit.if.end_crit_edge:     ; preds = %qlcnic_cancel_idc_work.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %qlcnic_cancel_idc_work.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @qlcnic_down(ptr noundef %1, ptr noundef %3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %qlcnic_cancel_idc_work.exit.if.end_crit_edge
  %call3 = tail call fastcc i32 @qlcnic_sriov_channel_cfg_cmd(ptr noundef %1, i8 noundef zeroext 1)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd.i) #12
  %10 = call ptr @memset(ptr %cmd.i, i32 255, i32 120)
  %state.i16 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %state.i16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i16, align 4
  %13 = and i32 %12, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i17 = icmp eq i32 %13, 0
  br i1 %tobool.not.i17, label %if.end.qlcnic_sriov_cfg_bc_intr.exit_crit_edge, label %if.end.i

if.end.qlcnic_sriov_cfg_bc_intr.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_cfg_bc_intr.exit

if.end.i:                                         ; preds = %if.end
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %hw_ops.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %15, i32 0, i32 46
  %16 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_ops.i.i, align 4
  %alloc_mbx_args.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %alloc_mbx_args.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %alloc_mbx_args.i.i, align 4
  %call.i.i = call i32 %19(ptr noundef nonnull %cmd.i, ptr noundef %1, i32 noundef 49) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.qlcnic_sriov_cfg_bc_intr.exit_crit_edge

if.end.i.qlcnic_sriov_cfg_bc_intr.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_cfg_bc_intr.exit

if.end4.i:                                        ; preds = %if.end.i
  %call8.i = call i32 @qlcnic_83xx_issue_cmd(ptr noundef %1, ptr noundef nonnull %cmd.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.not.i = icmp eq i32 %call8.i, 0
  br i1 %cmp.not.i, label %if.end4.i.if.end11.i_crit_edge, label %do.end.i

if.end4.i.if.end11.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.44, i32 noundef %call8.i) #17
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end.i, %if.end4.i.if.end11.i_crit_edge
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i) #12
  br label %qlcnic_sriov_cfg_bc_intr.exit

qlcnic_sriov_cfg_bc_intr.exit:                    ; preds = %if.end11.i, %if.end.i.qlcnic_sriov_cfg_bc_intr.exit_crit_edge, %if.end.qlcnic_sriov_cfg_bc_intr.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i) #12
  call void @qlcnic_83xx_disable_mbx_intr(ptr noundef %1) #12
  %idc_aen_work = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 53
  %call5 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idc_aen_work) #12
  %call6 = call i32 @pci_save_state(ptr noundef %pdev) #12
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sriov_vf_resume(ptr noundef %adapter) #0 align 64 {
entry:
  %cmd.i = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %netdev2 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %2 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev2, align 4
  %status = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 3
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status) #12
  tail call void @qlcnic_83xx_enable_mbx_interrupt(ptr noundef %adapter) #12
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd.i) #12
  %4 = call ptr @memset(ptr %cmd.i, i32 255, i32 120)
  %state.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %7 = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %qlcnic_sriov_cfg_bc_intr.exit.thread, label %if.end.i

qlcnic_sriov_cfg_bc_intr.exit.thread:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i) #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %hw_ops.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_ops.i.i, align 4
  %alloc_mbx_args.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %alloc_mbx_args.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %alloc_mbx_args.i.i, align 4
  %call.i.i = call i32 %13(ptr noundef nonnull %cmd.i, ptr noundef %adapter, i32 noundef 49) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %qlcnic_sriov_cfg_bc_intr.exit.thread33

qlcnic_sriov_cfg_bc_intr.exit.thread33:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i) #12
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %arg.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arg.i, align 4
  %arrayidx.i = getelementptr i32, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 240, ptr %arrayidx.i, align 4
  %call8.i = call i32 @qlcnic_83xx_issue_cmd(ptr noundef %adapter, ptr noundef nonnull %cmd.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.not.i = icmp eq i32 %call8.i, 0
  br i1 %cmp.not.i, label %qlcnic_sriov_cfg_bc_intr.exit.thread36, label %qlcnic_sriov_cfg_bc_intr.exit

qlcnic_sriov_cfg_bc_intr.exit.thread36:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i) #12
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i) #12
  br label %if.end

qlcnic_sriov_cfg_bc_intr.exit:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %17 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.43, i32 noundef %call8.i) #17
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i) #12
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i) #12
  br label %cleanup

if.end:                                           ; preds = %qlcnic_sriov_cfg_bc_intr.exit.thread36, %qlcnic_sriov_cfg_bc_intr.exit.thread
  %call3 = call fastcc i32 @qlcnic_sriov_channel_cfg_cmd(ptr noundef %adapter, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then5:                                         ; preds = %if.end
  %state.i30 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %19 = ptrtoint ptr %state.i30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i30, align 4
  %and1.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then5.if.end13_crit_edge, label %if.then7

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then7:                                         ; preds = %if.then5
  %call8 = call i32 @qlcnic_up(ptr noundef %adapter, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.then7.if.end13_crit_edge

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  call void @qlcnic_restore_indev_addr(ptr noundef %3, i32 noundef 1) #12
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then7.if.end13_crit_edge, %if.then5.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %err.0 = phi i32 [ %call3, %if.end.if.end13_crit_edge ], [ %call8, %if.then7.if.end13_crit_edge ], [ 0, %if.then10 ], [ 0, %if.then5.if.end13_crit_edge ]
  call void @netif_device_attach(ptr noundef %3) #12
  %delay = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 2
  %21 = ptrtoint ptr %delay to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %delay, align 8
  %conv = trunc i64 %22 to i32
  call void @qlcnic_schedule_work(ptr noundef %adapter, ptr noundef nonnull @qlcnic_sriov_vf_poll_dev_state, i32 noundef %conv) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %qlcnic_sriov_cfg_bc_intr.exit, %qlcnic_sriov_cfg_bc_intr.exit.thread33
  %retval.0 = phi i32 [ %err.0, %if.end13 ], [ %call8.i, %qlcnic_sriov_cfg_bc_intr.exit ], [ -12, %qlcnic_sriov_cfg_bc_intr.exit.thread33 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_read_crb(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_write_crb(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_rd_reg_indirect(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_wrt_reg_indirect(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_get_mac_address(ptr noundef, ptr noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_setup_intr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_alloc_mbx_args(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sriov_issue_cmd(ptr nocapture noundef %adapter, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 9
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %need_fw_reset.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 24
  %2 = ptrtoint ptr %need_fw_reset.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %need_fw_reset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i:                                         ; preds = %if.then
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %sriov.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 54
  %6 = ptrtoint ptr %sriov.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2848, i32 noundef 12) #15
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end.i
  %cmd2.i.i.i = getelementptr inbounds %struct.qlcnic_async_cmd, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %cmd2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cmd, ptr %cmd2.i.i.i, align 8
  %queue_lock.i.i.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %7, i32 0, i32 8, i32 7
  tail call void @_raw_spin_lock(ptr noundef %queue_lock.i.i.i) #12
  %async_cmd_list.i.i.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %7, i32 0, i32 8, i32 5
  %prev.i.i.i.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %7, i32 0, i32 8, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef %11, ptr noundef %async_cmd_list.i.i.i) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.i.if.end.i.i_crit_edge

if.end.i.i.i.if.end.i.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i.i.i.i, ptr %prev.i.i.i.i, align 4
  %13 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %async_cmd_list.i.i.i, ptr %call7.i.i.i.i.i, align 8
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i.i.i.i.i, ptr %11, align 4
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @qlcnic_free_mbx_args(ptr noundef %cmd) #12
  tail call void @kfree(ptr noundef %cmd) #12
  br label %return

if.end.i.i:                                       ; preds = %if.end.i.i.i.i.i, %if.end.i.i.i.if.end.i.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %queue_lock.i.i.i) #12
  %bc_async_wq.i.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %7, i32 0, i32 8, i32 2
  %16 = ptrtoint ptr %bc_async_wq.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bc_async_wq.i.i, align 4
  %vf_async_work.i.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %7, i32 0, i32 8, i32 6
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %vf_async_work.i.i) #12
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call fastcc i32 @__qlcnic_sriov_issue_cmd(ptr noundef %adapter, ptr noundef %cmd)
  br label %return

return:                                           ; preds = %if.else, %if.end.i.i, %if.then.i.i, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.else ], [ -5, %if.then.return_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_get_func_no(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_cam_lock(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_cam_unlock(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_process_rcv_ring_diag(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_create_rx_ctx(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_create_tx_ctx(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_del_rx_ctx(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_del_tx_ctx(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_setup_link_event(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_get_nic_info(ptr noundef, ptr noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_get_pci_info(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_set_nic_info(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_sre_macaddr_change(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_napi_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_napi_disable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_config_intr_coal(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_config_rss(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_config_hw_lro(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_nic_set_promisc(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_change_l2_filter(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlcnic_sriov_vf_free_mac_list(ptr noundef %adapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_list = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 45
  %0 = ptrtoint ptr %mac_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mac_list, align 4
  %cmp.i.not7 = icmp eq ptr %1, %mac_list
  br i1 %cmp.i.not7, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %20, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %mac_addr = getelementptr inbounds %struct.qlcnic_mac_vlan_list, ptr %2, i32 0, i32 1
  %vlan_id = getelementptr inbounds %struct.qlcnic_mac_vlan_list, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vlan_id, align 4
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 46
  %7 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_ops.i, align 4
  %change_macvlan.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %change_macvlan.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %change_macvlan.i, align 4
  %call.i = tail call i32 %10(ptr noundef %adapter, ptr noundef %mac_addr, i16 noundef zeroext %4, i8 noundef zeroext 2) #12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #12
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %2) #12
  %19 = ptrtoint ptr %mac_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %mac_list, align 4
  %cmp.i.not = icmp eq ptr %20, %mac_list
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlcnic_83xx_enable_sds_intr(ptr nocapture noundef readnone %adapter, ptr nocapture noundef readonly %sds_ring) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !237
  tail call void @arm_heavy_mb() #12
  %crb_intr_mask = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 8
  %0 = ptrtoint ptr %crb_intr_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crb_intr_mask, align 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #12, !srcloc !238
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlcnic_83xx_disable_sds_intr(ptr nocapture noundef readnone %adapter, ptr nocapture noundef readonly %sds_ring) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !239
  tail call void @arm_heavy_mb() #12
  %crb_intr_mask = getelementptr inbounds %struct.qlcnic_host_sds_ring, ptr %sds_ring, i32 0, i32 8
  %0 = ptrtoint ptr %crb_intr_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crb_intr_mask, align 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #12, !srcloc !238
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @qlcnic_83xx_encap_rx_offload(ptr nocapture noundef readonly %adapter) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %extra_capability = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %extra_capability to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %extra_capability, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @qlcnic_83xx_encap_tx_offload(ptr nocapture noundef readonly %adapter) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %extra_capability = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %extra_capability to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %extra_capability, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__qlcnic_sriov_issue_cmd(ptr nocapture noundef %adapter, ptr noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %mailbox = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mailbox, align 8
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %sriov = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 54
  %6 = ptrtoint ptr %sriov to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov, align 8
  %bc = getelementptr inbounds %struct.qlcnic_sriov, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %bc to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bc, align 4
  %inc = add i16 %9, 1
  store i16 %inc, ptr %bc, align 4
  %pci_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pci_func, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 2848, i32 noundef 104) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.free_cmd_crit_edge, label %if.end

entry.free_cmd_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_cmd

if.end:                                           ; preds = %entry
  %resp_cmpl.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %call7.i.i.i, i32 0, i32 14
  %13 = ptrtoint ptr %resp_cmpl.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %resp_cmpl.i, align 4
  %wait.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %call7.i.i.i, i32 0, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @init_completion.__key) #12
  %call4 = tail call fastcc i32 @qlcnic_sriov_prepare_bc_hdr(ptr noundef nonnull %call7.i.i.i, ptr noundef %cmd, i16 noundef zeroext %inc, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %retry.preheader, label %if.end.if.end.i119_crit_edge

if.end.if.end.i119_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i119

retry.preheader:                                  ; preds = %if.end
  %status = getelementptr inbounds %struct.qlcnic_mailbox, ptr %3, i32 0, i32 6
  %conv25 = zext i8 %11 to i32
  %vf2.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %call7.i.i.i, i32 0, i32 15
  %cmd_id.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %call7.i.i.i, i32 0, i32 4
  %arg33 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %req_hdr = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %call7.i.i.i, i32 0, i32 10
  %trans_state.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %call7.i.i.i, i32 0, i32 8
  %fw_fail_cnt.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 22
  br label %retry

retry:                                            ; preds = %if.then.i.retry_crit_edge, %retry.preheader
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %status, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool9.not = icmp eq i32 %16, 0
  %17 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter, align 8
  br i1 %tobool9.not, label %if.then10, label %if.end24

if.then10:                                        ; preds = %retry
  %msg_enable = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %18, i32 0, i32 35
  %19 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable, align 4
  %and = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.then10.if.end.i119_crit_edge, label %do.end

if.then10.if.end.i119_crit_edge:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i119

do.end:                                           ; preds = %if.then10
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 8
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44, i32 3
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i110 = icmp eq ptr %24, null
  br i1 %tobool.not.i110, label %if.end.i111, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i111:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %25 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev16, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i111, %do.end.dev_name.exit_crit_edge
  %retval.0.i112 = phi ptr [ %26, %if.end.i111 ], [ %24, %do.end.dev_name.exit_crit_edge ]
  %27 = ptrtoint ptr %arg33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arg33, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %conv18 = and i32 %30, 65535
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %retval.0.i112, ptr noundef nonnull @.str.103, i32 noundef %conv18, i32 noundef %conv25) #17
  br label %if.end.i119

if.end24:                                         ; preds = %retry
  %sriov.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %18, i32 0, i32 54
  %31 = ptrtoint ptr %sriov.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sriov.i.i, align 8
  %vf_info1.i.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %vf_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vf_info1.i.i, align 4
  %35 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev, align 8
  %device1.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %device1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %device1.i.i.i, align 2
  %39 = zext i16 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.125)
  switch i16 %38, label %for.cond.preheader.i.i [
    i16 -31696, label %if.end24.if.end.i114_crit_edge
    i16 -31680, label %if.end24.if.end.i114_crit_edge156
    i16 -29648, label %if.end24.if.end.i114_crit_edge157
  ]

if.end24.if.end.i114_crit_edge157:                ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i114

if.end24.if.end.i114_crit_edge156:                ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i114

if.end24.if.end.i114_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i114

for.cond.preheader.i.i:                           ; preds = %if.end24
  %num_vfs.i.i = getelementptr inbounds %struct.qlcnic_sriov, ptr %32, i32 0, i32 1
  %40 = ptrtoint ptr %num_vfs.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %num_vfs.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp20.not.i.i = icmp eq i8 %41, 0
  br i1 %cmp20.not.i.i, label %for.cond.preheader.i.i.do.end31_crit_edge, label %for.body.preheader.i.i

for.cond.preheader.i.i.do.end31_crit_edge:        ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31

for.body.preheader.i.i:                           ; preds = %for.cond.preheader.i.i
  %wide.trip.count.i.i = zext i8 %41 to i32
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.do.end31_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.cond.i.i.do.end31_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.qlcnic_vf_info, ptr %34, i32 %indvars.iv.i.i
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %11)
  %cmp9.i.i = icmp eq i8 %43, %11
  br i1 %cmp9.i.i, label %for.body.i.i.if.end.i114_crit_edge, label %for.cond.i.i

for.body.i.i.if.end.i114_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i114

if.end.i114:                                      ; preds = %for.body.i.i.if.end.i114_crit_edge, %if.end24.if.end.i114_crit_edge, %if.end24.if.end.i114_crit_edge156, %if.end24.if.end.i114_crit_edge157
  %retval.0.i.ph.i = phi i32 [ 0, %if.end24.if.end.i114_crit_edge ], [ 0, %if.end24.if.end.i114_crit_edge156 ], [ 0, %if.end24.if.end.i114_crit_edge157 ], [ %indvars.iv.i.i, %for.body.i.i.if.end.i114_crit_edge ]
  %arrayidx.i = getelementptr %struct.qlcnic_vf_info, ptr %34, i32 %retval.0.i.ph.i
  %44 = ptrtoint ptr %vf2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx.i, ptr %vf2.i, align 4
  %45 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %11, ptr %call7.i.i.i, align 8
  %state.i = getelementptr %struct.qlcnic_vf_info, ptr %34, i32 %retval.0.i.ph.i, i32 5
  %46 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %state.i, align 4
  %48 = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i113 = icmp eq i32 %48, 0
  br i1 %tobool.not.i113, label %if.then5.i, label %if.end.i114.if.end16.i_crit_edge

if.end.i114.if.end16.i_crit_edge:                 ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.then5.i:                                       ; preds = %if.end.i114
  %op_mode.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %18, i32 0, i32 30
  %49 = ptrtoint ptr %op_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %op_mode.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %50)
  %cmp.i.i = icmp eq i16 %50, 3
  br i1 %cmp.i.i, label %if.then5.i.do.end31_crit_edge, label %if.end8.i

if.then5.i.do.end31_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31

if.end8.i:                                        ; preds = %if.then5.i
  %51 = ptrtoint ptr %device1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %device1.i.i.i, align 2
  %53 = zext i16 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.126)
  switch i16 %52, label %if.end8.i.if.end16.i_crit_edge [
    i16 -31696, label %if.end8.i.land.lhs.true.i_crit_edge
    i16 -31680, label %if.end8.i.land.lhs.true.i_crit_edge158
    i16 -29648, label %if.end8.i.land.lhs.true.i_crit_edge159
  ]

if.end8.i.land.lhs.true.i_crit_edge159:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

if.end8.i.land.lhs.true.i_crit_edge158:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

if.end8.i.land.lhs.true.i_crit_edge:              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

if.end8.i.if.end16.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %if.end8.i.land.lhs.true.i_crit_edge, %if.end8.i.land.lhs.true.i_crit_edge158, %if.end8.i.land.lhs.true.i_crit_edge159
  %54 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %cmd_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %cmp12.not.i = icmp eq i16 %55, 0
  br i1 %cmp12.not.i, label %land.lhs.true.i.if.end16.i_crit_edge, label %land.lhs.true.i.do.end31_crit_edge

land.lhs.true.i.do.end31_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.end16.i:                                       ; preds = %land.lhs.true.i.if.end16.i_crit_edge, %if.end8.i.if.end16.i_crit_edge, %if.end.i114.if.end16.i_crit_edge
  %send_cmd_lock.i = getelementptr %struct.qlcnic_vf_info, ptr %34, i32 %retval.0.i.ph.i, i32 9
  tail call void @mutex_lock_nested(ptr noundef %send_cmd_lock.i, i32 noundef 0) #12
  %send_cmd.i = getelementptr %struct.qlcnic_vf_info, ptr %34, i32 %retval.0.i.ph.i, i32 10
  %56 = ptrtoint ptr %send_cmd.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call7.i.i.i, ptr %send_cmd.i, align 4
  %call17.i = tail call fastcc i32 @__qlcnic_sriov_send_bc_msg(ptr noundef nonnull %call7.i.i.i, ptr noundef %arrayidx.i, i8 noundef zeroext 0) #12
  %call1831.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1831.i.i)
  %tobool.not32.i.i = icmp eq i32 %call1831.i.i, 0
  br i1 %tobool.not32.i.i, label %if.end16.i.qlcnic_sriov_send_bc_cmd.exit_crit_edge, label %if.end16.i.while.body.i.i_crit_edge

if.end16.i.while.body.i.i_crit_edge:              ; preds = %if.end16.i
  br label %while.body.i.i

if.end16.i.qlcnic_sriov_send_bc_cmd.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_send_bc_cmd.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end16.i.while.body.i.i_crit_edge
  tail call void @msleep(i32 noundef 100) #12
  %call18.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #12
  %tobool.not.i.i = icmp eq i32 %call18.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.qlcnic_sriov_send_bc_cmd.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

while.body.i.i.qlcnic_sriov_send_bc_cmd.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_send_bc_cmd.exit

qlcnic_sriov_send_bc_cmd.exit:                    ; preds = %while.body.i.i.qlcnic_sriov_send_bc_cmd.exit_crit_edge, %if.end16.i.qlcnic_sriov_send_bc_cmd.exit_crit_edge
  %57 = ptrtoint ptr %send_cmd.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %send_cmd.i, align 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i) #12
  tail call void @mutex_unlock(ptr noundef %send_cmd_lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool27.not = icmp eq i32 %call17.i, 0
  br i1 %tobool27.not, label %if.end43, label %qlcnic_sriov_send_bc_cmd.exit.do.end31_crit_edge

qlcnic_sriov_send_bc_cmd.exit.do.end31_crit_edge: ; preds = %qlcnic_sriov_send_bc_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31

do.end31:                                         ; preds = %qlcnic_sriov_send_bc_cmd.exit.do.end31_crit_edge, %land.lhs.true.i.do.end31_crit_edge, %if.then5.i.do.end31_crit_edge, %for.cond.i.i.do.end31_crit_edge, %for.cond.preheader.i.i.do.end31_crit_edge
  %58 = ptrtoint ptr %arg33 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arg33, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %and35 = and i32 %61, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.105, i32 noundef %and35, i32 noundef %conv25) #17
  %62 = ptrtoint ptr %req_hdr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %req_hdr, align 4
  %cmd_op = getelementptr inbounds %struct.qlcnic_bc_hdr, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %cmd_op to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %cmd_op, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp = icmp eq i8 %65, 0
  br i1 %cmp, label %land.lhs.true, label %do.end31.if.then73_crit_edge

do.end31.if.then73_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then73

land.lhs.true:                                    ; preds = %do.end31
  %66 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adapter, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 8
  %ext_reg_tbl.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %67, i32 0, i32 56
  %70 = ptrtoint ptr %ext_reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ext_reg_tbl.i, align 8
  %arrayidx.i116 = getelementptr i32, ptr %71, i32 12
  %72 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i116, align 4
  %add.ptr.i = getelementptr i8, ptr %69, i32 %73
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %74)
  %cmp.i = icmp eq i32 %74, 50331648
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.if.then73_crit_edge

land.lhs.true.if.then73_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then73

if.then.i:                                        ; preds = %land.lhs.true
  tail call void @msleep(i32 noundef 20) #12
  %75 = ptrtoint ptr %vf2.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vf2.i, align 4
  %state3.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %76, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state3.i) #12
  %77 = ptrtoint ptr %trans_state.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %trans_state.i, align 8
  %78 = ptrtoint ptr %fw_fail_cnt.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %fw_fail_cnt.i, align 8
  %inc.i = add i8 %79, 1
  store i8 %inc.i, ptr %fw_fail_cnt.i, align 8
  %cmp5.i = icmp ugt i8 %inc.i, 5
  br i1 %cmp5.i, label %if.then.i.if.then73_crit_edge, label %if.then.i.retry_crit_edge

if.then.i.retry_crit_edge:                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %retry

if.then.i.if.then73_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then73

if.end43:                                         ; preds = %qlcnic_sriov_send_bc_cmd.exit
  %arg45 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %80 = ptrtoint ptr %arg45 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arg45, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  %shr = lshr i32 %83, 25
  %84 = ptrtoint ptr %arg33 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arg33, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %conv52 = and i32 %87, 65535
  %88 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %shr, label %if.else [
    i32 1, label %if.end43.if.end.i119_crit_edge
    i32 26, label %if.end43.if.end.i119_crit_edge160
  ]

if.end43.if.end.i119_crit_edge160:                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i119

if.end43.if.end.i119_crit_edge:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i119

if.else:                                          ; preds = %if.end43
  %type = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 9
  %89 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp58 = icmp eq i32 %90, 1
  br i1 %cmp58, label %if.else.if.end.i119_crit_edge, label %if.else61

if.else.if.end.i119_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i119

if.else61:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %83)
  %tobool62.not = icmp ult i32 %83, 33554432
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.108, i32 noundef %conv52, i32 noundef %shr, i32 noundef %conv25) #17
  br i1 %tobool62.not, label %if.else61.if.end.i119_crit_edge, label %err_out

if.else61.if.end.i119_crit_edge:                  ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i119

err_out:                                          ; preds = %if.else61
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %shr)
  %cmp71 = icmp eq i32 %shr, 17
  br i1 %cmp71, label %err_out.if.then73_crit_edge, label %err_out.if.end.i119_crit_edge

err_out.if.end.i119_crit_edge:                    ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i119

err_out.if.then73_crit_edge:                      ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then73

if.then73:                                        ; preds = %err_out.if.then73_crit_edge, %if.then.i.if.then73_crit_edge, %land.lhs.true.if.then73_crit_edge, %do.end31.if.then73_crit_edge
  %reset_context = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 13
  %91 = ptrtoint ptr %reset_context to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %reset_context, align 4
  %need_fw_reset = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 24
  %92 = ptrtoint ptr %need_fw_reset to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %need_fw_reset, align 2
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %status) #12
  br label %if.end.i119

if.end.i119:                                      ; preds = %if.then73, %err_out.if.end.i119_crit_edge, %if.else61.if.end.i119_crit_edge, %if.else.if.end.i119_crit_edge, %if.end43.if.end.i119_crit_edge, %if.end43.if.end.i119_crit_edge160, %dev_name.exit, %if.then10.if.end.i119_crit_edge, %if.end.if.end.i119_crit_edge
  %rsp.1137 = phi i32 [ %call4, %if.end.if.end.i119_crit_edge ], [ 17, %if.then73 ], [ %shr, %err_out.if.end.i119_crit_edge ], [ 0, %if.else.if.end.i119_crit_edge ], [ 0, %if.end43.if.end.i119_crit_edge ], [ 0, %if.end43.if.end.i119_crit_edge160 ], [ -5, %if.then10.if.end.i119_crit_edge ], [ -5, %dev_name.exit ], [ 1, %if.else61.if.end.i119_crit_edge ]
  %req_hdr.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %call7.i.i.i, i32 0, i32 10
  %93 = ptrtoint ptr %req_hdr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %req_hdr.i, align 4
  tail call void @kfree(ptr noundef %94) #12
  %rsp_hdr.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %call7.i.i.i, i32 0, i32 11
  %95 = ptrtoint ptr %rsp_hdr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rsp_hdr.i, align 8
  tail call void @kfree(ptr noundef %96) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %free_cmd

free_cmd:                                         ; preds = %if.end.i119, %entry.free_cmd_crit_edge
  %rsp.2 = phi i32 [ -12, %entry.free_cmd_crit_edge ], [ %rsp.1137, %if.end.i119 ]
  %type76 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 9
  %97 = ptrtoint ptr %type76 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %type76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %98)
  %cmp77 = icmp eq i32 %98, 1
  br i1 %cmp77, label %if.then79, label %free_cmd.if.end80_crit_edge

free_cmd.if.end80_crit_edge:                      ; preds = %free_cmd
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then79:                                        ; preds = %free_cmd
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @qlcnic_free_mbx_args(ptr noundef %cmd) #12
  tail call void @kfree(ptr noundef %cmd) #12
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %free_cmd.if.end80_crit_edge
  ret i32 %rsp.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_sriov_prepare_bc_hdr(ptr nocapture noundef %trans, ptr nocapture noundef %cmd, i16 noundef zeroext %seq, i8 noundef zeroext %msg_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %msg_type)
  %cmp = icmp eq i8 %msg_type, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %req = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %req_pay = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 12
  %2 = ptrtoint ptr %req_pay to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %req_pay, align 4
  %rsp = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3
  %arg2 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %arg2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arg2, align 4
  %rsp_pay = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 13
  %5 = ptrtoint ptr %rsp_pay to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %rsp_pay, align 4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req, align 4
  %.tr = trunc i32 %7 to i16
  %conv4 = shl i16 %.tr, 2
  %req_pay_size = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 5
  %8 = ptrtoint ptr %req_pay_size to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv4, ptr %req_pay_size, align 2
  %9 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rsp, align 4
  %.tr182 = trunc i32 %10 to i16
  %conv8 = shl i16 %.tr182, 2
  %rsp_pay_size = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 6
  %11 = ptrtoint ptr %rsp_pay_size to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv8, ptr %rsp_pay_size, align 4
  %12 = load ptr, ptr %arg, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %and = and i32 %14, 255
  %conv4.frozen = freeze i16 %conv4
  %15 = udiv i16 %conv4.frozen, 1008
  %16 = mul i16 %15, 1008
  %rem.decomposed = sub i16 %conv4.frozen, %16
  %conv17 = trunc i16 %15 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.decomposed)
  %tobool.not = icmp ne i16 %rem.decomposed, 0
  %inc = zext i1 %tobool.not to i8
  %spec.select = add nuw nsw i8 %inc, %conv17
  %req_hdr = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 10
  %conv19 = zext i8 %spec.select to i32
  %17 = shl nuw nsw i32 %conv19, 4
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 2848) #16
  %18 = ptrtoint ptr %req_hdr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call8.i.i.i, ptr %req_hdr, align 4
  %tobool.not.i.not = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i.not, label %if.then.cleanup_crit_edge, label %if.end22

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %if.then
  %rsp_hdr = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 11
  %19 = ptrtoint ptr %rsp_pay_size to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %rsp_pay_size, align 4
  %.frozen = freeze i16 %20
  %21 = udiv i16 %.frozen, 1008
  %22 = mul i16 %21, 1008
  %rem25.decomposed = sub i16 %.frozen, %22
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem25.decomposed)
  %tobool31.not = icmp ne i16 %rem25.decomposed, 0
  %inc33 = zext i1 %tobool31.not to i32
  %conv30 = zext i16 %21 to i32
  %spec.select183 = add nuw nsw i32 %inc33, %conv30
  %23 = shl nuw nsw i32 %spec.select183, 4
  %call8.i.i.i214 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 2848) #16
  %24 = ptrtoint ptr %rsp_hdr to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call8.i.i.i214, ptr %rsp_hdr, align 4
  %tobool.not.i217.not = icmp eq ptr %call8.i.i.i214, null
  br i1 %tobool.not.i217.not, label %if.end22.cleanup_crit_edge, label %if.end39

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end39:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %req_hdr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %req_hdr, align 4
  br label %if.end80

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %req_pay41 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 12
  %27 = ptrtoint ptr %req_pay41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %req_pay41, align 4
  %req42 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2
  %arg43 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %arg43 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %arg43, align 4
  %rsp_pay44 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 13
  %30 = ptrtoint ptr %rsp_pay44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rsp_pay44, align 4
  %rsp45 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3
  %arg46 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %arg46 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %arg46, align 4
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %28, align 4
  %conv52 = and i32 %34, 255
  %cmd_op53 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 10
  %35 = ptrtoint ptr %cmd_op53 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv52, ptr %cmd_op53, align 4
  %rsp_pay_size54 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 6
  %36 = ptrtoint ptr %rsp_pay_size54 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %rsp_pay_size54, align 4
  %.frozen242 = freeze i16 %37
  %38 = udiv i16 %.frozen242, 1008
  %39 = mul i16 %38, 1008
  %rem56.decomposed = sub i16 %.frozen242, %39
  %conv61 = trunc i16 %38 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem56.decomposed)
  %tobool62.not = icmp ne i16 %rem56.decomposed, 0
  %inc64 = zext i1 %tobool62.not to i8
  %spec.select184 = add nuw nsw i8 %inc64, %conv61
  %req_pay_size66 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 5
  %40 = ptrtoint ptr %req_pay_size66 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %req_pay_size66, align 2
  %42 = lshr i16 %41, 2
  %div68 = zext i16 %42 to i32
  %43 = ptrtoint ptr %req42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div68, ptr %req42, align 4
  %44 = ptrtoint ptr %rsp_pay_size54 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %rsp_pay_size54, align 4
  %46 = lshr i16 %45, 2
  %div73 = zext i16 %46 to i32
  %47 = ptrtoint ptr %rsp45 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %div73, ptr %rsp45, align 4
  %rsp_hdr76 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 11
  %48 = ptrtoint ptr %rsp_hdr76 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rsp_hdr76, align 4
  %req_hdr77 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 10
  %50 = ptrtoint ptr %req_hdr77 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %req_hdr77, align 4
  %op_type = getelementptr inbounds %struct.qlcnic_bc_hdr, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %op_type to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load = load i8, ptr %op_type, align 2
  %bf.lshr = lshr i8 %bf.load, 7
  %conv78 = zext i8 %bf.lshr to i32
  %op_type79 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 8
  %53 = ptrtoint ptr %op_type79 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv78, ptr %op_type79, align 4
  %.pre = zext i8 %spec.select184 to i32
  br label %if.end80

if.end80:                                         ; preds = %if.else, %if.end39
  %conv83.pre-phi = phi i32 [ %.pre, %if.else ], [ %conv19, %if.end39 ]
  %hdr.0 = phi ptr [ %49, %if.else ], [ %26, %if.end39 ]
  %cmd_op.0.in = phi i32 [ %34, %if.else ], [ %and, %if.end39 ]
  %num_frags.3 = phi i8 [ %spec.select184, %if.else ], [ %spec.select, %if.end39 ]
  %cmd_op.0 = trunc i32 %cmd_op.0.in to i8
  %conv81 = zext i16 %seq to i32
  %trans_id = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 7
  %54 = ptrtoint ptr %trans_id to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv81, ptr %trans_id, align 4
  %55 = trunc i32 %cmd_op.0.in to i16
  %conv82 = and i16 %55, 255
  %cmd_id = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 4
  %56 = ptrtoint ptr %cmd_id to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv82, ptr %cmd_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_frags.3)
  %cmp84240.not = icmp eq i8 %num_frags.3, 0
  br i1 %cmp84240.not, label %if.end80.cleanup_crit_edge, label %for.body.lr.ph

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end80
  %bf.value = and i8 %msg_type, 15
  %op_type90 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0241 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %arrayidx86 = getelementptr %struct.qlcnic_bc_hdr, ptr %hdr.0, i32 %i.0241
  %version = getelementptr %struct.qlcnic_bc_hdr, ptr %hdr.0, i32 %i.0241, i32 3
  %57 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 2, ptr %version, align 1
  %msg_type88 = getelementptr %struct.qlcnic_bc_hdr, ptr %hdr.0, i32 %i.0241, i32 2
  %58 = ptrtoint ptr %msg_type88 to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load89 = load i8, ptr %msg_type88, align 2
  %bf.clear = and i8 %bf.load89, -16
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, ptr %msg_type88, align 2
  %59 = ptrtoint ptr %op_type90 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %op_type90, align 4
  %conv91 = trunc i32 %60 to i8
  %bf.shl = shl i8 %conv91, 7
  %bf.clear96 = and i8 %bf.set, 127
  %bf.set97 = or i8 %bf.shl, %bf.clear96
  store i8 %bf.set97, ptr %msg_type88, align 2
  %num_cmds = getelementptr %struct.qlcnic_bc_hdr, ptr %hdr.0, i32 %i.0241, i32 1
  %61 = ptrtoint ptr %num_cmds to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %num_cmds, align 1
  %62 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %num_frags.3, ptr %arrayidx86, align 8
  %add = add nuw nsw i32 %i.0241, 1
  %conv101 = trunc i32 %add to i8
  %frag_num = getelementptr %struct.qlcnic_bc_hdr, ptr %hdr.0, i32 %i.0241, i32 6
  %63 = ptrtoint ptr %frag_num to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv101, ptr %frag_num, align 1
  %cmd_op104 = getelementptr %struct.qlcnic_bc_hdr, ptr %hdr.0, i32 %i.0241, i32 5
  %64 = ptrtoint ptr %cmd_op104 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %cmd_op.0, ptr %cmd_op104, align 2
  %seq_id = getelementptr %struct.qlcnic_bc_hdr, ptr %hdr.0, i32 %i.0241, i32 4
  %65 = ptrtoint ptr %seq_id to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %seq, ptr %seq_id, align 4
  %exitcond.not = icmp eq i32 %add, %conv83.pre-phi
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ -12, %if.end22.cleanup_crit_edge ], [ 0, %if.end80.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__qlcnic_sriov_send_bc_msg(ptr noundef %trans, ptr noundef %vf, i8 noundef zeroext %type) unnamed_addr #0 align 64 {
entry:
  %cmd.i.i = alloca %struct.qlcnic_cmd_args, align 4
  %timeout.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 5
  %adapter = getelementptr inbounds %struct.qlcnic_vf_info, ptr %vf, i32 0, i32 14
  %trans_state = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 8
  %resp_cmpl.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 14
  %vf1.i28 = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cmp.i.i = icmp eq i8 %type, 1
  %curr_req_frag.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 3
  %req_hdr.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 10
  %curr_rsp_frag.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 2
  %rsp_hdr.i.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %cmp.i = icmp eq i8 %type, 0
  %rsp_pay.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 13
  %rsp_pay_size.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 6
  %req_pay.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 12
  %req_pay_size.i = getelementptr inbounds %struct.qlcnic_bc_trans, ptr %trans, i32 0, i32 5
  %hdr2.i.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i.i, i32 0, i32 11
  %pay3.i.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i.i, i32 0, i32 12
  %pay_size.i.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i.i, i32 0, i32 5
  %func_num.i.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i.i, i32 0, i32 13
  %op_type.i.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i.i, i32 0, i32 8
  %cmd_op5.i.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i.i, i32 0, i32 10
  %type.i.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i.i, i32 0, i32 9
  %rsp_opcode.i.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i.i, i32 0, i32 6
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not46 = icmp eq i32 %2, 0
  br i1 %tobool1.not46, label %entry.lor.lhs.false_crit_edge, label %entry.if.end.thread_crit_edge

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 4
  %need_fw_reset = getelementptr inbounds %struct.qlcnic_adapter, ptr %4, i32 0, i32 24
  %5 = ptrtoint ptr %need_fw_reset to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %need_fw_reset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.if.end.thread_crit_edge

lor.lhs.false.if.end.thread_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread

if.end.thread:                                    ; preds = %sw.epilog.if.end.thread_crit_edge, %lor.lhs.false.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  %7 = ptrtoint ptr %trans_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %trans_state, align 4
  br label %sw.bb13

if.end:                                           ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %trans_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %trans_state, align 4
  %9 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %.pr, label %if.end.while.end_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb11
    i32 4, label %while.end.loopexit
    i32 3, label %if.end.sw.bb13_crit_edge
  ]

if.end.sw.bb13_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

sw.bb:                                            ; preds = %if.end
  %10 = ptrtoint ptr %trans_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %trans_state, align 4
  %11 = ptrtoint ptr %vf1.i28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vf1.i28, align 4
  %13 = ptrtoint ptr %trans to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %trans, align 4
  %state.i.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %12, i32 0, i32 5
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %sw.bb
  %timeout.0.i.i = phi i32 [ 10000, %sw.bb ], [ %dec.i.i, %if.end.i.i.do.body.i.i_crit_edge ]
  %call.i.i = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %state.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748000) #12
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %tobool1.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.sw.epilog.sink.split_crit_edge, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

if.end.i.i.sw.epilog.sink.split_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

if.end.i:                                         ; preds = %do.body.i.i
  br i1 %cmp.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %req_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req_hdr.i.i, align 4
  %18 = ptrtoint ptr %curr_req_frag.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %curr_req_frag.i.i, align 1
  %conv4.i = zext i8 %19 to i32
  %add.ptr.i = getelementptr %struct.qlcnic_bc_hdr, ptr %17, i32 %conv4.i
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %rsp_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rsp_hdr.i.i, align 4
  %22 = ptrtoint ptr %curr_rsp_frag.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %curr_rsp_frag.i.i, align 2
  %conv11.i = zext i8 %23 to i32
  %add.ptr12.i = getelementptr %struct.qlcnic_bc_hdr, ptr %21, i32 %conv11.i
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.then3.i
  %rsp_pay.i.sink = phi ptr [ %rsp_pay.i, %if.else.i ], [ %req_pay.i, %if.then3.i ]
  %conv11.i.sink = phi i32 [ %conv11.i, %if.else.i ], [ %conv4.i, %if.then3.i ]
  %.sink61.in.i = phi ptr [ %rsp_pay_size.i, %if.else.i ], [ %req_pay_size.i, %if.then3.i ]
  %hdr.0.i = phi ptr [ %add.ptr12.i, %if.else.i ], [ %add.ptr.i, %if.then3.i ]
  %24 = ptrtoint ptr %rsp_pay.i.sink to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rsp_pay.i.sink, align 4
  %add.ptr15.i = getelementptr %struct.qlcnic_bc_payload, ptr %25, i32 %conv11.i.sink
  %26 = ptrtoint ptr %.sink61.in.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %.sink61.i = load i16, ptr %.sink61.in.i, align 2
  %conv16.i = zext i16 %.sink61.i to i32
  %27 = mul nuw nsw i32 %conv11.i.sink, 1008
  %mul.i48.i = add nuw nsw i32 %27, 1008
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i48.i, i32 %conv16.i)
  %tobool.not.i49.i = icmp ugt i32 %mul.i48.i, %conv16.i
  %rem.i5059.i = urem i16 %.sink61.i, 1008
  %28 = lshr i16 %rem.i5059.i, 2
  %rem.i50.zext.op.i = zext i16 %28 to i32
  %pay_size.0.i = select i1 %tobool.not.i49.i, i32 %rem.i50.zext.op.i, i32 252
  %adapter.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %12, i32 0, i32 14
  %29 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %mailbox.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %32, i32 0, i32 59
  %33 = ptrtoint ptr %mailbox.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mailbox.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd.i.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeout.i.i) #12
  %35 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %timeout.i.i, align 4, !annotation !227
  %36 = call ptr @memset(ptr %cmd.i.i, i32 0, i32 120)
  %37 = ptrtoint ptr %hdr2.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %hdr.0.i, ptr %hdr2.i.i, align 4
  %38 = ptrtoint ptr %pay3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr15.i, ptr %pay3.i.i, align 4
  %39 = ptrtoint ptr %pay_size.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %pay_size.0.i, ptr %pay_size.i.i, align 4
  %40 = ptrtoint ptr %func_num.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %14, ptr %func_num.i.i, align 4
  %41 = ptrtoint ptr %op_type.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %op_type.i.i, align 4
  %cmd_op.i.i = getelementptr inbounds %struct.qlcnic_bc_hdr, ptr %hdr.0.i, i32 0, i32 5
  %42 = ptrtoint ptr %cmd_op.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %cmd_op.i.i, align 2
  %conv4.i.i = zext i8 %43 to i32
  %44 = ptrtoint ptr %cmd_op5.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv4.i.i, ptr %cmd_op5.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.qlcnic_mailbox, ptr %34, i32 0, i32 2
  %45 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %call.i53.i = call i32 %48(ptr noundef %30, ptr noundef nonnull %cmd.i.i, ptr noundef nonnull %timeout.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53.i)
  %tobool.not.i54.i = icmp eq i32 %call.i53.i, 0
  br i1 %tobool.not.i54.i, label %if.end.i55.i, label %qlcnic_sriov_issue_bc_post.exit.thread34

qlcnic_sriov_issue_bc_post.exit.thread34:         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %30, i32 0, i32 4
  %49 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %51 = ptrtoint ptr %cmd_op5.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cmd_op5.i.i, align 4
  %53 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %type.i.i, align 4
  %pci_func7.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %32, i32 0, i32 6
  %55 = ptrtoint ptr %pci_func7.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %pci_func7.i.i, align 1
  %conv8.i.i = zext i8 %56 to i32
  %op_mode.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %32, i32 0, i32 30
  %57 = ptrtoint ptr %op_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %op_mode.i.i, align 2
  %conv9.i.i = zext i16 %58 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, i32 noundef %52, i32 noundef %54, i32 noundef %conv8.i.i, i32 noundef %conv9.i.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeout.i.i) #12
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i.i) #12
  br label %sw.epilog.sink.split

if.end.i55.i:                                     ; preds = %if.end20.i
  %59 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %timeout.i.i, align 4
  %call10.i.i = call i32 @wait_for_completion_timeout(ptr noundef nonnull %cmd.i.i, i32 noundef %60) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %do.end15.i.i, label %if.end.i55.i.qlcnic_sriov_issue_bc_post.exit_crit_edge

if.end.i55.i.qlcnic_sriov_issue_bc_post.exit_crit_edge: ; preds = %if.end.i55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qlcnic_sriov_issue_bc_post.exit

do.end15.i.i:                                     ; preds = %if.end.i55.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev16.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %30, i32 0, i32 4
  %61 = ptrtoint ptr %pdev16.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev16.i.i, align 8
  %dev17.i.i = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %63 = ptrtoint ptr %cmd_op5.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cmd_op5.i.i, align 4
  %65 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %type.i.i, align 4
  %pci_func20.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %32, i32 0, i32 6
  %67 = ptrtoint ptr %pci_func20.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %pci_func20.i.i, align 1
  %conv21.i.i = zext i8 %68 to i32
  %op_mode22.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %32, i32 0, i32 30
  %69 = ptrtoint ptr %op_mode22.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %op_mode22.i.i, align 2
  %conv23.i.i = zext i16 %70 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i.i, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.111, i32 noundef %64, i32 noundef %66, i32 noundef %conv21.i.i, i32 noundef %conv23.i.i) #17
  %71 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %34, align 4
  call void @flush_workqueue(ptr noundef %72) #12
  br label %qlcnic_sriov_issue_bc_post.exit

qlcnic_sriov_issue_bc_post.exit:                  ; preds = %do.end15.i.i, %if.end.i55.i.qlcnic_sriov_issue_bc_post.exit_crit_edge
  %73 = ptrtoint ptr %rsp_opcode.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rsp_opcode.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeout.i.i) #12
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool6.not = icmp eq i32 %74, 0
  br i1 %tobool6.not, label %qlcnic_sriov_issue_bc_post.exit.sw.epilog_crit_edge, label %qlcnic_sriov_issue_bc_post.exit.sw.epilog.sink.split_crit_edge

qlcnic_sriov_issue_bc_post.exit.sw.epilog.sink.split_crit_edge: ; preds = %qlcnic_sriov_issue_bc_post.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

qlcnic_sriov_issue_bc_post.exit.sw.epilog_crit_edge: ; preds = %qlcnic_sriov_issue_bc_post.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  %75 = ptrtoint ptr %vf1.i28 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vf1.i28, align 4
  %ch_free_cmpl.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %76, i32 0, i32 6
  %call.i = call i32 @wait_for_completion_timeout(ptr noundef %ch_free_cmpl.i, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb10.sw.epilog.sink.split_crit_edge, label %if.end.i29

sw.bb10.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

if.end.i29:                                       ; preds = %sw.bb10
  %state.i = getelementptr inbounds %struct.qlcnic_vf_info, ptr %76, i32 0, i32 5
  call void @_clear_bit(i32 noundef 2, ptr noundef %state.i) #12
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else9.i.i

if.then.i.i:                                      ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %curr_rsp_frag.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %curr_rsp_frag.i.i, align 2
  %inc.i.i = add i8 %78, 1
  store i8 %inc.i.i, ptr %curr_rsp_frag.i.i, align 2
  %79 = ptrtoint ptr %rsp_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rsp_hdr.i.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %80, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %inc.i.i, i8 %82)
  %cmp5.i.i = icmp ult i8 %inc.i.i, %82
  %. = select i1 %cmp5.i.i, i32 0, i32 4
  br label %sw.epilog.sink.split

if.else9.i.i:                                     ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %curr_req_frag.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %curr_req_frag.i.i, align 1
  %inc10.i.i = add i8 %84, 1
  store i8 %inc10.i.i, ptr %curr_req_frag.i.i, align 1
  %85 = ptrtoint ptr %req_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %req_hdr.i.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %86, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %inc10.i.i, i8 %88)
  %cmp15.i.i = icmp ult i8 %inc10.i.i, %88
  %.44 = select i1 %cmp15.i.i, i32 0, i32 2
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i30 = call i32 @wait_for_completion_timeout(ptr noundef %resp_cmpl.i, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool.not.i31 = icmp eq i32 %call.i30, 0
  %spec.select.i = select i1 %tobool.not.i31, i32 3, i32 4
  br label %sw.epilog.sink.split

sw.bb13:                                          ; preds = %if.end.sw.bb13_crit_edge, %if.end.thread
  call void @_clear_bit(i32 noundef 2, ptr noundef %state) #12
  br label %while.end

sw.epilog.sink.split:                             ; preds = %sw.bb11, %if.else9.i.i, %if.then.i.i, %sw.bb10.sw.epilog.sink.split_crit_edge, %qlcnic_sriov_issue_bc_post.exit.sw.epilog.sink.split_crit_edge, %qlcnic_sriov_issue_bc_post.exit.thread34, %if.end.i.i.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %spec.select.i, %sw.bb11 ], [ 3, %qlcnic_sriov_issue_bc_post.exit.thread34 ], [ 3, %qlcnic_sriov_issue_bc_post.exit.sw.epilog.sink.split_crit_edge ], [ 3, %sw.bb10.sw.epilog.sink.split_crit_edge ], [ %., %if.then.i.i ], [ %.44, %if.else9.i.i ], [ 3, %if.end.i.i.sw.epilog.sink.split_crit_edge ]
  %89 = ptrtoint ptr %trans_state to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %.sink, ptr %trans_state, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %qlcnic_sriov_issue_bc_post.exit.sw.epilog_crit_edge
  %90 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %state, align 4
  %92 = and i32 %91, 16
  %tobool1.not = icmp eq i32 %92, 0
  br i1 %tobool1.not, label %sw.epilog.lor.lhs.false_crit_edge, label %sw.epilog.if.end.thread_crit_edge

sw.epilog.if.end.thread_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread

sw.epilog.lor.lhs.false_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

while.end.loopexit:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %sw.bb13, %if.end.while.end_crit_edge
  %err.1.ph = phi i32 [ -5, %sw.bb13 ], [ 0, %while.end.loopexit ], [ -5, %if.end.while.end_crit_edge ]
  ret i32 %err.1.ph
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_sriov_pf_process_bc_cmd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_sriov_pf_handle_flr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qlcnic_sriov_soft_flr_check(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_nic_add_mac(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !15, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !74, !75, !77, !79, !80, !81, !82, !84, !85, !87, !88, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !182, !184, !186, !188, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !204, !206, !207, !208, !210, !211, !212, !213, !215}
!llvm.module.flags = !{!217, !218, !219, !220, !221, !222, !223, !224}
!llvm.ident = !{!225}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 166, i32 7}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 169, i32 3}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @qlcnic_sriov_init._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @qlcnic_sriov_init._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 176, i32 7}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 179, i32 3}
!15 = !{ptr @qlcnic_sriov_init._entry.8, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @qlcnic_sriov_init._entry_ptr.10, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @qlcnic_sriov_init.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 185, i32 2}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @qlcnic_sriov_init.__key.12, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 186, i32 2}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @qlcnic_sriov_init.__key.14, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 193, i32 3}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @qlcnic_sriov_init.__key.16, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 194, i32 3}
!28 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @qlcnic_sriov_init.__key.18, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 197, i32 3}
!31 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @qlcnic_sriov_init.__key.20, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 198, i32 3}
!34 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @qlcnic_sriov_init.__key.22, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 201, i32 3}
!37 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 215, i32 4}
!40 = !{ptr @.str.26, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @qlcnic_sriov_init._entry.24, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @qlcnic_sriov_init._entry_ptr.27, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 371, i32 3}
!45 = !{ptr @.str.29, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @qlcnic_sriov_get_vf_vport_info._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @qlcnic_sriov_get_vf_vport_info._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 404, i32 2}
!50 = !{ptr @qlcnic_sriov_get_vf_vport_info._entry.30, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @qlcnic_sriov_get_vf_vport_info._entry_ptr.32, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 638, i32 3}
!54 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.35, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @qlcnic_sriov_vf_init._entry, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @qlcnic_sriov_vf_init._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @qlcnic_sriov_vf_init.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 640, i32 2}
!60 = !{ptr @.str.36, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @qlcnic_sriov_vf_init.__key.37, !59, !"__key", i1 false, i1 false}
!62 = !{ptr @.str.38, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 651, i32 2}
!65 = !{ptr @.str.40, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @qlcnic_sriov_vf_set_ops._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @qlcnic_sriov_vf_set_ops._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 1341, i32 3}
!70 = !{ptr @.str.42, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @qlcnic_sriov_cfg_bc_intr._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @qlcnic_sriov_cfg_bc_intr._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.43, !69, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.44, !69, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @qlcnic_sriov_vf_set_multi.bcast_addr, !76, !"bcast_addr", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 1545, i32 18}
!77 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 2076, i32 3}
!79 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @qlcnic_sriov_cfg_vf_guest_vlan._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @qlcnic_sriov_cfg_vf_guest_vlan._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @init_completion.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../include/linux/completion.h", i32 87, i32 2}
!84 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 1476, i32 3}
!87 = !{ptr @.str.49, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @qlcnic_sriov_channel_cfg_cmd._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @qlcnic_sriov_channel_cfg_cmd._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.50, !86, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.51, !86, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 536, i32 3}
!94 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @qlcnic_sriov_setup_vf._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @qlcnic_sriov_setup_vf._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.55, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 545, i32 3}
!99 = !{ptr @qlcnic_sriov_setup_vf._entry.54, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @qlcnic_sriov_setup_vf._entry_ptr.56, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 578, i32 2}
!103 = !{ptr @qlcnic_sriov_setup_vf._entry.57, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @qlcnic_sriov_setup_vf._entry_ptr.59, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.60, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 517, i32 2}
!107 = !{ptr @.str.61, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @qlcnic_sriov_vf_init_driver._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @qlcnic_sriov_vf_init_driver._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 478, i32 3}
!112 = !{ptr @.str.63, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @qlcnic_sriov_get_vf_acl._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @qlcnic_sriov_get_vf_acl._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.64, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 443, i32 2}
!117 = !{ptr @.str.65, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @qlcnic_sriov_set_guest_vlan_mode._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @qlcnic_sriov_set_guest_vlan_mode._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.66, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 1749, i32 4}
!122 = !{ptr @.str.67, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @qlcnic_sriov_vf_handle_dev_ready._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @qlcnic_sriov_vf_handle_dev_ready._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.69, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 1753, i32 4}
!127 = !{ptr @qlcnic_sriov_vf_handle_dev_ready._entry.68, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @qlcnic_sriov_vf_handle_dev_ready._entry_ptr.70, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.72, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 1757, i32 4}
!131 = !{ptr @qlcnic_sriov_vf_handle_dev_ready._entry.71, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @qlcnic_sriov_vf_handle_dev_ready._entry_ptr.73, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.74, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 1780, i32 3}
!135 = !{ptr @.str.75, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @qlcnic_sriov_vf_handle_context_reset._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @qlcnic_sriov_vf_handle_context_reset._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.77, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 1794, i32 3}
!140 = !{ptr @qlcnic_sriov_vf_handle_context_reset._entry.76, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @qlcnic_sriov_vf_handle_context_reset._entry_ptr.78, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.80, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 1799, i32 2}
!144 = !{ptr @qlcnic_sriov_vf_handle_context_reset._entry.79, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @qlcnic_sriov_vf_handle_context_reset._entry_ptr.81, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.83, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 1800, i32 2}
!148 = !{ptr @qlcnic_sriov_vf_handle_context_reset._entry.82, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @qlcnic_sriov_vf_handle_context_reset._entry_ptr.84, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.86, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 1813, i32 3}
!152 = !{ptr @qlcnic_sriov_vf_handle_context_reset._entry.85, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @qlcnic_sriov_vf_handle_context_reset._entry_ptr.87, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.89, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 1815, i32 3}
!156 = !{ptr @qlcnic_sriov_vf_handle_context_reset._entry.88, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @qlcnic_sriov_vf_handle_context_reset._entry_ptr.90, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.92, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 1818, i32 3}
!160 = !{ptr @qlcnic_sriov_vf_handle_context_reset._entry.91, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @qlcnic_sriov_vf_handle_context_reset._entry_ptr.93, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.94, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 1876, i32 3}
!164 = !{ptr @.str.95, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @qlcnic_sriov_vf_idc_init_reset_state._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @qlcnic_sriov_vf_idc_init_reset_state._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.96, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 1857, i32 2}
!169 = !{ptr @.str.97, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @qlcnic_sriov_vf_idc_need_quiescent_state._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @qlcnic_sriov_vf_idc_need_quiescent_state._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.98, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 1842, i32 2}
!174 = !{ptr @.str.99, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @qlcnic_sriov_vf_idc_failed_state._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @qlcnic_sriov_vf_idc_failed_state._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.100, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 1889, i32 2}
!179 = !{ptr @.str.101, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @qlcnic_sriov_vf_idc_unknown_state._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @qlcnic_sriov_vf_idc_unknown_state._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @qlcnic_sriov_vf_ops, !183, !"qlcnic_sriov_vf_ops", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 83, i32 35}
!184 = !{ptr @qlcnic_sriov_vf_hw_ops, !185, !"qlcnic_sriov_vf_hw_ops", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 46, i32 35}
!186 = !{ptr @.str.102, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 1393, i32 3}
!188 = !{ptr @.str.103, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @__qlcnic_sriov_issue_cmd._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @__qlcnic_sriov_issue_cmd._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.105, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 1400, i32 3}
!193 = !{ptr @__qlcnic_sriov_issue_cmd._entry.104, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @__qlcnic_sriov_issue_cmd._entry_ptr.106, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.108, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 1429, i32 4}
!197 = !{ptr @__qlcnic_sriov_issue_cmd._entry.107, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @__qlcnic_sriov_issue_cmd._entry_ptr.109, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.110, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 328, i32 3}
!201 = !{ptr @.str.111, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @qlcnic_sriov_post_bc_msg._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @qlcnic_sriov_post_bc_msg._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.113, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 336, i32 3}
!206 = !{ptr @qlcnic_sriov_post_bc_msg._entry.112, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @qlcnic_sriov_post_bc_msg._entry_ptr.114, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.115, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 1291, i32 3}
!210 = !{ptr @.str.116, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @qlcnic_sriov_handle_flr_event._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @qlcnic_sriov_handle_flr_event._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @qlcnic_sriov_bc_mbx_tbl, !214, !"qlcnic_sriov_bc_mbx_tbl", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 95, i32 45}
!215 = distinct !{null, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sriov_common.c", i32 2041, i32 31}
!217 = !{i32 1, !"wchar_size", i32 2}
!218 = !{i32 1, !"min_enum_size", i32 4}
!219 = !{i32 8, !"branch-target-enforcement", i32 0}
!220 = !{i32 8, !"sign-return-address", i32 0}
!221 = !{i32 8, !"sign-return-address-all", i32 0}
!222 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!223 = !{i32 7, !"uwtable", i32 1}
!224 = !{i32 7, !"frame-pointer", i32 2}
!225 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!226 = !{!"branch_weights", i32 1, i32 2000}
!227 = !{!"auto-init"}
!228 = !{i64 5044343}
!229 = !{i64 2157855053}
!230 = !{i64 2157871239}
!231 = !{i64 2157863598}
!232 = !{i64 2157864229}
!233 = !{i8 0, i8 2}
!234 = !{i64 2157933251}
!235 = !{i64 2157907881}
!236 = !{i64 2157921956}
!237 = !{i64 2157812889}
!238 = !{i64 5043925}
!239 = !{i64 2157813451}
!240 = !{i64 2157875816}
