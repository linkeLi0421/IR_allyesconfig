; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/i40e/i40e_client.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/i40e/i40e_client.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+i40e_client_device_register\22, \22a\22\09"
module asm "\09.weak\09__crc_i40e_client_device_register\09\09\09\09"
module asm "\09.long\09__crc_i40e_client_device_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i40e_client_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22i40e_client_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_i40e_client_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+i40e_client_device_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_i40e_client_device_unregister\09\09\09\09"
module asm "\09.long\09__crc_i40e_client_device_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i40e_client_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22i40e_client_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_i40e_client_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i40e_ops = type { ptr, ptr, ptr, ptr }
%struct.i40e_vsi = type { ptr, [128 x i32], i8, i8, i32, [1 x i32], i32, %struct.spinlock, [256 x %struct.hlist_head], i8, %struct.rtnl_link_stats64, %struct.rtnl_link_stats64, %struct.i40e_eth_stats, %struct.i40e_eth_stats, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, ptr, ptr, i16, i16, ptr, ptr, i32, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, %struct.tc_mqprio_qopt_offload, %struct.i40e_tc_configuration, %struct.i40e_aqc_vsi_properties_data, i16, i8, [8 x i8], [8 x i16], [8 x i8], ptr, i16, i16, ptr, i8, i32, i16, i16, i16, i8, i16, %struct.list_head, [8 x i16], [4 x i32], %struct.list_head, i32, ptr, ptr, ptr, [88 x i8] }
%struct.hlist_head = type { ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.i40e_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.i40e_tc_configuration = type { i8, i8, [8 x %struct.i40e_tc_info] }
%struct.i40e_tc_info = type { i16, i16, i8 }
%struct.i40e_aqc_vsi_properties_data = type { i16, i16, [2 x i8], i8, i8, i16, i16, i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, [3 x i8], i8, i8, i32, [8 x i8], [8 x i16], i16, i16, [12 x i8] }
%struct.i40e_pf = type { ptr, %struct.i40e_hw, [2 x i32], ptr, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i8, i8, %struct.hlist_head, i16, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.list_head, %struct.list_head, %struct.udp_tunnel_nic_shared, %struct.udp_tunnel_nic_info, %struct.hlist_head, i16, i32, i16, i16, i32, [32 x i8], i16, i32, i32, %struct.timer_list, %struct.work_struct, i32, i32, ptr, i8, %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, %struct.mutex, i16, i16, i16, ptr, [16 x ptr], ptr, ptr, i16, i16, i16, ptr, ptr, i8, i16, ptr, i32, i32, i32, i16, %struct.i40e_filter_control_settings, %struct.i40e_rx_pb_config, %struct.i40e_dcbx_config, ptr, %struct.ptp_clock_info, ptr, i32, %struct.hwtstamp_config, %struct.timespec64, %struct.work_struct, %struct.work_struct, %struct.work_struct, i64, %struct.mutex, i32, i32, i32, i32, i32, i64, i32, %struct.spinlock, [3 x %struct.ptp_pin_desc], [4 x i32], i8, i8, ptr, i16, i32, i32, i32, i32, i16, i16, i16, i16, %struct.list_head }
%struct.i40e_hw = type { ptr, ptr, %struct.i40e_phy_info, %struct.i40e_mac_info, %struct.i40e_bus_info, %struct.i40e_nvm_info, %struct.i40e_fc_info, i16, i16, i16, i16, i8, i8, i8, %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities, i16, i8, i16, i16, i16, i16, i16, %struct.i40e_adminq_info, i32, %struct.i40e_aq_desc, %struct.i40e_aq_desc, %struct.i40e_virt_mem, i8, i16, %struct.i40e_hmc_info, i16, %struct.i40e_dcbx_config, %struct.i40e_dcbx_config, %struct.i40e_dcbx_config, i64, i16, i16, i16, i32, [16 x i8] }
%struct.i40e_phy_info = type { %struct.i40e_link_status, %struct.i40e_link_status, i8, i32, i64 }
%struct.i40e_link_status = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, [3 x i8] }
%struct.i40e_mac_info = type { i32, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.i40e_bus_info = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.i40e_nvm_info = type { i64, i32, i16, i8, i16, i32, i32 }
%struct.i40e_fc_info = type { i32, i32 }
%struct.i40e_hw_capabilities = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, [30 x i8], [30 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i64 }
%struct.i40e_adminq_info = type { %struct.i40e_adminq_ring, %struct.i40e_adminq_ring, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, %struct.mutex, %struct.mutex, i32, i32 }
%struct.i40e_adminq_ring = type { %struct.i40e_virt_mem, %struct.i40e_dma_mem, %struct.i40e_virt_mem, %union.anon.204, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.i40e_dma_mem = type { ptr, i32, i32 }
%union.anon.204 = type { ptr }
%struct.i40e_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.205 }
%union.anon.205 = type { %struct.anon.206 }
%struct.anon.206 = type { i32, i32, i32, i32 }
%struct.i40e_virt_mem = type { ptr, i32 }
%struct.i40e_hmc_info = type { i32, i8, i16, ptr, %struct.i40e_virt_mem, %struct.i40e_hmc_sd_table }
%struct.i40e_hmc_sd_table = type { %struct.i40e_virt_mem, i32, i32, ptr }
%struct.udp_tunnel_nic_shared = type { ptr, %struct.list_head }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.i40e_hw_port_stats = type { %struct.i40e_eth_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], i64, i64, [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64 }
%struct.i40e_filter_control_settings = type { i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.i40e_rx_pb_config = type { i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32] }
%struct.i40e_dcbx_config = type { i8, i8, i32, i32, %struct.i40e_dcb_ets_config, %struct.i40e_dcb_ets_config, %struct.i40e_dcb_pfc_config, [32 x %struct.i40e_dcb_app_priority_table] }
%struct.i40e_dcb_ets_config = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8] }
%struct.i40e_dcb_pfc_config = type { i8, i8, i8, i8 }
%struct.i40e_dcb_app_priority_table = type { i8, i8, i16 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.i40e_client_instance = type { %struct.list_head, %struct.i40e_info, ptr, i32 }
%struct.i40e_info = type { %struct.i40e_client_version, [6 x i8], ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, %struct.i40e_params, ptr, i16, ptr, i16, i16, i16, i32 }
%struct.i40e_client_version = type { i8, i8, i8, i8 }
%struct.i40e_params = type { %struct.i40e_qos_params, i16 }
%struct.i40e_qos_params = type { [8 x %struct.i40e_prio_qos_params] }
%struct.i40e_prio_qos_params = type { i16, i8, i8 }
%struct.i40e_client = type { %struct.list_head, [10 x i8], %struct.i40e_client_version, i32, %struct.atomic_t, i32, i8, ptr }
%struct.i40e_client_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.203, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.203 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.199, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.199 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.i40e_qvlist_info = type { i32, [0 x %struct.i40e_qv_info] }
%struct.i40e_qv_info = type { i32, i16, i16, i8 }
%struct.msix_entry = type { i32, i16 }
%struct.i40e_vsi_context = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, %struct.i40e_aqc_vsi_properties_data }
%struct.i40e_device = type { %struct.list_head, ptr }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.i40e_auxiliary_device = type { %struct.auxiliary_device, ptr }
%struct.auxiliary_device = type { %struct.device, ptr, i32 }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"i40e_client_ida.xa_lock\00", [40 x i8] zeroinitializer }, align 32
@i40e_client_ida = dso_local global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@i40e_notify_client_of_vf_msg.__UNIQUE_ID_ddebug676 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i40e\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"i40e_notify_client_of_vf_msg\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/intel/i40e/i40e_client.c\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Cannot locate client instance virtual channel receive routine\0A\00", [33 x i8] zeroinitializer }, align 32
@i40e_notify_client_of_vf_msg.__UNIQUE_ID_ddebug677 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Client is not open, abort virtchnl_receive\0A\00", [52 x i8] zeroinitializer }, align 32
@i40e_notify_client_of_l2_param_changes.__UNIQUE_ID_ddebug678 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.7, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"i40e_notify_client_of_l2_param_changes\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Cannot locate client instance l2_param_change routine\0A\00", [41 x i8] zeroinitializer }, align 32
@i40e_notify_client_of_l2_param_changes.__UNIQUE_ID_ddebug679 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.8, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Client is not open, abort l2 param change\0A\00", [53 x i8] zeroinitializer }, align 32
@i40e_notify_client_of_netdev_close.__UNIQUE_ID_ddebug680 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"i40e_notify_client_of_netdev_close\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Cannot locate client instance close routine\0A\00", [51 x i8] zeroinitializer }, align 32
@i40e_notify_client_of_vf_reset.__UNIQUE_ID_ddebug681 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"i40e_notify_client_of_vf_reset\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Cannot locate client instance VF reset routine\0A\00", [48 x i8] zeroinitializer }, align 32
@i40e_notify_client_of_vf_reset.__UNIQUE_ID_ddebug682 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.3, ptr @.str.13, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Client is not open, abort vf-reset\0A\00", [60 x i8] zeroinitializer }, align 32
@i40e_notify_client_of_vf_enable.__UNIQUE_ID_ddebug683 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"i40e_notify_client_of_vf_enable\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Cannot locate client instance VF enable routine\0A\00", [47 x i8] zeroinitializer }, align 32
@i40e_notify_client_of_vf_enable.__UNIQUE_ID_ddebug684 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.3, ptr @.str.16, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Client is not open, abort vf-enable\0A\00", [59 x i8] zeroinitializer }, align 32
@i40e_vf_client_capable.__UNIQUE_ID_ddebug685 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i40e_vf_client_capable\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Cannot locate client instance VF capability routine\0A\00", [43 x i8] zeroinitializer }, align 32
@i40e_device_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @i40e_device_mutex, i64 52), ptr getelementptr (i8, ptr @i40e_device_mutex, i64 52) }, ptr @i40e_device_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@i40e_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @i40e_devices, ptr @i40e_devices }, [24 x i8] zeroinitializer }, align 32
@i40e_lan_add_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 479, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Added LAN device PF%d bus=0x%02x dev=0x%02x func=0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i40e_lan_add_device\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i40e_lan_add_device._entry_ptr = internal global ptr @i40e_lan_add_device._entry, section ".printk_index", align 4
@i40e_lan_del_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 514, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Deleted LAN device PF%d bus=0x%02x dev=0x%02x func=0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i40e_lan_del_device\00", [44 x i8] zeroinitializer }, align 32
@i40e_lan_del_device._entry_ptr = internal global ptr @i40e_lan_del_device._entry, section ".printk_index", align 4
@__kstrtab_i40e_client_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_i40e_client_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_i40e_client_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i40e_client_device_register to i32), ptr @__kstrtab_i40e_client_device_register, ptr @__kstrtabns_i40e_client_device_register }, section "___ksymtab_gpl+i40e_client_device_register", align 4
@__kstrtab_i40e_client_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_i40e_client_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_i40e_client_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i40e_client_device_unregister to i32), ptr @__kstrtab_i40e_client_device_unregister, ptr @__kstrtabns_i40e_client_device_unregister }, section "___ksymtab_gpl+i40e_client_device_unregister", align 4
@i40e_client_get_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 64, ptr @.str.27, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Invalid queue set handle for TC = %d, vsi id = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i40e_client_get_params\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@i40e_client_get_params._entry_ptr = internal global ptr @i40e_client_get_params._entry, section ".printk_index", align 4
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"i40e_device_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i40e_device_mutex\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@i40e_lan_ops = internal global { %struct.i40e_ops, [16 x i8] } { %struct.i40e_ops { ptr @i40e_client_setup_qvlist, ptr @i40e_client_virtchnl_send, ptr @i40e_client_request_reset, ptr @i40e_client_update_vsi_ctxt }, [16 x i8] zeroinitializer }, align 32
@i40e_client_add_instance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 366, ptr @.str.27, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MAC address list is empty!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"i40e_client_add_instance\00", [39 x i8] zeroinitializer }, align 32
@i40e_client_add_instance._entry_ptr = internal global ptr @i40e_client_add_instance._entry, section ".printk_index", align 4
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iwarp\00", [26 x i8] zeroinitializer }, align 32
@i40e_client_virtchnl_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 547, ptr @.str.27, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Unable to send iWarp message to VF, error %d, aq status %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"i40e_client_virtchnl_send\00", [38 x i8] zeroinitializer }, align 32
@i40e_client_virtchnl_send._entry_ptr = internal global ptr @i40e_client_virtchnl_send._entry, section ".printk_index", align 4
@i40e_client_request_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 647, ptr @.str.37, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Client for PF id %d requested an unsupported reset: %d.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"i40e_client_request_reset\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@i40e_client_request_reset._entry_ptr = internal global ptr @i40e_client_request_reset._entry, section ".printk_index", align 4
@i40e_client_update_vsi_ctxt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 689, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"couldn't get PF vsi config, err %s aq_err %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"i40e_client_update_vsi_ctxt\00", [36 x i8] zeroinitializer }, align 32
@i40e_client_update_vsi_ctxt._entry_ptr = internal global ptr @i40e_client_update_vsi_ctxt._entry, section ".printk_index", align 4
@i40e_client_update_vsi_ctxt._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.3, i32 707, ptr @.str.37, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Client for PF id %d request an unsupported Config: %x.\0A\00", [40 x i8] zeroinitializer }, align 32
@i40e_client_update_vsi_ctxt._entry_ptr.42 = internal global ptr @i40e_client_update_vsi_ctxt._entry.40, section ".printk_index", align 4
@i40e_client_update_vsi_ctxt._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.3, i32 717, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"update VSI ctxt for PE failed, err %s aq_err %s\0A\00", [47 x i8] zeroinitializer }, align 32
@i40e_client_update_vsi_ctxt._entry_ptr.45 = internal global ptr @i40e_client_update_vsi_ctxt._entry.43, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"i40e_client_ida\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 13, i32 1 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 91, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 96, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 118, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 123, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 176, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 199, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 204, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 224, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 230, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 252, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [18 x i8] c"i40e_device_mutex\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [13 x i8] c"i40e_devices\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 11, i32 8 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 477, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 512, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 63, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 12, i32 8 }
@___asan_gen_.154 = private unnamed_addr constant [13 x i8] c"i40e_lan_ops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 32, i32 24 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 366, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 373, i32 51 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 546, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 645, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 685, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 705, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.209 = private constant [49 x i8] c"../drivers/net/ethernet/intel/i40e/i40e_client.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 713, i32 4 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__ksymtab_i40e_client_device_register, ptr @__ksymtab_i40e_client_device_unregister, ptr @i40e_client_add_instance._entry, ptr @i40e_client_add_instance._entry_ptr, ptr @i40e_client_get_params._entry, ptr @i40e_client_get_params._entry_ptr, ptr @i40e_client_request_reset._entry, ptr @i40e_client_request_reset._entry_ptr, ptr @i40e_client_update_vsi_ctxt._entry, ptr @i40e_client_update_vsi_ctxt._entry.40, ptr @i40e_client_update_vsi_ctxt._entry.43, ptr @i40e_client_update_vsi_ctxt._entry_ptr, ptr @i40e_client_update_vsi_ctxt._entry_ptr.42, ptr @i40e_client_update_vsi_ctxt._entry_ptr.45, ptr @i40e_client_virtchnl_send._entry, ptr @i40e_client_virtchnl_send._entry_ptr, ptr @i40e_lan_add_device._entry, ptr @i40e_lan_add_device._entry_ptr, ptr @i40e_lan_del_device._entry, ptr @i40e_lan_del_device._entry_ptr, ptr @.str, ptr @i40e_client_ida, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @i40e_device_mutex, ptr @i40e_devices, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @i40e_lan_ops, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_client_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_device_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_lan_add_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_lan_del_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_client_get_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_lan_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_client_add_instance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_client_virtchnl_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_client_request_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_client_update_vsi_ctxt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_client_update_vsi_ctxt._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_client_update_vsi_ctxt._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_notify_client_of_vf_msg(ptr nocapture noundef readonly %vsi, i32 noundef %vf_id, ptr noundef %msg, i16 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 57
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %cinst = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %cinst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cinst, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %client = getelementptr inbounds %struct.i40e_client_instance, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.i40e_client, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.do.body_crit_edge, label %lor.lhs.false4

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false4:                                   ; preds = %if.end
  %virtchnl_receive = getelementptr inbounds %struct.i40e_client_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %virtchnl_receive to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virtchnl_receive, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %lor.lhs.false4.do.body_crit_edge, label %if.end14

lor.lhs.false4.do.body_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false4.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_notify_client_of_vf_msg.__UNIQUE_ID_ddebug676, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_notify_client_of_vf_msg, %if.then12)) #8
          to label %cleanup [label %if.then12], !srcloc !111

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_notify_client_of_vf_msg.__UNIQUE_ID_ddebug676, ptr noundef %dev, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false4
  %state = getelementptr inbounds %struct.i40e_client_instance, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool16.not = icmp eq i32 %14, 0
  br i1 %tobool16.not, label %do.body18, label %if.end36

do.body18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_notify_client_of_vf_msg.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_notify_client_of_vf_msg, %if.then30)) #8
          to label %cleanup [label %if.then30], !srcloc !111

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_notify_client_of_vf_msg.__UNIQUE_ID_ddebug677, ptr noundef %dev32, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %lan_info = getelementptr inbounds %struct.i40e_client_instance, ptr %3, i32 0, i32 1
  %call41 = tail call i32 %9(ptr noundef %lan_info, ptr noundef nonnull %5, i32 noundef %vf_id, ptr noundef %msg, i16 noundef zeroext %len) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then30, %do.body18, %if.then12, %do.body, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_notify_client_of_l2_param_changes(ptr nocapture noundef readonly %vsi) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.i40e_params, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 57
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %cinst = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %cinst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cinst, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %params) #8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %client = getelementptr inbounds %struct.i40e_client_instance, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.i40e_client, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.do.body_crit_edge, label %lor.lhs.false4

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false4:                                   ; preds = %if.end
  %l2_param_change = getelementptr inbounds %struct.i40e_client_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %l2_param_change to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %l2_param_change, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %lor.lhs.false4.do.body_crit_edge, label %if.end15

lor.lhs.false4.do.body_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false4.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_notify_client_of_l2_param_changes.__UNIQUE_ID_ddebug678, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_notify_client_of_l2_param_changes, %if.then12)) #8
          to label %cleanup [label %if.then12], !srcloc !111

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %back, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_notify_client_of_l2_param_changes.__UNIQUE_ID_ddebug678, ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false4
  %state = getelementptr inbounds %struct.i40e_client_instance, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool17.not = icmp eq i32 %16, 0
  br i1 %tobool17.not, label %do.body19, label %if.end38

do.body19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_notify_client_of_l2_param_changes.__UNIQUE_ID_ddebug679, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_notify_client_of_l2_param_changes, %if.then31)) #8
          to label %cleanup [label %if.then31], !srcloc !111

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %back, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_notify_client_of_l2_param_changes.__UNIQUE_ID_ddebug679, ptr noundef %dev34, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end38:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %21 = call ptr @memset(ptr %params, i32 0, i32 34)
  %call39 = call fastcc i32 @i40e_client_get_params(ptr noundef %vsi, ptr noundef nonnull %params)
  %lan_info = getelementptr inbounds %struct.i40e_client_instance, ptr %3, i32 0, i32 1
  %params40 = getelementptr inbounds %struct.i40e_client_instance, ptr %3, i32 0, i32 1, i32 10
  %22 = call ptr @memcpy(ptr %params40, ptr %params, i32 34)
  %23 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %client, align 4
  %ops42 = getelementptr inbounds %struct.i40e_client, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %ops42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops42, align 4
  %l2_param_change43 = getelementptr inbounds %struct.i40e_client_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %l2_param_change43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %l2_param_change43, align 4
  call void %28(ptr noundef %lan_info, ptr noundef %24, ptr noundef nonnull %params) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then31, %do.body19, %if.then12, %do.body, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %params) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_client_get_params(ptr nocapture noundef readonly %vsi, ptr nocapture noundef writeonly %params) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 57
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %enabled_tc = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 50, i32 1
  %arrayidx = getelementptr %struct.i40e_pf, ptr %1, i32 0, i32 1, i32 32, i32 4, i32 3, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = ptrtoint ptr %enabled_tc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled_tc, align 1
  %conv = zext i8 %5 to i32
  %conv1 = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv1
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool.not, i8 0, i8 %3
  %idxprom = zext i8 %spec.store.select to i32
  %arrayidx3 = getelementptr %struct.i40e_vsi, ptr %vsi, i32 0, i32 51, i32 23, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx3, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %tc5 = getelementptr [8 x %struct.i40e_prio_qos_params], ptr %params, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %tc5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %spec.store.select, ptr %tc5, align 2
  %10 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %8, ptr %params, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp11 = icmp eq i16 %7, -1
  br i1 %cmp11, label %entry.do.end_crit_edge, label %for.cond

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr %struct.i40e_pf, ptr %1, i32 0, i32 1, i32 32, i32 4, i32 3, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.1, align 1
  %13 = ptrtoint ptr %enabled_tc to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %enabled_tc, align 1
  %conv.1 = zext i8 %14 to i32
  %conv1.1 = zext i8 %12 to i32
  %shl.1 = shl nuw i32 1, %conv1.1
  %and.1 = and i32 %shl.1, %conv.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  %spec.store.select.1 = select i1 %tobool.not.1, i8 0, i8 %12
  %idxprom.1 = zext i8 %spec.store.select.1 to i32
  %arrayidx3.1 = getelementptr %struct.i40e_vsi, ptr %vsi, i32 0, i32 51, i32 23, i32 %idxprom.1
  %15 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx3.1, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %arrayidx4.1 = getelementptr [8 x %struct.i40e_prio_qos_params], ptr %params, i32 0, i32 1
  %tc5.1 = getelementptr [8 x %struct.i40e_prio_qos_params], ptr %params, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %tc5.1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %spec.store.select.1, ptr %tc5.1, align 2
  %19 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %17, ptr %arrayidx4.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %16)
  %cmp11.1 = icmp eq i16 %16, -1
  br i1 %cmp11.1, label %for.cond.do.end_crit_edge, label %for.cond.1

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.i40e_pf, ptr %1, i32 0, i32 1, i32 32, i32 4, i32 3, i32 2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.2, align 1
  %22 = ptrtoint ptr %enabled_tc to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %enabled_tc, align 1
  %conv.2 = zext i8 %23 to i32
  %conv1.2 = zext i8 %21 to i32
  %shl.2 = shl nuw i32 1, %conv1.2
  %and.2 = and i32 %shl.2, %conv.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  %spec.store.select.2 = select i1 %tobool.not.2, i8 0, i8 %21
  %idxprom.2 = zext i8 %spec.store.select.2 to i32
  %arrayidx3.2 = getelementptr %struct.i40e_vsi, ptr %vsi, i32 0, i32 51, i32 23, i32 %idxprom.2
  %24 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx3.2, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %arrayidx4.2 = getelementptr [8 x %struct.i40e_prio_qos_params], ptr %params, i32 0, i32 2
  %tc5.2 = getelementptr [8 x %struct.i40e_prio_qos_params], ptr %params, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %tc5.2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %spec.store.select.2, ptr %tc5.2, align 2
  %28 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %26, ptr %arrayidx4.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %25)
  %cmp11.2 = icmp eq i16 %25, -1
  br i1 %cmp11.2, label %for.cond.1.do.end_crit_edge, label %for.cond.2

for.cond.1.do.end_crit_edge:                      ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.i40e_pf, ptr %1, i32 0, i32 1, i32 32, i32 4, i32 3, i32 3
  %29 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.3, align 1
  %31 = ptrtoint ptr %enabled_tc to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %enabled_tc, align 1
  %conv.3 = zext i8 %32 to i32
  %conv1.3 = zext i8 %30 to i32
  %shl.3 = shl nuw i32 1, %conv1.3
  %and.3 = and i32 %shl.3, %conv.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  %spec.store.select.3 = select i1 %tobool.not.3, i8 0, i8 %30
  %idxprom.3 = zext i8 %spec.store.select.3 to i32
  %arrayidx3.3 = getelementptr %struct.i40e_vsi, ptr %vsi, i32 0, i32 51, i32 23, i32 %idxprom.3
  %33 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx3.3, align 2
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %arrayidx4.3 = getelementptr [8 x %struct.i40e_prio_qos_params], ptr %params, i32 0, i32 3
  %tc5.3 = getelementptr [8 x %struct.i40e_prio_qos_params], ptr %params, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %tc5.3 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %spec.store.select.3, ptr %tc5.3, align 2
  %37 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %35, ptr %arrayidx4.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %34)
  %cmp11.3 = icmp eq i16 %34, -1
  br i1 %cmp11.3, label %for.cond.2.do.end_crit_edge, label %for.cond.3

for.cond.2.do.end_crit_edge:                      ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr %struct.i40e_pf, ptr %1, i32 0, i32 1, i32 32, i32 4, i32 3, i32 4
  %38 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.4, align 1
  %40 = ptrtoint ptr %enabled_tc to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %enabled_tc, align 1
  %conv.4 = zext i8 %41 to i32
  %conv1.4 = zext i8 %39 to i32
  %shl.4 = shl nuw i32 1, %conv1.4
  %and.4 = and i32 %shl.4, %conv.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  %spec.store.select.4 = select i1 %tobool.not.4, i8 0, i8 %39
  %idxprom.4 = zext i8 %spec.store.select.4 to i32
  %arrayidx3.4 = getelementptr %struct.i40e_vsi, ptr %vsi, i32 0, i32 51, i32 23, i32 %idxprom.4
  %42 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx3.4, align 2
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %arrayidx4.4 = getelementptr [8 x %struct.i40e_prio_qos_params], ptr %params, i32 0, i32 4
  %tc5.4 = getelementptr [8 x %struct.i40e_prio_qos_params], ptr %params, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %tc5.4 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %spec.store.select.4, ptr %tc5.4, align 2
  %46 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %44, ptr %arrayidx4.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %43)
  %cmp11.4 = icmp eq i16 %43, -1
  br i1 %cmp11.4, label %for.cond.3.do.end_crit_edge, label %for.cond.4

for.cond.3.do.end_crit_edge:                      ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr %struct.i40e_pf, ptr %1, i32 0, i32 1, i32 32, i32 4, i32 3, i32 5
  %47 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.5, align 1
  %49 = ptrtoint ptr %enabled_tc to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %enabled_tc, align 1
  %conv.5 = zext i8 %50 to i32
  %conv1.5 = zext i8 %48 to i32
  %shl.5 = shl nuw i32 1, %conv1.5
  %and.5 = and i32 %shl.5, %conv.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  %spec.store.select.5 = select i1 %tobool.not.5, i8 0, i8 %48
  %idxprom.5 = zext i8 %spec.store.select.5 to i32
  %arrayidx3.5 = getelementptr %struct.i40e_vsi, ptr %vsi, i32 0, i32 51, i32 23, i32 %idxprom.5
  %51 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx3.5, align 2
  %53 = tail call i16 @llvm.bswap.i16(i16 %52)
  %arrayidx4.5 = getelementptr [8 x %struct.i40e_prio_qos_params], ptr %params, i32 0, i32 5
  %tc5.5 = getelementptr [8 x %struct.i40e_prio_qos_params], ptr %params, i32 0, i32 5, i32 1
  %54 = ptrtoint ptr %tc5.5 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %spec.store.select.5, ptr %tc5.5, align 2
  %55 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %53, ptr %arrayidx4.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %52)
  %cmp11.5 = icmp eq i16 %52, -1
  br i1 %cmp11.5, label %for.cond.4.do.end_crit_edge, label %for.cond.5

for.cond.4.do.end_crit_edge:                      ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr %struct.i40e_pf, ptr %1, i32 0, i32 1, i32 32, i32 4, i32 3, i32 6
  %56 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.6, align 1
  %58 = ptrtoint ptr %enabled_tc to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %enabled_tc, align 1
  %conv.6 = zext i8 %59 to i32
  %conv1.6 = zext i8 %57 to i32
  %shl.6 = shl nuw i32 1, %conv1.6
  %and.6 = and i32 %shl.6, %conv.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  %spec.store.select.6 = select i1 %tobool.not.6, i8 0, i8 %57
  %idxprom.6 = zext i8 %spec.store.select.6 to i32
  %arrayidx3.6 = getelementptr %struct.i40e_vsi, ptr %vsi, i32 0, i32 51, i32 23, i32 %idxprom.6
  %60 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx3.6, align 2
  %62 = tail call i16 @llvm.bswap.i16(i16 %61)
  %arrayidx4.6 = getelementptr [8 x %struct.i40e_prio_qos_params], ptr %params, i32 0, i32 6
  %tc5.6 = getelementptr [8 x %struct.i40e_prio_qos_params], ptr %params, i32 0, i32 6, i32 1
  %63 = ptrtoint ptr %tc5.6 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %spec.store.select.6, ptr %tc5.6, align 2
  %64 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %62, ptr %arrayidx4.6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %61)
  %cmp11.6 = icmp eq i16 %61, -1
  br i1 %cmp11.6, label %for.cond.5.do.end_crit_edge, label %for.cond.6

for.cond.5.do.end_crit_edge:                      ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx.7 = getelementptr %struct.i40e_pf, ptr %1, i32 0, i32 1, i32 32, i32 4, i32 3, i32 7
  %65 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.7, align 1
  %67 = ptrtoint ptr %enabled_tc to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %enabled_tc, align 1
  %conv.7 = zext i8 %68 to i32
  %conv1.7 = zext i8 %66 to i32
  %shl.7 = shl nuw i32 1, %conv1.7
  %and.7 = and i32 %shl.7, %conv.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  %spec.store.select.7 = select i1 %tobool.not.7, i8 0, i8 %66
  %idxprom.7 = zext i8 %spec.store.select.7 to i32
  %arrayidx3.7 = getelementptr %struct.i40e_vsi, ptr %vsi, i32 0, i32 51, i32 23, i32 %idxprom.7
  %69 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx3.7, align 2
  %71 = tail call i16 @llvm.bswap.i16(i16 %70)
  %arrayidx4.7 = getelementptr [8 x %struct.i40e_prio_qos_params], ptr %params, i32 0, i32 7
  %tc5.7 = getelementptr [8 x %struct.i40e_prio_qos_params], ptr %params, i32 0, i32 7, i32 1
  %72 = ptrtoint ptr %tc5.7 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %spec.store.select.7, ptr %tc5.7, align 2
  %73 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %71, ptr %arrayidx4.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %70)
  %cmp11.7 = icmp eq i16 %70, -1
  br i1 %cmp11.7, label %for.cond.6.do.end_crit_edge, label %for.cond.7

for.cond.6.do.end_crit_edge:                      ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.cond.7:                                       ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vsi, align 128
  %mtu = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 20
  %76 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mtu, align 4
  %conv19 = trunc i32 %77 to i16
  %mtu20 = getelementptr inbounds %struct.i40e_params, ptr %params, i32 0, i32 1
  %78 = ptrtoint ptr %mtu20 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv19, ptr %mtu20, align 2
  br label %cleanup21

do.end:                                           ; preds = %for.cond.6.do.end_crit_edge, %for.cond.5.do.end_crit_edge, %for.cond.4.do.end_crit_edge, %for.cond.3.do.end_crit_edge, %for.cond.2.do.end_crit_edge, %for.cond.1.do.end_crit_edge, %for.cond.do.end_crit_edge, %entry.do.end_crit_edge
  %idxprom.lcssa = phi i32 [ %idxprom, %entry.do.end_crit_edge ], [ %idxprom.1, %for.cond.do.end_crit_edge ], [ %idxprom.2, %for.cond.1.do.end_crit_edge ], [ %idxprom.3, %for.cond.2.do.end_crit_edge ], [ %idxprom.4, %for.cond.3.do.end_crit_edge ], [ %idxprom.5, %for.cond.4.do.end_crit_edge ], [ %idxprom.6, %for.cond.5.do.end_crit_edge ], [ %idxprom.7, %for.cond.6.do.end_crit_edge ]
  %79 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %back, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  %id = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 39
  %83 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %id, align 4
  %conv16 = zext i16 %84 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %idxprom.lcssa, i32 noundef %conv16) #11
  br label %cleanup21

cleanup21:                                        ; preds = %do.end, %for.cond.7
  %retval.2 = phi i32 [ 0, %for.cond.7 ], [ -22, %do.end ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_notify_client_of_netdev_close(ptr nocapture noundef readonly %vsi, i1 noundef zeroext %reset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 57
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %cinst = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %cinst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cinst, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %client = getelementptr inbounds %struct.i40e_client_instance, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.i40e_client, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.do.body_crit_edge, label %lor.lhs.false4

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false4:                                   ; preds = %if.end
  %close = getelementptr inbounds %struct.i40e_client_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %close, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %lor.lhs.false4.do.body_crit_edge, label %if.end16

lor.lhs.false4.do.body_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false4.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_notify_client_of_netdev_close.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_notify_client_of_netdev_close, %if.then13)) #8
          to label %cleanup [label %if.then13], !srcloc !111

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %back, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_notify_client_of_netdev_close.__UNIQUE_ID_ddebug680, ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false4
  %lan_info = getelementptr inbounds %struct.i40e_client_instance, ptr %3, i32 0, i32 1
  tail call void %9(ptr noundef %lan_info, ptr noundef nonnull %5, i1 noundef zeroext %reset) #8
  %state = getelementptr inbounds %struct.i40e_client_instance, ptr %3, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #8
  %qvlist_info1.i = getelementptr inbounds %struct.i40e_client_instance, ptr %3, i32 0, i32 1, i32 9
  %14 = ptrtoint ptr %qvlist_info1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qvlist_info1.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end16.cleanup_crit_edge, label %for.cond.preheader.i

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end16
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp24.not.i = icmp eq i32 %17, 0
  br i1 %cmp24.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %pf3.i = getelementptr inbounds %struct.i40e_client_instance, ptr %3, i32 0, i32 1, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.i40e_qvlist_info, ptr %15, i32 0, i32 1, i32 %i.025.i
  %tobool5.not.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool5.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end7.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end7.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %pf3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pf3.i, align 4
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %sub.i = shl i32 %21, 2
  %add.i = add i32 %sub.i, 217084
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %hw.i = getelementptr inbounds %struct.i40e_pf, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw.i, align 8
  %add.ptr.i = getelementptr i8, ptr %23, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -16318464) #8, !srcloc !113
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end7.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw i32 %i.025.i, 1
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %15, align 4
  %cmp.i = icmp ult i32 %inc.i, %25
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %26 = ptrtoint ptr %qvlist_info1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qvlist_info1.i, align 4
  tail call void @kfree(ptr noundef %27) #8
  %28 = ptrtoint ptr %qvlist_info1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %qvlist_info1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %if.end16.cleanup_crit_edge, %if.then13, %do.body, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_notify_client_of_vf_reset(ptr nocapture noundef readonly %pf, i32 noundef %vf_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cinst = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 55
  %0 = ptrtoint ptr %cinst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cinst, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %client = getelementptr inbounds %struct.i40e_client_instance, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.i40e_client, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.do.body_crit_edge, label %lor.lhs.false4

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false4:                                   ; preds = %if.end
  %vf_reset = getelementptr inbounds %struct.i40e_client_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %vf_reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vf_reset, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %lor.lhs.false4.do.body_crit_edge, label %if.end14

lor.lhs.false4.do.body_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false4.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_notify_client_of_vf_reset.__UNIQUE_ID_ddebug681, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_notify_client_of_vf_reset, %if.then12)) #8
          to label %cleanup [label %if.then12], !srcloc !111

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_notify_client_of_vf_reset.__UNIQUE_ID_ddebug681, ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false4
  %state = getelementptr inbounds %struct.i40e_client_instance, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not = icmp eq i32 %12, 0
  br i1 %tobool16.not, label %do.body18, label %if.end36

do.body18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_notify_client_of_vf_reset.__UNIQUE_ID_ddebug682, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_notify_client_of_vf_reset, %if.then30)) #8
          to label %cleanup [label %if.then30], !srcloc !111

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pf, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_notify_client_of_vf_reset.__UNIQUE_ID_ddebug682, ptr noundef %dev32, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %lan_info = getelementptr inbounds %struct.i40e_client_instance, ptr %1, i32 0, i32 1
  tail call void %7(ptr noundef %lan_info, ptr noundef nonnull %3, i32 noundef %vf_id) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then30, %do.body18, %if.then12, %do.body, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_notify_client_of_vf_enable(ptr nocapture noundef readonly %pf, i32 noundef %num_vfs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cinst = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 55
  %0 = ptrtoint ptr %cinst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cinst, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %client = getelementptr inbounds %struct.i40e_client_instance, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.i40e_client, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.do.body_crit_edge, label %lor.lhs.false4

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false4:                                   ; preds = %if.end
  %vf_enable = getelementptr inbounds %struct.i40e_client_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %vf_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vf_enable, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %lor.lhs.false4.do.body_crit_edge, label %if.end14

lor.lhs.false4.do.body_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false4.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_notify_client_of_vf_enable.__UNIQUE_ID_ddebug683, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_notify_client_of_vf_enable, %if.then12)) #8
          to label %cleanup [label %if.then12], !srcloc !111

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_notify_client_of_vf_enable.__UNIQUE_ID_ddebug683, ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false4
  %state = getelementptr inbounds %struct.i40e_client_instance, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not = icmp eq i32 %12, 0
  br i1 %tobool16.not, label %do.body18, label %if.end36

do.body18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_notify_client_of_vf_enable.__UNIQUE_ID_ddebug684, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_notify_client_of_vf_enable, %if.then30)) #8
          to label %cleanup [label %if.then30], !srcloc !111

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pf, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_notify_client_of_vf_enable.__UNIQUE_ID_ddebug684, ptr noundef %dev32, ptr noundef nonnull @.str.16) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %lan_info = getelementptr inbounds %struct.i40e_client_instance, ptr %1, i32 0, i32 1
  tail call void %7(ptr noundef %lan_info, ptr noundef nonnull %3, i32 noundef %num_vfs) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then30, %do.body18, %if.then12, %do.body, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_vf_client_capable(ptr nocapture noundef readonly %pf, i32 noundef %vf_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cinst = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 55
  %0 = ptrtoint ptr %cinst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cinst, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %client = getelementptr inbounds %struct.i40e_client_instance, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.i40e_client, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.do.body_crit_edge, label %lor.lhs.false4

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false4:                                   ; preds = %if.end
  %vf_capable = getelementptr inbounds %struct.i40e_client_ops, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %vf_capable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vf_capable, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %lor.lhs.false4.do.body_crit_edge, label %if.end14

lor.lhs.false4.do.body_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false4.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_vf_client_capable.__UNIQUE_ID_ddebug685, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_vf_client_capable, %if.then12)) #8
          to label %out [label %if.then12], !srcloc !111

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_vf_client_capable.__UNIQUE_ID_ddebug685, ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  br label %out

if.end14:                                         ; preds = %lor.lhs.false4
  %state = getelementptr inbounds %struct.i40e_client_instance, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not = icmp eq i32 %12, 0
  br i1 %tobool16.not, label %if.end14.out_crit_edge, label %if.end18

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %lan_info = getelementptr inbounds %struct.i40e_client_instance, ptr %1, i32 0, i32 1
  %call23 = tail call i32 %7(ptr noundef %lan_info, ptr noundef nonnull %3, i32 noundef %vf_id) #8
  br label %out

out:                                              ; preds = %if.end18, %if.end14.out_crit_edge, %if.then12, %do.body, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %capable.0 = phi i32 [ %call23, %if.end18 ], [ 0, %if.end14.out_crit_edge ], [ 0, %if.then12 ], [ 0, %lor.lhs.false.out_crit_edge ], [ 0, %entry.out_crit_edge ], [ 0, %do.body ]
  ret i32 %capable.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @i40e_client_update_msix_info(ptr nocapture noundef readonly %pf) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cinst = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 55
  %0 = ptrtoint ptr %cinst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cinst, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %client = getelementptr inbounds %struct.i40e_client_instance, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %num_iwarp_msix = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 14
  %4 = ptrtoint ptr %num_iwarp_msix to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_iwarp_msix, align 8
  %msix_count = getelementptr inbounds %struct.i40e_client_instance, ptr %1, i32 0, i32 1, i32 12
  %6 = ptrtoint ptr %msix_count to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %msix_count, align 4
  %msix_entries = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 3
  %7 = ptrtoint ptr %msix_entries to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %msix_entries, align 8
  %iwarp_base_vector = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 15
  %9 = ptrtoint ptr %iwarp_base_vector to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iwarp_base_vector, align 4
  %arrayidx = getelementptr %struct.msix_entry, ptr %8, i32 %10
  %msix_entries3 = getelementptr inbounds %struct.i40e_client_instance, ptr %1, i32 0, i32 1, i32 13
  %11 = ptrtoint ptr %msix_entries3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx, ptr %msix_entries3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_client_subtask(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi1 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 74
  %0 = ptrtoint ptr %vsi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi1, align 8
  %lan_vsi = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 71
  %2 = ptrtoint ptr %lan_vsi to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %lan_vsi, align 8
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr ptr, ptr %1, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %state = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 2
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 30, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cinst = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 55
  %6 = ptrtoint ptr %cinst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cinst, align 4
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not = icmp ne i32 %13, 0
  %tobool12.not = icmp eq ptr %7, null
  %or.cond = select i1 %tobool9.not, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false13

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %client14 = getelementptr inbounds %struct.i40e_client_instance, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %client14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client14, align 4
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %lor.lhs.false13.cleanup_crit_edge, label %if.end17

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false13
  %state19 = getelementptr inbounds %struct.i40e_client_instance, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %state19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state19, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool21.not = icmp eq i32 %18, 0
  br i1 %tobool21.not, label %if.then22, label %if.end17.if.end38_crit_edge

if.end17.if.end38_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then22:                                        ; preds = %if.end17
  %netdev_registered = getelementptr inbounds %struct.i40e_vsi, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %netdev_registered to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %netdev_registered, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool23.not = icmp eq i8 %20, 0
  br i1 %tobool23.not, label %if.then22.if.end38_crit_edge, label %land.lhs.true

if.then22.if.end38_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

land.lhs.true:                                    ; preds = %if.then22
  %ops = getelementptr inbounds %struct.i40e_client, ptr %15, i32 0, i32 7
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %tobool24.not = icmp eq ptr %22, null
  br i1 %tobool24.not, label %land.lhs.true.if.end38_crit_edge, label %land.lhs.true25

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

land.lhs.true25:                                  ; preds = %land.lhs.true
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %tobool27.not = icmp eq ptr %24, null
  br i1 %tobool27.not, label %land.lhs.true25.if.end38_crit_edge, label %if.then28

land.lhs.true25.if.end38_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then28:                                        ; preds = %land.lhs.true25
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state19) #8
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %lan_info = getelementptr inbounds %struct.i40e_client_instance, ptr %7, i32 0, i32 1
  %call32 = tail call i32 %28(ptr noundef %lan_info, ptr noundef nonnull %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then28.if.end38_crit_edge, label %if.then34

if.then28.if.end38_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then34:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state19) #8
  %29 = ptrtoint ptr %cinst to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cinst, align 4
  tail call void @kfree(ptr noundef %30) #8
  %31 = ptrtoint ptr %cinst to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %cinst, align 4
  br label %cleanup

if.end38:                                         ; preds = %if.then28.if.end38_crit_edge, %land.lhs.true25.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge, %if.then22.if.end38_crit_edge, %if.end17.if.end38_crit_edge
  %state39 = getelementptr inbounds %struct.i40e_vsi, ptr %5, i32 0, i32 5
  %32 = ptrtoint ptr %state39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %state39, align 4
  %and1.i78 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i78)
  %tobool42.not = icmp eq i32 %and1.i78, 0
  %lan_info46 = getelementptr inbounds %struct.i40e_client_instance, ptr %7, i32 0, i32 1
  br i1 %tobool42.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %call45 = tail call i32 @i40e_client_update_vsi_ctxt(ptr noundef %lan_info46, ptr noundef nonnull %15, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0, i32 noundef 2)
  br label %cleanup

if.else:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %call47 = tail call i32 @i40e_client_update_vsi_ctxt(ptr noundef %lan_info46, ptr noundef nonnull %15, i1 noundef zeroext false, i32 noundef 0, i32 noundef 2, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then43, %if.then34, %lor.lhs.false13.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_client_update_vsi_ctxt(ptr nocapture noundef readonly %ldev, ptr nocapture noundef readnone %client, i1 noundef zeroext %is_vf, i32 noundef %vf_id, i32 noundef %flag, i32 noundef %valid_flag) #0 align 64 {
entry:
  %ctxt = alloca %struct.i40e_vsi_context, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pf1 = getelementptr inbounds %struct.i40e_info, ptr %ldev, i32 0, i32 8
  %0 = ptrtoint ptr %pf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf1, align 4
  %vsi2 = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 74
  %2 = ptrtoint ptr %vsi2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vsi2, align 8
  %lan_vsi = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 71
  %4 = ptrtoint ptr %lan_vsi to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %lan_vsi, align 8
  %idxprom = zext i16 %5 to i32
  %arrayidx = getelementptr ptr, ptr %3, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %ctxt) #8
  %8 = call ptr @memset(ptr %ctxt, i32 255, i32 144)
  br i1 %is_vf, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %main_vsi_seid = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 79
  %9 = ptrtoint ptr %main_vsi_seid to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %main_vsi_seid, align 2
  %11 = ptrtoint ptr %ctxt to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %ctxt, align 4
  %hw = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 1
  %pf_id = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 1, i32 17
  %12 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pf_id, align 2
  %pf_num = getelementptr inbounds %struct.i40e_vsi_context, ptr %ctxt, i32 0, i32 6
  %14 = ptrtoint ptr %pf_num to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %pf_num, align 4
  %call = call i32 @i40e_aq_get_vsi_params(ptr noundef %hw, ptr noundef nonnull %ctxt, ptr noundef null) #8
  %flags = getelementptr inbounds %struct.i40e_vsi_context, ptr %ctxt, i32 0, i32 5
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %call7 = call ptr @i40e_stat_str(ptr noundef %hw, i32 noundef %call) #8
  %asq_last_status = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 1, i32 23, i32 14
  %18 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %asq_last_status, align 8
  %call10 = call ptr @i40e_aq_str(ptr noundef %hw, i32 noundef %19) #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.38, ptr noundef %call7, ptr noundef %call10) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %20 = and i32 %flag, 2
  %21 = and i32 %20, %valid_flag
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %.not.not = icmp eq i32 %21, 0
  br i1 %.not.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %info = getelementptr inbounds %struct.i40e_vsi_context, ptr %ctxt, i32 0, i32 9
  %22 = ptrtoint ptr %info to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -32768, ptr %info, align 4
  %queueing_opt_flags = getelementptr inbounds %struct.i40e_vsi_context, ptr %ctxt, i32 0, i32 9, i32 17
  %23 = ptrtoint ptr %queueing_opt_flags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %queueing_opt_flags, align 2
  %25 = or i8 %24, 16
  store i8 %25, ptr %queueing_opt_flags, align 2
  br label %if.then43

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool14.not = icmp eq i32 %20, 0
  %and = and i32 %valid_flag, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp ne i32 %and, 0
  %or.cond87 = and i1 %tobool14.not, %tobool12.not
  br i1 %or.cond87, label %if.then23, label %if.else31

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %info24 = getelementptr inbounds %struct.i40e_vsi_context, ptr %ctxt, i32 0, i32 9
  %26 = ptrtoint ptr %info24 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -32768, ptr %info24, align 4
  %queueing_opt_flags27 = getelementptr inbounds %struct.i40e_vsi_context, ptr %ctxt, i32 0, i32 9, i32 17
  %27 = ptrtoint ptr %queueing_opt_flags27 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %queueing_opt_flags27, align 2
  %29 = and i8 %28, -17
  store i8 %29, ptr %queueing_opt_flags27, align 2
  br label %if.then43

if.else31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %pf_id, align 2
  %conv39 = zext i8 %33 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36, ptr noundef nonnull @.str.41, i32 noundef %conv39, i32 noundef %flag) #11
  br label %cleanup

if.then43:                                        ; preds = %if.then23, %if.then15
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %7, i32 0, i32 57
  %34 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %back, align 8
  %hw44 = getelementptr inbounds %struct.i40e_pf, ptr %35, i32 0, i32 1
  %call45 = call i32 @i40e_aq_update_vsi_params(ptr noundef %hw44, ptr noundef nonnull %ctxt, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then43.cleanup_crit_edge, label %do.end50

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end50:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  %dev52 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %call54 = call ptr @i40e_stat_str(ptr noundef %hw, i32 noundef %call45) #8
  %asq_last_status58 = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 1, i32 23, i32 14
  %38 = ptrtoint ptr %asq_last_status58 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %asq_last_status58, align 8
  %call59 = call ptr @i40e_aq_str(ptr noundef %hw, i32 noundef %39) #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev52, ptr noundef nonnull @.str.44, ptr noundef %call54, ptr noundef %call59) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %if.then43.cleanup_crit_edge, %if.else31, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %call45, %do.end50 ], [ 0, %if.then43.cleanup_crit_edge ], [ 0, %if.else31 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %ctxt) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_lan_add_device(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @i40e_device_mutex, i32 noundef 0) #8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %ldev.0.in = phi ptr [ @i40e_devices, %entry ], [ %ldev.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %ldev.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %ldev.0 = load ptr, ptr %ldev.0.in, align 4
  %cmp.not = icmp eq ptr %ldev.0, @i40e_devices
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %pf1 = getelementptr inbounds %struct.i40e_device, ptr %ldev.0, i32 0, i32 1
  %1 = ptrtoint ptr %pf1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pf1, align 4
  %cmp2 = icmp eq ptr %2, %pf
  br i1 %cmp2, label %for.body.out_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.end.out_crit_edge, label %if.end8

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end8:                                          ; preds = %for.end
  %pf9 = getelementptr inbounds %struct.i40e_device, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %pf9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pf, ptr %pf9, align 8
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %7 = load ptr, ptr @i40e_devices, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @i40e_devices, ptr noundef %7) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.list_add.exit_crit_edge

if.end8.list_add.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %call7.i.i, align 8
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @i40e_devices, ptr %prev.i, align 4
  store volatile ptr %call7.i.i, ptr @i40e_devices, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end8.list_add.exit_crit_edge
  %11 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %pf_id = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 17
  %13 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pf_id, align 2
  %conv = zext i8 %14 to i32
  %bus_id = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 4, i32 6
  %15 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %bus_id, align 2
  %conv13 = zext i16 %16 to i32
  %device = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 4, i32 4
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %device, align 2
  %conv16 = zext i16 %18 to i32
  %func = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 4, i32 3
  %19 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %func, align 4
  %conv19 = zext i16 %20 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %conv13, i32 noundef %conv16, i32 noundef %conv19) #11
  %vsi1.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 74
  %21 = ptrtoint ptr %vsi1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vsi1.i, align 8
  %lan_vsi.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 71
  %23 = ptrtoint ptr %lan_vsi.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %lan_vsi.i, align 8
  %idxprom.i = zext i16 %24 to i32
  %arrayidx.i = getelementptr ptr, ptr %22, i32 %idxprom.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 116) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %list_add.exit.i40e_client_add_instance.exit_crit_edge, label %if.end.i

list_add.exit.i40e_client_add_instance.exit_crit_edge: ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %i40e_client_add_instance.exit

if.end.i:                                         ; preds = %list_add.exit
  %lan_info.i = getelementptr inbounds %struct.i40e_client_instance, ptr %call7.i.i.i, i32 0, i32 1
  %pf2.i = getelementptr inbounds %struct.i40e_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 8
  %28 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %pf, ptr %pf2.i, align 8
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 128
  %netdev4.i = getelementptr inbounds %struct.i40e_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %netdev4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %netdev4.i, align 4
  %32 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pf, align 8
  %pcidev.i = getelementptr inbounds %struct.i40e_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  %34 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %pcidev.i, align 8
  %hw.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1
  %35 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pf_id, align 2
  %fid.i = getelementptr inbounds %struct.i40e_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 6
  %37 = ptrtoint ptr %fid.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %fid.i, align 4
  %ftype.i = getelementptr inbounds %struct.i40e_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 7
  %38 = ptrtoint ptr %ftype.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %ftype.i, align 1
  %39 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw.i, align 8
  %hw_addr10.i = getelementptr inbounds %struct.i40e_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 5
  %41 = ptrtoint ptr %hw_addr10.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %hw_addr10.i, align 8
  %ops.i = getelementptr inbounds %struct.i40e_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 11
  %42 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @i40e_lan_ops, ptr %ops.i, align 4
  %43 = ptrtoint ptr %lan_info.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %lan_info.i, align 8
  %minor.i = getelementptr inbounds %struct.i40e_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %minor.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %minor.i, align 1
  %build.i = getelementptr inbounds %struct.i40e_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 2
  %45 = ptrtoint ptr %build.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %build.i, align 2
  %fw_maj_ver.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 23, i32 7
  %46 = ptrtoint ptr %fw_maj_ver.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %fw_maj_ver.i, align 4
  %fw_maj_ver19.i = getelementptr inbounds %struct.i40e_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 15
  %48 = ptrtoint ptr %fw_maj_ver19.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %fw_maj_ver19.i, align 2
  %fw_min_ver.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 23, i32 8
  %49 = ptrtoint ptr %fw_min_ver.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %fw_min_ver.i, align 2
  %fw_min_ver23.i = getelementptr inbounds %struct.i40e_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 16
  %51 = ptrtoint ptr %fw_min_ver23.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %fw_min_ver23.i, align 4
  %fw_build.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 23, i32 9
  %52 = ptrtoint ptr %fw_build.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fw_build.i, align 8
  %fw_build27.i = getelementptr inbounds %struct.i40e_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 17
  %54 = ptrtoint ptr %fw_build27.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %fw_build27.i, align 8
  %state.i = getelementptr inbounds %struct.i40e_client_instance, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  %params.i = getelementptr inbounds %struct.i40e_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 10
  %call29.i = tail call fastcc i32 @i40e_client_get_params(ptr noundef %26, ptr noundef %params.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end.i.free_cdev.i_crit_edge

if.end.i.free_cdev.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_cdev.i

if.end32.i:                                       ; preds = %if.end.i
  %55 = ptrtoint ptr %netdev4.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %netdev4.i, align 4
  %dev_addrs.i = getelementptr inbounds %struct.net_device, ptr %56, i32 0, i32 67
  %57 = ptrtoint ptr %dev_addrs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev_addrs.i, align 8
  %tobool35.not.i = icmp eq ptr %58, null
  br i1 %tobool35.not.i, label %do.end.i, label %if.then36.i

if.then36.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %lanmac.i = getelementptr inbounds %struct.i40e_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %addr.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %addr.i, align 4
  %61 = ptrtoint ptr %lanmac.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %lanmac.i, align 4
  %add.ptr.i.i = getelementptr %struct.netdev_hw_addr, ptr %58, i32 0, i32 2, i32 4
  %62 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.i40e_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 4
  %64 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %add.ptr1.i.i, align 8
  br label %if.end40.i

do.end.i:                                         ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pf, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.30) #11
  br label %if.end40.i

if.end40.i:                                       ; preds = %do.end.i, %if.then36.i
  %cinst.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 55
  %67 = ptrtoint ptr %cinst.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call7.i.i.i, ptr %cinst.i, align 4
  %num_iwarp_msix.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 14
  %68 = ptrtoint ptr %num_iwarp_msix.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %num_iwarp_msix.i, align 8
  %msix_count.i = getelementptr inbounds %struct.i40e_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 12
  %70 = ptrtoint ptr %msix_count.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %msix_count.i, align 8
  %msix_entries.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 3
  %71 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %msix_entries.i, align 8
  %iwarp_base_vector.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 15
  %73 = ptrtoint ptr %iwarp_base_vector.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %iwarp_base_vector.i, align 4
  %arrayidx42.i = getelementptr %struct.msix_entry, ptr %72, i32 %74
  %msix_entries44.i = getelementptr inbounds %struct.i40e_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 13
  %75 = ptrtoint ptr %msix_entries44.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %arrayidx42.i, ptr %msix_entries44.i, align 4
  %76 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pcidev.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %78 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %78, i32 noundef 3520, i32 noundef 944) #12
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end40.i.free_cdev.i_crit_edge, label %if.end.i.i35

if.end40.i.free_cdev.i_crit_edge:                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_cdev.i

if.end.i.i35:                                     ; preds = %if.end40.i
  %ldev1.i.i = getelementptr inbounds %struct.i40e_auxiliary_device, ptr %call7.i.i.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %ldev1.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %lan_info.i, ptr %ldev1.i.i, align 8
  %name3.i.i = getelementptr inbounds %struct.auxiliary_device, ptr %call7.i.i.i.i, i32 0, i32 1
  %80 = ptrtoint ptr %name3.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @.str.32, ptr %name3.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  %parent.i.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %dev.i.i, ptr %parent.i.i, align 8
  %release.i.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i.i, i32 0, i32 35
  %82 = ptrtoint ptr %release.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @i40e_auxiliary_dev_release, ptr %release.i.i, align 4
  %aux_dev6.i.i = getelementptr inbounds %struct.i40e_client_instance, ptr %call7.i.i.i, i32 0, i32 1, i32 4
  %83 = ptrtoint ptr %aux_dev6.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call7.i.i.i.i, ptr %aux_dev6.i.i, align 4
  %call.i.i.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @i40e_client_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.then8.i.i, label %if.end9.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  br label %free_cdev.i

if.end9.i.i:                                      ; preds = %if.end.i.i35
  %id.i.i = getelementptr inbounds %struct.auxiliary_device, ptr %call7.i.i.i.i, i32 0, i32 2
  %84 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call.i.i.i, ptr %id.i.i, align 4
  %call10.i.i = tail call i32 @auxiliary_device_init(ptr noundef nonnull %call7.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %cmp11.i.i = icmp slt i32 %call10.i.i, 0
  br i1 %cmp11.i.i, label %if.then12.i.i, label %if.end14.i.i

if.then12.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %id.i.i, align 4
  tail call void @ida_free(ptr noundef nonnull @i40e_client_ida, i32 noundef %86) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  br label %free_cdev.i

if.end14.i.i:                                     ; preds = %if.end9.i.i
  %call15.i.i = tail call i32 @__auxiliary_device_add(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end14.i.i.i40e_client_add_instance.exit_crit_edge, label %if.then17.i.i

if.end14.i.i.i40e_client_add_instance.exit_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i40e_client_add_instance.exit

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @put_device(ptr noundef nonnull %call7.i.i.i.i) #8
  br label %free_cdev.i

free_cdev.i:                                      ; preds = %if.then17.i.i, %if.then12.i.i, %if.then8.i.i, %if.end40.i.free_cdev.i_crit_edge, %if.end.i.free_cdev.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  %cinst50.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 55
  %87 = ptrtoint ptr %cinst50.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %cinst50.i, align 4
  br label %i40e_client_add_instance.exit

i40e_client_add_instance.exit:                    ; preds = %free_cdev.i, %if.end14.i.i.i40e_client_add_instance.exit_crit_edge, %list_add.exit.i40e_client_add_instance.exit_crit_edge
  %state = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 30, ptr noundef %state) #8
  tail call void @i40e_service_event_schedule(ptr noundef %pf) #8
  br label %out

out:                                              ; preds = %i40e_client_add_instance.exit, %for.end.out_crit_edge, %for.body.out_crit_edge
  %ret.0 = phi i32 [ 0, %i40e_client_add_instance.exit ], [ -12, %for.end.out_crit_edge ], [ -17, %for.body.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @i40e_device_mutex) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @i40e_service_event_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_lan_del_device(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cinst = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 55
  %0 = ptrtoint ptr %cinst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cinst, align 4
  %aux_dev1 = getelementptr inbounds %struct.i40e_client_instance, ptr %1, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %aux_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aux_dev1, align 4
  tail call void @device_del(ptr noundef %3) #8
  tail call void @put_device(ptr noundef %3) #8
  %4 = ptrtoint ptr %cinst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cinst, align 4
  tail call void @kfree(ptr noundef %5) #8
  %6 = ptrtoint ptr %cinst to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %cinst, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @i40e_device_mutex, i32 noundef 0) #8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %ldev.0.in = phi ptr [ @i40e_devices, %entry ], [ %ldev.0, %for.body.for.cond_crit_edge ]
  %7 = ptrtoint ptr %ldev.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %ldev.0 = load ptr, ptr %ldev.0.in, align 4
  %cmp.not = icmp eq ptr %ldev.0, @i40e_devices
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %pf7 = getelementptr inbounds %struct.i40e_device, ptr %ldev.0, i32 0, i32 1
  %8 = ptrtoint ptr %pf7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pf7, align 4
  %cmp8 = icmp eq ptr %9, %pf
  br i1 %cmp8, label %do.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

do.end:                                           ; preds = %for.body
  %10 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %pf_id = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 17
  %12 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pf_id, align 2
  %conv = zext i8 %13 to i32
  %bus_id = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 4, i32 6
  %14 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %bus_id, align 2
  %conv10 = zext i16 %15 to i32
  %device = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 4, i32 4
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %device, align 2
  %conv13 = zext i16 %17 to i32
  %func = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 4, i32 3
  %18 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %func, align 4
  %conv16 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %conv, i32 noundef %conv10, i32 noundef %conv13, i32 noundef %conv16) #11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ldev.0) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ldev.0, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %ldev.0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ldev.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %26 = ptrtoint ptr %ldev.0 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %ldev.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ldev.0, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %ldev.0) #8
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  %ret.0 = phi i32 [ 0, %list_del.exit ], [ -19, %for.cond.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @i40e_device_mutex) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_client_device_register(ptr nocapture noundef readonly %ldev, ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pf1 = getelementptr inbounds %struct.i40e_info, ptr %ldev, i32 0, i32 8
  %0 = ptrtoint ptr %pf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf1, align 4
  %cinst = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %cinst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cinst, align 4
  %client2 = getelementptr inbounds %struct.i40e_client_instance, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %client2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %client, ptr %client2, align 4
  %state = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 30, ptr noundef %state) #8
  tail call void @i40e_service_event_schedule(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_client_device_unregister(ptr nocapture noundef readonly %ldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pf1 = getelementptr inbounds %struct.i40e_info, ptr %ldev, i32 0, i32 8
  %0 = ptrtoint ptr %pf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf1, align 4
  %cinst = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %cinst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cinst, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %state = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 2
  %call25 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool2.not26 = icmp eq i32 %call25, 0
  br i1 %tobool2.not26, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #8
  %call = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state) #8
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %state3 = getelementptr inbounds %struct.i40e_client_instance, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state3, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %while.end.if.end10_crit_edge, label %if.then6

while.end.if.end10_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then6:                                         ; preds = %while.end
  %client = getelementptr inbounds %struct.i40e_client_instance, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client, align 4
  %ops = getelementptr inbounds %struct.i40e_client, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %close = getelementptr inbounds %struct.i40e_client_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %close, align 4
  %lan_info = getelementptr inbounds %struct.i40e_client_instance, ptr %3, i32 0, i32 1
  tail call void %12(ptr noundef %lan_info, ptr noundef %8, i1 noundef zeroext false) #8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state3) #8
  %qvlist_info1.i = getelementptr inbounds %struct.i40e_client_instance, ptr %3, i32 0, i32 1, i32 9
  %13 = ptrtoint ptr %qvlist_info1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %qvlist_info1.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then6.if.end10_crit_edge, label %for.cond.preheader.i

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

for.cond.preheader.i:                             ; preds = %if.then6
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp24.not.i = icmp eq i32 %16, 0
  br i1 %cmp24.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %pf3.i = getelementptr inbounds %struct.i40e_client_instance, ptr %3, i32 0, i32 1, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.i40e_qvlist_info, ptr %14, i32 0, i32 1, i32 %i.025.i
  %tobool5.not.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool5.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end7.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end7.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %pf3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pf3.i, align 4
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %sub.i = shl i32 %20, 2
  %add.i = add i32 %sub.i, 217084
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %hw.i = getelementptr inbounds %struct.i40e_pf, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw.i, align 8
  %add.ptr.i = getelementptr i8, ptr %22, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -16318464) #8, !srcloc !113
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end7.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw i32 %i.025.i, 1
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %14, align 4
  %cmp.i = icmp ult i32 %inc.i, %24
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %25 = ptrtoint ptr %qvlist_info1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %qvlist_info1.i, align 4
  tail call void @kfree(ptr noundef %26) #8
  %27 = ptrtoint ptr %qvlist_info1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %qvlist_info1.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %for.end.i, %if.then6.if.end10_crit_edge, %while.end.if.end10_crit_edge
  %28 = ptrtoint ptr %cinst to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cinst, align 4
  %client12 = getelementptr inbounds %struct.i40e_client_instance, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %client12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %client12, align 4
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %state) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_client_setup_qvlist(ptr nocapture noundef %ldev, ptr nocapture noundef readnone %client, ptr noundef readonly %qvlist_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pf1 = getelementptr inbounds %struct.i40e_info, ptr %ldev, i32 0, i32 8
  %0 = ptrtoint ptr %pf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf1, align 4
  %hw2 = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %qvlist_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qvlist_info, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 12) #8
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %6, i32 4) #8
  %retval.0.i = select i1 %5, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #13
  %qvlist_info4 = getelementptr inbounds %struct.i40e_info, ptr %ldev, i32 0, i32 9
  %7 = ptrtoint ptr %qvlist_info4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i.i, ptr %qvlist_info4, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %qvlist_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qvlist_info, align 4
  %10 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp114.not = icmp eq i32 %9, 0
  br i1 %cmp114.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %iwarp_base_vector = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 15
  %num_iwarp_msix = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0115 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i40e_qvlist_info, ptr %qvlist_info, i32 0, i32 1, i32 %i.0115
  %tobool11.not = icmp eq ptr %arrayidx, null
  br i1 %tobool11.not, label %for.body.for.inc_crit_edge, label %if.end13

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end13:                                         ; preds = %for.body
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %iwarp_base_vector to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iwarp_base_vector, align 4
  %15 = ptrtoint ptr %num_iwarp_msix to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_iwarp_msix, align 8
  %conv = zext i16 %16 to i32
  %add = add i32 %14, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %add)
  %cmp15.not = icmp uge i32 %12, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp18 = icmp ult i32 %12, %14
  %or.cond = or i1 %cmp18, %cmp15.not
  %17 = ptrtoint ptr %qvlist_info4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %qvlist_info4, align 4
  br i1 %or.cond, label %err, label %if.end21

if.end21:                                         ; preds = %if.end13
  %arrayidx24 = getelementptr %struct.i40e_qvlist_info, ptr %18, i32 0, i32 1, i32 %i.0115
  %19 = call ptr @memcpy(ptr %arrayidx24, ptr %arrayidx, i32 12)
  %sub = shl i32 %12, 2
  %add25 = add i32 %sub, 217084
  %ceq_idx = getelementptr %struct.i40e_qvlist_info, ptr %qvlist_info, i32 0, i32 1, i32 %i.0115, i32 1
  %20 = ptrtoint ptr %ceq_idx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ceq_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %21)
  %cmp27 = icmp eq i16 %21, -1
  br i1 %cmp27, label %do.body, label %if.else

do.body:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw2, align 8
  %add.ptr = getelementptr i8, ptr %23, i32 %add25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -16318464) #8, !srcloc !113
  br label %if.end51

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %24 = and i16 %21, 2047
  %25 = or i16 %24, 4096
  %or = zext i16 %25 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @arm_heavy_mb() #8
  %26 = tail call i32 @llvm.bswap.i32(i32 %or)
  %27 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw2, align 8
  %add.ptr36 = getelementptr i8, ptr %28, i32 %add25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %26) #8, !srcloc !113
  %itr_idx = getelementptr %struct.i40e_qvlist_info, ptr %qvlist_info, i32 0, i32 1, i32 %i.0115, i32 3
  %29 = ptrtoint ptr %itr_idx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %itr_idx, align 4
  %conv38 = zext i8 %30 to i32
  %shl39 = shl nuw nsw i32 %conv38, 11
  %or37 = or i32 %12, %shl39
  %or41 = or i32 %or37, 1207894016
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  %31 = tail call i32 @llvm.bswap.i32(i32 %or41)
  %32 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw2, align 8
  %34 = ptrtoint ptr %ceq_idx to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ceq_idx, align 4
  %conv47 = zext i16 %35 to i32
  %mul48 = shl nuw nsw i32 %conv47, 2
  %add49 = add nuw nsw i32 %mul48, 223232
  %add.ptr50 = getelementptr i8, ptr %33, i32 %add49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %31) #8, !srcloc !113
  br label %if.end51

if.end51:                                         ; preds = %if.else, %do.body
  %aeq_idx = getelementptr %struct.i40e_qvlist_info, ptr %qvlist_info, i32 0, i32 1, i32 %i.0115, i32 2
  %36 = ptrtoint ptr %aeq_idx to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %aeq_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %37)
  %cmp53.not = icmp eq i16 %37, -1
  br i1 %cmp53.not, label %if.end51.for.inc_crit_edge, label %if.then55

if.end51.for.inc_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %itr_idx58 = getelementptr %struct.i40e_qvlist_info, ptr %qvlist_info, i32 0, i32 1, i32 %i.0115, i32 3
  %38 = ptrtoint ptr %itr_idx58 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %itr_idx58, align 4
  %conv59 = zext i8 %39 to i32
  %shl60 = shl nuw nsw i32 %conv59, 11
  %or57 = or i32 %12, %shl60
  %or61 = or i32 %or57, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %40 = tail call i32 @llvm.bswap.i32(i32 %or61)
  %41 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw2, align 8
  %add.ptr66 = getelementptr i8, ptr %42, i32 231168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %40) #8, !srcloc !113
  br label %for.inc

for.inc:                                          ; preds = %if.then55, %if.end51.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0115, 1
  %43 = ptrtoint ptr %qvlist_info to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %qvlist_info, align 4
  %cmp = icmp ult i32 %inc, %44
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %45 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw2, align 8
  %add.ptr69 = getelementptr i8, ptr %46, i32 745772
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  br label %cleanup

err:                                              ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %18) #8
  %48 = ptrtoint ptr %qvlist_info4 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %qvlist_info4, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %err ], [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_client_virtchnl_send(ptr nocapture noundef readonly %ldev, ptr nocapture noundef readnone %client, i32 noundef %vf_id, ptr noundef %msg, i16 noundef zeroext %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pf1 = getelementptr inbounds %struct.i40e_info, ptr %ldev, i32 0, i32 8
  %0 = ptrtoint ptr %pf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf1, align 4
  %hw2 = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 1
  %conv = trunc i32 %vf_id to i16
  %call = tail call i32 @i40e_aq_send_msg_to_vf(ptr noundef %hw2, i16 noundef zeroext %conv, i32 noundef 20, i32 noundef 0, ptr noundef %msg, i16 noundef zeroext %len, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %asq_last_status = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 1, i32 23, i32 14
  %4 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asq_last_status, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %call, i32 noundef %5) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40e_client_request_reset(ptr nocapture noundef readonly %ldev, ptr nocapture noundef readnone %client, i32 noundef %reset_level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pf1 = getelementptr inbounds %struct.i40e_info, ptr %ldev, i32 0, i32 8
  %0 = ptrtoint ptr %pf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf1, align 4
  %2 = zext i32 %reset_level to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reset_level, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 13, ptr noundef %state) #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state3 = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 13, ptr noundef %state3) #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %pf_id = getelementptr inbounds %struct.i40e_pf, ptr %1, i32 0, i32 1, i32 17
  %5 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pf_id, align 2
  %conv = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %conv, i32 noundef %reset_level) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb2, %sw.bb
  tail call void @i40e_service_event_schedule(ptr noundef %1) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_send_msg_to_vf(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40e_auxiliary_dev_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.auxiliary_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void @ida_free(ptr noundef nonnull @i40e_client_ida, i32 noundef %1) #8
  tail call void @kfree(ptr noundef %dev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @auxiliary_device_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__auxiliary_device_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_get_vsi_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i40e_stat_str(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i40e_aq_str(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_update_vsi_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !14, !15, !16, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !55, !57, !59, !60, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 13, i32 1}
!2 = !{ptr @i40e_client_ida, !1, !"i40e_client_ida", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 91, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @i40e_notify_client_of_vf_msg.__UNIQUE_ID_ddebug676, !4, !"__UNIQUE_ID_ddebug676", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 96, i32 3}
!11 = !{ptr @i40e_notify_client_of_vf_msg.__UNIQUE_ID_ddebug677, !10, !"__UNIQUE_ID_ddebug677", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 118, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @i40e_notify_client_of_l2_param_changes.__UNIQUE_ID_ddebug678, !13, !"__UNIQUE_ID_ddebug678", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 123, i32 3}
!18 = !{ptr @i40e_notify_client_of_l2_param_changes.__UNIQUE_ID_ddebug679, !17, !"__UNIQUE_ID_ddebug679", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 176, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @i40e_notify_client_of_netdev_close.__UNIQUE_ID_ddebug680, !20, !"__UNIQUE_ID_ddebug680", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 199, i32 3}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @i40e_notify_client_of_vf_reset.__UNIQUE_ID_ddebug681, !24, !"__UNIQUE_ID_ddebug681", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 204, i32 3}
!29 = !{ptr @i40e_notify_client_of_vf_reset.__UNIQUE_ID_ddebug682, !28, !"__UNIQUE_ID_ddebug682", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 224, i32 3}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @i40e_notify_client_of_vf_enable.__UNIQUE_ID_ddebug683, !31, !"__UNIQUE_ID_ddebug683", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 230, i32 3}
!36 = !{ptr @i40e_notify_client_of_vf_enable.__UNIQUE_ID_ddebug684, !35, !"__UNIQUE_ID_ddebug684", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 252, i32 3}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @i40e_vf_client_capable.__UNIQUE_ID_ddebug685, !38, !"__UNIQUE_ID_ddebug685", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 477, i32 2}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @i40e_lan_add_device._entry, !42, !"_entry", i1 false, i1 false}
!47 = !{ptr @i40e_lan_add_device._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 512, i32 4}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @i40e_lan_del_device._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @i40e_lan_del_device._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @__ksymtab_i40e_client_device_register, !54, !"__ksymtab_i40e_client_device_register", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 731, i32 1}
!55 = !{ptr @__ksymtab_i40e_client_device_unregister, !56, !"__ksymtab_i40e_client_device_unregister", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 753, i32 1}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 63, i32 4}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @i40e_client_get_params._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @i40e_client_get_params._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 12, i32 8}
!65 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @i40e_device_mutex, !64, !"i40e_device_mutex", i1 false, i1 false}
!67 = !{ptr @i40e_devices, !68, !"i40e_devices", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 11, i32 8}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 366, i32 3}
!71 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @i40e_client_add_instance._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @i40e_client_add_instance._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 373, i32 51}
!76 = !{ptr @i40e_lan_ops, !77, !"i40e_lan_ops", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 32, i32 24}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 546, i32 3}
!80 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @i40e_client_virtchnl_send._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @i40e_client_virtchnl_send._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 645, i32 3}
!85 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @i40e_client_request_reset._entry, !84, !"_entry", i1 false, i1 false}
!88 = !{ptr @i40e_client_request_reset._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 685, i32 3}
!91 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @i40e_client_update_vsi_ctxt._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @i40e_client_update_vsi_ctxt._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 705, i32 3}
!96 = !{ptr @i40e_client_update_vsi_ctxt._entry.40, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @i40e_client_update_vsi_ctxt._entry_ptr.42, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/intel/i40e/i40e_client.c", i32 713, i32 4}
!100 = !{ptr @i40e_client_update_vsi_ctxt._entry.43, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @i40e_client_update_vsi_ctxt._entry_ptr.45, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i64 2148429440, i64 2148429445, i64 2148429458, i64 2148429502, i64 2148429536, i64 2148429557}
!112 = !{i64 2160294293}
!113 = !{i64 6631984}
!114 = !{i8 0, i8 2}
!115 = !{i64 2160331907}
!116 = !{i64 2160332554}
!117 = !{i64 2160333256}
!118 = !{i64 2160333892}
!119 = !{i64 6632402}
!120 = !{i64 2160334678}
