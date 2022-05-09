; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_ptp_hw.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_ptp_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ice_time_ref_info_e822 = type { i64, i64, i8 }
%struct.ice_cgu_pll_params_e822 = type { i32, i32, i32, i32 }
%struct.ice_vernier_info_e822 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ice_hw = type { ptr, ptr, ptr, ptr, i32, i64, i32, i16, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, [9 x i16], %struct.list_head, [768 x ptr], i8, i8, %struct.ice_bus_info, %struct.ice_flash_info, %struct.ice_hw_dev_caps, %struct.ice_hw_func_caps, ptr, %struct.ice_ctl_q_info, %struct.ice_ctl_q_info, %struct.ice_ctl_q_info, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ice_fw_log_cfg, i8, i8, i8, %struct.ice_pkg_ver, i32, [32 x i8], i8, %struct.ice_pkg_ver, [32 x i8], %struct.ice_pkg_ver, [28 x i8], ptr, ptr, i32, %struct.mutex, %struct.ice_tunnel_table, %struct.udp_tunnel_nic_shared, %struct.udp_tunnel_nic_info, [5 x %struct.ice_blk_info], [5 x %struct.mutex], [5 x %struct.list_head], i32, %struct.mutex, %struct.list_head, [28 x i16], ptr, [1 x i32], %struct.mutex, %struct.list_head, %struct.ice_mbx_snapshot, [32 x i32], i16 }
%struct.ice_bus_info = type { i16, i8 }
%struct.ice_flash_info = type { %struct.ice_orom_info, %struct.ice_nvm_info, %struct.ice_netlist_info, %struct.ice_bank_info, i16, i32, i8 }
%struct.ice_orom_info = type { i8, i8, i16 }
%struct.ice_nvm_info = type { i32, i8, i8 }
%struct.ice_netlist_info = type { i32, i32, i32, i32, i32, i16 }
%struct.ice_bank_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_hw_dev_caps = type { %struct.ice_hw_common_caps, i32, i32, i32, %struct.ice_ts_dev_info, i32 }
%struct.ice_hw_common_caps = type { i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ice_ts_dev_info = type { i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.ice_hw_func_caps = type { %struct.ice_hw_common_caps, i32, i32, i32, i32, i32, %struct.ice_ts_func_info }
%struct.ice_ts_func_info = type { i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.ice_ctl_q_info = type { i32, %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring, i32, i16, i16, i16, i16, i32, %struct.mutex, %struct.mutex }
%struct.ice_ctl_q_ring = type { ptr, %struct.ice_dma_mem, ptr, %union.anon.1, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_dma_mem = type { ptr, i32, i32 }
%union.anon.1 = type { ptr }
%struct.ice_fw_log_cfg = type { i8, i8, [27 x %struct.ice_fw_log_evnt] }
%struct.ice_fw_log_evnt = type { i8 }
%struct.ice_pkg_ver = type { i8, i8, i8, i8 }
%struct.ice_tunnel_table = type { [16 x %struct.ice_tunnel_entry], i16, [3 x i16] }
%struct.ice_tunnel_entry = type { i32, i16, i16, ptr, i8 }
%struct.udp_tunnel_nic_shared = type { ptr, %struct.list_head }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.ice_blk_info = type { %struct.ice_xlt1, %struct.ice_xlt2, %struct.ice_prof_tcam, %struct.ice_prof_redir, %struct.ice_es, %struct.ice_masks, i8, i8 }
%struct.ice_xlt1 = type { ptr, ptr, ptr, i32, i16 }
%struct.ice_xlt2 = type { ptr, ptr, ptr, i32, i16 }
%struct.ice_prof_tcam = type { i32, i16, i16, ptr, i8 }
%struct.ice_prof_redir = type { ptr, i32, i16 }
%struct.ice_es = type { i32, i16, i16, ptr, ptr, %struct.list_head, ptr, %struct.mutex, ptr, i8 }
%struct.ice_masks = type { %struct.mutex, i16, i16, [32 x %struct.ice_mask] }
%struct.ice_mask = type { i16, i16, i16, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ice_mbx_snapshot = type { %struct.ice_mbx_snap_buffer_data, %struct.ice_mbx_vf_counter }
%struct.ice_mbx_snap_buffer_data = type { i32, i32, i32, i32, i16, i16, i16 }
%struct.ice_mbx_vf_counter = type { ptr, i32 }
%struct.ice_sbq_msg_input = type { i8, i8, i16, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.203, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.16 }
%union.anon.16 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.203 = type { ptr }
%struct.ice_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.218 }
%union.anon.218 = type { %struct.ice_aqc_generic }
%struct.ice_aqc_generic = type { i32, i32, i32, i32 }
%struct.ice_aqc_link_topo_params = type { i8, i8, i8, i8 }
%struct.ice_aqc_get_link_topo = type { %struct.ice_aqc_link_topo_addr, i8, [9 x i8] }
%struct.ice_aqc_link_topo_addr = type { %struct.ice_aqc_link_topo_params, i16 }
%union.tspll_ro_bwm_lf = type { %struct.anon.220 }
%struct.anon.220 = type { i32 }
%union.nac_cgu_dword19 = type { %struct.anon.221 }
%struct.anon.221 = type { i32 }
%union.nac_cgu_dword22 = type { %struct.anon.222 }
%struct.anon.222 = type { i32 }
%union.nac_cgu_dword24 = type { %struct.anon.223 }
%struct.anon.223 = type { i32 }

@e822_time_ref = dso_local constant { [6 x %struct.ice_time_ref_info_e822], [48 x i8] } { [6 x %struct.ice_time_ref_info_e822] [%struct.ice_time_ref_info_e822 { i64 823437500, i64 5215899563, i8 11 }, %struct.ice_time_ref_info_e822 { i64 783360000, i64 5482750327, i8 12 }, %struct.ice_time_ref_info_e822 { i64 796875000, i64 5389762881, i8 12 }, %struct.ice_time_ref_info_e822 { i64 816000000, i64 5263440314, i8 12 }, %struct.ice_time_ref_info_e822 { i64 830078125, i64 5174172366, i8 11 }, %struct.ice_time_ref_info_e822 { i64 783360000, i64 5482750327, i8 12 }], [48 x i8] zeroinitializer }, align 32
@e822_cgu_params = dso_local constant { [6 x %struct.ice_cgu_pll_params_e822], [32 x i8] } { [6 x %struct.ice_cgu_pll_params_e822] [%struct.ice_cgu_pll_params_e822 { i32 1, i32 197, i32 2621440, i32 6 }, %struct.ice_cgu_pll_params_e822 { i32 5, i32 223, i32 524288, i32 7 }, %struct.ice_cgu_pll_params_e822 { i32 5, i32 223, i32 524288, i32 7 }, %struct.ice_cgu_pll_params_e822 { i32 5, i32 159, i32 1572864, i32 6 }, %struct.ice_cgu_pll_params_e822 { i32 5, i32 159, i32 1572864, i32 6 }, %struct.ice_cgu_pll_params_e822 { i32 10, i32 223, i32 524288, i32 7 }], [32 x i8] zeroinitializer }, align 32
@e822_vernier = dso_local constant { [8 x %struct.ice_vernier_info_e822], [64 x i8] } { [8 x %struct.ice_vernier_info_e822] [%struct.ice_vernier_info_e822 { i32 31250000, i32 31250000, i32 125000000, i32 125000000, i32 0, i32 0, i32 0, i32 0, i32 25140, i32 10000000, i32 17372 }, %struct.ice_vernier_info_e822 { i32 257812500, i32 257812500, i32 156250000, i32 156250000, i32 0, i32 0, i32 0, i32 0, i32 6938, i32 82500000, i32 6212 }, %struct.ice_vernier_info_e822 { i32 644531250, i32 644531250, i32 390625000, i32 390625000, i32 0, i32 0, i32 0, i32 0, i32 2778, i32 206250000, i32 2491 }, %struct.ice_vernier_info_e822 { i32 0, i32 0, i32 0, i32 0, i32 161132812, i32 161132812, i32 97656250, i32 97656250, i32 3928, i32 206250000, i32 29535 }, %struct.ice_vernier_info_e822 { i32 257812500, i32 257812500, i32 156250000, i32 156250000, i32 0, i32 156250000, i32 0, i32 156250000, i32 5666, i32 82500000, i32 4244 }, %struct.ice_vernier_info_e822 { i32 644531250, i32 644531250, i32 390625000, i32 390625000, i32 0, i32 195312500, i32 0, i32 195312500, i32 2778, i32 206250000, i32 2868 }, %struct.ice_vernier_info_e822 { i32 0, i32 644531250, i32 0, i32 644531250, i32 322265625, i32 322265625, i32 644531250, i32 644531250, i32 2095, i32 206250000, i32 14524 }, %struct.ice_vernier_info_e822 { i32 0, i32 644531250, i32 0, i32 644531250, i32 644531250, i32 644531250, i32 644531250, i32 644531250, i32 1620, i32 206250000, i32 7775 }], [64 x i8] zeroinitializer }, align 32
@ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ice\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_read_phy_reg_e822\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/intel/ice/ice_ptp_hw.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to send message to PHY, err %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.3, i8 0, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ice_write_phy_reg_e822\00", [41 x i8] zeroinitializer }, align 32
@ice_read_quad_reg_e822.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.3, i8 0, i8 -122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ice_read_quad_reg_e822\00", [41 x i8] zeroinitializer }, align 32
@ice_write_quad_reg_e822.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.3, i8 0, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ice_write_quad_reg_e822\00", [40 x i8] zeroinitializer }, align 32
@ice_ptp_prep_port_adj_e822.__UNIQUE_ID_ddebug636 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 1, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ice_ptp_prep_port_adj_e822\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to write time adjust for port %u, err %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ice_stop_phy_timer_e822.__UNIQUE_ID_ddebug657 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 2, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ice_stop_phy_timer_e822\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Disabled clock on PHY port %u\0A\00", [33 x i8] zeroinitializer }, align 32
@ice_start_phy_timer_e822.__UNIQUE_ID_ddebug658 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 2, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ice_start_phy_timer_e822\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Enabled clock on PHY port %u\0A\00", [34 x i8] zeroinitializer }, align 32
@ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug659 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 2, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ice_phy_exit_bypass_e822\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to read TX_OV_STATUS for port %u, err %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug660 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.15, i8 2, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Tx offset is not yet valid for port %u\0A\00", [56 x i8] zeroinitializer }, align 32
@ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug661 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.16, i8 2, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to read RX_OV_STATUS for port %u, err %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug662 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.17, i8 2, i8 108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Rx offset is not yet valid for port %u\0A\00", [56 x i8] zeroinitializer }, align 32
@ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug663 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.18, i8 2, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed to program total Tx offset for port %u, err %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug664 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.19, i8 2, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed to program total Rx offset for port %u, err %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug665 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.20, i8 2, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to read P_REG_PS for port %u, err %d\0A\00", [51 x i8] zeroinitializer }, align 32
@ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug666 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.21, i8 2, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Port %u not in bypass mode\0A\00", [36 x i8] zeroinitializer }, align 32
@ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug667 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.22, i8 2, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to disable bypass for port %u, err %d\0A\00", [50 x i8] zeroinitializer }, align 32
@ice_phy_exit_bypass_e822._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.13, ptr @.str.2, i32 2519, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Exiting bypass mode on PHY port %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ice_phy_exit_bypass_e822._entry_ptr = internal global ptr @ice_phy_exit_bypass_e822._entry, section ".printk_index", align 4
@ice_ptp_init_phy_e810.__UNIQUE_ID_ddebug674 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 2, i8 -98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_ptp_init_phy_e810\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PTP failed in ena_phy_time_syn %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ice_phy_cfg_lane_e822.__UNIQUE_ID_ddebug647 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 1, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_phy_cfg_lane_e822\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to get PHY link speed, err %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ice_phy_cfg_lane_e822.__UNIQUE_ID_ddebug648 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 1, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read TX_MEM_GLB_CFG, err %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ice_phy_cfg_lane_e822.__UNIQUE_ID_ddebug649 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.31, i8 1, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to write back TX_MEM_GBL_CFG, err %d\0A\00", [51 x i8] zeroinitializer }, align 32
@ice_phy_get_speed_and_fec_e822.__UNIQUE_ID_ddebug646 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 1, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ice_phy_get_speed_and_fec_e822\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read serdes info\0A\00", [36 x i8] zeroinitializer }, align 32
@ice_phy_cfg_uix_e822.__UNIQUE_ID_ddebug650 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 1, i8 118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ice_phy_cfg_uix_e822\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to write UIX66_10G_40G, err %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ice_phy_cfg_uix_e822.__UNIQUE_ID_ddebug651 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.36, i8 1, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to write UIX66_25G_100G, err %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ice_write_64b_phy_reg_e822.__UNIQUE_ID_ddebug621 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ice_write_64b_phy_reg_e822\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid 64b register addr 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@ice_write_64b_phy_reg_e822.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.39, i8 0, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to write to low register 0x%08x\0A, err %d\00", [48 x i8] zeroinitializer }, align 32
@ice_write_64b_phy_reg_e822.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.40, i8 0, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to write to high register 0x%08x\0A, err %d\00", [47 x i8] zeroinitializer }, align 32
@ice_write_40b_phy_reg_e822.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ice_write_40b_phy_reg_e822\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid 40b register addr 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@ice_write_40b_phy_reg_e822.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.39, i8 0, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ice_write_40b_phy_reg_e822.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.40, i8 0, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ice_ptp_one_port_cmd.__UNIQUE_ID_ddebug642 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 1, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ice_ptp_one_port_cmd\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read TX_TMR_CMD, err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ice_ptp_one_port_cmd.__UNIQUE_ID_ddebug643 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.45, i8 1, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to write back TX_TMR_CMD, err %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ice_ptp_one_port_cmd.__UNIQUE_ID_ddebug644 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.46, i8 1, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read RX_TMR_CMD, err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ice_ptp_one_port_cmd.__UNIQUE_ID_ddebug645 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.47, i8 1, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to write back RX_TMR_CMD, err %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ice_sync_phy_timer_e822.__UNIQUE_ID_ddebug656 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 2, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ice_sync_phy_timer_e822\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to acquire PTP semaphore\0A\00", [63 x i8] zeroinitializer }, align 32
@ice_sync_phy_timer_e822._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 2260, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Port %u PHY time synced to PHC: 0x%016llX, 0x%016llX\0A\00", [42 x i8] zeroinitializer }, align 32
@ice_sync_phy_timer_e822._entry_ptr = internal global ptr @ice_sync_phy_timer_e822._entry, section ".printk_index", align 4
@ice_read_phy_and_phc_time_e822._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 2197, ptr @.str.53, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"PHY port %u Tx and Rx timers do not match, tx_time 0x%016llX, rx_time 0x%016llX\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ice_read_phy_and_phc_time_e822\00", [33 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ice_read_phy_and_phc_time_e822._entry_ptr = internal global ptr @ice_read_phy_and_phc_time_e822._entry, section ".printk_index", align 4
@ice_ptp_read_port_capture.__UNIQUE_ID_ddebug638 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 1, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ice_ptp_read_port_capture\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read REG_TX_CAPTURE, err %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ice_ptp_read_port_capture.__UNIQUE_ID_ddebug639 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.56, i8 1, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx_init = 0x%016llx\0A\00", [43 x i8] zeroinitializer }, align 32
@ice_ptp_read_port_capture.__UNIQUE_ID_ddebug640 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.57, i8 1, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read RX_CAPTURE, err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ice_ptp_read_port_capture.__UNIQUE_ID_ddebug641 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.58, i8 1, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_init = 0x%016llx\0A\00", [43 x i8] zeroinitializer }, align 32
@ice_read_64b_phy_reg_e822.__UNIQUE_ID_ddebug614 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.38, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ice_read_64b_phy_reg_e822\00", [38 x i8] zeroinitializer }, align 32
@ice_read_64b_phy_reg_e822.__UNIQUE_ID_ddebug615 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to read from low register 0x%08x\0A, err %d\00", [47 x i8] zeroinitializer }, align 32
@ice_read_64b_phy_reg_e822.__UNIQUE_ID_ddebug616 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.61, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to read from high register 0x%08x\0A, err %d\00", [46 x i8] zeroinitializer }, align 32
@ice_phy_calc_pmd_adj_e822.__UNIQUE_ID_ddebug652 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.63, i8 1, i8 -49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ice_phy_calc_pmd_adj_e822\00", [38 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to read PMD alignment, err %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ice_phy_calc_pmd_adj_e822.__UNIQUE_ID_ddebug653 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.64, i8 1, i8 -34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unknown link speed %d, skipping PMD adjustment\0A\00", [48 x i8] zeroinitializer }, align 32
@ice_phy_calc_pmd_adj_e822.__UNIQUE_ID_ddebug654 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.65, i8 1, i8 -27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to read 25G-RS Rx cycle count, err %d\0A\00", [50 x i8] zeroinitializer }, align 32
@ice_phy_calc_pmd_adj_e822.__UNIQUE_ID_ddebug655 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.66, i8 1, i8 -21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to read 50G-RS Rx cycle count, err %d\0A\00", [50 x i8] zeroinitializer }, align 32
@ice_write_phy_reg_e810.__UNIQUE_ID_ddebug669 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.3, i8 2, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ice_write_phy_reg_e810\00", [41 x i8] zeroinitializer }, align 32
@ice_ptp_prep_phy_time_e810.__UNIQUE_ID_ddebug675 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 2, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ice_ptp_prep_phy_time_e810\00", [37 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to write SHTIME_0, err %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ice_ptp_prep_phy_time_e810.__UNIQUE_ID_ddebug676 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.70, i8 2, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to write SHTIME_L, err %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ice_ptp_prep_phy_time_e822.__UNIQUE_ID_ddebug635 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 1, i8 2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ice_ptp_prep_phy_time_e822\00", [37 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to write init time for port %u, err %d\0A\00", [49 x i8] zeroinitializer }, align 32
@ice_ptp_tmr_cmd.__UNIQUE_ID_ddebug683 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.74, i8 2, i8 -33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ice_ptp_tmr_cmd\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Failed to prepare PHY ports for timer command %u, err %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ice_ptp_port_cmd_e810.__UNIQUE_ID_ddebug681 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 2, i8 -57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_ptp_port_cmd_e810\00", [42 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read GLTSYN_CMD, err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ice_ptp_port_cmd_e810.__UNIQUE_ID_ddebug682 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.77, i8 2, i8 -54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to write back GLTSYN_CMD, err %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ice_read_phy_reg_e810.__UNIQUE_ID_ddebug668 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.2, ptr @.str.3, i8 2, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_read_phy_reg_e810\00", [42 x i8] zeroinitializer }, align 32
@ice_ptp_prep_phy_incval_e810.__UNIQUE_ID_ddebug679 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.80, i8 2, i8 -69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ice_ptp_prep_phy_incval_e810\00", [35 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to write incval to PHY SHADJ_L, err %d\0A\00", [49 x i8] zeroinitializer }, align 32
@ice_ptp_prep_phy_incval_e810.__UNIQUE_ID_ddebug680 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.81, i8 2, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to write incval PHY SHADJ_H, err %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ice_ptp_prep_phy_incval_e822.__UNIQUE_ID_ddebug637 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.83, i8 1, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ice_ptp_prep_phy_incval_e822\00", [35 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to write incval for port %u, err %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ice_ptp_prep_phy_adj_e810.__UNIQUE_ID_ddebug677 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.85, i8 2, i8 -78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ice_ptp_prep_phy_adj_e810\00", [38 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to write adj to PHY SHADJ_L, err %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ice_ptp_prep_phy_adj_e810.__UNIQUE_ID_ddebug678 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.86, i8 2, i8 -76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to write adj to PHY SHADJ_H, err %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ice_read_phy_tstamp_e810.__UNIQUE_ID_ddebug670 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.88, i8 2, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ice_read_phy_tstamp_e810\00", [39 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to read low PTP timestamp register, err %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ice_read_phy_tstamp_e810.__UNIQUE_ID_ddebug671 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.89, i8 2, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to read high PTP timestamp register, err %d\0A\00", [44 x i8] zeroinitializer }, align 32
@ice_read_phy_tstamp_e822.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.88, i8 0, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ice_read_phy_tstamp_e822\00", [39 x i8] zeroinitializer }, align 32
@ice_read_phy_tstamp_e822.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.89, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ice_clear_phy_tstamp_e810.__UNIQUE_ID_ddebug672 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.2, ptr @.str.92, i8 2, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ice_clear_phy_tstamp_e810\00", [38 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to clear low PTP timestamp register, err %d\0A\00", [44 x i8] zeroinitializer }, align 32
@ice_clear_phy_tstamp_e810.__UNIQUE_ID_ddebug673 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.2, ptr @.str.93, i8 2, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Failed to clear high PTP timestamp register, err %d\0A\00", [43 x i8] zeroinitializer }, align 32
@ice_clear_phy_tstamp_e822.__UNIQUE_ID_ddebug628 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.92, i8 0, i8 -96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ice_clear_phy_tstamp_e822\00", [38 x i8] zeroinitializer }, align 32
@ice_clear_phy_tstamp_e822.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.93, i8 0, i8 -94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ice_read_cgu_reg_e822.__UNIQUE_ID_ddebug630 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.96, i8 0, i8 -86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_read_cgu_reg_e822\00", [42 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to read CGU register 0x%04x, err %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ice_write_cgu_reg_e822.__UNIQUE_ID_ddebug631 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.2, ptr @.str.98, i8 0, i8 -78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ice_write_cgu_reg_e822\00", [41 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to write CGU register 0x%04x, err %d\0A\00", [51 x i8] zeroinitializer }, align 32
@ice_cfg_cgu_pll_e822._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 786, ptr @.str.53, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid TIME_REF frequency %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ice_cfg_cgu_pll_e822\00", [43 x i8] zeroinitializer }, align 32
@ice_cfg_cgu_pll_e822._entry_ptr = internal global ptr @ice_cfg_cgu_pll_e822._entry, section ".printk_index", align 4
@ice_cfg_cgu_pll_e822._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.2, i32 792, ptr @.str.53, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid clock source %u\0A\00", [39 x i8] zeroinitializer }, align 32
@ice_cfg_cgu_pll_e822._entry_ptr.103 = internal global ptr @ice_cfg_cgu_pll_e822._entry.101, section ".printk_index", align 4
@ice_cfg_cgu_pll_e822._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.100, ptr @.str.2, i32 799, ptr @.str.53, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TCX0 only supports 25 MHz frequency\0A\00", [59 x i8] zeroinitializer }, align 32
@ice_cfg_cgu_pll_e822._entry_ptr.106 = internal global ptr @ice_cfg_cgu_pll_e822._entry.104, section ".printk_index", align 4
@ice_cfg_cgu_pll_e822.__UNIQUE_ID_ddebug632 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.2, ptr @.str.107, i8 0, i8 -51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Current CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"locked\00", [25 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unlocked\00", [23 x i8] zeroinitializer }, align 32
@ice_cfg_cgu_pll_e822._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.100, ptr @.str.2, i32 889, ptr @.str.53, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CGU PLL failed to lock\0A\00", [40 x i8] zeroinitializer }, align 32
@ice_cfg_cgu_pll_e822._entry_ptr.114 = internal global ptr @ice_cfg_cgu_pll_e822._entry.112, section ".printk_index", align 4
@ice_cfg_cgu_pll_e822.__UNIQUE_ID_ddebug633 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.2, ptr @.str.115, i8 0, i8 -32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"New CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TCX0\00", [27 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TIME_REF\00", [23 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"25 MHz\00", [25 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"122.88 MHz\00", [21 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"125 MHz\00", [24 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"153.6 MHz\00", [22 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"156.25 MHz\00", [21 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"245.76 MHz\00", [21 x i8] zeroinitializer }, align 32
@ice_ptp_set_vernier_wl.__UNIQUE_ID_ddebug634 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.125, ptr @.str.2, ptr @.str.126, i8 0, i8 -17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ice_ptp_set_vernier_wl\00", [41 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Failed to set vernier window length for port %u, err %d\0A\00", [39 x i8] zeroinitializer }, align 32
@switch.table.ice_write_40b_phy_reg_e822 = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 1044, i32 1044, i32 1060, i32 1068, i32 1076, i32 1084, i32 1044, i32 1044, i32 1044, i32 1044, i32 1044, i32 1044, i32 1044, i32 1044, i32 1044, i32 1044, i32 1172, i32 1180, i32 1188, i32 1196], [48 x i8] zeroinitializer }, align 32
@switch.table.ice_phy_get_speed_and_fec_e822 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 2, i32 4, i32 5], [44 x i8] zeroinitializer }, align 32
@switch.table.ice_ptp_port_cmd_e810 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 4], [20 x i8] zeroinitializer }, align 32
@switch.table.ice_cfg_cgu_pll_e822 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.123, ptr @.str.124, ptr @.str.118, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122], [32 x i8] zeroinitializer }, align 32
@switch.table.ice_cfg_cgu_pll_e822.127 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.128 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 16, i64 5522, i64 5523]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 16, i64 5522, i64 5523]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 16, i64 5522, i64 5523]
@__sancov_gen_cov_switch_values.132 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.133 = internal global [14 x i64] [i64 12, i64 16, i64 1088, i64 1100, i64 1120, i64 1132, i64 1152, i64 1160, i64 1204, i64 1220, i64 1228, i64 1240, i64 1256, i64 1264]
@__sancov_gen_cov_switch_values.134 = internal global [14 x i64] [i64 12, i64 16, i64 1088, i64 1100, i64 1120, i64 1132, i64 1152, i64 1160, i64 1204, i64 1220, i64 1228, i64 1240, i64 1256, i64 1264]
@__sancov_gen_cov_switch_values.135 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 6]
@___asan_gen_.137 = private unnamed_addr constant [14 x i8] c"e822_time_ref\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 22, i32 37 }
@___asan_gen_.140 = private unnamed_addr constant [16 x i8] c"e822_cgu_params\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 84, i32 38 }
@___asan_gen_.143 = private unnamed_addr constant [13 x i8] c"e822_vernier\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [51 x i8] c"../drivers/net/ethernet/intel/ice/ice_ptp_consts.h\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 171, i32 36 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 306, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 384, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 535, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 570, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1089, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2316, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2434, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2460, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2466, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2473, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2479, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2486, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2493, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2501, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2507, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2513, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2518, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2680, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1403, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1412, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1424, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1335, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1496, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1507, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 461, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 471, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 478, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 413, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1243, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1254, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1263, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1274, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2221, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2257, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2194, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1179, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1184, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1190, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1195, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 339, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 346, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 353, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1853, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1912, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1942, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1964, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2581, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2721, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2728, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1034, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2940, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2846, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2856, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2550, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2797, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2804, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1154, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2761, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2768, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2610, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2617, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 601, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2649, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 2656, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 642, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 679, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 712, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 785, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 791, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 798, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 816, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 889, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 894, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 756, i32 10 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 758, i32 10 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 760, i32 10 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 730, i32 10 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 732, i32 10 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 734, i32 10 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 736, i32 10 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 738, i32 10 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 740, i32 10 }
@___asan_gen_.527 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.528 = private constant [47 x i8] c"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 956, i32 4 }
@___asan_gen_.530 = private unnamed_addr constant [40 x i8] c"switch.table.ice_write_40b_phy_reg_e822\00", align 1
@___asan_gen_.531 = private unnamed_addr constant [44 x i8] c"switch.table.ice_phy_get_speed_and_fec_e822\00", align 1
@___asan_gen_.532 = private unnamed_addr constant [35 x i8] c"switch.table.ice_ptp_port_cmd_e810\00", align 1
@___asan_gen_.533 = private unnamed_addr constant [34 x i8] c"switch.table.ice_cfg_cgu_pll_e822\00", align 1
@___asan_gen_.534 = private unnamed_addr constant [38 x i8] c"switch.table.ice_cfg_cgu_pll_e822.127\00", align 1
@llvm.compiler.used = appending global [143 x ptr] [ptr @ice_cfg_cgu_pll_e822._entry, ptr @ice_cfg_cgu_pll_e822._entry.101, ptr @ice_cfg_cgu_pll_e822._entry.104, ptr @ice_cfg_cgu_pll_e822._entry.112, ptr @ice_cfg_cgu_pll_e822._entry_ptr, ptr @ice_cfg_cgu_pll_e822._entry_ptr.103, ptr @ice_cfg_cgu_pll_e822._entry_ptr.106, ptr @ice_cfg_cgu_pll_e822._entry_ptr.114, ptr @ice_phy_exit_bypass_e822._entry, ptr @ice_phy_exit_bypass_e822._entry_ptr, ptr @ice_read_phy_and_phc_time_e822._entry, ptr @ice_read_phy_and_phc_time_e822._entry_ptr, ptr @ice_sync_phy_timer_e822._entry, ptr @ice_sync_phy_timer_e822._entry_ptr, ptr @e822_time_ref, ptr @e822_cgu_params, ptr @e822_vernier, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @switch.table.ice_write_40b_phy_reg_e822, ptr @switch.table.ice_phy_get_speed_and_fec_e822, ptr @switch.table.ice_ptp_port_cmd_e810, ptr @switch.table.ice_cfg_cgu_pll_e822, ptr @switch.table.ice_cfg_cgu_pll_e822.127], section "llvm.metadata"
@0 = internal global [136 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e822_time_ref to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e822_cgu_params to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e822_vernier to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_phy_exit_bypass_e822._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_sync_phy_timer_e822._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_read_phy_and_phc_time_e822._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_cfg_cgu_pll_e822._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_cfg_cgu_pll_e822._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_cfg_cgu_pll_e822._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_cfg_cgu_pll_e822._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ice_write_40b_phy_reg_e822 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ice_phy_get_speed_and_fec_e822 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ice_ptp_port_cmd_e810 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ice_cfg_cgu_pll_e822 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ice_cfg_cgu_pll_e822.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @ice_get_ptp_src_clock_index(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tmr_index_assoc = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6, i32 3
  %0 = ptrtoint ptr %tmr_index_assoc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tmr_index_assoc, align 2
  ret i8 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_read_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext %offset, ptr nocapture noundef writeonly %val) local_unnamed_addr #1 align 64 {
entry:
  %msg = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %0 = getelementptr inbounds i8, ptr %msg, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %conv.i = zext i8 %port to i32
  %rem.i = and i32 %conv.i, 7
  %2 = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  %conv6.i = zext i16 %offset to i32
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = or i32 %conv6.i, 524288
  %mul.i = shl nuw nsw i32 %rem.i, 13
  %add7.i = add nuw nsw i32 %add.i, %mul.i
  br label %ice_fill_phy_msg_e822.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub.neg.i = mul nsw i32 %rem.i, -8192
  %add14.i = add nuw nsw i32 %conv6.i, 1105920
  %sub16.i = add nsw i32 %add14.i, %sub.neg.i
  br label %ice_fill_phy_msg_e822.exit

ice_fill_phy_msg_e822.exit:                       ; preds = %if.else.i, %if.then.i
  %conv18.sink.in.i = phi i32 [ %add7.i, %if.then.i ], [ %sub16.i, %if.else.i ]
  %shr2556.sink.i = lshr i32 %conv18.sink.in.i, 16
  %conv18.sink.i = trunc i32 %conv18.sink.in.i to i16
  %3 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv18.sink.i, ptr %3, align 2
  %5 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg, i32 0, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr2556.sink.i, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %port)
  %cmp27.i = icmp ult i8 %port, 8
  %div54.mask.i = and i32 %conv.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div54.mask.i)
  %cmp31.i = icmp eq i32 %div54.mask.i, 8
  %..i = select i1 %cmp31.i, i8 3, i8 4
  %.sink.i = select i1 %cmp27.i, i8 2, i8 %..i
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink.i, ptr %msg, align 4
  %opcode = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %opcode, align 1
  %call = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %ice_fill_phy_msg_e822.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_read_phy_reg_e822, %if.then5)) #7
          to label %cleanup [label %if.then5], !srcloc !308

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %call) #7
  br label %cleanup

if.end7:                                          ; preds = %ice_fill_phy_msg_e822.exit
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg, i32 0, i32 4
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data, align 4
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %do.body
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_sbq_rw_reg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_write_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext %offset, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  %msg = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %conv.i = zext i8 %port to i32
  %rem.i = and i32 %conv.i, 7
  %0 = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i = icmp eq i32 %0, 0
  %conv6.i = zext i16 %offset to i32
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = or i32 %conv6.i, 524288
  %mul.i = shl nuw nsw i32 %rem.i, 13
  %add7.i = add nuw nsw i32 %add.i, %mul.i
  br label %ice_fill_phy_msg_e822.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub.neg.i = mul nsw i32 %rem.i, -8192
  %add14.i = add nuw nsw i32 %conv6.i, 1105920
  %sub16.i = add nsw i32 %add14.i, %sub.neg.i
  br label %ice_fill_phy_msg_e822.exit

ice_fill_phy_msg_e822.exit:                       ; preds = %if.else.i, %if.then.i
  %conv18.sink.in.i = phi i32 [ %add7.i, %if.then.i ], [ %sub16.i, %if.else.i ]
  %shr2556.sink.i = lshr i32 %conv18.sink.in.i, 16
  %conv18.sink.i = trunc i32 %conv18.sink.in.i to i16
  %1 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv18.sink.i, ptr %1, align 2
  %3 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg, i32 0, i32 3
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr2556.sink.i, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %port)
  %cmp27.i = icmp ult i8 %port, 8
  %div54.mask.i = and i32 %conv.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div54.mask.i)
  %cmp31.i = icmp eq i32 %div54.mask.i, 8
  %..i = select i1 %cmp31.i, i8 3, i8 4
  %.sink.i = select i1 %cmp27.i, i8 2, i8 %..i
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink.i, ptr %msg, align 4
  %opcode = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %opcode, align 1
  %data = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg, i32 0, i32 4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %val, ptr %data, align 4
  %call = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %ice_fill_phy_msg_e822.exit.cleanup_crit_edge, label %do.body

ice_fill_phy_msg_e822.exit.cleanup_crit_edge:     ; preds = %ice_fill_phy_msg_e822.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %ice_fill_phy_msg_e822.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_write_phy_reg_e822, %if.then5)) #7
          to label %cleanup [label %if.then5], !srcloc !308

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %do.body, %ice_fill_phy_msg_e822.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_read_quad_reg_e822(ptr noundef %hw, i8 noundef zeroext %quad, i16 noundef zeroext %offset, ptr nocapture noundef writeonly %val) local_unnamed_addr #1 align 64 {
entry:
  %msg = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %0 = getelementptr inbounds i8, ptr %msg, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %quad)
  %cmp = icmp ugt i8 %quad, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %msg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %quad)
  %cmp.i = icmp eq i8 %quad, 0
  %conv2.i = zext i16 %offset to i32
  %addr.0.v.i = select i1 %cmp.i, i32 606208, i32 1130496
  %addr.0.i = add nuw nsw i32 %addr.0.v.i, %conv2.i
  %conv5.i = trunc i32 %addr.0.i to i16
  %msg_addr_low.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg, i32 0, i32 2
  %3 = ptrtoint ptr %msg_addr_low.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv5.i, ptr %msg_addr_low.i, align 2
  %shr.i = lshr i32 %addr.0.i, 16
  %msg_addr_high.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg, i32 0, i32 3
  %4 = ptrtoint ptr %msg_addr_high.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr.i, ptr %msg_addr_high.i, align 4
  %opcode = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %opcode, align 1
  %call = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end10, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_quad_reg_e822.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_read_quad_reg_e822, %if.then7)) #7
          to label %cleanup [label %if.then7], !srcloc !308

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_quad_reg_e822.__UNIQUE_ID_ddebug624, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %call) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg, i32 0, i32 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then7, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.then7 ], [ %call, %do.body ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_write_quad_reg_e822(ptr noundef %hw, i8 noundef zeroext %quad, i16 noundef zeroext %offset, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  %msg = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %quad)
  %cmp = icmp ugt i8 %quad, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %msg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %quad)
  %cmp.i = icmp eq i8 %quad, 0
  %conv2.i = zext i16 %offset to i32
  %addr.0.v.i = select i1 %cmp.i, i32 606208, i32 1130496
  %addr.0.i = add nuw nsw i32 %addr.0.v.i, %conv2.i
  %conv5.i = trunc i32 %addr.0.i to i16
  %msg_addr_low.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg, i32 0, i32 2
  %1 = ptrtoint ptr %msg_addr_low.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv5.i, ptr %msg_addr_low.i, align 2
  %shr.i = lshr i32 %addr.0.i, 16
  %msg_addr_high.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg, i32 0, i32 3
  %2 = ptrtoint ptr %msg_addr_high.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shr.i, ptr %msg_addr_high.i, align 4
  %opcode = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %opcode, align 1
  %data = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg, i32 0, i32 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %val, ptr %data, align 4
  %call = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_quad_reg_e822.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_write_quad_reg_e822, %if.then7)) #7
          to label %cleanup [label %if.then7], !srcloc !308

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_quad_reg_e822.__UNIQUE_ID_ddebug625, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.then7 ], [ 0, %if.end.cleanup_crit_edge ], [ %call, %do.body ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_ptp_prep_port_adj_e822(ptr noundef %hw, i8 noundef zeroext %port, i64 noundef %time) local_unnamed_addr #1 align 64 {
entry:
  %msg.i97 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i69 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i41 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %time to i32
  %0 = lshr i64 %time, 32
  %conv2 = trunc i64 %0 to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %conv.i.i = zext i8 %port to i32
  %rem.i.i = and i32 %conv.i.i, 7
  %1 = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 0
  %mul.i.i = shl nuw nsw i32 %rem.i.i, 13
  %add7.i.i = or i32 %mul.i.i, 525388
  %sub.neg.i.i = mul nsw i32 %rem.i.i, -8192
  %sub16.i.i = add nsw i32 %sub.neg.i.i, 1107020
  %conv18.sink.in.i.i = select i1 %cmp.i.i, i32 %add7.i.i, i32 %sub16.i.i
  %shr2556.sink.i.i = lshr i32 %conv18.sink.in.i.i, 16
  %conv18.sink.i.i = trunc i32 %conv18.sink.in.i.i to i16
  %2 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv18.sink.i.i, ptr %2, align 2
  %4 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr2556.sink.i.i, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %port)
  %cmp27.i.i = icmp ult i8 %port, 8
  %div54.mask.i.i = and i32 %conv.i.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div54.mask.i.i)
  %cmp31.i.i = icmp eq i32 %div54.mask.i.i, 8
  %..i.i = select i1 %cmp31.i.i, i8 3, i8 4
  %.sink.i.i = select i1 %cmp27.i.i, i8 2, i8 %..i.i
  %6 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink.i.i, ptr %msg.i, align 4
  %opcode.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 1
  %7 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %opcode.i, align 1
  %data.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 4
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %data.i, align 4
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %do.body.i

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_prep_port_adj_e822, %if.then5.i)) #7
          to label %ice_write_phy_reg_e822.exit [label %if.then5.i], !srcloc !308

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %call.i) #7
  br label %ice_write_phy_reg_e822.exit

ice_write_phy_reg_e822.exit:                      ; preds = %if.then5.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %do.body

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i41) #7
  %add7.i.i46 = or i32 %mul.i.i, 525392
  %sub16.i.i49 = add nsw i32 %sub.neg.i.i, 1107024
  %conv18.sink.in.i.i51 = select i1 %cmp.i.i, i32 %add7.i.i46, i32 %sub16.i.i49
  %shr2556.sink.i.i52 = lshr i32 %conv18.sink.in.i.i51, 16
  %conv18.sink.i.i53 = trunc i32 %conv18.sink.in.i.i51 to i16
  %11 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i41, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv18.sink.i.i53, ptr %11, align 2
  %13 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i41, i32 0, i32 3
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr2556.sink.i.i52, ptr %13, align 4
  %15 = ptrtoint ptr %msg.i41 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink.i.i, ptr %msg.i41, align 4
  %opcode.i59 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i41, i32 0, i32 1
  %16 = ptrtoint ptr %opcode.i59 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %opcode.i59, align 1
  %data.i60 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i41, i32 0, i32 4
  %17 = ptrtoint ptr %data.i60 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv2, ptr %data.i60, align 4
  %call.i61 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool.not.i62 = icmp eq i32 %call.i61, 0
  br i1 %tobool.not.i62, label %if.end6, label %do.body.i64

do.body.i64:                                      ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_prep_port_adj_e822, %if.then5.i67)) #7
          to label %ice_write_phy_reg_e822.exit68 [label %if.then5.i67], !srcloc !308

if.then5.i67:                                     ; preds = %do.body.i64
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i65 = getelementptr i8, ptr %hw, i32 -2960
  %18 = ptrtoint ptr %add.ptr.i65 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i65, align 8
  %dev.i66 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, ptr noundef %dev.i66, ptr noundef nonnull @.str.3, i32 noundef %call.i61) #7
  br label %ice_write_phy_reg_e822.exit68

ice_write_phy_reg_e822.exit68:                    ; preds = %if.then5.i67, %do.body.i64
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i41) #7
  br label %do.body

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i41) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i69) #7
  %add7.i.i74 = or i32 %mul.i.i, 525420
  %sub16.i.i77 = add nsw i32 %sub.neg.i.i, 1107052
  %conv18.sink.in.i.i79 = select i1 %cmp.i.i, i32 %add7.i.i74, i32 %sub16.i.i77
  %shr2556.sink.i.i80 = lshr i32 %conv18.sink.in.i.i79, 16
  %conv18.sink.i.i81 = trunc i32 %conv18.sink.in.i.i79 to i16
  %20 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i69, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv18.sink.i.i81, ptr %20, align 2
  %22 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i69, i32 0, i32 3
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shr2556.sink.i.i80, ptr %22, align 4
  %24 = ptrtoint ptr %msg.i69 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink.i.i, ptr %msg.i69, align 4
  %opcode.i87 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i69, i32 0, i32 1
  %25 = ptrtoint ptr %opcode.i87 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %opcode.i87, align 1
  %data.i88 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i69, i32 0, i32 4
  %26 = ptrtoint ptr %data.i88 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv, ptr %data.i88, align 4
  %call.i89 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i69) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool.not.i90 = icmp eq i32 %call.i89, 0
  br i1 %tobool.not.i90, label %if.end10, label %do.body.i92

do.body.i92:                                      ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_prep_port_adj_e822, %if.then5.i95)) #7
          to label %ice_write_phy_reg_e822.exit96 [label %if.then5.i95], !srcloc !308

if.then5.i95:                                     ; preds = %do.body.i92
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i93 = getelementptr i8, ptr %hw, i32 -2960
  %27 = ptrtoint ptr %add.ptr.i93 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i93, align 8
  %dev.i94 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, ptr noundef %dev.i94, ptr noundef nonnull @.str.3, i32 noundef %call.i89) #7
  br label %ice_write_phy_reg_e822.exit96

ice_write_phy_reg_e822.exit96:                    ; preds = %if.then5.i95, %do.body.i92
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i69) #7
  br label %do.body

if.end10:                                         ; preds = %if.end6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i69) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i97) #7
  %add7.i.i102 = or i32 %mul.i.i, 525424
  %sub16.i.i105 = add nsw i32 %sub.neg.i.i, 1107056
  %conv18.sink.in.i.i107 = select i1 %cmp.i.i, i32 %add7.i.i102, i32 %sub16.i.i105
  %shr2556.sink.i.i108 = lshr i32 %conv18.sink.in.i.i107, 16
  %conv18.sink.i.i109 = trunc i32 %conv18.sink.in.i.i107 to i16
  %29 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i97, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv18.sink.i.i109, ptr %29, align 2
  %31 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i97, i32 0, i32 3
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shr2556.sink.i.i108, ptr %31, align 4
  %33 = ptrtoint ptr %msg.i97 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %.sink.i.i, ptr %msg.i97, align 4
  %opcode.i115 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i97, i32 0, i32 1
  %34 = ptrtoint ptr %opcode.i115 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %opcode.i115, align 1
  %data.i116 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i97, i32 0, i32 4
  %35 = ptrtoint ptr %data.i116 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv2, ptr %data.i116, align 4
  %call.i117 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i97) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %tobool.not.i118 = icmp eq i32 %call.i117, 0
  br i1 %tobool.not.i118, label %ice_write_phy_reg_e822.exit124.thread, label %do.body.i120

ice_write_phy_reg_e822.exit124.thread:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i97) #7
  br label %cleanup

do.body.i120:                                     ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_prep_port_adj_e822, %if.then5.i123)) #7
          to label %ice_write_phy_reg_e822.exit124 [label %if.then5.i123], !srcloc !308

if.then5.i123:                                    ; preds = %do.body.i120
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i121 = getelementptr i8, ptr %hw, i32 -2960
  %36 = ptrtoint ptr %add.ptr.i121 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i121, align 8
  %dev.i122 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, ptr noundef %dev.i122, ptr noundef nonnull @.str.3, i32 noundef %call.i117) #7
  br label %ice_write_phy_reg_e822.exit124

ice_write_phy_reg_e822.exit124:                   ; preds = %if.then5.i123, %do.body.i120
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i97) #7
  br label %do.body

do.body:                                          ; preds = %ice_write_phy_reg_e822.exit124, %ice_write_phy_reg_e822.exit96, %ice_write_phy_reg_e822.exit68, %ice_write_phy_reg_e822.exit
  %err.0 = phi i32 [ %call.i, %ice_write_phy_reg_e822.exit ], [ %call.i61, %ice_write_phy_reg_e822.exit68 ], [ %call.i89, %ice_write_phy_reg_e822.exit96 ], [ %call.i117, %ice_write_phy_reg_e822.exit124 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_prep_port_adj_e822.__UNIQUE_ID_ddebug636, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_prep_port_adj_e822, %if.then19)) #7
          to label %cleanup [label %if.then19], !srcloc !308

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_prep_port_adj_e822.__UNIQUE_ID_ddebug636, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv.i.i, i32 noundef %err.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %do.body, %ice_write_phy_reg_e822.exit124.thread
  %retval.0 = phi i32 [ %err.0, %if.then19 ], [ 0, %ice_write_phy_reg_e822.exit124.thread ], [ %err.0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_stop_phy_timer_e822(ptr noundef %hw, i8 noundef zeroext %port, i1 noundef zeroext %soft_reset) local_unnamed_addr #1 align 64 {
entry:
  %msg.i140 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i112 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i85 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i57 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %conv.i.i = zext i8 %port to i32
  %rem.i.i = and i32 %conv.i.i, 7
  %0 = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i.i = icmp eq i32 %0, 0
  %mul.i.i = shl nuw nsw i32 %rem.i.i, 13
  %add7.i.i = or i32 %mul.i.i, 525404
  %sub.neg.i.i = mul nsw i32 %rem.i.i, -8192
  %sub16.i.i = add nsw i32 %sub.neg.i.i, 1107036
  %conv18.sink.in.i.i = select i1 %cmp.i.i, i32 %add7.i.i, i32 %sub16.i.i
  %shr2556.sink.i.i = lshr i32 %conv18.sink.in.i.i, 16
  %conv18.sink.i.i = trunc i32 %conv18.sink.in.i.i to i16
  %1 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv18.sink.i.i, ptr %1, align 2
  %3 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 3
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr2556.sink.i.i, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %port)
  %cmp27.i.i = icmp ult i8 %port, 8
  %div54.mask.i.i = and i32 %conv.i.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div54.mask.i.i)
  %cmp31.i.i = icmp eq i32 %div54.mask.i.i, 8
  %..i.i = select i1 %cmp31.i.i, i8 3, i8 4
  %.sink.i.i = select i1 %cmp27.i.i, i8 2, i8 %..i.i
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink.i.i, ptr %msg.i, align 4
  %opcode.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 1
  %6 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %opcode.i, align 1
  %data.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 4
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %data.i, align 4
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %do.body.i

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_stop_phy_timer_e822, %if.then5.i)) #7
          to label %ice_write_phy_reg_e822.exit [label %if.then5.i], !srcloc !308

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %call.i) #7
  br label %ice_write_phy_reg_e822.exit

ice_write_phy_reg_e822.exit:                      ; preds = %if.then5.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i57) #7
  %add7.i.i62 = or i32 %mul.i.i, 525436
  %sub16.i.i65 = add nsw i32 %sub.neg.i.i, 1107068
  %conv18.sink.in.i.i67 = select i1 %cmp.i.i, i32 %add7.i.i62, i32 %sub16.i.i65
  %shr2556.sink.i.i68 = lshr i32 %conv18.sink.in.i.i67, 16
  %conv18.sink.i.i69 = trunc i32 %conv18.sink.in.i.i67 to i16
  %10 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i57, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv18.sink.i.i69, ptr %10, align 2
  %12 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i57, i32 0, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr2556.sink.i.i68, ptr %12, align 4
  %14 = ptrtoint ptr %msg.i57 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink.i.i, ptr %msg.i57, align 4
  %opcode.i75 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i57, i32 0, i32 1
  %15 = ptrtoint ptr %opcode.i75 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %opcode.i75, align 1
  %data.i76 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i57, i32 0, i32 4
  %16 = ptrtoint ptr %data.i76 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %data.i76, align 4
  %call.i77 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool.not.i78 = icmp eq i32 %call.i77, 0
  br i1 %tobool.not.i78, label %if.end4, label %do.body.i80

do.body.i80:                                      ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_stop_phy_timer_e822, %if.then5.i83)) #7
          to label %ice_write_phy_reg_e822.exit84 [label %if.then5.i83], !srcloc !308

if.then5.i83:                                     ; preds = %do.body.i80
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i81 = getelementptr i8, ptr %hw, i32 -2960
  %17 = ptrtoint ptr %add.ptr.i81 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i81, align 8
  %dev.i82 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, ptr noundef %dev.i82, ptr noundef nonnull @.str.3, i32 noundef %call.i77) #7
  br label %ice_write_phy_reg_e822.exit84

ice_write_phy_reg_e822.exit84:                    ; preds = %if.then5.i83, %do.body.i80
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i57) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i57) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i85) #7
  %19 = getelementptr inbounds i8, ptr %msg.i85, i32 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %19, align 4
  %add7.i.i90 = or i32 %mul.i.i, 525320
  %sub16.i.i93 = add nsw i32 %sub.neg.i.i, 1106952
  %conv18.sink.in.i.i95 = select i1 %cmp.i.i, i32 %add7.i.i90, i32 %sub16.i.i93
  %shr2556.sink.i.i96 = lshr i32 %conv18.sink.in.i.i95, 16
  %conv18.sink.i.i97 = trunc i32 %conv18.sink.in.i.i95 to i16
  %21 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i85, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv18.sink.i.i97, ptr %21, align 2
  %23 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i85, i32 0, i32 3
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr2556.sink.i.i96, ptr %23, align 4
  %25 = ptrtoint ptr %msg.i85 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %.sink.i.i, ptr %msg.i85, align 4
  %opcode.i103 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i85, i32 0, i32 1
  %26 = ptrtoint ptr %opcode.i103 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %opcode.i103, align 1
  %call.i104 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i85) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool.not.i105 = icmp eq i32 %call.i104, 0
  br i1 %tobool.not.i105, label %if.end8, label %do.body.i107

do.body.i107:                                     ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_stop_phy_timer_e822, %if.then5.i110)) #7
          to label %ice_read_phy_reg_e822.exit [label %if.then5.i110], !srcloc !308

if.then5.i110:                                    ; preds = %do.body.i107
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i108 = getelementptr i8, ptr %hw, i32 -2960
  %27 = ptrtoint ptr %add.ptr.i108 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i108, align 8
  %dev.i109 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, ptr noundef %dev.i109, ptr noundef nonnull @.str.3, i32 noundef %call.i104) #7
  br label %ice_read_phy_reg_e822.exit

ice_read_phy_reg_e822.exit:                       ; preds = %if.then5.i110, %do.body.i107
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i85) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %19, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i85) #7
  %and = and i32 %30, -2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i112) #7
  %31 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i112, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv18.sink.i.i97, ptr %31, align 2
  %33 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i112, i32 0, i32 3
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shr2556.sink.i.i96, ptr %33, align 4
  %35 = ptrtoint ptr %msg.i112 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink.i.i, ptr %msg.i112, align 4
  %opcode.i130 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i112, i32 0, i32 1
  %36 = ptrtoint ptr %opcode.i130 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %opcode.i130, align 1
  %data.i131 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i112, i32 0, i32 4
  %37 = ptrtoint ptr %data.i131 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and, ptr %data.i131, align 4
  %call.i132 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool.not.i133 = icmp eq i32 %call.i132, 0
  br i1 %tobool.not.i133, label %if.end12, label %do.body.i135

do.body.i135:                                     ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_stop_phy_timer_e822, %if.then5.i138)) #7
          to label %ice_write_phy_reg_e822.exit139 [label %if.then5.i138], !srcloc !308

if.then5.i138:                                    ; preds = %do.body.i135
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i136 = getelementptr i8, ptr %hw, i32 -2960
  %38 = ptrtoint ptr %add.ptr.i136 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i136, align 8
  %dev.i137 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, ptr noundef %dev.i137, ptr noundef nonnull @.str.3, i32 noundef %call.i132) #7
  br label %ice_write_phy_reg_e822.exit139

ice_write_phy_reg_e822.exit139:                   ; preds = %if.then5.i138, %do.body.i135
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i112) #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i112) #7
  %and13 = and i32 %30, -6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i140) #7
  %40 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i140, i32 0, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv18.sink.i.i97, ptr %40, align 2
  %42 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i140, i32 0, i32 3
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shr2556.sink.i.i96, ptr %42, align 4
  %44 = ptrtoint ptr %msg.i140 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %.sink.i.i, ptr %msg.i140, align 4
  %opcode.i158 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i140, i32 0, i32 1
  %45 = ptrtoint ptr %opcode.i158 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %opcode.i158, align 1
  %data.i159 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i140, i32 0, i32 4
  %46 = ptrtoint ptr %data.i159 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and13, ptr %data.i159, align 4
  %call.i160 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i140) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %tobool.not.i161 = icmp eq i32 %call.i160, 0
  br i1 %tobool.not.i161, label %if.end17, label %do.body.i163

do.body.i163:                                     ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_stop_phy_timer_e822, %if.then5.i166)) #7
          to label %ice_write_phy_reg_e822.exit167 [label %if.then5.i166], !srcloc !308

if.then5.i166:                                    ; preds = %do.body.i163
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i164 = getelementptr i8, ptr %hw, i32 -2960
  %47 = ptrtoint ptr %add.ptr.i164 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i164, align 8
  %dev.i165 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, ptr noundef %dev.i165, ptr noundef nonnull @.str.3, i32 noundef %call.i160) #7
  br label %ice_write_phy_reg_e822.exit167

ice_write_phy_reg_e822.exit167:                   ; preds = %if.then5.i166, %do.body.i163
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i140) #7
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i140) #7
  br i1 %soft_reset, label %if.then19, label %if.end17.do.body_crit_edge

if.end17.do.body_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then19:                                        ; preds = %if.end17
  %or = or i32 %and13, 2048
  %call20 = call i32 @ice_write_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1032, i32 noundef %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.do.body_crit_edge, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19.do.body_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.then19.do.body_crit_edge, %if.end17.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_stop_phy_timer_e822.__UNIQUE_ID_ddebug657, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_stop_phy_timer_e822, %if.then30)) #7
          to label %cleanup [label %if.then30], !srcloc !308

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_stop_phy_timer_e822.__UNIQUE_ID_ddebug657, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %conv.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.body, %if.then19.cleanup_crit_edge, %ice_write_phy_reg_e822.exit167, %ice_write_phy_reg_e822.exit139, %ice_read_phy_reg_e822.exit, %ice_write_phy_reg_e822.exit84, %ice_write_phy_reg_e822.exit
  %retval.0 = phi i32 [ %call.i, %ice_write_phy_reg_e822.exit ], [ %call.i77, %ice_write_phy_reg_e822.exit84 ], [ %call.i104, %ice_read_phy_reg_e822.exit ], [ %call.i132, %ice_write_phy_reg_e822.exit139 ], [ %call.i160, %ice_write_phy_reg_e822.exit167 ], [ %call20, %if.then19.cleanup_crit_edge ], [ 0, %if.then30 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_start_phy_timer_e822(ptr noundef %hw, i8 noundef zeroext %port, i1 noundef zeroext %bypass) local_unnamed_addr #1 align 64 {
entry:
  %link_spd.i = alloca i32, align 4
  %fec_mode.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !309
  %tmr_index_assoc.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6, i32 3
  %1 = ptrtoint ptr %tmr_index_assoc.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tmr_index_assoc.i, align 2
  %call1 = tail call i32 @ice_stop_phy_timer_e822(ptr noundef %hw, i8 noundef zeroext %port, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @ice_phy_cfg_lane_e822(ptr noundef %hw, i8 noundef zeroext %port)
  %call2 = tail call fastcc i32 @ice_phy_cfg_uix_e822(ptr noundef %hw, i8 noundef zeroext %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_spd.i) #7
  %3 = ptrtoint ptr %link_spd.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %link_spd.i, align 4, !annotation !309
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fec_mode.i) #7
  %4 = ptrtoint ptr %fec_mode.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %fec_mode.i, align 4, !annotation !309
  %call.i = call fastcc i32 @ice_phy_get_speed_and_fec_e822(ptr noundef %hw, i8 noundef zeroext %port, ptr noundef nonnull %link_spd.i, ptr noundef nonnull %fec_mode.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end5.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge

if.end5.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_phy_cfg_parpcs_e822.exit.thread

if.end.i:                                         ; preds = %if.end5
  %ts_func_info.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6
  %5 = ptrtoint ptr %ts_func_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ts_func_info.i.i, align 4
  %arrayidx.i.i = getelementptr [6 x %struct.ice_time_ref_info_e822], ptr @e822_time_ref, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx.i.i, align 8
  %9 = ptrtoint ptr %tmr_index_assoc.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tmr_index_assoc.i, align 2
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 8
  %conv.i.i = zext i8 %10 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 2
  %add.i.i = add nuw nsw i32 %mul.i.i, 559384
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %add.i.i
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !310
  %14 = call i32 @llvm.bswap.i32(i32 %13) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !311
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 8
  %add8.i.i = add nuw nsw i32 %mul.i.i, 559392
  %add.ptr9.i.i = getelementptr i8, ptr %16, i32 %add8.i.i
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #7, !srcloc !310
  %18 = lshr i32 %17, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !312
  %conv13.i.i = zext i32 %18 to i64
  %shl.i.i = shl nuw nsw i64 %conv13.i.i, 32
  %conv14.i.i = zext i32 %14 to i64
  %or.i.i = or i64 %shl.i.i, %conv14.i.i
  %mul.i = mul i64 %or.i.i, %8
  %19 = ptrtoint ptr %link_spd.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %link_spd.i, align 4
  %arrayidx.i = getelementptr [8 x %struct.ice_vernier_info_e822], ptr @e822_vernier, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool4.not.i = icmp eq i32 %22, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.else162.i.i.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.else162.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp164.i.i.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !313

if.then168.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i = trunc i64 %mul.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %22
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %if.end9.i

if.else174.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %22, i64 %mul.i) #10, !srcloc !314
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %23, 1
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else174.i.i.i, %if.then168.i.i.i, %if.end.i.if.end9.i_crit_edge
  %phy_tus.0.i = phi i64 [ 0, %if.end.i.if.end9.i_crit_edge ], [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %call10.i = call fastcc i32 @ice_write_40b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1064, i64 noundef %phy_tus.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end9.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge

if.end9.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_phy_cfg_parpcs_e822.exit.thread

if.end13.i:                                       ; preds = %if.end9.i
  %24 = ptrtoint ptr %link_spd.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %link_spd.i, align 4
  %26 = and i32 %25, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %tobool15.not.i = icmp eq i32 %26, 3
  br i1 %tobool15.not.i, label %if.end13.i.if.end21.i_crit_edge, label %if.then16.i

if.end13.i.if.end21.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then16.i:                                      ; preds = %if.end13.i
  %rx_par_clk.i = getelementptr [8 x %struct.ice_vernier_info_e822], ptr @e822_vernier, i32 0, i32 %25, i32 1
  %27 = ptrtoint ptr %rx_par_clk.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_par_clk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp164.i.i259.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i259.i, label %if.then168.i.i264.i, label %if.else174.i.i266.i, !prof !313

if.then168.i.i264.i:                              ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i261.i = trunc i64 %mul.i to i32
  %div172.i.i262.i = udiv i32 %conv169.i.i261.i, %28
  %conv173.i.i263.i = zext i32 %div172.i.i262.i to i64
  br label %if.end21.i

if.else174.i.i266.i:                              ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %28, i64 %mul.i) #10, !srcloc !314
  %asmresult1.i.i.i265.i = extractvalue { i64, i64 } %29, 1
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else174.i.i266.i, %if.then168.i.i264.i, %if.end13.i.if.end21.i_crit_edge
  %phy_tus.1.i = phi i64 [ 0, %if.end13.i.if.end21.i_crit_edge ], [ %conv173.i.i263.i, %if.then168.i.i264.i ], [ %asmresult1.i.i.i265.i, %if.else174.i.i266.i ]
  %call22.i = call fastcc i32 @ice_write_40b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1056, i64 noundef %phy_tus.1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end21.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge

if.end21.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_phy_cfg_parpcs_e822.exit.thread

if.end25.i:                                       ; preds = %if.end21.i
  %30 = ptrtoint ptr %link_spd.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %link_spd.i, align 4
  %32 = and i32 %31, 1073741823
  %33 = lshr i32 200, %32
  %34 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool27.not.not.i = icmp eq i32 %34, 0
  br i1 %tobool27.not.not.i, label %if.then28.i, label %if.end25.i.if.end33.i_crit_edge

if.end25.i.if.end33.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.then28.i:                                      ; preds = %if.end25.i
  %tx_pcs_clk.i = getelementptr [8 x %struct.ice_vernier_info_e822], ptr @e822_vernier, i32 0, i32 %31, i32 2
  %35 = ptrtoint ptr %tx_pcs_clk.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_pcs_clk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp164.i.i373.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i373.i, label %if.then168.i.i378.i, label %if.else174.i.i380.i, !prof !313

if.then168.i.i378.i:                              ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i375.i = trunc i64 %mul.i to i32
  %div172.i.i376.i = udiv i32 %conv169.i.i375.i, %36
  %conv173.i.i377.i = zext i32 %div172.i.i376.i to i64
  br label %if.end33.i

if.else174.i.i380.i:                              ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %36, i64 %mul.i) #10, !srcloc !314
  %asmresult1.i.i.i379.i = extractvalue { i64, i64 } %37, 1
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else174.i.i380.i, %if.then168.i.i378.i, %if.end25.i.if.end33.i_crit_edge
  %phy_tus.2.i = phi i64 [ 0, %if.end25.i.if.end33.i_crit_edge ], [ %conv173.i.i377.i, %if.then168.i.i378.i ], [ %asmresult1.i.i.i379.i, %if.else174.i.i380.i ]
  %call34.i = call fastcc i32 @ice_write_40b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1080, i64 noundef %phy_tus.2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.end33.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge

if.end33.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_phy_cfg_parpcs_e822.exit.thread

if.end37.i:                                       ; preds = %if.end33.i
  %38 = ptrtoint ptr %link_spd.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %link_spd.i, align 4
  %40 = and i32 %39, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %tobool39.not.i = icmp eq i32 %40, 3
  br i1 %tobool39.not.i, label %if.end37.i.if.end45.i_crit_edge, label %if.then40.i

if.end37.i.if.end45.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

if.then40.i:                                      ; preds = %if.end37.i
  %rx_pcs_clk.i = getelementptr [8 x %struct.ice_vernier_info_e822], ptr @e822_vernier, i32 0, i32 %39, i32 3
  %41 = ptrtoint ptr %rx_pcs_clk.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_pcs_clk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp164.i.i487.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i487.i, label %if.then168.i.i492.i, label %if.else174.i.i494.i, !prof !313

if.then168.i.i492.i:                              ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i489.i = trunc i64 %mul.i to i32
  %div172.i.i490.i = udiv i32 %conv169.i.i489.i, %42
  %conv173.i.i491.i = zext i32 %div172.i.i490.i to i64
  br label %if.end45.i

if.else174.i.i494.i:                              ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %42, i64 %mul.i) #10, !srcloc !314
  %asmresult1.i.i.i493.i = extractvalue { i64, i64 } %43, 1
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else174.i.i494.i, %if.then168.i.i492.i, %if.end37.i.if.end45.i_crit_edge
  %phy_tus.3.i = phi i64 [ 0, %if.end37.i.if.end45.i_crit_edge ], [ %conv173.i.i491.i, %if.then168.i.i492.i ], [ %asmresult1.i.i.i493.i, %if.else174.i.i494.i ]
  %call46.i = call fastcc i32 @ice_write_40b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1072, i64 noundef %phy_tus.3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %if.end45.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge

if.end45.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_phy_cfg_parpcs_e822.exit.thread

if.end49.i:                                       ; preds = %if.end45.i
  %44 = ptrtoint ptr %link_spd.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %link_spd.i, align 4
  %46 = and i32 %45, 1073741823
  %47 = lshr i32 55, %46
  %48 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool51.not.not.i = icmp eq i32 %48, 0
  br i1 %tobool51.not.not.i, label %if.then52.i, label %if.end49.i.if.end57.i_crit_edge

if.end49.i.if.end57.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i

if.then52.i:                                      ; preds = %if.end49.i
  %tx_desk_rsgb_par.i = getelementptr [8 x %struct.ice_vernier_info_e822], ptr @e822_vernier, i32 0, i32 %45, i32 4
  %49 = ptrtoint ptr %tx_desk_rsgb_par.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_desk_rsgb_par.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp164.i.i601.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i601.i, label %if.then168.i.i606.i, label %if.else174.i.i608.i, !prof !313

if.then168.i.i606.i:                              ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i603.i = trunc i64 %mul.i to i32
  %div172.i.i604.i = udiv i32 %conv169.i.i603.i, %50
  %conv173.i.i605.i = zext i32 %div172.i.i604.i to i64
  br label %if.end57.i

if.else174.i.i608.i:                              ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %50, i64 %mul.i) #10, !srcloc !314
  %asmresult1.i.i.i607.i = extractvalue { i64, i64 } %51, 1
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.else174.i.i608.i, %if.then168.i.i606.i, %if.end49.i.if.end57.i_crit_edge
  %phy_tus.4.i = phi i64 [ 0, %if.end49.i.if.end57.i_crit_edge ], [ %conv173.i.i605.i, %if.then168.i.i606.i ], [ %asmresult1.i.i.i607.i, %if.else174.i.i608.i ]
  %call58.i = call fastcc i32 @ice_write_40b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1176, i64 noundef %phy_tus.4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end61.i, label %if.end57.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge

if.end57.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge: ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_phy_cfg_parpcs_e822.exit.thread

if.end61.i:                                       ; preds = %if.end57.i
  %52 = ptrtoint ptr %link_spd.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %link_spd.i, align 4
  %54 = and i32 %53, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %54)
  %tobool63.not.i = icmp ult i32 %54, 3
  br i1 %tobool63.not.i, label %if.end61.i.if.end69.i_crit_edge, label %if.then64.i

if.end61.i.if.end69.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69.i

if.then64.i:                                      ; preds = %if.end61.i
  %rx_desk_rsgb_par.i = getelementptr [8 x %struct.ice_vernier_info_e822], ptr @e822_vernier, i32 0, i32 %53, i32 5
  %55 = ptrtoint ptr %rx_desk_rsgb_par.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_desk_rsgb_par.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp164.i.i715.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i715.i, label %if.then168.i.i720.i, label %if.else174.i.i722.i, !prof !313

if.then168.i.i720.i:                              ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i717.i = trunc i64 %mul.i to i32
  %div172.i.i718.i = udiv i32 %conv169.i.i717.i, %56
  %conv173.i.i719.i = zext i32 %div172.i.i718.i to i64
  br label %if.end69.i

if.else174.i.i722.i:                              ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %56, i64 %mul.i) #10, !srcloc !314
  %asmresult1.i.i.i721.i = extractvalue { i64, i64 } %57, 1
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.else174.i.i722.i, %if.then168.i.i720.i, %if.end61.i.if.end69.i_crit_edge
  %phy_tus.5.i = phi i64 [ 0, %if.end61.i.if.end69.i_crit_edge ], [ %conv173.i.i719.i, %if.then168.i.i720.i ], [ %asmresult1.i.i.i721.i, %if.else174.i.i722.i ]
  %call70.i = call fastcc i32 @ice_write_40b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1168, i64 noundef %phy_tus.5.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %if.end73.i, label %if.end69.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge

if.end69.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge: ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_phy_cfg_parpcs_e822.exit.thread

if.end73.i:                                       ; preds = %if.end69.i
  %58 = ptrtoint ptr %link_spd.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %link_spd.i, align 4
  %60 = and i32 %59, 1073741823
  %61 = lshr i32 55, %60
  %62 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool75.not.not.i = icmp eq i32 %62, 0
  br i1 %tobool75.not.not.i, label %if.then76.i, label %if.end73.i.if.end81.i_crit_edge

if.end73.i.if.end81.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.i

if.then76.i:                                      ; preds = %if.end73.i
  %tx_desk_rsgb_pcs.i = getelementptr [8 x %struct.ice_vernier_info_e822], ptr @e822_vernier, i32 0, i32 %59, i32 6
  %63 = ptrtoint ptr %tx_desk_rsgb_pcs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_desk_rsgb_pcs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp164.i.i829.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i829.i, label %if.then168.i.i834.i, label %if.else174.i.i836.i, !prof !313

if.then168.i.i834.i:                              ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i831.i = trunc i64 %mul.i to i32
  %div172.i.i832.i = udiv i32 %conv169.i.i831.i, %64
  %conv173.i.i833.i = zext i32 %div172.i.i832.i to i64
  br label %if.end81.i

if.else174.i.i836.i:                              ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %64, i64 %mul.i) #10, !srcloc !314
  %asmresult1.i.i.i835.i = extractvalue { i64, i64 } %65, 1
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.else174.i.i836.i, %if.then168.i.i834.i, %if.end73.i.if.end81.i_crit_edge
  %phy_tus.6.i = phi i64 [ 0, %if.end73.i.if.end81.i_crit_edge ], [ %conv173.i.i833.i, %if.then168.i.i834.i ], [ %asmresult1.i.i.i835.i, %if.else174.i.i836.i ]
  %call82.i = call fastcc i32 @ice_write_40b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1192, i64 noundef %phy_tus.6.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool83.not.i = icmp eq i32 %call82.i, 0
  br i1 %tobool83.not.i, label %if.end85.i, label %if.end81.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge

if.end81.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge: ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_phy_cfg_parpcs_e822.exit.thread

if.end85.i:                                       ; preds = %if.end81.i
  %66 = ptrtoint ptr %link_spd.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %link_spd.i, align 4
  %68 = and i32 %67, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %68)
  %tobool87.not.i = icmp ult i32 %68, 3
  br i1 %tobool87.not.i, label %if.end85.i.ice_phy_cfg_parpcs_e822.exit_crit_edge, label %if.then88.i

if.end85.i.ice_phy_cfg_parpcs_e822.exit_crit_edge: ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_phy_cfg_parpcs_e822.exit

if.then88.i:                                      ; preds = %if.end85.i
  %rx_desk_rsgb_pcs.i = getelementptr [8 x %struct.ice_vernier_info_e822], ptr @e822_vernier, i32 0, i32 %67, i32 7
  %69 = ptrtoint ptr %rx_desk_rsgb_pcs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx_desk_rsgb_pcs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp164.i.i943.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i943.i, label %if.then168.i.i948.i, label %if.else174.i.i950.i, !prof !313

if.then168.i.i948.i:                              ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i945.i = trunc i64 %mul.i to i32
  %div172.i.i946.i = udiv i32 %conv169.i.i945.i, %70
  %conv173.i.i947.i = zext i32 %div172.i.i946.i to i64
  br label %ice_phy_cfg_parpcs_e822.exit

if.else174.i.i950.i:                              ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %70, i64 %mul.i) #10, !srcloc !314
  %asmresult1.i.i.i949.i = extractvalue { i64, i64 } %71, 1
  br label %ice_phy_cfg_parpcs_e822.exit

ice_phy_cfg_parpcs_e822.exit.thread:              ; preds = %if.end81.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge, %if.end69.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge, %if.end57.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge, %if.end45.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge, %if.end33.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge, %if.end21.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge, %if.end9.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge, %if.end5.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge
  %retval.0.i172.ph = phi i32 [ %call82.i, %if.end81.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge ], [ %call70.i, %if.end69.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge ], [ %call58.i, %if.end57.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge ], [ %call46.i, %if.end45.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge ], [ %call34.i, %if.end33.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge ], [ %call22.i, %if.end21.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge ], [ %call10.i, %if.end9.i.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge ], [ %call.i, %if.end5.ice_phy_cfg_parpcs_e822.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fec_mode.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_spd.i) #7
  br label %cleanup

ice_phy_cfg_parpcs_e822.exit:                     ; preds = %if.else174.i.i950.i, %if.then168.i.i948.i, %if.end85.i.ice_phy_cfg_parpcs_e822.exit_crit_edge
  %phy_tus.7.i = phi i64 [ 0, %if.end85.i.ice_phy_cfg_parpcs_e822.exit_crit_edge ], [ %conv173.i.i947.i, %if.then168.i.i948.i ], [ %asmresult1.i.i.i949.i, %if.else174.i.i950.i ]
  %call94.i = call fastcc i32 @ice_write_40b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1184, i64 noundef %phy_tus.7.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fec_mode.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_spd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i)
  %tobool7.not = icmp eq i32 %call94.i, 0
  br i1 %tobool7.not, label %if.end9, label %ice_phy_cfg_parpcs_e822.exit.cleanup_crit_edge

ice_phy_cfg_parpcs_e822.exit.cleanup_crit_edge:   ; preds = %ice_phy_cfg_parpcs_e822.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %ice_phy_cfg_parpcs_e822.exit
  %72 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw, align 8
  %conv = zext i8 %2 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 559384
  %add.ptr = getelementptr i8, ptr %73, i32 %add
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !315
  %75 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw, align 8
  %add17 = add nuw nsw i32 %mul, 559392
  %add.ptr18 = getelementptr i8, ptr %76, i32 %add17
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #7, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !316
  %78 = zext i32 %77 to i64
  %79 = zext i32 %74 to i64
  %80 = shl nuw i64 %79, 32
  %81 = or i64 %80, %78
  %82 = call i64 @llvm.bswap.i64(i64 %81)
  %call24 = call fastcc i32 @ice_write_40b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1040, i64 noundef %82)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end9
  %call28 = call fastcc i32 @ice_ptp_one_port_cmd(ptr noundef %hw, i8 noundef zeroext %port, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  call fastcc void @ice_ptp_exec_tmr_cmd(ptr noundef %hw)
  %call32 = call i32 @ice_read_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1032, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %83 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %val, align 4
  %or36 = or i32 %84, 2048
  %call37 = call i32 @ice_write_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1032, i32 noundef %or36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %or41 = or i32 %84, 2049
  %call42 = call i32 @ice_write_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1032, i32 noundef %or41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  %and = and i32 %or41, -2049
  %call46 = call i32 @ice_write_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1032, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  %call50 = call fastcc i32 @ice_ptp_one_port_cmd(ptr noundef %hw, i8 noundef zeroext %port, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  call fastcc void @ice_ptp_exec_tmr_cmd(ptr noundef %hw)
  %or54 = or i32 %and, 4
  %call55 = call i32 @ice_write_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1032, i32 noundef %or54)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end58:                                         ; preds = %if.end53
  %or59 = or i32 %and, 12
  %call60 = call i32 @ice_write_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1032, i32 noundef %or59)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end63:                                         ; preds = %if.end58
  call fastcc void @ice_ptp_exec_tmr_cmd(ptr noundef %hw)
  %call64 = call fastcc i32 @ice_sync_phy_timer_e822(ptr noundef %hw, i8 noundef zeroext %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end67:                                         ; preds = %if.end63
  br i1 %bypass, label %if.then69, label %if.end67.do.body_crit_edge

if.end67.do.body_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then69:                                        ; preds = %if.end67
  %or70 = or i32 %and, 14
  %85 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or70, ptr %val, align 4
  %call71 = call i32 @ice_write_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1032, i32 noundef %or70)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.then69.cleanup_crit_edge

if.then69.cleanup_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end74:                                         ; preds = %if.then69
  %call75 = call fastcc i32 @ice_phy_cfg_fixed_tx_offset_e822(ptr noundef %hw, i8 noundef zeroext %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end74.cleanup_crit_edge

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end78:                                         ; preds = %if.end74
  %call79 = call fastcc i32 @ice_phy_cfg_fixed_rx_offset_e822(ptr noundef %hw, i8 noundef zeroext %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end78.do.body_crit_edge, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end78.do.body_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.end78.do.body_crit_edge, %if.end67.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_start_phy_timer_e822.__UNIQUE_ID_ddebug658, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_start_phy_timer_e822, %if.then90)) #7
          to label %cleanup [label %if.then90], !srcloc !308

if.then90:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr92 = getelementptr i8, ptr %hw, i32 -2960
  %86 = ptrtoint ptr %add.ptr92 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr92, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %conv93 = zext i8 %port to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_start_phy_timer_e822.__UNIQUE_ID_ddebug658, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %conv93) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then90, %do.body, %if.end78.cleanup_crit_edge, %if.end74.cleanup_crit_edge, %if.then69.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %ice_phy_cfg_parpcs_e822.exit.cleanup_crit_edge, %ice_phy_cfg_parpcs_e822.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call94.i, %ice_phy_cfg_parpcs_e822.exit.cleanup_crit_edge ], [ %call24, %if.end9.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ], [ %call32, %if.end31.cleanup_crit_edge ], [ %call37, %if.end35.cleanup_crit_edge ], [ %call42, %if.end40.cleanup_crit_edge ], [ %call46, %if.end45.cleanup_crit_edge ], [ %call50, %if.end49.cleanup_crit_edge ], [ %call55, %if.end53.cleanup_crit_edge ], [ %call60, %if.end58.cleanup_crit_edge ], [ %call64, %if.end63.cleanup_crit_edge ], [ %call71, %if.then69.cleanup_crit_edge ], [ %call75, %if.end74.cleanup_crit_edge ], [ %call79, %if.end78.cleanup_crit_edge ], [ 0, %if.then90 ], [ %retval.0.i172.ph, %ice_phy_cfg_parpcs_e822.exit.thread ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_phy_cfg_lane_e822(ptr noundef %hw, i8 noundef zeroext %port) unnamed_addr #1 align 64 {
entry:
  %msg.i84 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i = alloca %struct.ice_sbq_msg_input, align 4
  %link_spd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_spd) #7
  %0 = ptrtoint ptr %link_spd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %link_spd, align 4, !annotation !309
  %call = call fastcc i32 @ice_phy_get_speed_and_fec_e822(ptr noundef %hw, i8 noundef zeroext %port, ptr noundef nonnull %link_spd, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_phy_cfg_lane_e822.__UNIQUE_ID_ddebug647, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_cfg_lane_e822, %if.then5)) #7
          to label %cleanup [label %if.then5], !srcloc !308

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_phy_cfg_lane_e822.__UNIQUE_ID_ddebug647, ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %port)
  %cmp.i = icmp ugt i8 %port, 7
  br i1 %cmp.i, label %if.end7.ice_read_quad_reg_e822.exit.thread_crit_edge, label %if.end.i

if.end7.ice_read_quad_reg_e822.exit.thread_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_read_quad_reg_e822.exit.thread

if.end.i:                                         ; preds = %if.end7
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %msg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %port)
  %cmp.i.i = icmp ult i8 %port, 4
  %addr.0.i.i = select i1 %cmp.i.i, i32 9, i32 17
  %msg_addr_low.i.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 2
  %6 = ptrtoint ptr %msg_addr_low.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 19464, ptr %msg_addr_low.i.i, align 2
  %msg_addr_high.i.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 3
  %7 = ptrtoint ptr %msg_addr_high.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %addr.0.i.i, ptr %msg_addr_high.i.i, align 4
  %opcode.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 1
  %8 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %opcode.i, align 1
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end33, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_quad_reg_e822.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_cfg_lane_e822, %if.then7.i)) #7
          to label %ice_read_quad_reg_e822.exit [label %if.then7.i], !srcloc !308

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_quad_reg_e822.__UNIQUE_ID_ddebug624, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %call.i) #7
  br label %ice_read_quad_reg_e822.exit.thread

ice_read_quad_reg_e822.exit.thread:               ; preds = %if.then7.i, %if.end7.ice_read_quad_reg_e822.exit.thread_crit_edge
  %retval.0.i83.ph = phi i32 [ %call.i, %if.then7.i ], [ -22, %if.end7.ice_read_quad_reg_e822.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %do.body12

ice_read_quad_reg_e822.exit:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %do.body12

do.body12:                                        ; preds = %ice_read_quad_reg_e822.exit, %ice_read_quad_reg_e822.exit.thread
  %retval.0.i83108 = phi i32 [ %retval.0.i83.ph, %ice_read_quad_reg_e822.exit.thread ], [ %call.i, %ice_read_quad_reg_e822.exit ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_phy_cfg_lane_e822.__UNIQUE_ID_ddebug648, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_cfg_lane_e822, %if.then24)) #7
          to label %cleanup [label %if.then24], !srcloc !308

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr27 = getelementptr i8, ptr %hw, i32 -2960
  %11 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr27, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_phy_cfg_lane_e822.__UNIQUE_ID_ddebug648, ptr noundef %dev29, ptr noundef nonnull @.str.30, i32 noundef %retval.0.i83108) #7
  br label %cleanup

if.end33:                                         ; preds = %if.end.i
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %15 = ptrtoint ptr %link_spd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %link_spd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp = icmp ult i32 %16, 4
  %and = and i32 %14, -2
  %masksel = zext i1 %cmp to i32
  %storemerge = or i32 %and, %masksel
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i84) #7
  %17 = ptrtoint ptr %msg.i84 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %msg.i84, align 4
  %msg_addr_low.i.i90 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i84, i32 0, i32 2
  %18 = ptrtoint ptr %msg_addr_low.i.i90 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 19464, ptr %msg_addr_low.i.i90, align 2
  %msg_addr_high.i.i92 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i84, i32 0, i32 3
  %19 = ptrtoint ptr %msg_addr_high.i.i92 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %addr.0.i.i, ptr %msg_addr_high.i.i92, align 4
  %opcode.i93 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i84, i32 0, i32 1
  %20 = ptrtoint ptr %opcode.i93 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %opcode.i93, align 1
  %data.i94 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i84, i32 0, i32 4
  %21 = ptrtoint ptr %data.i94 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge, ptr %data.i94, align 4
  %call.i95 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i84) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool.not.i96 = icmp eq i32 %call.i95, 0
  br i1 %tobool.not.i96, label %ice_write_quad_reg_e822.exit.thread, label %do.body.i98

ice_write_quad_reg_e822.exit.thread:              ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i84) #7
  br label %cleanup

do.body.i98:                                      ; preds = %if.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_quad_reg_e822.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_cfg_lane_e822, %if.then7.i101)) #7
          to label %do.body40 [label %if.then7.i101], !srcloc !308

if.then7.i101:                                    ; preds = %do.body.i98
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i99 = getelementptr i8, ptr %hw, i32 -2960
  %22 = ptrtoint ptr %add.ptr.i99 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i99, align 8
  %dev.i100 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_quad_reg_e822.__UNIQUE_ID_ddebug625, ptr noundef %dev.i100, ptr noundef nonnull @.str.3, i32 noundef %call.i95) #7
  br label %do.body40

do.body40:                                        ; preds = %if.then7.i101, %do.body.i98
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i84) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_phy_cfg_lane_e822.__UNIQUE_ID_ddebug649, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_cfg_lane_e822, %if.then52)) #7
          to label %cleanup [label %if.then52], !srcloc !308

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr55 = getelementptr i8, ptr %hw, i32 -2960
  %24 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr55, align 8
  %dev57 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_phy_cfg_lane_e822.__UNIQUE_ID_ddebug649, ptr noundef %dev57, ptr noundef nonnull @.str.31, i32 noundef %call.i95) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %do.body40, %ice_write_quad_reg_e822.exit.thread, %if.then24, %do.body12, %if.then5, %do.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_spd) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_phy_cfg_uix_e822(ptr noundef %hw, i8 noundef zeroext %port) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ts_func_info.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6
  %0 = ptrtoint ptr %ts_func_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ts_func_info.i, align 4
  %arrayidx.i = getelementptr [6 x %struct.ice_time_ref_info_e822], ptr @e822_time_ref, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx.i, align 8
  %tmr_index_assoc.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6, i32 3
  %4 = ptrtoint ptr %tmr_index_assoc.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tmr_index_assoc.i.i, align 2
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %conv.i = zext i8 %5 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 559384
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !310
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !311
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %add8.i = add nuw nsw i32 %mul.i, 559392
  %add.ptr9.i = getelementptr i8, ptr %11, i32 %add8.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #7, !srcloc !310
  %13 = lshr i32 %12, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !312
  %conv13.i = zext i32 %13 to i64
  %shl.i = shl nuw nsw i64 %conv13.i, 32
  %conv14.i = zext i32 %9 to i64
  %or.i = or i64 %shl.i, %conv14.i
  %mul = mul i64 %or.i, %3
  %shr = lshr i64 %mul, 8
  %mul3 = mul i64 %shr, 640
  %14 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -5770238071427257601, i64 %mul3) #10, !srcloc !317
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -5770238071427257601, i64 %mul3, i64 %14, i32 0) #10, !srcloc !318
  %asmresult10.i.i.i = extractvalue { i64, i32 } %15, 0
  %div158.i.i64 = lshr i64 %asmresult10.i.i.i, 28
  %call5 = tail call fastcc i32 @ice_write_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1152, i64 noundef %div158.i.i64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end12, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_phy_cfg_uix_e822.__UNIQUE_ID_ddebug650, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_cfg_uix_e822, %if.then10)) #7
          to label %cleanup [label %if.then10], !srcloc !308

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_phy_cfg_uix_e822.__UNIQUE_ID_ddebug650, ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call5) #7
  br label %cleanup

if.end12:                                         ; preds = %entry
  %mul13 = and i64 %mul, -256
  %18 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -5770238071427257601, i64 %mul13) #10, !srcloc !317
  %19 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -5770238071427257601, i64 %mul13, i64 %18, i32 0) #10, !srcloc !318
  %asmresult10.i.i.i60 = extractvalue { i64, i32 } %19, 0
  %div158.i.i6165 = lshr i64 %asmresult10.i.i.i60, 28
  %call15 = tail call fastcc i32 @ice_write_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1160, i64 noundef %div158.i.i6165)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end12.cleanup_crit_edge, label %do.body18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_phy_cfg_uix_e822.__UNIQUE_ID_ddebug651, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_cfg_uix_e822, %if.then30)) #7
          to label %cleanup [label %if.then30], !srcloc !308

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr33 = getelementptr i8, ptr %hw, i32 -2960
  %20 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr33, align 8
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_phy_cfg_uix_e822.__UNIQUE_ID_ddebug651, ptr noundef %dev35, ptr noundef nonnull @.str.36, i32 noundef %call15) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.body18, %if.end12.cleanup_crit_edge, %if.then10, %do.body
  %retval.0 = phi i32 [ %call5, %if.then10 ], [ %call15, %if.then30 ], [ 0, %if.end12.cleanup_crit_edge ], [ %call5, %do.body ], [ %call15, %do.body18 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_write_40b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext %low_addr, i64 noundef %val) unnamed_addr #1 align 64 {
entry:
  %msg.i85 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i16 %low_addr to i32
  %0 = add nsw i32 %conv.i, -1040
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %1)
  %2 = icmp ult i32 %1, 20
  br i1 %2, label %switch.hole_check, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %switch.hole_check.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_40b_phy_reg_e822.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_write_40b_phy_reg_e822, %if.then4)) #7
          to label %cleanup [label %if.then4], !srcloc !308

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_40b_phy_reg_e822.__UNIQUE_ID_ddebug618, ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %conv.i) #7
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i32 983101, %1
  %5 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %switch.lobit.not = icmp eq i32 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body_crit_edge, label %switch.lookup

switch.hole_check.do.body_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [20 x i32], ptr @switch.table.ice_write_40b_phy_reg_e822, i32 0, i32 %1
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %7 = trunc i64 %val to i32
  %conv7 = and i32 %7, 255
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %conv.i.i = zext i8 %port to i32
  %rem.i.i = and i32 %conv.i.i, 7
  %8 = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.i = icmp eq i32 %8, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i = or i32 %conv.i, 524288
  %mul.i.i = shl nuw nsw i32 %rem.i.i, 13
  %add7.i.i = add nuw nsw i32 %add.i.i, %mul.i.i
  br label %ice_fill_phy_msg_e822.exit.i

if.else.i.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %sub.neg.i.i = mul nsw i32 %rem.i.i, -8192
  %add14.i.i = add nuw nsw i32 %conv.i, 1105920
  %sub16.i.i = add nsw i32 %add14.i.i, %sub.neg.i.i
  br label %ice_fill_phy_msg_e822.exit.i

ice_fill_phy_msg_e822.exit.i:                     ; preds = %if.else.i.i, %if.then.i.i
  %conv18.sink.in.i.i = phi i32 [ %add7.i.i, %if.then.i.i ], [ %sub16.i.i, %if.else.i.i ]
  %shr2556.sink.i.i = lshr i32 %conv18.sink.in.i.i, 16
  %conv18.sink.i.i = trunc i32 %conv18.sink.in.i.i to i16
  %9 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv18.sink.i.i, ptr %9, align 2
  %11 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr2556.sink.i.i, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %port)
  %cmp27.i.i = icmp ult i8 %port, 8
  %div54.mask.i.i = and i32 %conv.i.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div54.mask.i.i)
  %cmp31.i.i = icmp eq i32 %div54.mask.i.i, 8
  %..i.i = select i1 %cmp31.i.i, i8 3, i8 4
  %.sink.i.i = select i1 %cmp27.i.i, i8 2, i8 %..i.i
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink.i.i, ptr %msg.i, align 4
  %opcode.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %opcode.i, align 1
  %data.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 4
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv7, ptr %data.i, align 4
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end34, label %do.body.i

do.body.i:                                        ; preds = %ice_fill_phy_msg_e822.exit.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_write_40b_phy_reg_e822, %if.then5.i)) #7
          to label %do.body12 [label %if.then5.i], !srcloc !308

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %call.i) #7
  br label %do.body12

do.body12:                                        ; preds = %if.then5.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_40b_phy_reg_e822.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_write_40b_phy_reg_e822, %if.then24)) #7
          to label %cleanup [label %if.then24], !srcloc !308

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr27 = getelementptr i8, ptr %hw, i32 -2960
  %18 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr27, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_40b_phy_reg_e822.__UNIQUE_ID_ddebug619, ptr noundef %dev29, ptr noundef nonnull @.str.39, i32 noundef %conv.i, i32 noundef %call.i) #7
  br label %cleanup

if.end34:                                         ; preds = %ice_fill_phy_msg_e822.exit.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %shr = lshr i64 %val, 8
  %conv8 = trunc i64 %shr to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i85) #7
  br i1 %cmp.i.i, label %if.then.i.i93, label %if.else.i.i97

if.then.i.i93:                                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i.i91 = shl nuw nsw i32 %rem.i.i, 13
  %add.i.i90 = or i32 %switch.load, %mul.i.i91
  %add7.i.i92 = or i32 %add.i.i90, 524288
  br label %ice_fill_phy_msg_e822.exit.i110

if.else.i.i97:                                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %sub.neg.i.i94 = mul nsw i32 %rem.i.i, -8192
  %add14.i.i95 = add nsw i32 %sub.neg.i.i94, 1105920
  %sub16.i.i96 = or i32 %add14.i.i95, %switch.load
  br label %ice_fill_phy_msg_e822.exit.i110

ice_fill_phy_msg_e822.exit.i110:                  ; preds = %if.else.i.i97, %if.then.i.i93
  %conv18.sink.in.i.i98 = phi i32 [ %add7.i.i92, %if.then.i.i93 ], [ %sub16.i.i96, %if.else.i.i97 ]
  %shr2556.sink.i.i99 = lshr i32 %conv18.sink.in.i.i98, 16
  %conv18.sink.i.i100 = trunc i32 %conv18.sink.in.i.i98 to i16
  %20 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i85, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv18.sink.i.i100, ptr %20, align 2
  %22 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i85, i32 0, i32 3
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shr2556.sink.i.i99, ptr %22, align 4
  %24 = ptrtoint ptr %msg.i85 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink.i.i, ptr %msg.i85, align 4
  %opcode.i106 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i85, i32 0, i32 1
  %25 = ptrtoint ptr %opcode.i106 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %opcode.i106, align 1
  %data.i107 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i85, i32 0, i32 4
  %26 = ptrtoint ptr %data.i107 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv8, ptr %data.i107, align 4
  %call.i108 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i85) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool.not.i109 = icmp eq i32 %call.i108, 0
  br i1 %tobool.not.i109, label %ice_write_phy_reg_e822.exit115.thread, label %do.body.i111

ice_write_phy_reg_e822.exit115.thread:            ; preds = %ice_fill_phy_msg_e822.exit.i110
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i85) #7
  br label %cleanup

do.body.i111:                                     ; preds = %ice_fill_phy_msg_e822.exit.i110
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_write_40b_phy_reg_e822, %if.then5.i114)) #7
          to label %do.body38 [label %if.then5.i114], !srcloc !308

if.then5.i114:                                    ; preds = %do.body.i111
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i112 = getelementptr i8, ptr %hw, i32 -2960
  %27 = ptrtoint ptr %add.ptr.i112 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i112, align 8
  %dev.i113 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, ptr noundef %dev.i113, ptr noundef nonnull @.str.3, i32 noundef %call.i108) #7
  br label %do.body38

do.body38:                                        ; preds = %if.then5.i114, %do.body.i111
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i85) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_40b_phy_reg_e822.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_write_40b_phy_reg_e822, %if.then50)) #7
          to label %cleanup [label %if.then50], !srcloc !308

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr53 = getelementptr i8, ptr %hw, i32 -2960
  %29 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr53, align 8
  %dev55 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_40b_phy_reg_e822.__UNIQUE_ID_ddebug620, ptr noundef %dev55, ptr noundef nonnull @.str.40, i32 noundef %switch.load, i32 noundef %call.i108) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %do.body38, %ice_write_phy_reg_e822.exit115.thread, %if.then24, %do.body12, %if.then4, %do.body
  %retval.0 = phi i32 [ -22, %if.then4 ], [ %call.i, %if.then24 ], [ %call.i108, %if.then50 ], [ -22, %do.body ], [ %call.i, %do.body12 ], [ 0, %ice_write_phy_reg_e822.exit115.thread ], [ %call.i108, %do.body38 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_ptp_one_port_cmd(ptr noundef %hw, i8 noundef zeroext %port, i32 noundef %cmd) unnamed_addr #1 align 64 {
entry:
  %msg.i191 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i162 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i135 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tmr_index_assoc.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6, i32 3
  %0 = ptrtoint ptr %tmr_index_assoc.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tmr_index_assoc.i, align 2
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 3
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 4, label %sw.bb5
    i32 3, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %shl, 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or2 = or i32 %shl, 2
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or4 = or i32 %shl, 3
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or6 = or i32 %shl, 7
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or8 = or i32 %shl, 5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %cmd_val.0 = phi i32 [ %shl, %entry.sw.epilog_crit_edge ], [ %or8, %sw.bb7 ], [ %or6, %sw.bb5 ], [ %or4, %sw.bb3 ], [ %or2, %sw.bb1 ], [ %or, %sw.bb ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %3, align 4
  %conv.i.i = zext i8 %port to i32
  %rem.i.i = and i32 %conv.i.i, 7
  %5 = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  %mul.i.i = shl nuw nsw i32 %rem.i.i, 13
  %add7.i.i = or i32 %mul.i.i, 525384
  %sub.neg.i.i = mul nsw i32 %rem.i.i, -8192
  %sub16.i.i = add nsw i32 %sub.neg.i.i, 1107016
  %conv18.sink.in.i.i = select i1 %cmp.i.i, i32 %add7.i.i, i32 %sub16.i.i
  %shr2556.sink.i.i = lshr i32 %conv18.sink.in.i.i, 16
  %conv18.sink.i.i = trunc i32 %conv18.sink.in.i.i to i16
  %6 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv18.sink.i.i, ptr %6, align 2
  %8 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr2556.sink.i.i, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %port)
  %cmp27.i.i = icmp ult i8 %port, 8
  %div54.mask.i.i = and i32 %conv.i.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div54.mask.i.i)
  %cmp31.i.i = icmp eq i32 %div54.mask.i.i, 8
  %..i.i = select i1 %cmp31.i.i, i8 3, i8 4
  %.sink.i.i = select i1 %cmp27.i.i, i8 2, i8 %..i.i
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink.i.i, ptr %msg.i, align 4
  %opcode.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %opcode.i, align 1
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end16, label %do.body.i

do.body.i:                                        ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_one_port_cmd, %if.then5.i)) #7
          to label %do.body [label %if.then5.i], !srcloc !308

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %call.i) #7
  br label %do.body

do.body:                                          ; preds = %if.then5.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_one_port_cmd.__UNIQUE_ID_ddebug642, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_one_port_cmd, %if.then14)) #7
          to label %cleanup [label %if.then14], !srcloc !308

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_one_port_cmd.__UNIQUE_ID_ddebug642, ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %call.i) #7
  br label %cleanup

if.end16:                                         ; preds = %sw.epilog
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %and = and i32 %17, -16
  %or17 = or i32 %and, %cmd_val.0
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i135) #7
  %18 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i135, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv18.sink.i.i, ptr %18, align 2
  %20 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i135, i32 0, i32 3
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr2556.sink.i.i, ptr %20, align 4
  %22 = ptrtoint ptr %msg.i135 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.sink.i.i, ptr %msg.i135, align 4
  %opcode.i153 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i135, i32 0, i32 1
  %23 = ptrtoint ptr %opcode.i153 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %opcode.i153, align 1
  %data.i154 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i135, i32 0, i32 4
  %24 = ptrtoint ptr %data.i154 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or17, ptr %data.i154, align 4
  %call.i155 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i135) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %tobool.not.i156 = icmp eq i32 %call.i155, 0
  br i1 %tobool.not.i156, label %if.end42, label %do.body.i158

do.body.i158:                                     ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_one_port_cmd, %if.then5.i161)) #7
          to label %do.body21 [label %if.then5.i161], !srcloc !308

if.then5.i161:                                    ; preds = %do.body.i158
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i159 = getelementptr i8, ptr %hw, i32 -2960
  %25 = ptrtoint ptr %add.ptr.i159 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i159, align 8
  %dev.i160 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, ptr noundef %dev.i160, ptr noundef nonnull @.str.3, i32 noundef %call.i155) #7
  br label %do.body21

do.body21:                                        ; preds = %if.then5.i161, %do.body.i158
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i135) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_one_port_cmd.__UNIQUE_ID_ddebug643, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_one_port_cmd, %if.then33)) #7
          to label %cleanup [label %if.then33], !srcloc !308

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr36 = getelementptr i8, ptr %hw, i32 -2960
  %27 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr36, align 8
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_one_port_cmd.__UNIQUE_ID_ddebug643, ptr noundef %dev38, ptr noundef nonnull @.str.45, i32 noundef %call.i155) #7
  br label %cleanup

if.end42:                                         ; preds = %if.end16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i135) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i162) #7
  %29 = getelementptr inbounds i8, ptr %msg.i162, i32 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %29, align 4
  %add7.i.i167 = or i32 %mul.i.i, 525416
  %sub16.i.i170 = add nsw i32 %sub.neg.i.i, 1107048
  %conv18.sink.in.i.i172 = select i1 %cmp.i.i, i32 %add7.i.i167, i32 %sub16.i.i170
  %shr2556.sink.i.i173 = lshr i32 %conv18.sink.in.i.i172, 16
  %conv18.sink.i.i174 = trunc i32 %conv18.sink.in.i.i172 to i16
  %31 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i162, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv18.sink.i.i174, ptr %31, align 2
  %33 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i162, i32 0, i32 3
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shr2556.sink.i.i173, ptr %33, align 4
  %35 = ptrtoint ptr %msg.i162 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink.i.i, ptr %msg.i162, align 4
  %opcode.i180 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i162, i32 0, i32 1
  %36 = ptrtoint ptr %opcode.i180 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %opcode.i180, align 1
  %call.i181 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i162) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181)
  %tobool.not.i182 = icmp eq i32 %call.i181, 0
  br i1 %tobool.not.i182, label %if.end67, label %do.body.i184

do.body.i184:                                     ; preds = %if.end42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_one_port_cmd, %if.then5.i187)) #7
          to label %do.body46 [label %if.then5.i187], !srcloc !308

if.then5.i187:                                    ; preds = %do.body.i184
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i185 = getelementptr i8, ptr %hw, i32 -2960
  %37 = ptrtoint ptr %add.ptr.i185 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i185, align 8
  %dev.i186 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, ptr noundef %dev.i186, ptr noundef nonnull @.str.3, i32 noundef %call.i181) #7
  br label %do.body46

do.body46:                                        ; preds = %if.then5.i187, %do.body.i184
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i162) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_one_port_cmd.__UNIQUE_ID_ddebug644, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_one_port_cmd, %if.then58)) #7
          to label %cleanup [label %if.then58], !srcloc !308

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr61 = getelementptr i8, ptr %hw, i32 -2960
  %39 = ptrtoint ptr %add.ptr61 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr61, align 8
  %dev63 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_one_port_cmd.__UNIQUE_ID_ddebug644, ptr noundef %dev63, ptr noundef nonnull @.str.46, i32 noundef %call.i181) #7
  br label %cleanup

if.end67:                                         ; preds = %if.end42
  %41 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %29, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i162) #7
  %and68 = and i32 %42, -16
  %or69 = or i32 %and68, %cmd_val.0
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i191) #7
  %43 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i191, i32 0, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv18.sink.i.i174, ptr %43, align 2
  %45 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i191, i32 0, i32 3
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %shr2556.sink.i.i173, ptr %45, align 4
  %47 = ptrtoint ptr %msg.i191 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %.sink.i.i, ptr %msg.i191, align 4
  %opcode.i209 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i191, i32 0, i32 1
  %48 = ptrtoint ptr %opcode.i209 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %opcode.i209, align 1
  %data.i210 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i191, i32 0, i32 4
  %49 = ptrtoint ptr %data.i210 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or69, ptr %data.i210, align 4
  %call.i211 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i191) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211)
  %tobool.not.i212 = icmp eq i32 %call.i211, 0
  br i1 %tobool.not.i212, label %ice_write_phy_reg_e822.exit218.thread, label %do.body.i214

ice_write_phy_reg_e822.exit218.thread:            ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i191) #7
  br label %cleanup

do.body.i214:                                     ; preds = %if.end67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_one_port_cmd, %if.then5.i217)) #7
          to label %do.body73 [label %if.then5.i217], !srcloc !308

if.then5.i217:                                    ; preds = %do.body.i214
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i215 = getelementptr i8, ptr %hw, i32 -2960
  %50 = ptrtoint ptr %add.ptr.i215 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i215, align 8
  %dev.i216 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, ptr noundef %dev.i216, ptr noundef nonnull @.str.3, i32 noundef %call.i211) #7
  br label %do.body73

do.body73:                                        ; preds = %if.then5.i217, %do.body.i214
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i191) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_one_port_cmd.__UNIQUE_ID_ddebug645, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_one_port_cmd, %if.then85)) #7
          to label %cleanup [label %if.then85], !srcloc !308

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr88 = getelementptr i8, ptr %hw, i32 -2960
  %52 = ptrtoint ptr %add.ptr88 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr88, align 8
  %dev90 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_one_port_cmd.__UNIQUE_ID_ddebug645, ptr noundef %dev90, ptr noundef nonnull @.str.47, i32 noundef %call.i211) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %do.body73, %ice_write_phy_reg_e822.exit218.thread, %if.then58, %do.body46, %if.then33, %do.body21, %if.then14, %do.body
  %retval.0 = phi i32 [ %call.i, %if.then14 ], [ %call.i155, %if.then33 ], [ %call.i181, %if.then58 ], [ %call.i211, %if.then85 ], [ %call.i, %do.body ], [ %call.i155, %do.body21 ], [ %call.i181, %do.body46 ], [ 0, %ice_write_phy_reg_e822.exit218.thread ], [ %call.i211, %do.body73 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_ptp_exec_tmr_cmd(ptr nocapture noundef readonly %hw) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !319
  tail call void @arm_heavy_mb() #7
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 559124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50331648) #7, !srcloc !320
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 745772
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !321
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_sync_phy_timer_e822(ptr noundef %hw, i8 noundef zeroext %port) unnamed_addr #1 align 64 {
entry:
  %phc_time = alloca i64, align 8
  %phy_time = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %phc_time) #7
  %0 = ptrtoint ptr %phc_time to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %phc_time, align 8, !annotation !309
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %phy_time) #7
  %1 = ptrtoint ptr %phy_time to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %phy_time, align 8, !annotation !309
  %call = tail call zeroext i1 @ice_ptp_lock(ptr noundef %hw)
  br i1 %call, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sync_phy_timer_e822.__UNIQUE_ID_ddebug656, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sync_phy_timer_e822, %if.then4)) #7
          to label %cleanup [label %if.then4], !srcloc !308

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sync_phy_timer_e822.__UNIQUE_ID_ddebug656, ptr noundef %dev, ptr noundef nonnull @.str.49) #7
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call7 = call fastcc i32 @ice_read_phy_and_phc_time_e822(ptr noundef %hw, i8 noundef zeroext %port, ptr noundef nonnull %phy_time, ptr noundef nonnull %phc_time)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.err_unlock_crit_edge

if.end6.err_unlock_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

if.end10:                                         ; preds = %if.end6
  %4 = ptrtoint ptr %phc_time to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %phc_time, align 8
  %6 = ptrtoint ptr %phy_time to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %phy_time, align 8
  %sub = sub i64 %5, %7
  %call11 = tail call i32 @ice_ptp_prep_port_adj_e822(ptr noundef %hw, i8 noundef zeroext %port, i64 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.err_unlock_crit_edge

if.end10.err_unlock_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

if.end14:                                         ; preds = %if.end10
  %call15 = tail call fastcc i32 @ice_ptp_one_port_cmd(ptr noundef %hw, i8 noundef zeroext %port, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.err_unlock_crit_edge

if.end14.err_unlock_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

if.end18:                                         ; preds = %if.end14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !319
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 559124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #7, !srcloc !320
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %add.ptr2.i = getelementptr i8, ptr %11, i32 745772
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !321
  %call19 = call fastcc i32 @ice_read_phy_and_phc_time_e822(ptr noundef %hw, i8 noundef zeroext %port, ptr noundef nonnull %phy_time, ptr noundef nonnull %phc_time)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.end25, label %if.end18.err_unlock_crit_edge

if.end18.err_unlock_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr28 = getelementptr i8, ptr %hw, i32 -2960
  %13 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr28, align 8
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %conv = zext i8 %port to i32
  %15 = ptrtoint ptr %phy_time to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %phy_time, align 8
  %17 = ptrtoint ptr %phc_time to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %phc_time, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev30, ptr noundef nonnull @.str.50, i32 noundef %conv, i64 noundef %16, i64 noundef %18) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !322
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 8
  %pf_id.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 13
  %21 = ptrtoint ptr %pf_id.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pf_id.i, align 1
  %conv.i = zext i8 %22 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 559232
  %add.ptr.i51 = getelementptr i8, ptr %20, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 0) #7, !srcloc !320
  br label %cleanup

err_unlock:                                       ; preds = %if.end18.err_unlock_crit_edge, %if.end14.err_unlock_crit_edge, %if.end10.err_unlock_crit_edge, %if.end6.err_unlock_crit_edge
  %err.0 = phi i32 [ %call7, %if.end6.err_unlock_crit_edge ], [ %call11, %if.end10.err_unlock_crit_edge ], [ %call15, %if.end14.err_unlock_crit_edge ], [ %call19, %if.end18.err_unlock_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !322
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 8
  %pf_id.i52 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 13
  %25 = ptrtoint ptr %pf_id.i52 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pf_id.i52, align 1
  %conv.i53 = zext i8 %26 to i32
  %mul.i54 = shl nuw nsw i32 %conv.i53, 2
  %add.i55 = add nuw nsw i32 %mul.i54, 559232
  %add.ptr.i56 = getelementptr i8, ptr %24, i32 %add.i55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 0) #7, !srcloc !320
  br label %cleanup

cleanup:                                          ; preds = %err_unlock, %do.end25, %if.then4, %do.body
  %retval.0 = phi i32 [ %err.0, %err_unlock ], [ 0, %do.end25 ], [ -16, %if.then4 ], [ -16, %do.body ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %phy_time) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %phc_time) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_phy_cfg_fixed_tx_offset_e822(ptr noundef %hw, i8 noundef zeroext %port) unnamed_addr #1 align 64 {
entry:
  %msg.i = alloca %struct.ice_sbq_msg_input, align 4
  %link_spd = alloca i32, align 4
  %fec_mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_spd) #7
  %0 = ptrtoint ptr %link_spd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %link_spd, align 4, !annotation !309
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fec_mode) #7
  %1 = ptrtoint ptr %fec_mode to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %fec_mode, align 4, !annotation !309
  %call = call fastcc i32 @ice_phy_get_speed_and_fec_e822(ptr noundef %hw, i8 noundef zeroext %port, ptr noundef nonnull %link_spd, ptr noundef nonnull %fec_mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %link_spd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_spd, align 4
  %ts_func_info.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6
  %4 = ptrtoint ptr %ts_func_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ts_func_info.i.i, align 4
  %arrayidx.i.i = getelementptr [6 x %struct.ice_time_ref_info_e822], ptr @e822_time_ref, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.i.i, align 8
  %tmr_index_assoc.i.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6, i32 3
  %8 = ptrtoint ptr %tmr_index_assoc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tmr_index_assoc.i.i.i, align 2
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %conv.i.i = zext i8 %9 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 2
  %add.i.i = add nuw nsw i32 %mul.i.i, 559384
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %add.i.i
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !310
  %13 = call i32 @llvm.bswap.i32(i32 %12) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !311
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 8
  %add8.i.i = add nuw nsw i32 %mul.i.i, 559392
  %add.ptr9.i.i = getelementptr i8, ptr %15, i32 %add8.i.i
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #7, !srcloc !310
  %17 = lshr i32 %16, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !312
  %conv13.i.i = zext i32 %17 to i64
  %shl.i.i = shl nuw nsw i64 %conv13.i.i, 32
  %conv14.i.i = zext i32 %13 to i64
  %or.i.i = or i64 %shl.i.i, %conv14.i.i
  %mul.i = mul i64 %or.i.i, %7
  %18 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3777893186295716171, i64 %mul.i) #10, !srcloc !317
  %19 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3777893186295716171, i64 %mul.i, i64 %18) #10, !srcloc !323
  %div158.i.i10.i = lshr i64 %19, 11
  %tx_fixed_delay.i = getelementptr [8 x %struct.ice_vernier_info_e822], ptr @e822_vernier, i32 0, i32 %3, i32 8
  %20 = ptrtoint ptr %tx_fixed_delay.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_fixed_delay.i, align 4
  %conv.i = zext i32 %21 to i64
  %mul4.i = mul i64 %div158.i.i10.i, %conv.i
  %22 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %mul4.i) #10, !srcloc !317
  %23 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %mul4.i, i64 %22, i32 0) #10, !srcloc !318
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %23, 0
  %div158.i.i911.i = lshr i64 %asmresult10.i.i.i.i, 23
  %call2 = call fastcc i32 @ice_write_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1088, i64 noundef %div158.i.i911.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %conv.i.i23 = zext i8 %port to i32
  %rem.i.i = and i32 %conv.i.i23, 7
  %24 = and i32 %conv.i.i23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i = icmp eq i32 %24, 0
  %mul.i.i24 = shl nuw nsw i32 %rem.i.i, 13
  %add7.i.i = or i32 %mul.i.i24, 525404
  %sub.neg.i.i = mul nsw i32 %rem.i.i, -8192
  %sub16.i.i = add nsw i32 %sub.neg.i.i, 1107036
  %conv18.sink.in.i.i = select i1 %cmp.i.i, i32 %add7.i.i, i32 %sub16.i.i
  %shr2556.sink.i.i = lshr i32 %conv18.sink.in.i.i, 16
  %conv18.sink.i.i = trunc i32 %conv18.sink.in.i.i to i16
  %25 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv18.sink.i.i, ptr %25, align 2
  %27 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 3
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shr2556.sink.i.i, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %port)
  %cmp27.i.i = icmp ult i8 %port, 8
  %div54.mask.i.i = and i32 %conv.i.i23, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div54.mask.i.i)
  %cmp31.i.i = icmp eq i32 %div54.mask.i.i, 8
  %..i.i = select i1 %cmp31.i.i, i8 3, i8 4
  %.sink.i.i = select i1 %cmp27.i.i, i8 2, i8 %..i.i
  %29 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.sink.i.i, ptr %msg.i, align 4
  %opcode.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 1
  %30 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %opcode.i, align 1
  %data.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 4
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %data.i, align 4
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end5.ice_write_phy_reg_e822.exit_crit_edge, label %do.body.i

if.end5.ice_write_phy_reg_e822.exit_crit_edge:    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_write_phy_reg_e822.exit

do.body.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_cfg_fixed_tx_offset_e822, %if.then5.i)) #7
          to label %ice_write_phy_reg_e822.exit [label %if.then5.i], !srcloc !308

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %call.i) #7
  br label %ice_write_phy_reg_e822.exit

ice_write_phy_reg_e822.exit:                      ; preds = %if.then5.i, %do.body.i, %if.end5.ice_write_phy_reg_e822.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %cleanup

cleanup:                                          ; preds = %ice_write_phy_reg_e822.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call.i, %ice_write_phy_reg_e822.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fec_mode) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_spd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_phy_cfg_fixed_rx_offset_e822(ptr noundef %hw, i8 noundef zeroext %port) unnamed_addr #1 align 64 {
entry:
  %msg.i = alloca %struct.ice_sbq_msg_input, align 4
  %link_spd = alloca i32, align 4
  %fec_mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_spd) #7
  %0 = ptrtoint ptr %link_spd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %link_spd, align 4, !annotation !309
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fec_mode) #7
  %1 = ptrtoint ptr %fec_mode to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %fec_mode, align 4, !annotation !309
  %call = call fastcc i32 @ice_phy_get_speed_and_fec_e822(ptr noundef %hw, i8 noundef zeroext %port, ptr noundef nonnull %link_spd, ptr noundef nonnull %fec_mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %link_spd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_spd, align 4
  %ts_func_info.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6
  %4 = ptrtoint ptr %ts_func_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ts_func_info.i.i, align 4
  %arrayidx.i.i = getelementptr [6 x %struct.ice_time_ref_info_e822], ptr @e822_time_ref, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.i.i, align 8
  %tmr_index_assoc.i.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6, i32 3
  %8 = ptrtoint ptr %tmr_index_assoc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tmr_index_assoc.i.i.i, align 2
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %conv.i.i = zext i8 %9 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 2
  %add.i.i = add nuw nsw i32 %mul.i.i, 559384
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %add.i.i
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !310
  %13 = call i32 @llvm.bswap.i32(i32 %12) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !311
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 8
  %add8.i.i = add nuw nsw i32 %mul.i.i, 559392
  %add.ptr9.i.i = getelementptr i8, ptr %15, i32 %add8.i.i
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #7, !srcloc !310
  %17 = lshr i32 %16, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !312
  %conv13.i.i = zext i32 %17 to i64
  %shl.i.i = shl nuw nsw i64 %conv13.i.i, 32
  %conv14.i.i = zext i32 %13 to i64
  %or.i.i = or i64 %shl.i.i, %conv14.i.i
  %mul.i = mul i64 %or.i.i, %7
  %18 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3777893186295716171, i64 %mul.i) #10, !srcloc !317
  %19 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3777893186295716171, i64 %mul.i, i64 %18) #10, !srcloc !323
  %div158.i.i10.i = lshr i64 %19, 11
  %rx_fixed_delay.i = getelementptr [8 x %struct.ice_vernier_info_e822], ptr @e822_vernier, i32 0, i32 %3, i32 10
  %20 = ptrtoint ptr %rx_fixed_delay.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_fixed_delay.i, align 4
  %conv.i = zext i32 %21 to i64
  %mul4.i = mul i64 %div158.i.i10.i, %conv.i
  %22 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %mul4.i) #10, !srcloc !317
  %23 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %mul4.i, i64 %22, i32 0) #10, !srcloc !318
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %23, 0
  %div158.i.i911.i = lshr i64 %asmresult10.i.i.i.i, 23
  %call2 = call fastcc i32 @ice_write_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1120, i64 noundef %div158.i.i911.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %conv.i.i23 = zext i8 %port to i32
  %rem.i.i = and i32 %conv.i.i23, 7
  %24 = and i32 %conv.i.i23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i = icmp eq i32 %24, 0
  %mul.i.i24 = shl nuw nsw i32 %rem.i.i, 13
  %add7.i.i = or i32 %mul.i.i24, 525436
  %sub.neg.i.i = mul nsw i32 %rem.i.i, -8192
  %sub16.i.i = add nsw i32 %sub.neg.i.i, 1107068
  %conv18.sink.in.i.i = select i1 %cmp.i.i, i32 %add7.i.i, i32 %sub16.i.i
  %shr2556.sink.i.i = lshr i32 %conv18.sink.in.i.i, 16
  %conv18.sink.i.i = trunc i32 %conv18.sink.in.i.i to i16
  %25 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv18.sink.i.i, ptr %25, align 2
  %27 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 3
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shr2556.sink.i.i, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %port)
  %cmp27.i.i = icmp ult i8 %port, 8
  %div54.mask.i.i = and i32 %conv.i.i23, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div54.mask.i.i)
  %cmp31.i.i = icmp eq i32 %div54.mask.i.i, 8
  %..i.i = select i1 %cmp31.i.i, i8 3, i8 4
  %.sink.i.i = select i1 %cmp27.i.i, i8 2, i8 %..i.i
  %29 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.sink.i.i, ptr %msg.i, align 4
  %opcode.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 1
  %30 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %opcode.i, align 1
  %data.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 4
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %data.i, align 4
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end5.ice_write_phy_reg_e822.exit_crit_edge, label %do.body.i

if.end5.ice_write_phy_reg_e822.exit_crit_edge:    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_write_phy_reg_e822.exit

do.body.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_cfg_fixed_rx_offset_e822, %if.then5.i)) #7
          to label %ice_write_phy_reg_e822.exit [label %if.then5.i], !srcloc !308

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %call.i) #7
  br label %ice_write_phy_reg_e822.exit

ice_write_phy_reg_e822.exit:                      ; preds = %if.then5.i, %do.body.i, %if.end5.ice_write_phy_reg_e822.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %cleanup

cleanup:                                          ; preds = %ice_write_phy_reg_e822.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call.i, %ice_write_phy_reg_e822.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fec_mode) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_spd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_phy_exit_bypass_e822(ptr noundef %hw, i8 noundef zeroext %port) local_unnamed_addr #1 align 64 {
entry:
  %msg.i297 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i = alloca %struct.ice_sbq_msg_input, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %0 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %conv.i.i = zext i8 %port to i32
  %rem.i.i = and i32 %conv.i.i, 7
  %2 = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.i = icmp eq i32 %2, 0
  %mul.i.i = shl nuw nsw i32 %rem.i.i, 13
  %add7.i.i = or i32 %mul.i.i, 525524
  %sub.neg.i.i = mul nsw i32 %rem.i.i, -8192
  %sub16.i.i = add nsw i32 %sub.neg.i.i, 1107156
  %conv18.sink.in.i.i = select i1 %cmp.i.i, i32 %add7.i.i, i32 %sub16.i.i
  %shr2556.sink.i.i = lshr i32 %conv18.sink.in.i.i, 16
  %conv18.sink.i.i = trunc i32 %conv18.sink.in.i.i to i16
  %3 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv18.sink.i.i, ptr %3, align 2
  %5 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr2556.sink.i.i, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %port)
  %cmp27.i.i = icmp ult i8 %port, 8
  %div54.mask.i.i = and i32 %conv.i.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div54.mask.i.i)
  %cmp31.i.i = icmp eq i32 %div54.mask.i.i, 8
  %..i.i = select i1 %cmp31.i.i, i8 3, i8 4
  %.sink.i.i = select i1 %cmp27.i.i, i8 2, i8 %..i.i
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink.i.i, ptr %msg.i, align 4
  %opcode.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 1
  %8 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %opcode.i, align 1
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end7, label %do.body.i

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_exit_bypass_e822, %if.then5.i)) #7
          to label %do.body [label %if.then5.i], !srcloc !308

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %call.i) #7
  br label %do.body

do.body:                                          ; preds = %if.then5.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug659, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_exit_bypass_e822, %if.then5)) #7
          to label %cleanup [label %if.then5], !srcloc !308

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug659, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %conv.i.i, i32 noundef %call.i) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %0, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body10, label %if.end32

do.body10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug660, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_exit_bypass_e822, %if.then22)) #7
          to label %cleanup [label %if.then22], !srcloc !308

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr25 = getelementptr i8, ptr %hw, i32 -2960
  %15 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr25, align 8
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug660, ptr noundef %dev27, ptr noundef nonnull @.str.15, i32 noundef %conv.i.i) #7
  br label %cleanup

if.end32:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i297) #7
  %17 = getelementptr inbounds i8, ptr %msg.i297, i32 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %17, align 4
  %add7.i.i302 = or i32 %mul.i.i, 525560
  %sub16.i.i305 = add nsw i32 %sub.neg.i.i, 1107192
  %conv18.sink.in.i.i307 = select i1 %cmp.i.i, i32 %add7.i.i302, i32 %sub16.i.i305
  %shr2556.sink.i.i308 = lshr i32 %conv18.sink.in.i.i307, 16
  %conv18.sink.i.i309 = trunc i32 %conv18.sink.in.i.i307 to i16
  %19 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i297, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv18.sink.i.i309, ptr %19, align 2
  %21 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i297, i32 0, i32 3
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr2556.sink.i.i308, ptr %21, align 4
  %23 = ptrtoint ptr %msg.i297 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink.i.i, ptr %msg.i297, align 4
  %opcode.i315 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i297, i32 0, i32 1
  %24 = ptrtoint ptr %opcode.i315 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %opcode.i315, align 1
  %call.i316 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i297) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i316)
  %tobool.not.i317 = icmp eq i32 %call.i316, 0
  br i1 %tobool.not.i317, label %if.end58, label %do.body.i319

do.body.i319:                                     ; preds = %if.end32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_exit_bypass_e822, %if.then5.i322)) #7
          to label %do.body36 [label %if.then5.i322], !srcloc !308

if.then5.i322:                                    ; preds = %do.body.i319
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i320 = getelementptr i8, ptr %hw, i32 -2960
  %25 = ptrtoint ptr %add.ptr.i320 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i320, align 8
  %dev.i321 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, ptr noundef %dev.i321, ptr noundef nonnull @.str.3, i32 noundef %call.i316) #7
  br label %do.body36

do.body36:                                        ; preds = %if.then5.i322, %do.body.i319
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i297) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug661, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_exit_bypass_e822, %if.then48)) #7
          to label %cleanup [label %if.then48], !srcloc !308

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr51 = getelementptr i8, ptr %hw, i32 -2960
  %27 = ptrtoint ptr %add.ptr51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr51, align 8
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug661, ptr noundef %dev53, ptr noundef nonnull @.str.16, i32 noundef %conv.i.i, i32 noundef %call.i316) #7
  br label %cleanup

if.end58:                                         ; preds = %if.end32
  %29 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %17, align 4
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i297) #7
  %and59 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %do.body62, label %if.end84

do.body62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug662, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_exit_bypass_e822, %if.then74)) #7
          to label %cleanup [label %if.then74], !srcloc !308

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr77 = getelementptr i8, ptr %hw, i32 -2960
  %32 = ptrtoint ptr %add.ptr77 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr77, align 8
  %dev79 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug662, ptr noundef %dev79, ptr noundef nonnull @.str.17, i32 noundef %conv.i.i) #7
  br label %cleanup

if.end84:                                         ; preds = %if.end58
  %call85 = call fastcc i32 @ice_phy_cfg_tx_offset_e822(ptr noundef %hw, i8 noundef zeroext %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end110, label %do.body88

do.body88:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug663, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_exit_bypass_e822, %if.then100)) #7
          to label %cleanup [label %if.then100], !srcloc !308

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr103 = getelementptr i8, ptr %hw, i32 -2960
  %34 = ptrtoint ptr %add.ptr103 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr103, align 8
  %dev105 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug663, ptr noundef %dev105, ptr noundef nonnull @.str.18, i32 noundef %conv.i.i, i32 noundef %call85) #7
  br label %cleanup

if.end110:                                        ; preds = %if.end84
  %call111 = call fastcc i32 @ice_phy_cfg_rx_offset_e822(ptr noundef %hw, i8 noundef zeroext %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end136, label %do.body114

do.body114:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug664, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_exit_bypass_e822, %if.then126)) #7
          to label %cleanup [label %if.then126], !srcloc !308

if.then126:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr129 = getelementptr i8, ptr %hw, i32 -2960
  %36 = ptrtoint ptr %add.ptr129 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr129, align 8
  %dev131 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug664, ptr noundef %dev131, ptr noundef nonnull @.str.19, i32 noundef %conv.i.i, i32 noundef %call111) #7
  br label %cleanup

if.end136:                                        ; preds = %if.end110
  %call137 = call i32 @ice_read_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1032, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end162, label %do.body140

do.body140:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug665, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_exit_bypass_e822, %if.then152)) #7
          to label %cleanup [label %if.then152], !srcloc !308

if.then152:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr155 = getelementptr i8, ptr %hw, i32 -2960
  %38 = ptrtoint ptr %add.ptr155 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr155, align 8
  %dev157 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug665, ptr noundef %dev157, ptr noundef nonnull @.str.20, i32 noundef %conv.i.i, i32 noundef %call137) #7
  br label %cleanup

if.end162:                                        ; preds = %if.end136
  %40 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val, align 4
  %and163 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %do.body166, label %if.end162.if.end188_crit_edge

if.end162.if.end188_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end188

do.body166:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug666, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_exit_bypass_e822, %if.then178)) #7
          to label %if.end188 [label %if.then178], !srcloc !308

if.then178:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr181 = getelementptr i8, ptr %hw, i32 -2960
  %42 = ptrtoint ptr %add.ptr181 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr181, align 8
  %dev183 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug666, ptr noundef %dev183, ptr noundef nonnull @.str.21, i32 noundef %conv.i.i) #7
  br label %if.end188

if.end188:                                        ; preds = %if.then178, %do.body166, %if.end162.if.end188_crit_edge
  %and189 = and i32 %41, -3
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and189, ptr %val, align 4
  %call190 = call i32 @ice_write_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1032, i32 noundef %and189)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %do.end218, label %do.body193

do.body193:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug667, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_exit_bypass_e822, %if.then205)) #7
          to label %cleanup [label %if.then205], !srcloc !308

if.then205:                                       ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr208 = getelementptr i8, ptr %hw, i32 -2960
  %45 = ptrtoint ptr %add.ptr208 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr208, align 8
  %dev210 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug667, ptr noundef %dev210, ptr noundef nonnull @.str.22, i32 noundef %conv.i.i, i32 noundef %call190) #7
  br label %cleanup

do.end218:                                        ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr221 = getelementptr i8, ptr %hw, i32 -2960
  %47 = ptrtoint ptr %add.ptr221 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr221, align 8
  %dev223 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev223, ptr noundef nonnull @.str.23, i32 noundef %conv.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end218, %if.then205, %do.body193, %if.then152, %do.body140, %if.then126, %do.body114, %if.then100, %do.body88, %if.then74, %do.body62, %if.then48, %do.body36, %if.then22, %do.body10, %if.then5, %do.body
  %retval.0 = phi i32 [ 0, %do.end218 ], [ %call.i, %if.then5 ], [ -16, %if.then22 ], [ %call.i316, %if.then48 ], [ -16, %if.then74 ], [ %call85, %if.then100 ], [ %call111, %if.then126 ], [ %call137, %if.then152 ], [ %call190, %if.then205 ], [ %call.i, %do.body ], [ -16, %do.body10 ], [ %call.i316, %do.body36 ], [ -16, %do.body62 ], [ %call85, %do.body88 ], [ %call111, %do.body114 ], [ %call137, %do.body140 ], [ %call190, %do.body193 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_phy_cfg_tx_offset_e822(ptr noundef %hw, i8 noundef zeroext %port) unnamed_addr #1 align 64 {
entry:
  %msg.i = alloca %struct.ice_sbq_msg_input, align 4
  %link_spd = alloca i32, align 4
  %fec_mode = alloca i32, align 4
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_spd) #7
  %0 = ptrtoint ptr %link_spd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %link_spd, align 4, !annotation !309
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fec_mode) #7
  %1 = ptrtoint ptr %fec_mode to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %fec_mode, align 4, !annotation !309
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %val, align 8, !annotation !309
  %call = call fastcc i32 @ice_phy_get_speed_and_fec_e822(ptr noundef %hw, i8 noundef zeroext %port, ptr noundef nonnull %link_spd, ptr noundef nonnull %fec_mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %link_spd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %link_spd, align 4
  %ts_func_info.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6
  %5 = ptrtoint ptr %ts_func_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ts_func_info.i.i, align 4
  %arrayidx.i.i = getelementptr [6 x %struct.ice_time_ref_info_e822], ptr @e822_time_ref, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx.i.i, align 8
  %tmr_index_assoc.i.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6, i32 3
  %9 = ptrtoint ptr %tmr_index_assoc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tmr_index_assoc.i.i.i, align 2
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 8
  %conv.i.i = zext i8 %10 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 2
  %add.i.i = add nuw nsw i32 %mul.i.i, 559384
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %add.i.i
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !310
  %14 = call i32 @llvm.bswap.i32(i32 %13) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !311
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 8
  %add8.i.i = add nuw nsw i32 %mul.i.i, 559392
  %add.ptr9.i.i = getelementptr i8, ptr %16, i32 %add8.i.i
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #7, !srcloc !310
  %18 = lshr i32 %17, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !312
  %conv13.i.i = zext i32 %18 to i64
  %shl.i.i = shl nuw nsw i64 %conv13.i.i, 32
  %conv14.i.i = zext i32 %14 to i64
  %or.i.i = or i64 %shl.i.i, %conv14.i.i
  %mul.i = mul i64 %or.i.i, %8
  %19 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3777893186295716171, i64 %mul.i) #10, !srcloc !317
  %20 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3777893186295716171, i64 %mul.i, i64 %19) #10, !srcloc !323
  %div158.i.i10.i = lshr i64 %20, 11
  %tx_fixed_delay.i = getelementptr [8 x %struct.ice_vernier_info_e822], ptr @e822_vernier, i32 0, i32 %4, i32 8
  %21 = ptrtoint ptr %tx_fixed_delay.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_fixed_delay.i, align 4
  %conv.i = zext i32 %22 to i64
  %mul4.i = mul i64 %div158.i.i10.i, %conv.i
  %23 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %mul4.i) #10, !srcloc !317
  %24 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %mul4.i, i64 %23, i32 0) #10, !srcloc !318
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %24, 0
  %div158.i.i911.i = lshr i64 %asmresult10.i.i.i.i, 23
  %25 = ptrtoint ptr %link_spd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %link_spd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %26)
  %switch = icmp ult i32 %26, 6
  br i1 %switch, label %if.then11, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then11:                                        ; preds = %if.end
  %call12 = call fastcc i32 @ice_read_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1220, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %val, align 8
  %add = add i64 %28, %div158.i.i911.i
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end.if.end16_crit_edge
  %total_offset.0 = phi i64 [ %add, %if.end15 ], [ %div158.i.i911.i, %if.end.if.end16_crit_edge ]
  %29 = ptrtoint ptr %link_spd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %link_spd, align 4
  %31 = and i32 %30, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %31)
  %switch60 = icmp eq i32 %31, 6
  br i1 %switch60, label %if.then20, label %if.end16.if.end26_crit_edge

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then20:                                        ; preds = %if.end16
  %call21 = call fastcc i32 @ice_read_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1228, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %val, align 8
  %add25 = add i64 %33, %total_offset.0
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %if.end16.if.end26_crit_edge
  %total_offset.1 = phi i64 [ %add25, %if.end24 ], [ %total_offset.0, %if.end16.if.end26_crit_edge ]
  %call27 = call fastcc i32 @ice_write_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1088, i64 noundef %total_offset.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %conv.i.i61 = zext i8 %port to i32
  %rem.i.i = and i32 %conv.i.i61, 7
  %34 = and i32 %conv.i.i61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i = icmp eq i32 %34, 0
  %mul.i.i62 = shl nuw nsw i32 %rem.i.i, 13
  %add7.i.i = or i32 %mul.i.i62, 525404
  %sub.neg.i.i = mul nsw i32 %rem.i.i, -8192
  %sub16.i.i = add nsw i32 %sub.neg.i.i, 1107036
  %conv18.sink.in.i.i = select i1 %cmp.i.i, i32 %add7.i.i, i32 %sub16.i.i
  %shr2556.sink.i.i = lshr i32 %conv18.sink.in.i.i, 16
  %conv18.sink.i.i = trunc i32 %conv18.sink.in.i.i to i16
  %35 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv18.sink.i.i, ptr %35, align 2
  %37 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 3
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shr2556.sink.i.i, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %port)
  %cmp27.i.i = icmp ult i8 %port, 8
  %div54.mask.i.i = and i32 %conv.i.i61, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div54.mask.i.i)
  %cmp31.i.i = icmp eq i32 %div54.mask.i.i, 8
  %..i.i = select i1 %cmp31.i.i, i8 3, i8 4
  %.sink.i.i = select i1 %cmp27.i.i, i8 2, i8 %..i.i
  %39 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %.sink.i.i, ptr %msg.i, align 4
  %opcode.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 1
  %40 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %opcode.i, align 1
  %data.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 4
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %data.i, align 4
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end30.ice_write_phy_reg_e822.exit_crit_edge, label %do.body.i

if.end30.ice_write_phy_reg_e822.exit_crit_edge:   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_write_phy_reg_e822.exit

do.body.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_cfg_tx_offset_e822, %if.then5.i)) #7
          to label %ice_write_phy_reg_e822.exit [label %if.then5.i], !srcloc !308

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %call.i) #7
  br label %ice_write_phy_reg_e822.exit

ice_write_phy_reg_e822.exit:                      ; preds = %if.then5.i, %do.body.i, %if.end30.ice_write_phy_reg_e822.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %cleanup

cleanup:                                          ; preds = %ice_write_phy_reg_e822.exit, %if.end26.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call12, %if.then11.cleanup_crit_edge ], [ %call21, %if.then20.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ %call.i, %ice_write_phy_reg_e822.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fec_mode) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_spd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_phy_cfg_rx_offset_e822(ptr noundef %hw, i8 noundef zeroext %port) unnamed_addr #1 align 64 {
entry:
  %link_spd = alloca i32, align 4
  %fec_mode = alloca i32, align 4
  %pmd = alloca i64, align 8
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_spd) #7
  %0 = ptrtoint ptr %link_spd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %link_spd, align 4, !annotation !309
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fec_mode) #7
  %1 = ptrtoint ptr %fec_mode to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %fec_mode, align 4, !annotation !309
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pmd) #7
  %2 = ptrtoint ptr %pmd to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %pmd, align 8, !annotation !309
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %val, align 8, !annotation !309
  %call = call fastcc i32 @ice_phy_get_speed_and_fec_e822(ptr noundef %hw, i8 noundef zeroext %port, ptr noundef nonnull %link_spd, ptr noundef nonnull %fec_mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %link_spd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_spd, align 4
  %ts_func_info.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6
  %6 = ptrtoint ptr %ts_func_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ts_func_info.i.i, align 4
  %arrayidx.i.i = getelementptr [6 x %struct.ice_time_ref_info_e822], ptr @e822_time_ref, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.i.i, align 8
  %tmr_index_assoc.i.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6, i32 3
  %10 = ptrtoint ptr %tmr_index_assoc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tmr_index_assoc.i.i.i, align 2
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 8
  %conv.i.i = zext i8 %11 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 2
  %add.i.i = add nuw nsw i32 %mul.i.i, 559384
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %add.i.i
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !310
  %15 = call i32 @llvm.bswap.i32(i32 %14) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !311
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 8
  %add8.i.i = add nuw nsw i32 %mul.i.i, 559392
  %add.ptr9.i.i = getelementptr i8, ptr %17, i32 %add8.i.i
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #7, !srcloc !310
  %19 = lshr i32 %18, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !312
  %conv13.i.i = zext i32 %19 to i64
  %shl.i.i = shl nuw nsw i64 %conv13.i.i, 32
  %conv14.i.i = zext i32 %15 to i64
  %or.i.i = or i64 %shl.i.i, %conv14.i.i
  %mul.i = mul i64 %or.i.i, %9
  %20 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3777893186295716171, i64 %mul.i) #10, !srcloc !317
  %21 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3777893186295716171, i64 %mul.i, i64 %20) #10, !srcloc !323
  %div158.i.i10.i = lshr i64 %21, 11
  %rx_fixed_delay.i = getelementptr [8 x %struct.ice_vernier_info_e822], ptr @e822_vernier, i32 0, i32 %5, i32 10
  %22 = ptrtoint ptr %rx_fixed_delay.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_fixed_delay.i, align 4
  %conv.i = zext i32 %23 to i64
  %mul4.i = mul i64 %div158.i.i10.i, %conv.i
  %24 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %mul4.i) #10, !srcloc !317
  %25 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %mul4.i, i64 %24, i32 0) #10, !srcloc !318
  %call2 = call fastcc i32 @ice_read_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1256, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %25, 0
  %div158.i.i911.i = lshr i64 %asmresult10.i.i.i.i, 23
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %val, align 8
  %add = add i64 %27, %div158.i.i911.i
  %28 = ptrtoint ptr %link_spd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %link_spd, align 4
  %30 = and i32 %29, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %switch = icmp eq i32 %30, 4
  br i1 %switch, label %if.then11, label %if.end5.if.end17_crit_edge

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then11:                                        ; preds = %if.end5
  %call12 = call fastcc i32 @ice_read_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1264, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %val, align 8
  %add16 = add i64 %32, %add
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %if.end5.if.end17_crit_edge
  %total_offset.0 = phi i64 [ %add16, %if.end15 ], [ %add, %if.end5.if.end17_crit_edge ]
  %33 = ptrtoint ptr %link_spd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %link_spd, align 4
  %35 = ptrtoint ptr %fec_mode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fec_mode, align 4
  %call18 = call fastcc i32 @ice_phy_calc_pmd_adj_e822(ptr noundef %hw, i8 noundef zeroext %port, i32 noundef %34, i32 noundef %36, ptr noundef nonnull %pmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %37 = ptrtoint ptr %fec_mode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fec_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp22 = icmp eq i32 %38, 2
  %39 = ptrtoint ptr %pmd to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %pmd, align 8
  %41 = sub i64 0, %40
  %total_offset.1.p = select i1 %cmp22, i64 %40, i64 %41
  %total_offset.1 = add i64 %total_offset.0, %total_offset.1.p
  %call26 = call fastcc i32 @ice_write_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1120, i64 noundef %total_offset.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = call i32 @ice_write_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1148, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call12, %if.then11.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ %call26, %if.end21.cleanup_crit_edge ], [ %call30, %if.end29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pmd) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fec_mode) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_spd) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_ptp_init_phy_e810(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  %msg.i = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tmr_index_owned = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6, i32 5
  %0 = ptrtoint ptr %tmr_index_owned to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tmr_index_owned, align 4
  %conv = zext i8 %1 to i16
  %mul = shl nuw nsw i16 %conv, 2
  %add = add nuw nsw i16 %mul, 840
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %msg_addr_low.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 2
  %2 = ptrtoint ptr %msg_addr_low.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %add, ptr %msg_addr_low.i, align 2
  %msg_addr_high.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 3
  %3 = ptrtoint ptr %msg_addr_high.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 768, ptr %msg_addr_high.i, align 4
  %opcode.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 1
  %4 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %opcode.i, align 1
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %msg.i, align 4
  %data.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 4
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %data.i, align 4
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ice_write_phy_reg_e810.exit.thread, label %do.body.i

ice_write_phy_reg_e810.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %if.end7

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e810.__UNIQUE_ID_ddebug669, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_init_phy_e810, %if.then7.i)) #7
          to label %do.body [label %if.then7.i], !srcloc !308

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e810.__UNIQUE_ID_ddebug669, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %call.i) #7
  br label %do.body

do.body:                                          ; preds = %if.then7.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_init_phy_e810.__UNIQUE_ID_ddebug674, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_init_phy_e810, %if.then5)) #7
          to label %if.end7 [label %if.then5], !srcloc !308

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_init_phy_e810.__UNIQUE_ID_ddebug674, ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call.i) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.body, %ice_write_phy_reg_e810.exit.thread
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ice_ptp_lock(ptr nocapture noundef readonly %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pf_id = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 13
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %2 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pf_id, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 559232
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !324
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %if.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %8 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pf_id, align 1
  %conv.1 = zext i8 %9 to i32
  %mul.1 = shl nuw nsw i32 %conv.1, 2
  %add.1 = add nuw nsw i32 %mul.1, 559232
  %add.ptr.1 = getelementptr i8, ptr %7, i32 %add.1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #7, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !324
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.1 = icmp eq i32 %11, 0
  br i1 %tobool.not.1, label %if.end.for.end_crit_edge, label %if.end.1

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.1:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 8
  %14 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pf_id, align 1
  %conv.2 = zext i8 %15 to i32
  %mul.2 = shl nuw nsw i32 %conv.2, 2
  %add.2 = add nuw nsw i32 %mul.2, 559232
  %add.ptr.2 = getelementptr i8, ptr %13, i32 %add.2
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #7, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !324
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.2 = icmp eq i32 %17, 0
  br i1 %tobool.not.2, label %if.end.1.for.end_crit_edge, label %if.end.2

if.end.1.for.end_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.2:                                         ; preds = %if.end.1
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %20 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pf_id, align 1
  %conv.3 = zext i8 %21 to i32
  %mul.3 = shl nuw nsw i32 %conv.3, 2
  %add.3 = add nuw nsw i32 %mul.3, 559232
  %add.ptr.3 = getelementptr i8, ptr %19, i32 %add.3
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3) #7, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !324
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.3 = icmp eq i32 %23, 0
  br i1 %tobool.not.3, label %if.end.2.for.end_crit_edge, label %if.end.3

if.end.2.for.end_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.3:                                         ; preds = %if.end.2
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 8
  %26 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pf_id, align 1
  %conv.4 = zext i8 %27 to i32
  %mul.4 = shl nuw nsw i32 %conv.4, 2
  %add.4 = add nuw nsw i32 %mul.4, 559232
  %add.ptr.4 = getelementptr i8, ptr %25, i32 %add.4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4) #7, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !324
  %29 = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.4 = icmp eq i32 %29, 0
  br i1 %tobool.not.4, label %if.end.3.for.end_crit_edge, label %if.end.4

if.end.3.for.end_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.4:                                         ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  br label %for.end

for.end:                                          ; preds = %if.end.4, %if.end.3.for.end_crit_edge, %if.end.2.for.end_crit_edge, %if.end.1.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %cmp.lcssa = phi i1 [ true, %entry.for.end_crit_edge ], [ true, %if.end.for.end_crit_edge ], [ true, %if.end.1.for.end_crit_edge ], [ true, %if.end.2.for.end_crit_edge ], [ true, %if.end.3.for.end_crit_edge ], [ false, %if.end.4 ]
  ret i1 %cmp.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_ptp_unlock(ptr nocapture noundef readonly %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !322
  tail call void @arm_heavy_mb() #7
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %pf_id = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 13
  %2 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pf_id, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 559232
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !320
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_ptp_init_time(ptr noundef %hw, i64 noundef %time) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tmr_index_owned = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6, i32 5
  %0 = ptrtoint ptr %tmr_index_owned to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tmr_index_owned, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !325
  tail call void @arm_heavy_mb() #7
  %conv = trunc i64 %time to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 8
  %conv1 = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %conv1, 2
  %add = add nuw nsw i32 %mul, 559336
  %add.ptr = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !326
  tail call void @arm_heavy_mb() #7
  %shr = lshr i64 %time, 32
  %conv6 = trunc i64 %shr to i32
  %5 = tail call i32 @llvm.bswap.i32(i32 %conv6)
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %add10 = add nuw nsw i32 %mul, 559344
  %add.ptr11 = getelementptr i8, ptr %7, i32 %add10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %5) #7, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !327
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 8
  %add18 = add nuw nsw i32 %mul, 559328
  %add.ptr19 = getelementptr i8, ptr %9, i32 %add18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #7, !srcloc !320
  %call = tail call zeroext i1 @ice_is_e810(ptr noundef %hw) #7
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call fastcc i32 @ice_ptp_prep_phy_time_e810(ptr noundef %hw, i32 noundef %conv)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call fastcc i32 @ice_ptp_prep_phy_time_e822(ptr noundef %hw, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call22, %if.then ], [ %call25, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not = icmp eq i32 %err.0, 0
  br i1 %tobool.not, label %if.end27, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = tail call fastcc i32 @ice_ptp_tmr_cmd(ptr noundef %hw, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.end27 ], [ %err.0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_e810(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_ptp_prep_phy_time_e810(ptr noundef %hw, i32 noundef %time) unnamed_addr #1 align 64 {
entry:
  %msg.i50 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tmr_index_owned = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6, i32 5
  %0 = ptrtoint ptr %tmr_index_owned to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tmr_index_owned, align 4
  %conv = zext i8 %1 to i16
  %mul = shl nuw nsw i16 %conv, 5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %conv.i = add nuw nsw i16 %mul, 872
  %msg_addr_low.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 2
  %2 = ptrtoint ptr %msg_addr_low.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv.i, ptr %msg_addr_low.i, align 2
  %msg_addr_high.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 3
  %3 = ptrtoint ptr %msg_addr_high.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 768, ptr %msg_addr_high.i, align 4
  %opcode.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 1
  %4 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %opcode.i, align 1
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %msg.i, align 4
  %data.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 4
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %data.i, align 4
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end7, label %do.body.i

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e810.__UNIQUE_ID_ddebug669, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_prep_phy_time_e810, %if.then7.i)) #7
          to label %do.body [label %if.then7.i], !srcloc !308

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e810.__UNIQUE_ID_ddebug669, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %call.i) #7
  br label %do.body

do.body:                                          ; preds = %if.then7.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_prep_phy_time_e810.__UNIQUE_ID_ddebug675, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_prep_phy_time_e810, %if.then5)) #7
          to label %cleanup [label %if.then5], !srcloc !308

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_prep_phy_time_e810.__UNIQUE_ID_ddebug675, ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %call.i) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i50) #7
  %conv.i51 = add nuw nsw i16 %mul, 876
  %msg_addr_low.i52 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i50, i32 0, i32 2
  %11 = ptrtoint ptr %msg_addr_low.i52 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i51, ptr %msg_addr_low.i52, align 2
  %msg_addr_high.i54 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i50, i32 0, i32 3
  %12 = ptrtoint ptr %msg_addr_high.i54 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 768, ptr %msg_addr_high.i54, align 4
  %opcode.i55 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i50, i32 0, i32 1
  %13 = ptrtoint ptr %opcode.i55 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %opcode.i55, align 1
  %14 = ptrtoint ptr %msg.i50 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %msg.i50, align 4
  %data.i56 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i50, i32 0, i32 4
  %15 = ptrtoint ptr %data.i56 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %time, ptr %data.i56, align 4
  %call.i57 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool.not.i58 = icmp eq i32 %call.i57, 0
  br i1 %tobool.not.i58, label %ice_write_phy_reg_e810.exit63.thread, label %do.body.i59

ice_write_phy_reg_e810.exit63.thread:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i50) #7
  br label %cleanup

do.body.i59:                                      ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e810.__UNIQUE_ID_ddebug669, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_prep_phy_time_e810, %if.then7.i62)) #7
          to label %do.body14 [label %if.then7.i62], !srcloc !308

if.then7.i62:                                     ; preds = %do.body.i59
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i60 = getelementptr i8, ptr %hw, i32 -2960
  %16 = ptrtoint ptr %add.ptr.i60 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i60, align 8
  %dev.i61 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e810.__UNIQUE_ID_ddebug669, ptr noundef %dev.i61, ptr noundef nonnull @.str.3, i32 noundef %call.i57) #7
  br label %do.body14

do.body14:                                        ; preds = %if.then7.i62, %do.body.i59
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i50) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_prep_phy_time_e810.__UNIQUE_ID_ddebug676, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_prep_phy_time_e810, %if.then26)) #7
          to label %cleanup [label %if.then26], !srcloc !308

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr29 = getelementptr i8, ptr %hw, i32 -2960
  %18 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr29, align 8
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_prep_phy_time_e810.__UNIQUE_ID_ddebug676, ptr noundef %dev31, ptr noundef nonnull @.str.70, i32 noundef %call.i57) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %do.body14, %ice_write_phy_reg_e810.exit63.thread, %if.then5, %do.body
  %retval.0 = phi i32 [ %call.i, %if.then5 ], [ %call.i57, %if.then26 ], [ %call.i, %do.body ], [ 0, %ice_write_phy_reg_e810.exit63.thread ], [ %call.i57, %do.body14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_ptp_prep_phy_time_e822(ptr noundef %hw, i32 noundef %time) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %time to i64
  %shl = shl nuw i64 %conv, 32
  %call = tail call fastcc i32 @ice_write_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext 0, i16 noundef zeroext 1100, i64 noundef %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @ice_write_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext 0, i16 noundef zeroext 1132, i64 noundef %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.inc, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc:                                          ; preds = %if.end
  %call.1 = tail call fastcc i32 @ice_write_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext 1, i16 noundef zeroext 1100, i64 noundef %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.1:                                         ; preds = %for.inc
  %call3.1 = tail call fastcc i32 @ice_write_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext 1, i16 noundef zeroext 1132, i64 noundef %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %tobool4.not.1 = icmp eq i32 %call3.1, 0
  br i1 %tobool4.not.1, label %for.inc.1, label %if.end.1.do.body_crit_edge

if.end.1.do.body_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc.1:                                        ; preds = %if.end.1
  %call.2 = tail call fastcc i32 @ice_write_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext 2, i16 noundef zeroext 1100, i64 noundef %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %if.end.2, label %for.inc.1.do.body_crit_edge

for.inc.1.do.body_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.2:                                         ; preds = %for.inc.1
  %call3.2 = tail call fastcc i32 @ice_write_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext 2, i16 noundef zeroext 1132, i64 noundef %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2)
  %tobool4.not.2 = icmp eq i32 %call3.2, 0
  br i1 %tobool4.not.2, label %for.inc.2, label %if.end.2.do.body_crit_edge

if.end.2.do.body_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc.2:                                        ; preds = %if.end.2
  %call.3 = tail call fastcc i32 @ice_write_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext 3, i16 noundef zeroext 1100, i64 noundef %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %if.end.3, label %for.inc.2.do.body_crit_edge

for.inc.2.do.body_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.3:                                         ; preds = %for.inc.2
  %call3.3 = tail call fastcc i32 @ice_write_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext 3, i16 noundef zeroext 1132, i64 noundef %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.3)
  %tobool4.not.3 = icmp eq i32 %call3.3, 0
  br i1 %tobool4.not.3, label %for.inc.3, label %if.end.3.do.body_crit_edge

if.end.3.do.body_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc.3:                                        ; preds = %if.end.3
  %call.4 = tail call fastcc i32 @ice_write_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext 4, i16 noundef zeroext 1100, i64 noundef %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %if.end.4, label %for.inc.3.do.body_crit_edge

for.inc.3.do.body_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.4:                                         ; preds = %for.inc.3
  %call3.4 = tail call fastcc i32 @ice_write_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext 4, i16 noundef zeroext 1132, i64 noundef %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.4)
  %tobool4.not.4 = icmp eq i32 %call3.4, 0
  br i1 %tobool4.not.4, label %for.inc.4, label %if.end.4.do.body_crit_edge

if.end.4.do.body_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc.4:                                        ; preds = %if.end.4
  %call.5 = tail call fastcc i32 @ice_write_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext 5, i16 noundef zeroext 1100, i64 noundef %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %if.end.5, label %for.inc.4.do.body_crit_edge

for.inc.4.do.body_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.5:                                         ; preds = %for.inc.4
  %call3.5 = tail call fastcc i32 @ice_write_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext 5, i16 noundef zeroext 1132, i64 noundef %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.5)
  %tobool4.not.5 = icmp eq i32 %call3.5, 0
  br i1 %tobool4.not.5, label %for.inc.5, label %if.end.5.do.body_crit_edge

if.end.5.do.body_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc.5:                                        ; preds = %if.end.5
  %call.6 = tail call fastcc i32 @ice_write_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext 6, i16 noundef zeroext 1100, i64 noundef %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool.not.6, label %if.end.6, label %for.inc.5.do.body_crit_edge

for.inc.5.do.body_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.6:                                         ; preds = %for.inc.5
  %call3.6 = tail call fastcc i32 @ice_write_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext 6, i16 noundef zeroext 1132, i64 noundef %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.6)
  %tobool4.not.6 = icmp eq i32 %call3.6, 0
  br i1 %tobool4.not.6, label %for.inc.6, label %if.end.6.do.body_crit_edge

if.end.6.do.body_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc.6:                                        ; preds = %if.end.6
  %call.7 = tail call fastcc i32 @ice_write_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext 7, i16 noundef zeroext 1100, i64 noundef %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool.not.7, label %if.end.7, label %for.inc.6.do.body_crit_edge

for.inc.6.do.body_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.7:                                         ; preds = %for.inc.6
  %call3.7 = tail call fastcc i32 @ice_write_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext 7, i16 noundef zeroext 1132, i64 noundef %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.7)
  %tobool4.not.7 = icmp eq i32 %call3.7, 0
  br i1 %tobool4.not.7, label %if.end.7.cleanup_crit_edge, label %if.end.7.do.body_crit_edge

if.end.7.do.body_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end.7.do.body_crit_edge, %for.inc.6.do.body_crit_edge, %if.end.6.do.body_crit_edge, %for.inc.5.do.body_crit_edge, %if.end.5.do.body_crit_edge, %for.inc.4.do.body_crit_edge, %if.end.4.do.body_crit_edge, %for.inc.3.do.body_crit_edge, %if.end.3.do.body_crit_edge, %for.inc.2.do.body_crit_edge, %if.end.2.do.body_crit_edge, %for.inc.1.do.body_crit_edge, %if.end.1.do.body_crit_edge, %for.inc.do.body_crit_edge, %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  %port.029.lcssa = phi i32 [ 0, %entry.do.body_crit_edge ], [ 0, %if.end.do.body_crit_edge ], [ 1, %for.inc.do.body_crit_edge ], [ 1, %if.end.1.do.body_crit_edge ], [ 2, %for.inc.1.do.body_crit_edge ], [ 2, %if.end.2.do.body_crit_edge ], [ 3, %for.inc.2.do.body_crit_edge ], [ 3, %if.end.3.do.body_crit_edge ], [ 4, %for.inc.3.do.body_crit_edge ], [ 4, %if.end.4.do.body_crit_edge ], [ 5, %for.inc.4.do.body_crit_edge ], [ 5, %if.end.5.do.body_crit_edge ], [ 6, %for.inc.5.do.body_crit_edge ], [ 6, %if.end.6.do.body_crit_edge ], [ 7, %for.inc.6.do.body_crit_edge ], [ 7, %if.end.7.do.body_crit_edge ]
  %err.0 = phi i32 [ %call, %entry.do.body_crit_edge ], [ %call3, %if.end.do.body_crit_edge ], [ %call.1, %for.inc.do.body_crit_edge ], [ %call3.1, %if.end.1.do.body_crit_edge ], [ %call.2, %for.inc.1.do.body_crit_edge ], [ %call3.2, %if.end.2.do.body_crit_edge ], [ %call.3, %for.inc.2.do.body_crit_edge ], [ %call3.3, %if.end.3.do.body_crit_edge ], [ %call.4, %for.inc.3.do.body_crit_edge ], [ %call3.4, %if.end.4.do.body_crit_edge ], [ %call.5, %for.inc.4.do.body_crit_edge ], [ %call3.5, %if.end.5.do.body_crit_edge ], [ %call.6, %for.inc.5.do.body_crit_edge ], [ %call3.6, %if.end.6.do.body_crit_edge ], [ %call.7, %for.inc.6.do.body_crit_edge ], [ %call3.7, %if.end.7.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_prep_phy_time_e822.__UNIQUE_ID_ddebug635, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_prep_phy_time_e822, %if.then11)) #7
          to label %cleanup [label %if.then11], !srcloc !308

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_prep_phy_time_e822.__UNIQUE_ID_ddebug635, ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %port.029.lcssa, i32 noundef %err.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %do.body, %if.end.7.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.then11 ], [ %err.0, %do.body ], [ 0, %if.end.7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_ptp_tmr_cmd(ptr noundef %hw, i32 noundef %cmd) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tmr_index_assoc.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6, i32 3
  %0 = ptrtoint ptr %tmr_index_assoc.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tmr_index_assoc.i.i, align 2
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %cmd, label %entry.ice_ptp_src_cmd.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb3.i
    i32 3, label %sw.bb5.i
    i32 4, label %sw.bb7.i
  ]

entry.ice_ptp_src_cmd.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_ptp_src_cmd.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %shl.i, 1
  br label %ice_ptp_src_cmd.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or2.i = or i32 %shl.i, 2
  br label %ice_ptp_src_cmd.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or4.i = or i32 %shl.i, 4
  br label %ice_ptp_src_cmd.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or6.i = or i32 %shl.i, 12
  br label %ice_ptp_src_cmd.exit

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or8.i = or i32 %shl.i, 128
  br label %ice_ptp_src_cmd.exit

ice_ptp_src_cmd.exit:                             ; preds = %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %sw.bb1.i, %sw.bb.i, %entry.ice_ptp_src_cmd.exit_crit_edge
  %cmd_val.0.i = phi i32 [ %shl.i, %entry.ice_ptp_src_cmd.exit_crit_edge ], [ %or8.i, %sw.bb7.i ], [ %or6.i, %sw.bb5.i ], [ %or4.i, %sw.bb3.i ], [ %or2.i, %sw.bb1.i ], [ %or.i, %sw.bb.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !328
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %cmd_val.0.i) #7
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 559120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #7, !srcloc !320
  %call = tail call zeroext i1 @ice_is_e810(ptr noundef %hw) #7
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %ice_ptp_src_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @ice_ptp_port_cmd_e810(ptr noundef %hw, i32 noundef %cmd)
  br label %if.end

if.else:                                          ; preds = %ice_ptp_src_cmd.exit
  %call.i = tail call fastcc i32 @ice_ptp_one_port_cmd(ptr noundef %hw, i8 noundef zeroext 0, i32 noundef %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond.i:                                       ; preds = %if.else
  %call.1.i = tail call fastcc i32 @ice_ptp_one_port_cmd(ptr noundef %hw, i8 noundef zeroext 1, i32 noundef %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.do.body_crit_edge

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call fastcc i32 @ice_ptp_one_port_cmd(ptr noundef %hw, i8 noundef zeroext 2, i32 noundef %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.do.body_crit_edge

for.cond.1.i.do.body_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = tail call fastcc i32 @ice_ptp_one_port_cmd(ptr noundef %hw, i8 noundef zeroext 3, i32 noundef %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.cond.3.i, label %for.cond.2.i.do.body_crit_edge

for.cond.2.i.do.body_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %call.4.i = tail call fastcc i32 @ice_ptp_one_port_cmd(ptr noundef %hw, i8 noundef zeroext 4, i32 noundef %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool.not.4.i, label %for.cond.4.i, label %for.cond.3.i.do.body_crit_edge

for.cond.3.i.do.body_crit_edge:                   ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %call.5.i = tail call fastcc i32 @ice_ptp_one_port_cmd(ptr noundef %hw, i8 noundef zeroext 5, i32 noundef %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %tobool.not.5.i = icmp eq i32 %call.5.i, 0
  br i1 %tobool.not.5.i, label %for.cond.5.i, label %for.cond.4.i.do.body_crit_edge

for.cond.4.i.do.body_crit_edge:                   ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %call.6.i = tail call fastcc i32 @ice_ptp_one_port_cmd(ptr noundef %hw, i8 noundef zeroext 6, i32 noundef %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %tobool.not.6.i = icmp eq i32 %call.6.i, 0
  br i1 %tobool.not.6.i, label %for.cond.6.i, label %for.cond.5.i.do.body_crit_edge

for.cond.5.i.do.body_crit_edge:                   ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond.6.i:                                     ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.7.i = tail call fastcc i32 @ice_ptp_one_port_cmd(ptr noundef %hw, i8 noundef zeroext 7, i32 noundef %cmd) #7
  br label %if.end

if.end:                                           ; preds = %for.cond.6.i, %if.then
  %err.0 = phi i32 [ %call1, %if.then ], [ %call.7.i, %for.cond.6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not = icmp eq i32 %err.0, 0
  br i1 %tobool.not, label %if.end11, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %for.cond.5.i.do.body_crit_edge, %for.cond.4.i.do.body_crit_edge, %for.cond.3.i.do.body_crit_edge, %for.cond.2.i.do.body_crit_edge, %for.cond.1.i.do.body_crit_edge, %for.cond.i.do.body_crit_edge, %if.else.do.body_crit_edge
  %err.025 = phi i32 [ %err.0, %if.end.do.body_crit_edge ], [ %call.6.i, %for.cond.5.i.do.body_crit_edge ], [ %call.5.i, %for.cond.4.i.do.body_crit_edge ], [ %call.4.i, %for.cond.3.i.do.body_crit_edge ], [ %call.3.i, %for.cond.2.i.do.body_crit_edge ], [ %call.2.i, %for.cond.1.i.do.body_crit_edge ], [ %call.1.i, %for.cond.i.do.body_crit_edge ], [ %call.i, %if.else.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_tmr_cmd.__UNIQUE_ID_ddebug683, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_tmr_cmd, %if.then8)) #7
          to label %cleanup [label %if.then8], !srcloc !308

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_tmr_cmd.__UNIQUE_ID_ddebug683, ptr noundef %dev, ptr noundef nonnull @.str.74, i32 noundef %cmd, i32 noundef %err.025) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !319
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 8
  %add.ptr.i22 = getelementptr i8, ptr %9, i32 559124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 50331648) #7, !srcloc !320
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %add.ptr2.i = getelementptr i8, ptr %11, i32 745772
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !321
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then8, %do.body
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %err.025, %if.then8 ], [ %err.025, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_ptp_write_incval(ptr noundef %hw, i64 noundef %incval) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tmr_index_owned = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6, i32 5
  %0 = ptrtoint ptr %tmr_index_owned to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tmr_index_owned, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  tail call void @arm_heavy_mb() #7
  %conv = trunc i64 %incval to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 8
  %conv1 = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %conv1, 2
  %add = add nuw nsw i32 %mul, 559368
  %add.ptr = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  %shr = lshr i64 %incval, 32
  %conv6 = trunc i64 %shr to i32
  %5 = tail call i32 @llvm.bswap.i32(i32 %conv6)
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %add10 = add nuw nsw i32 %mul, 559376
  %add.ptr11 = getelementptr i8, ptr %7, i32 %add10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %5) #7, !srcloc !320
  %call = tail call zeroext i1 @ice_is_e810(ptr noundef %hw) #7
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call fastcc i32 @ice_ptp_prep_phy_incval_e810(ptr noundef %hw, i64 noundef %incval)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call fastcc i32 @ice_ptp_prep_phy_incval_e822(ptr noundef %hw, i64 noundef %incval)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call12, %if.then ], [ %call13, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not = icmp eq i32 %err.0, 0
  br i1 %tobool.not, label %if.end15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call fastcc i32 @ice_ptp_tmr_cmd(ptr noundef %hw, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ %err.0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_ptp_prep_phy_incval_e810(ptr noundef %hw, i64 noundef %incval) unnamed_addr #1 align 64 {
entry:
  %msg.i56 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tmr_index_owned = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6, i32 5
  %0 = ptrtoint ptr %tmr_index_owned to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tmr_index_owned, align 4
  %conv = trunc i64 %incval to i32
  %conv3 = zext i8 %1 to i16
  %mul = shl nuw nsw i16 %conv3, 5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %conv.i = add nuw nsw i16 %mul, 888
  %msg_addr_low.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 2
  %2 = ptrtoint ptr %msg_addr_low.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv.i, ptr %msg_addr_low.i, align 2
  %msg_addr_high.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 3
  %3 = ptrtoint ptr %msg_addr_high.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 768, ptr %msg_addr_high.i, align 4
  %opcode.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 1
  %4 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %opcode.i, align 1
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %msg.i, align 4
  %data.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 4
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %data.i, align 4
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end10, label %do.body.i

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e810.__UNIQUE_ID_ddebug669, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_prep_phy_incval_e810, %if.then7.i)) #7
          to label %do.body [label %if.then7.i], !srcloc !308

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e810.__UNIQUE_ID_ddebug669, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %call.i) #7
  br label %do.body

do.body:                                          ; preds = %if.then7.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_prep_phy_incval_e810.__UNIQUE_ID_ddebug679, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_prep_phy_incval_e810, %if.then8)) #7
          to label %cleanup [label %if.then8], !srcloc !308

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_prep_phy_incval_e810.__UNIQUE_ID_ddebug679, ptr noundef %dev, ptr noundef nonnull @.str.80, i32 noundef %call.i) #7
  br label %cleanup

if.end10:                                         ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %shr = lshr i64 %incval, 32
  %conv2 = trunc i64 %shr to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i56) #7
  %conv.i57 = add nuw nsw i16 %mul, 892
  %msg_addr_low.i58 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i56, i32 0, i32 2
  %11 = ptrtoint ptr %msg_addr_low.i58 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i57, ptr %msg_addr_low.i58, align 2
  %msg_addr_high.i60 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i56, i32 0, i32 3
  %12 = ptrtoint ptr %msg_addr_high.i60 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 768, ptr %msg_addr_high.i60, align 4
  %opcode.i61 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i56, i32 0, i32 1
  %13 = ptrtoint ptr %opcode.i61 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %opcode.i61, align 1
  %14 = ptrtoint ptr %msg.i56 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %msg.i56, align 4
  %data.i62 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i56, i32 0, i32 4
  %15 = ptrtoint ptr %data.i62 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv2, ptr %data.i62, align 4
  %call.i63 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool.not.i64 = icmp eq i32 %call.i63, 0
  br i1 %tobool.not.i64, label %ice_write_phy_reg_e810.exit69.thread, label %do.body.i65

ice_write_phy_reg_e810.exit69.thread:             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i56) #7
  br label %cleanup

do.body.i65:                                      ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e810.__UNIQUE_ID_ddebug669, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_prep_phy_incval_e810, %if.then7.i68)) #7
          to label %do.body17 [label %if.then7.i68], !srcloc !308

if.then7.i68:                                     ; preds = %do.body.i65
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i66 = getelementptr i8, ptr %hw, i32 -2960
  %16 = ptrtoint ptr %add.ptr.i66 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i66, align 8
  %dev.i67 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e810.__UNIQUE_ID_ddebug669, ptr noundef %dev.i67, ptr noundef nonnull @.str.3, i32 noundef %call.i63) #7
  br label %do.body17

do.body17:                                        ; preds = %if.then7.i68, %do.body.i65
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i56) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_prep_phy_incval_e810.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_prep_phy_incval_e810, %if.then29)) #7
          to label %cleanup [label %if.then29], !srcloc !308

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr32 = getelementptr i8, ptr %hw, i32 -2960
  %18 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr32, align 8
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_prep_phy_incval_e810.__UNIQUE_ID_ddebug680, ptr noundef %dev34, ptr noundef nonnull @.str.81, i32 noundef %call.i63) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %do.body17, %ice_write_phy_reg_e810.exit69.thread, %if.then8, %do.body
  %retval.0 = phi i32 [ %call.i, %if.then8 ], [ %call.i63, %if.then29 ], [ %call.i, %do.body ], [ 0, %ice_write_phy_reg_e810.exit69.thread ], [ %call.i63, %do.body17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_ptp_prep_phy_incval_e822(ptr noundef %hw, i64 noundef %incval) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ice_write_40b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext 0, i16 noundef zeroext 1040, i64 noundef %incval)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc:                                          ; preds = %entry
  %call.1 = tail call fastcc i32 @ice_write_40b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext 1, i16 noundef zeroext 1040, i64 noundef %incval)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc.1:                                        ; preds = %for.inc
  %call.2 = tail call fastcc i32 @ice_write_40b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext 2, i16 noundef zeroext 1040, i64 noundef %incval)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.do.body_crit_edge

for.inc.1.do.body_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc.2:                                        ; preds = %for.inc.1
  %call.3 = tail call fastcc i32 @ice_write_40b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext 3, i16 noundef zeroext 1040, i64 noundef %incval)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.do.body_crit_edge

for.inc.2.do.body_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc.3:                                        ; preds = %for.inc.2
  %call.4 = tail call fastcc i32 @ice_write_40b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext 4, i16 noundef zeroext 1040, i64 noundef %incval)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.inc.4, label %for.inc.3.do.body_crit_edge

for.inc.3.do.body_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc.4:                                        ; preds = %for.inc.3
  %call.5 = tail call fastcc i32 @ice_write_40b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext 5, i16 noundef zeroext 1040, i64 noundef %incval)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.inc.5, label %for.inc.4.do.body_crit_edge

for.inc.4.do.body_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc.5:                                        ; preds = %for.inc.4
  %call.6 = tail call fastcc i32 @ice_write_40b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext 6, i16 noundef zeroext 1040, i64 noundef %incval)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool.not.6, label %for.inc.6, label %for.inc.5.do.body_crit_edge

for.inc.5.do.body_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc.6:                                        ; preds = %for.inc.5
  %call.7 = tail call fastcc i32 @ice_write_40b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext 7, i16 noundef zeroext 1040, i64 noundef %incval)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool.not.7, label %for.inc.6.cleanup_crit_edge, label %for.inc.6.do.body_crit_edge

for.inc.6.do.body_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %for.inc.6.do.body_crit_edge, %for.inc.5.do.body_crit_edge, %for.inc.4.do.body_crit_edge, %for.inc.3.do.body_crit_edge, %for.inc.2.do.body_crit_edge, %for.inc.1.do.body_crit_edge, %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  %port.019.lcssa = phi i32 [ 0, %entry.do.body_crit_edge ], [ 1, %for.inc.do.body_crit_edge ], [ 2, %for.inc.1.do.body_crit_edge ], [ 3, %for.inc.2.do.body_crit_edge ], [ 4, %for.inc.3.do.body_crit_edge ], [ 5, %for.inc.4.do.body_crit_edge ], [ 6, %for.inc.5.do.body_crit_edge ], [ 7, %for.inc.6.do.body_crit_edge ]
  %call.lcssa = phi i32 [ %call, %entry.do.body_crit_edge ], [ %call.1, %for.inc.do.body_crit_edge ], [ %call.2, %for.inc.1.do.body_crit_edge ], [ %call.3, %for.inc.2.do.body_crit_edge ], [ %call.4, %for.inc.3.do.body_crit_edge ], [ %call.5, %for.inc.4.do.body_crit_edge ], [ %call.6, %for.inc.5.do.body_crit_edge ], [ %call.7, %for.inc.6.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_prep_phy_incval_e822.__UNIQUE_ID_ddebug637, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_prep_phy_incval_e822, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !308

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_prep_phy_incval_e822.__UNIQUE_ID_ddebug637, ptr noundef %dev, ptr noundef nonnull @.str.83, i32 noundef %port.019.lcssa, i32 noundef %call.lcssa) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %do.body, %for.inc.6.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.lcssa, %if.then6 ], [ %call.lcssa, %do.body ], [ 0, %for.inc.6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_ptp_write_incval_locked(ptr noundef %hw, i64 noundef %incval) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @ice_ptp_lock(ptr noundef %hw)
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @ice_ptp_write_incval(ptr noundef %hw, i64 noundef %incval)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !322
  tail call void @arm_heavy_mb() #7
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %pf_id.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 13
  %2 = ptrtoint ptr %pf_id.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pf_id.i, align 1
  %conv.i = zext i8 %3 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 559232
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !320
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_ptp_adj_clock(ptr noundef %hw, i32 noundef %adj) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tmr_index_owned = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6, i32 5
  %0 = ptrtoint ptr %tmr_index_owned to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tmr_index_owned, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !331
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %conv = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 559368
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !332
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %adj)
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %add7 = add nuw nsw i32 %mul, 559376
  %add.ptr8 = getelementptr i8, ptr %6, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %4) #7, !srcloc !320
  %call = tail call zeroext i1 @ice_is_e810(ptr noundef %hw) #7
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call fastcc i32 @ice_ptp_prep_phy_adj_e810(ptr noundef %hw, i32 noundef %adj)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %adj)
  %cmp.i = icmp sgt i32 %adj, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %conv17.i = zext i32 %adj to i64
  %shl.i = shl nuw nsw i64 %conv17.i, 32
  br label %if.end.i

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i32 0, %adj
  %conv116.i = zext i32 %sub.i to i64
  %shl2.neg.i = mul nsw i64 %conv116.i, -4294967296
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %cycles.0.i = phi i64 [ %shl.i, %if.then.i ], [ %shl2.neg.i, %if.else.i ]
  %call.i = tail call i32 @ice_ptp_prep_port_adj_e822(ptr noundef %hw, i8 noundef zeroext 0, i64 noundef %cycles.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.i:                                       ; preds = %if.end.i
  %call.1.i = tail call i32 @ice_ptp_prep_port_adj_e822(ptr noundef %hw, i8 noundef zeroext 1, i64 noundef %cycles.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call i32 @ice_ptp_prep_port_adj_e822(ptr noundef %hw, i8 noundef zeroext 2, i64 noundef %cycles.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.cleanup_crit_edge

for.cond.1.i.cleanup_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = tail call i32 @ice_ptp_prep_port_adj_e822(ptr noundef %hw, i8 noundef zeroext 3, i64 noundef %cycles.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.cond.3.i, label %for.cond.2.i.cleanup_crit_edge

for.cond.2.i.cleanup_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %call.4.i = tail call i32 @ice_ptp_prep_port_adj_e822(ptr noundef %hw, i8 noundef zeroext 4, i64 noundef %cycles.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool.not.4.i, label %for.cond.4.i, label %for.cond.3.i.cleanup_crit_edge

for.cond.3.i.cleanup_crit_edge:                   ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %call.5.i = tail call i32 @ice_ptp_prep_port_adj_e822(ptr noundef %hw, i8 noundef zeroext 5, i64 noundef %cycles.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %tobool.not.5.i = icmp eq i32 %call.5.i, 0
  br i1 %tobool.not.5.i, label %for.cond.5.i, label %for.cond.4.i.cleanup_crit_edge

for.cond.4.i.cleanup_crit_edge:                   ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %call.6.i = tail call i32 @ice_ptp_prep_port_adj_e822(ptr noundef %hw, i8 noundef zeroext 6, i64 noundef %cycles.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %tobool.not.6.i = icmp eq i32 %call.6.i, 0
  br i1 %tobool.not.6.i, label %for.cond.6.i, label %for.cond.5.i.cleanup_crit_edge

for.cond.5.i.cleanup_crit_edge:                   ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.6.i:                                     ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.7.i = tail call i32 @ice_ptp_prep_port_adj_e822(ptr noundef %hw, i8 noundef zeroext 7, i64 noundef %cycles.0.i) #7
  br label %if.end

if.end:                                           ; preds = %for.cond.6.i, %if.then
  %err.0 = phi i32 [ %call9, %if.then ], [ %call.7.i, %for.cond.6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not = icmp eq i32 %err.0, 0
  br i1 %tobool.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call fastcc i32 @ice_ptp_tmr_cmd(ptr noundef %hw, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %for.cond.5.i.cleanup_crit_edge, %for.cond.4.i.cleanup_crit_edge, %for.cond.3.i.cleanup_crit_edge, %for.cond.2.i.cleanup_crit_edge, %for.cond.1.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ %err.0, %if.end.cleanup_crit_edge ], [ %call.6.i, %for.cond.5.i.cleanup_crit_edge ], [ %call.5.i, %for.cond.4.i.cleanup_crit_edge ], [ %call.4.i, %for.cond.3.i.cleanup_crit_edge ], [ %call.3.i, %for.cond.2.i.cleanup_crit_edge ], [ %call.2.i, %for.cond.1.i.cleanup_crit_edge ], [ %call.1.i, %for.cond.i.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_ptp_prep_phy_adj_e810(ptr noundef %hw, i32 noundef %adj) unnamed_addr #1 align 64 {
entry:
  %msg.i50 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tmr_index_owned = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6, i32 5
  %0 = ptrtoint ptr %tmr_index_owned to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tmr_index_owned, align 4
  %conv = zext i8 %1 to i16
  %mul = shl nuw nsw i16 %conv, 5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %conv.i = add nuw nsw i16 %mul, 888
  %msg_addr_low.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 2
  %2 = ptrtoint ptr %msg_addr_low.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv.i, ptr %msg_addr_low.i, align 2
  %msg_addr_high.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 3
  %3 = ptrtoint ptr %msg_addr_high.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 768, ptr %msg_addr_high.i, align 4
  %opcode.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 1
  %4 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %opcode.i, align 1
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %msg.i, align 4
  %data.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 4
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %data.i, align 4
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end7, label %do.body.i

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e810.__UNIQUE_ID_ddebug669, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_prep_phy_adj_e810, %if.then7.i)) #7
          to label %do.body [label %if.then7.i], !srcloc !308

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e810.__UNIQUE_ID_ddebug669, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %call.i) #7
  br label %do.body

do.body:                                          ; preds = %if.then7.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_prep_phy_adj_e810.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_prep_phy_adj_e810, %if.then5)) #7
          to label %cleanup [label %if.then5], !srcloc !308

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_prep_phy_adj_e810.__UNIQUE_ID_ddebug677, ptr noundef %dev, ptr noundef nonnull @.str.85, i32 noundef %call.i) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i50) #7
  %conv.i51 = add nuw nsw i16 %mul, 892
  %msg_addr_low.i52 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i50, i32 0, i32 2
  %11 = ptrtoint ptr %msg_addr_low.i52 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i51, ptr %msg_addr_low.i52, align 2
  %msg_addr_high.i54 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i50, i32 0, i32 3
  %12 = ptrtoint ptr %msg_addr_high.i54 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 768, ptr %msg_addr_high.i54, align 4
  %opcode.i55 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i50, i32 0, i32 1
  %13 = ptrtoint ptr %opcode.i55 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %opcode.i55, align 1
  %14 = ptrtoint ptr %msg.i50 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %msg.i50, align 4
  %data.i56 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i50, i32 0, i32 4
  %15 = ptrtoint ptr %data.i56 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %adj, ptr %data.i56, align 4
  %call.i57 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool.not.i58 = icmp eq i32 %call.i57, 0
  br i1 %tobool.not.i58, label %ice_write_phy_reg_e810.exit63.thread, label %do.body.i59

ice_write_phy_reg_e810.exit63.thread:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i50) #7
  br label %cleanup

do.body.i59:                                      ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e810.__UNIQUE_ID_ddebug669, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_prep_phy_adj_e810, %if.then7.i62)) #7
          to label %do.body14 [label %if.then7.i62], !srcloc !308

if.then7.i62:                                     ; preds = %do.body.i59
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i60 = getelementptr i8, ptr %hw, i32 -2960
  %16 = ptrtoint ptr %add.ptr.i60 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i60, align 8
  %dev.i61 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e810.__UNIQUE_ID_ddebug669, ptr noundef %dev.i61, ptr noundef nonnull @.str.3, i32 noundef %call.i57) #7
  br label %do.body14

do.body14:                                        ; preds = %if.then7.i62, %do.body.i59
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i50) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_prep_phy_adj_e810.__UNIQUE_ID_ddebug678, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_prep_phy_adj_e810, %if.then26)) #7
          to label %cleanup [label %if.then26], !srcloc !308

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr29 = getelementptr i8, ptr %hw, i32 -2960
  %18 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr29, align 8
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_prep_phy_adj_e810.__UNIQUE_ID_ddebug678, ptr noundef %dev31, ptr noundef nonnull @.str.86, i32 noundef %call.i57) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %do.body14, %ice_write_phy_reg_e810.exit63.thread, %if.then5, %do.body
  %retval.0 = phi i32 [ %call.i, %if.then5 ], [ %call.i57, %if.then26 ], [ %call.i, %do.body ], [ 0, %ice_write_phy_reg_e810.exit63.thread ], [ %call.i57, %do.body14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_read_phy_tstamp(ptr noundef %hw, i8 noundef zeroext %block, i8 noundef zeroext %idx, ptr nocapture noundef writeonly %tstamp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @ice_is_e810(ptr noundef %hw) #7
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @ice_read_phy_tstamp_e810(ptr noundef %hw, i8 noundef zeroext %block, i8 noundef zeroext %idx, ptr noundef %tstamp)
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call fastcc i32 @ice_read_phy_tstamp_e822(ptr noundef %hw, i8 noundef zeroext %block, i8 noundef zeroext %idx, ptr noundef %tstamp)
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_read_phy_tstamp_e810(ptr noundef %hw, i8 noundef zeroext %lport, i8 noundef zeroext %idx, ptr nocapture noundef writeonly %tstamp) unnamed_addr #1 align 64 {
entry:
  %msg.i61 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %lport to i32
  %mul = shl nuw nsw i32 %conv, 12
  %add = add nuw nsw i32 %mul, 50921472
  %conv1 = zext i8 %idx to i32
  %mul2 = shl nuw nsw i32 %conv1, 3
  %add3 = or i32 %add, %mul2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %0 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %conv.i = trunc i32 %add3 to i16
  %msg_addr_low.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 2
  %2 = ptrtoint ptr %msg_addr_low.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv.i, ptr %msg_addr_low.i, align 2
  %shr.i = lshr i32 %add, 16
  %msg_addr_high.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 3
  %3 = ptrtoint ptr %msg_addr_high.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shr.i, ptr %msg_addr_high.i, align 4
  %opcode.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 1
  %4 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %opcode.i, align 1
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %msg.i, align 4
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end16, label %do.body.i

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_phy_reg_e810.__UNIQUE_ID_ddebug668, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_read_phy_tstamp_e810, %if.then7.i)) #7
          to label %do.body [label %if.then7.i], !srcloc !308

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_phy_reg_e810.__UNIQUE_ID_ddebug668, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %call.i) #7
  br label %do.body

do.body:                                          ; preds = %if.then7.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_phy_tstamp_e810.__UNIQUE_ID_ddebug670, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_read_phy_tstamp_e810, %if.then14)) #7
          to label %cleanup [label %if.then14], !srcloc !308

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_phy_tstamp_e810.__UNIQUE_ID_ddebug670, ptr noundef %dev, ptr noundef nonnull @.str.88, i32 noundef %call.i) #7
  br label %cleanup

if.end16:                                         ; preds = %entry
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %0, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %add6 = add nuw nsw i32 %mul, 50921476
  %add9 = or i32 %add6, %mul2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i61) #7
  %12 = getelementptr inbounds i8, ptr %msg.i61, i32 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %12, align 4
  %conv.i62 = trunc i32 %add9 to i16
  %msg_addr_low.i63 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i61, i32 0, i32 2
  %14 = ptrtoint ptr %msg_addr_low.i63 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i62, ptr %msg_addr_low.i63, align 2
  %shr.i64 = lshr i32 %add6, 16
  %msg_addr_high.i65 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i61, i32 0, i32 3
  %15 = ptrtoint ptr %msg_addr_high.i65 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr.i64, ptr %msg_addr_high.i65, align 4
  %opcode.i66 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i61, i32 0, i32 1
  %16 = ptrtoint ptr %opcode.i66 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %opcode.i66, align 1
  %17 = ptrtoint ptr %msg.i61 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %msg.i61, align 4
  %call.i67 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool.not.i68 = icmp eq i32 %call.i67, 0
  br i1 %tobool.not.i68, label %if.end41, label %do.body.i69

do.body.i69:                                      ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_phy_reg_e810.__UNIQUE_ID_ddebug668, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_read_phy_tstamp_e810, %if.then7.i72)) #7
          to label %do.body20 [label %if.then7.i72], !srcloc !308

if.then7.i72:                                     ; preds = %do.body.i69
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i70 = getelementptr i8, ptr %hw, i32 -2960
  %18 = ptrtoint ptr %add.ptr.i70 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i70, align 8
  %dev.i71 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_phy_reg_e810.__UNIQUE_ID_ddebug668, ptr noundef %dev.i71, ptr noundef nonnull @.str.3, i32 noundef %call.i67) #7
  br label %do.body20

do.body20:                                        ; preds = %if.then7.i72, %do.body.i69
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i61) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_phy_tstamp_e810.__UNIQUE_ID_ddebug671, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_read_phy_tstamp_e810, %if.then32)) #7
          to label %cleanup [label %if.then32], !srcloc !308

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr35 = getelementptr i8, ptr %hw, i32 -2960
  %20 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr35, align 8
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_phy_tstamp_e810.__UNIQUE_ID_ddebug671, ptr noundef %dev37, ptr noundef nonnull @.str.89, i32 noundef %call.i67) #7
  br label %cleanup

if.end41:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %12, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i61) #7
  %conv42 = zext i32 %23 to i64
  %shl = shl nuw i64 %conv42, 32
  %conv43 = zext i32 %11 to i64
  %or = or i64 %shl, %conv43
  %24 = ptrtoint ptr %tstamp to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %or, ptr %tstamp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then32, %do.body20, %if.then14, %do.body
  %retval.0 = phi i32 [ 0, %if.end41 ], [ %call.i, %if.then14 ], [ %call.i67, %if.then32 ], [ %call.i, %do.body ], [ %call.i67, %do.body20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_read_phy_tstamp_e822(ptr noundef %hw, i8 noundef zeroext %quad, i8 noundef zeroext %idx, ptr nocapture noundef writeonly %tstamp) unnamed_addr #1 align 64 {
entry:
  %msg.i59 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %idx to i16
  %mul = shl nuw nsw i16 %conv, 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %0 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %quad)
  %cmp.i = icmp ugt i8 %quad, 1
  br i1 %cmp.i, label %entry.ice_read_quad_reg_e822.exit.thread_crit_edge, label %if.end.i

entry.ice_read_quad_reg_e822.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_read_quad_reg_e822.exit.thread

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %msg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %quad)
  %cmp.i.i = icmp eq i8 %quad, 0
  %addr.0.v.i.i = select i1 %cmp.i.i, i32 9, i32 17
  %addr.0.i.i = add nuw nsw i16 %mul, 18944
  %msg_addr_low.i.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 2
  %3 = ptrtoint ptr %msg_addr_low.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %addr.0.i.i, ptr %msg_addr_low.i.i, align 2
  %msg_addr_high.i.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 3
  %4 = ptrtoint ptr %msg_addr_high.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %addr.0.v.i.i, ptr %msg_addr_high.i.i, align 4
  %opcode.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 1
  %5 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %opcode.i, align 1
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i72, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_quad_reg_e822.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_read_phy_tstamp_e822, %if.then7.i)) #7
          to label %ice_read_quad_reg_e822.exit [label %if.then7.i], !srcloc !308

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_quad_reg_e822.__UNIQUE_ID_ddebug624, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %call.i) #7
  br label %ice_read_quad_reg_e822.exit.thread

ice_read_quad_reg_e822.exit.thread:               ; preds = %if.then7.i, %entry.ice_read_quad_reg_e822.exit.thread_crit_edge
  %retval.0.i58.ph = phi i32 [ %call.i, %if.then7.i ], [ -22, %entry.ice_read_quad_reg_e822.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %do.body

ice_read_quad_reg_e822.exit:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %do.body

do.body:                                          ; preds = %ice_read_quad_reg_e822.exit, %ice_read_quad_reg_e822.exit.thread
  %retval.0.i5884 = phi i32 [ %retval.0.i58.ph, %ice_read_quad_reg_e822.exit.thread ], [ %call.i, %ice_read_quad_reg_e822.exit ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_phy_tstamp_e822.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_read_phy_tstamp_e822, %if.then11)) #7
          to label %cleanup [label %if.then11], !srcloc !308

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_phy_tstamp_e822.__UNIQUE_ID_ddebug626, ptr noundef %dev, ptr noundef nonnull @.str.88, i32 noundef %retval.0.i5884) #7
  br label %cleanup

if.end.i72:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %0, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i59) #7
  %12 = getelementptr inbounds i8, ptr %msg.i59, i32 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %12, align 4
  %14 = ptrtoint ptr %msg.i59 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %msg.i59, align 4
  %addr.0.i.i64 = add nuw nsw i16 %mul, 18948
  %msg_addr_low.i.i66 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i59, i32 0, i32 2
  %15 = ptrtoint ptr %msg_addr_low.i.i66 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %addr.0.i.i64, ptr %msg_addr_low.i.i66, align 2
  %msg_addr_high.i.i68 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i59, i32 0, i32 3
  %16 = ptrtoint ptr %msg_addr_high.i.i68 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %addr.0.v.i.i, ptr %msg_addr_high.i.i68, align 4
  %opcode.i69 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i59, i32 0, i32 1
  %17 = ptrtoint ptr %opcode.i69 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %opcode.i69, align 1
  %call.i70 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i59) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool.not.i71 = icmp eq i32 %call.i70, 0
  br i1 %tobool.not.i71, label %if.end38, label %do.body.i73

do.body.i73:                                      ; preds = %if.end.i72
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_quad_reg_e822.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_read_phy_tstamp_e822, %if.then7.i76)) #7
          to label %do.body17 [label %if.then7.i76], !srcloc !308

if.then7.i76:                                     ; preds = %do.body.i73
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i74 = getelementptr i8, ptr %hw, i32 -2960
  %18 = ptrtoint ptr %add.ptr.i74 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i74, align 8
  %dev.i75 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_quad_reg_e822.__UNIQUE_ID_ddebug624, ptr noundef %dev.i75, ptr noundef nonnull @.str.3, i32 noundef %call.i70) #7
  br label %do.body17

do.body17:                                        ; preds = %if.then7.i76, %do.body.i73
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i59) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_phy_tstamp_e822.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_read_phy_tstamp_e822, %if.then29)) #7
          to label %cleanup [label %if.then29], !srcloc !308

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr32 = getelementptr i8, ptr %hw, i32 -2960
  %20 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr32, align 8
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_phy_tstamp_e822.__UNIQUE_ID_ddebug627, ptr noundef %dev34, ptr noundef nonnull @.str.89, i32 noundef %call.i70) #7
  br label %cleanup

if.end38:                                         ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %12, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i59) #7
  %conv39 = zext i32 %23 to i64
  %shl = shl nuw nsw i64 %conv39, 8
  %24 = and i32 %11, 255
  %and = zext i32 %24 to i64
  %or = or i64 %shl, %and
  %25 = ptrtoint ptr %tstamp to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %or, ptr %tstamp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then29, %do.body17, %if.then11, %do.body
  %retval.0 = phi i32 [ 0, %if.end38 ], [ %retval.0.i5884, %if.then11 ], [ %call.i70, %if.then29 ], [ %retval.0.i5884, %do.body ], [ %call.i70, %do.body17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_clear_phy_tstamp(ptr noundef %hw, i8 noundef zeroext %block, i8 noundef zeroext %idx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @ice_is_e810(ptr noundef %hw) #7
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @ice_clear_phy_tstamp_e810(ptr noundef %hw, i8 noundef zeroext %block, i8 noundef zeroext %idx)
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call fastcc i32 @ice_clear_phy_tstamp_e822(ptr noundef %hw, i8 noundef zeroext %block, i8 noundef zeroext %idx)
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_clear_phy_tstamp_e810(ptr noundef %hw, i8 noundef zeroext %lport, i8 noundef zeroext %idx) unnamed_addr #1 align 64 {
entry:
  %msg.i57 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %lport to i32
  %mul = shl nuw nsw i32 %conv, 12
  %add = add nuw nsw i32 %mul, 50921472
  %conv1 = zext i8 %idx to i32
  %mul2 = shl nuw nsw i32 %conv1, 3
  %add3 = or i32 %add, %mul2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %conv.i = trunc i32 %add3 to i16
  %msg_addr_low.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 2
  %0 = ptrtoint ptr %msg_addr_low.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv.i, ptr %msg_addr_low.i, align 2
  %shr.i = lshr i32 %add, 16
  %msg_addr_high.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 3
  %1 = ptrtoint ptr %msg_addr_high.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %shr.i, ptr %msg_addr_high.i, align 4
  %opcode.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 1
  %2 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %opcode.i, align 1
  %3 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %msg.i, align 4
  %data.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 4
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %data.i, align 4
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end16, label %do.body.i

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e810.__UNIQUE_ID_ddebug669, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_clear_phy_tstamp_e810, %if.then7.i)) #7
          to label %do.body [label %if.then7.i], !srcloc !308

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e810.__UNIQUE_ID_ddebug669, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %call.i) #7
  br label %do.body

do.body:                                          ; preds = %if.then7.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_clear_phy_tstamp_e810.__UNIQUE_ID_ddebug672, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_clear_phy_tstamp_e810, %if.then14)) #7
          to label %cleanup [label %if.then14], !srcloc !308

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_clear_phy_tstamp_e810.__UNIQUE_ID_ddebug672, ptr noundef %dev, ptr noundef nonnull @.str.92, i32 noundef %call.i) #7
  br label %cleanup

if.end16:                                         ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %add6 = add nuw nsw i32 %mul, 50921476
  %add9 = or i32 %add6, %mul2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i57) #7
  %conv.i58 = trunc i32 %add9 to i16
  %msg_addr_low.i59 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i57, i32 0, i32 2
  %9 = ptrtoint ptr %msg_addr_low.i59 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i58, ptr %msg_addr_low.i59, align 2
  %shr.i60 = lshr i32 %add6, 16
  %msg_addr_high.i61 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i57, i32 0, i32 3
  %10 = ptrtoint ptr %msg_addr_high.i61 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr.i60, ptr %msg_addr_high.i61, align 4
  %opcode.i62 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i57, i32 0, i32 1
  %11 = ptrtoint ptr %opcode.i62 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %opcode.i62, align 1
  %12 = ptrtoint ptr %msg.i57 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %msg.i57, align 4
  %data.i63 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i57, i32 0, i32 4
  %13 = ptrtoint ptr %data.i63 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %data.i63, align 4
  %call.i64 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool.not.i65 = icmp eq i32 %call.i64, 0
  br i1 %tobool.not.i65, label %ice_write_phy_reg_e810.exit70.thread, label %do.body.i66

ice_write_phy_reg_e810.exit70.thread:             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i57) #7
  br label %cleanup

do.body.i66:                                      ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e810.__UNIQUE_ID_ddebug669, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_clear_phy_tstamp_e810, %if.then7.i69)) #7
          to label %do.body20 [label %if.then7.i69], !srcloc !308

if.then7.i69:                                     ; preds = %do.body.i66
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i67 = getelementptr i8, ptr %hw, i32 -2960
  %14 = ptrtoint ptr %add.ptr.i67 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i67, align 8
  %dev.i68 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e810.__UNIQUE_ID_ddebug669, ptr noundef %dev.i68, ptr noundef nonnull @.str.3, i32 noundef %call.i64) #7
  br label %do.body20

do.body20:                                        ; preds = %if.then7.i69, %do.body.i66
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i57) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_clear_phy_tstamp_e810.__UNIQUE_ID_ddebug673, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_clear_phy_tstamp_e810, %if.then32)) #7
          to label %cleanup [label %if.then32], !srcloc !308

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr35 = getelementptr i8, ptr %hw, i32 -2960
  %16 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr35, align 8
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_clear_phy_tstamp_e810.__UNIQUE_ID_ddebug673, ptr noundef %dev37, ptr noundef nonnull @.str.93, i32 noundef %call.i64) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %do.body20, %ice_write_phy_reg_e810.exit70.thread, %if.then14, %do.body
  %retval.0 = phi i32 [ %call.i, %if.then14 ], [ %call.i64, %if.then32 ], [ %call.i, %do.body ], [ 0, %ice_write_phy_reg_e810.exit70.thread ], [ %call.i64, %do.body20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_clear_phy_tstamp_e822(ptr noundef %hw, i8 noundef zeroext %quad, i8 noundef zeroext %idx) unnamed_addr #1 align 64 {
entry:
  %msg.i55 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %idx to i16
  %mul = shl nuw nsw i16 %conv, 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %quad)
  %cmp.i = icmp ugt i8 %quad, 1
  br i1 %cmp.i, label %entry.ice_write_quad_reg_e822.exit.thread_crit_edge, label %if.end.i

entry.ice_write_quad_reg_e822.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_write_quad_reg_e822.exit.thread

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %msg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %quad)
  %cmp.i.i = icmp eq i8 %quad, 0
  %addr.0.v.i.i = select i1 %cmp.i.i, i32 9, i32 17
  %addr.0.i.i = add nuw nsw i16 %mul, 18944
  %msg_addr_low.i.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 2
  %1 = ptrtoint ptr %msg_addr_low.i.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %addr.0.i.i, ptr %msg_addr_low.i.i, align 2
  %msg_addr_high.i.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 3
  %2 = ptrtoint ptr %msg_addr_high.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %addr.0.v.i.i, ptr %msg_addr_high.i.i, align 4
  %opcode.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 1
  %3 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %opcode.i, align 1
  %data.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 4
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %data.i, align 4
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i69, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_quad_reg_e822.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_clear_phy_tstamp_e822, %if.then7.i)) #7
          to label %ice_write_quad_reg_e822.exit [label %if.then7.i], !srcloc !308

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_quad_reg_e822.__UNIQUE_ID_ddebug625, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %call.i) #7
  br label %ice_write_quad_reg_e822.exit.thread

ice_write_quad_reg_e822.exit.thread:              ; preds = %if.then7.i, %entry.ice_write_quad_reg_e822.exit.thread_crit_edge
  %retval.0.i54.ph = phi i32 [ %call.i, %if.then7.i ], [ -22, %entry.ice_write_quad_reg_e822.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %do.body

ice_write_quad_reg_e822.exit:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %do.body

do.body:                                          ; preds = %ice_write_quad_reg_e822.exit, %ice_write_quad_reg_e822.exit.thread
  %retval.0.i5478 = phi i32 [ %retval.0.i54.ph, %ice_write_quad_reg_e822.exit.thread ], [ %call.i, %ice_write_quad_reg_e822.exit ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_clear_phy_tstamp_e822.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_clear_phy_tstamp_e822, %if.then11)) #7
          to label %cleanup [label %if.then11], !srcloc !308

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_clear_phy_tstamp_e822.__UNIQUE_ID_ddebug628, ptr noundef %dev, ptr noundef nonnull @.str.92, i32 noundef %retval.0.i5478) #7
  br label %cleanup

if.end.i69:                                       ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i55) #7
  %9 = ptrtoint ptr %msg.i55 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %msg.i55, align 4
  %addr.0.i.i60 = add nuw nsw i16 %mul, 18948
  %msg_addr_low.i.i62 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i55, i32 0, i32 2
  %10 = ptrtoint ptr %msg_addr_low.i.i62 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %addr.0.i.i60, ptr %msg_addr_low.i.i62, align 2
  %msg_addr_high.i.i64 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i55, i32 0, i32 3
  %11 = ptrtoint ptr %msg_addr_high.i.i64 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %addr.0.v.i.i, ptr %msg_addr_high.i.i64, align 4
  %opcode.i65 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i55, i32 0, i32 1
  %12 = ptrtoint ptr %opcode.i65 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %opcode.i65, align 1
  %data.i66 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i55, i32 0, i32 4
  %13 = ptrtoint ptr %data.i66 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %data.i66, align 4
  %call.i67 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i55) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool.not.i68 = icmp eq i32 %call.i67, 0
  br i1 %tobool.not.i68, label %ice_write_quad_reg_e822.exit75.thread, label %do.body.i70

ice_write_quad_reg_e822.exit75.thread:            ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i55) #7
  br label %cleanup

do.body.i70:                                      ; preds = %if.end.i69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_quad_reg_e822.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_clear_phy_tstamp_e822, %if.then7.i73)) #7
          to label %do.body17 [label %if.then7.i73], !srcloc !308

if.then7.i73:                                     ; preds = %do.body.i70
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i71 = getelementptr i8, ptr %hw, i32 -2960
  %14 = ptrtoint ptr %add.ptr.i71 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i71, align 8
  %dev.i72 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_quad_reg_e822.__UNIQUE_ID_ddebug625, ptr noundef %dev.i72, ptr noundef nonnull @.str.3, i32 noundef %call.i67) #7
  br label %do.body17

do.body17:                                        ; preds = %if.then7.i73, %do.body.i70
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i55) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_clear_phy_tstamp_e822.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_clear_phy_tstamp_e822, %if.then29)) #7
          to label %cleanup [label %if.then29], !srcloc !308

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr32 = getelementptr i8, ptr %hw, i32 -2960
  %16 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr32, align 8
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_clear_phy_tstamp_e822.__UNIQUE_ID_ddebug629, ptr noundef %dev34, ptr noundef nonnull @.str.93, i32 noundef %call.i67) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %do.body17, %ice_write_quad_reg_e822.exit75.thread, %if.then11, %do.body
  %retval.0 = phi i32 [ %retval.0.i5478, %if.then11 ], [ %call.i67, %if.then29 ], [ %retval.0.i5478, %do.body ], [ 0, %ice_write_quad_reg_e822.exit75.thread ], [ %call.i67, %do.body17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_read_sma_ctrl_e810t(ptr noundef %hw, ptr nocapture noundef %data) local_unnamed_addr #1 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  %pin = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #7
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  %1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 1
  %io_expander_handle.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 74
  %2 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  %3 = ptrtoint ptr %io_expander_handle.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %io_expander_handle.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 1760) #7
  %node_type_ctx.i = getelementptr inbounds %struct.ice_aqc_link_topo_params, ptr %0, i32 0, i32 2
  %5 = ptrtoint ptr %node_type_ctx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %node_type_ctx.i, align 2
  %device_id.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 8
  %6 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device_id.i, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.129)
  switch i16 %7, label %if.end.i.ice_get_pca9575_handle.exit.thread_crit_edge [
    i16 5523, label %if.end.i.if.end11.i_crit_edge
    i16 5522, label %if.then8.i
  ]

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.end.i.ice_get_pca9575_handle.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_get_pca9575_handle.exit.thread

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end.i.if.end11.i_crit_edge
  %idx.0.i = phi i8 [ 1, %if.then8.i ], [ 2, %if.end.i.if.end11.i_crit_edge ]
  %index.i = getelementptr inbounds %struct.ice_aqc_link_topo_params, ptr %0, i32 0, i32 3
  %9 = ptrtoint ptr %index.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %idx.0.i, ptr %index.i, align 1
  %call.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end11.i.ice_get_pca9575_handle.exit.thread_crit_edge

if.end11.i.ice_get_pca9575_handle.exit.thread_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_get_pca9575_handle.exit.thread

if.end16.i:                                       ; preds = %if.end11.i
  %node_part_num.i = getelementptr inbounds %struct.ice_aqc_get_link_topo, ptr %0, i32 0, i32 1
  %10 = ptrtoint ptr %node_part_num.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %node_part_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %11)
  %cmp19.not.i = icmp eq i8 %11, 33
  br i1 %cmp19.not.i, label %if.end22.i, label %if.end16.i.ice_get_pca9575_handle.exit.thread_crit_edge

if.end16.i.ice_get_pca9575_handle.exit.thread_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_get_pca9575_handle.exit.thread

if.end22.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 4
  %14 = call i16 @llvm.bswap.i16(i16 %13) #7
  %15 = ptrtoint ptr %io_expander_handle.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %io_expander_handle.i, align 4
  br label %if.end

ice_get_pca9575_handle.exit.thread:               ; preds = %if.end16.i.ice_get_pca9575_handle.exit.thread_crit_edge, %if.end11.i.ice_get_pca9575_handle.exit.thread_crit_edge, %if.end.i.ice_get_pca9575_handle.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #7
  br label %cleanup14

if.end:                                           ; preds = %if.end22.i, %entry.if.end_crit_edge
  %handle.0 = phi i16 [ %14, %if.end22.i ], [ %4, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #7
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %data, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pin) #7
  %17 = ptrtoint ptr %pin to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %pin, align 1, !annotation !309
  %call4 = call i32 @ice_aq_get_gpio(ptr noundef %hw, i16 noundef zeroext %handle.0, i8 noundef zeroext 11, ptr noundef nonnull %pin, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.inc, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %call4.lcssa = phi i32 [ %call4, %if.end.cleanup_crit_edge ], [ %call4.1, %for.inc.cleanup_crit_edge ], [ %call4.2, %for.inc.1.cleanup_crit_edge ], [ %call4.3, %for.inc.2.cleanup_crit_edge ], [ %call4.4, %for.inc.3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pin) #7
  br label %cleanup14

for.inc:                                          ; preds = %if.end
  %18 = ptrtoint ptr %pin to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pin, align 1, !range !333
  %20 = shl nuw nsw i8 %19, 3
  %21 = xor i8 %20, 8
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data, align 1
  %conv13 = or i8 %23, %21
  store i8 %conv13, ptr %data, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pin) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pin) #7
  %24 = ptrtoint ptr %pin to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %pin, align 1, !annotation !309
  %call4.1 = call i32 @ice_aq_get_gpio(ptr noundef %hw, i16 noundef zeroext %handle.0, i8 noundef zeroext 12, ptr noundef nonnull %pin, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1)
  %tobool5.not.1 = icmp eq i32 %call4.1, 0
  br i1 %tobool5.not.1, label %for.inc.1, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  %25 = ptrtoint ptr %pin to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pin, align 1, !range !333
  %27 = shl nuw nsw i8 %26, 4
  %28 = xor i8 %27, 16
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %data, align 1
  %conv13.1 = or i8 %30, %28
  store i8 %conv13.1, ptr %data, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pin) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pin) #7
  %31 = ptrtoint ptr %pin to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %pin, align 1, !annotation !309
  %call4.2 = call i32 @ice_aq_get_gpio(ptr noundef %hw, i16 noundef zeroext %handle.0, i8 noundef zeroext 13, ptr noundef nonnull %pin, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2)
  %tobool5.not.2 = icmp eq i32 %call4.2, 0
  br i1 %tobool5.not.2, label %for.inc.2, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.2:                                        ; preds = %for.inc.1
  %32 = ptrtoint ptr %pin to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %pin, align 1, !range !333
  %34 = shl nuw nsw i8 %33, 5
  %35 = xor i8 %34, 32
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %data, align 1
  %conv13.2 = or i8 %37, %35
  store i8 %conv13.2, ptr %data, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pin) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pin) #7
  %38 = ptrtoint ptr %pin to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %pin, align 1, !annotation !309
  %call4.3 = call i32 @ice_aq_get_gpio(ptr noundef %hw, i16 noundef zeroext %handle.0, i8 noundef zeroext 14, ptr noundef nonnull %pin, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.3)
  %tobool5.not.3 = icmp eq i32 %call4.3, 0
  br i1 %tobool5.not.3, label %for.inc.3, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.3:                                        ; preds = %for.inc.2
  %39 = ptrtoint ptr %pin to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pin, align 1, !range !333
  %41 = shl nuw nsw i8 %40, 6
  %42 = xor i8 %41, 64
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %data, align 1
  %conv13.3 = or i8 %44, %42
  store i8 %conv13.3, ptr %data, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pin) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pin) #7
  %45 = ptrtoint ptr %pin to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %pin, align 1, !annotation !309
  %call4.4 = call i32 @ice_aq_get_gpio(ptr noundef %hw, i16 noundef zeroext %handle.0, i8 noundef zeroext 15, ptr noundef nonnull %pin, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.4)
  %tobool5.not.4 = icmp eq i32 %call4.4, 0
  br i1 %tobool5.not.4, label %for.inc.4, label %for.inc.3.cleanup_crit_edge

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %pin to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pin, align 1, !range !333
  %48 = xor i8 %47, -1
  %49 = shl i8 %48, 7
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %data, align 1
  %conv13.4 = or i8 %51, %49
  store i8 %conv13.4, ptr %data, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pin) #7
  br label %cleanup14

cleanup14:                                        ; preds = %for.inc.4, %cleanup, %ice_get_pca9575_handle.exit.thread
  %retval.0 = phi i32 [ %call4.lcssa, %cleanup ], [ -95, %ice_get_pca9575_handle.exit.thread ], [ 0, %for.inc.4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_get_gpio(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_write_sma_ctrl_e810t(ptr noundef %hw, i8 noundef zeroext %data) local_unnamed_addr #1 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #7
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  %1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 1
  %io_expander_handle.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 74
  %2 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  %3 = ptrtoint ptr %io_expander_handle.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %io_expander_handle.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ice_get_pca9575_handle.exit_crit_edge

entry.ice_get_pca9575_handle.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_get_pca9575_handle.exit

if.end.i:                                         ; preds = %entry
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 1760) #7
  %node_type_ctx.i = getelementptr inbounds %struct.ice_aqc_link_topo_params, ptr %0, i32 0, i32 2
  %5 = ptrtoint ptr %node_type_ctx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %node_type_ctx.i, align 2
  %device_id.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 8
  %6 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device_id.i, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.130)
  switch i16 %7, label %if.end.i.ice_get_pca9575_handle.exit.thread_crit_edge [
    i16 5523, label %if.end.i.if.end11.i_crit_edge
    i16 5522, label %if.then8.i
  ]

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.end.i.ice_get_pca9575_handle.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_get_pca9575_handle.exit.thread

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end.i.if.end11.i_crit_edge
  %idx.0.i = phi i8 [ 1, %if.then8.i ], [ 2, %if.end.i.if.end11.i_crit_edge ]
  %index.i = getelementptr inbounds %struct.ice_aqc_link_topo_params, ptr %0, i32 0, i32 3
  %9 = ptrtoint ptr %index.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %idx.0.i, ptr %index.i, align 1
  %call.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end11.i.ice_get_pca9575_handle.exit.thread_crit_edge

if.end11.i.ice_get_pca9575_handle.exit.thread_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_get_pca9575_handle.exit.thread

if.end16.i:                                       ; preds = %if.end11.i
  %node_part_num.i = getelementptr inbounds %struct.ice_aqc_get_link_topo, ptr %0, i32 0, i32 1
  %10 = ptrtoint ptr %node_part_num.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %node_part_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %11)
  %cmp19.not.i = icmp eq i8 %11, 33
  br i1 %cmp19.not.i, label %if.end22.i, label %if.end16.i.ice_get_pca9575_handle.exit.thread_crit_edge

if.end16.i.ice_get_pca9575_handle.exit.thread_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_get_pca9575_handle.exit.thread

if.end22.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 4
  %14 = call i16 @llvm.bswap.i16(i16 %13) #7
  %15 = ptrtoint ptr %io_expander_handle.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %io_expander_handle.i, align 4
  br label %ice_get_pca9575_handle.exit

ice_get_pca9575_handle.exit.thread:               ; preds = %if.end16.i.ice_get_pca9575_handle.exit.thread_crit_edge, %if.end11.i.ice_get_pca9575_handle.exit.thread_crit_edge, %if.end.i.ice_get_pca9575_handle.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #7
  br label %cleanup12

ice_get_pca9575_handle.exit:                      ; preds = %if.end22.i, %entry.ice_get_pca9575_handle.exit_crit_edge
  %handle.0 = phi i16 [ %14, %if.end22.i ], [ %4, %entry.ice_get_pca9575_handle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #7
  %conv2 = zext i8 %data to i32
  %and = and i32 %conv2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %call8 = call i32 @ice_aq_set_gpio(ptr noundef %hw, i16 noundef zeroext %handle.0, i8 noundef zeroext 11, i1 noundef zeroext %tobool4.not, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.cond, label %ice_get_pca9575_handle.exit.cleanup12_crit_edge

ice_get_pca9575_handle.exit.cleanup12_crit_edge:  ; preds = %ice_get_pca9575_handle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup12

for.cond:                                         ; preds = %ice_get_pca9575_handle.exit
  %and.1 = and i32 %conv2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool4.not.1 = icmp eq i32 %and.1, 0
  %call8.1 = call i32 @ice_aq_set_gpio(ptr noundef %hw, i16 noundef zeroext %handle.0, i8 noundef zeroext 12, i1 noundef zeroext %tobool4.not.1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1)
  %tobool9.not.1 = icmp eq i32 %call8.1, 0
  br i1 %tobool9.not.1, label %for.cond.1, label %for.cond.cleanup12_crit_edge

for.cond.cleanup12_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup12

for.cond.1:                                       ; preds = %for.cond
  %and.2 = and i32 %conv2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool4.not.2 = icmp eq i32 %and.2, 0
  %call8.2 = call i32 @ice_aq_set_gpio(ptr noundef %hw, i16 noundef zeroext %handle.0, i8 noundef zeroext 13, i1 noundef zeroext %tobool4.not.2, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2)
  %tobool9.not.2 = icmp eq i32 %call8.2, 0
  br i1 %tobool9.not.2, label %for.cond.2, label %for.cond.1.cleanup12_crit_edge

for.cond.1.cleanup12_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup12

for.cond.2:                                       ; preds = %for.cond.1
  %and.3 = and i32 %conv2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool4.not.3 = icmp eq i32 %and.3, 0
  %call8.3 = call i32 @ice_aq_set_gpio(ptr noundef %hw, i16 noundef zeroext %handle.0, i8 noundef zeroext 14, i1 noundef zeroext %tobool4.not.3, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.3)
  %tobool9.not.3 = icmp eq i32 %call8.3, 0
  br i1 %tobool9.not.3, label %for.cond.3, label %for.cond.2.cleanup12_crit_edge

for.cond.2.cleanup12_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup12

for.cond.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  %and.4 = and i32 %conv2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool4.not.4 = icmp eq i32 %and.4, 0
  %call8.4 = call i32 @ice_aq_set_gpio(ptr noundef %hw, i16 noundef zeroext %handle.0, i8 noundef zeroext 15, i1 noundef zeroext %tobool4.not.4, ptr noundef null) #7
  br label %cleanup12

cleanup12:                                        ; preds = %for.cond.3, %for.cond.2.cleanup12_crit_edge, %for.cond.1.cleanup12_crit_edge, %for.cond.cleanup12_crit_edge, %ice_get_pca9575_handle.exit.cleanup12_crit_edge, %ice_get_pca9575_handle.exit.thread
  %retval.0 = phi i32 [ -95, %ice_get_pca9575_handle.exit.thread ], [ %call8, %ice_get_pca9575_handle.exit.cleanup12_crit_edge ], [ %call8.1, %for.cond.cleanup12_crit_edge ], [ %call8.2, %for.cond.1.cleanup12_crit_edge ], [ %call8.3, %for.cond.2.cleanup12_crit_edge ], [ %call8.4, %for.cond.3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_set_gpio(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ice_is_pca9575_present(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @ice_is_e810t(ptr noundef %hw) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #7
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  %1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 1
  %io_expander_handle.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 74
  %2 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  %3 = ptrtoint ptr %io_expander_handle.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %io_expander_handle.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

if.end.i:                                         ; preds = %if.end
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 1760) #7
  %node_type_ctx.i = getelementptr inbounds %struct.ice_aqc_link_topo_params, ptr %0, i32 0, i32 2
  %5 = ptrtoint ptr %node_type_ctx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %node_type_ctx.i, align 2
  %device_id.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 8
  %6 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device_id.i, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.131)
  switch i16 %7, label %if.end.i.ice_get_pca9575_handle.exit.thread_crit_edge [
    i16 5523, label %if.end.i.if.end11.i_crit_edge
    i16 5522, label %if.then8.i
  ]

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.end.i.ice_get_pca9575_handle.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_get_pca9575_handle.exit.thread

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end.i.if.end11.i_crit_edge
  %idx.0.i = phi i8 [ 1, %if.then8.i ], [ 2, %if.end.i.if.end11.i_crit_edge ]
  %index.i = getelementptr inbounds %struct.ice_aqc_link_topo_params, ptr %0, i32 0, i32 3
  %9 = ptrtoint ptr %index.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %idx.0.i, ptr %index.i, align 1
  %call.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end11.i.ice_get_pca9575_handle.exit.thread_crit_edge

if.end11.i.ice_get_pca9575_handle.exit.thread_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_get_pca9575_handle.exit.thread

if.end16.i:                                       ; preds = %if.end11.i
  %node_part_num.i = getelementptr inbounds %struct.ice_aqc_get_link_topo, ptr %0, i32 0, i32 1
  %10 = ptrtoint ptr %node_part_num.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %node_part_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %11)
  %cmp19.not.i = icmp eq i8 %11, 33
  br i1 %cmp19.not.i, label %if.end22.i, label %if.end16.i.ice_get_pca9575_handle.exit.thread_crit_edge

if.end16.i.ice_get_pca9575_handle.exit.thread_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_get_pca9575_handle.exit.thread

if.end22.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 4
  %14 = call i16 @llvm.bswap.i16(i16 %13) #7
  %15 = ptrtoint ptr %io_expander_handle.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %io_expander_handle.i, align 4
  br label %land.rhs

ice_get_pca9575_handle.exit.thread:               ; preds = %if.end16.i.ice_get_pca9575_handle.exit.thread_crit_edge, %if.end11.i.ice_get_pca9575_handle.exit.thread_crit_edge, %if.end.i.ice_get_pca9575_handle.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #7
  br label %cleanup

land.rhs:                                         ; preds = %if.end22.i, %if.end.land.rhs_crit_edge
  %handle.0 = phi i16 [ %14, %if.end22.i ], [ %4, %if.end.land.rhs_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %handle.0)
  %tobool2 = icmp ne i16 %handle.0, 0
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %ice_get_pca9575_handle.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %tobool2, %land.rhs ], [ false, %ice_get_pca9575_handle.exit.thread ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_e810t(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_ptp_init_phc(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tmr_index_owned = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6, i32 5
  %0 = ptrtoint ptr %tmr_index_owned to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tmr_index_owned, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !334
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %conv = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 559112
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #7, !srcloc !320
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %add4 = add nuw nsw i32 %mul, 559296
  %add.ptr5 = getelementptr i8, ptr %5, i32 %add4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !335
  %call7 = tail call zeroext i1 @ice_is_e810(ptr noundef %hw) #7
  br i1 %call7, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call fastcc i32 @ice_ptp_init_phc_e810(ptr noundef %hw)
  br label %cleanup

if.else:                                          ; preds = %entry
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 2294000
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !336
  %10 = or i32 %9, 100663296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !337
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 8
  %add.ptr3.i = getelementptr i8, ptr %12, i32 2294000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %10) #7, !srcloc !320
  %call4.i = tail call fastcc i32 @ice_init_cgu_e822(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = tail call fastcc i32 @ice_ptp_set_vernier_wl(ptr noundef %hw) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.else.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call8, %if.then ], [ %call5.i, %if.end.i ], [ %call4.i, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_ptp_init_phc_e810(ptr noundef %hw) unnamed_addr #1 align 64 {
entry:
  %msg.i.i = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  tail call void @arm_heavy_mb() #7
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 559128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !320
  %tmr_index_owned.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6, i32 5
  %2 = ptrtoint ptr %tmr_index_owned.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tmr_index_owned.i, align 4
  %conv.i = zext i8 %3 to i16
  %mul.i = shl nuw nsw i16 %conv.i, 2
  %add.i = add nuw nsw i16 %mul.i, 840
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %msg_addr_low.i.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %msg_addr_low.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %add.i, ptr %msg_addr_low.i.i, align 2
  %msg_addr_high.i.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %msg_addr_high.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 768, ptr %msg_addr_high.i.i, align 4
  %opcode.i.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %opcode.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %opcode.i.i, align 1
  %7 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %msg.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %data.i.i, align 4
  %call.i.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %ice_write_phy_reg_e810.exit.thread.i, label %do.body.i.i

ice_write_phy_reg_e810.exit.thread.i:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  br label %ice_ptp_init_phy_e810.exit

do.body.i.i:                                      ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e810.__UNIQUE_ID_ddebug669, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_init_phc_e810, %if.then7.i.i)) #7
          to label %do.body.i [label %if.then7.i.i], !srcloc !308

if.then7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %hw, i32 -2960
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e810.__UNIQUE_ID_ddebug669, ptr noundef %dev.i.i, ptr noundef nonnull @.str.3, i32 noundef %call.i.i) #7
  br label %do.body.i

do.body.i:                                        ; preds = %if.then7.i.i, %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_init_phy_e810.__UNIQUE_ID_ddebug674, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_init_phc_e810, %if.then5.i)) #7
          to label %ice_ptp_init_phy_e810.exit [label %if.then5.i], !srcloc !308

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_init_phy_e810.__UNIQUE_ID_ddebug674, ptr noundef %dev.i, ptr noundef nonnull @.str.27, i32 noundef %call.i.i) #7
  br label %ice_ptp_init_phy_e810.exit

ice_ptp_init_phy_e810.exit:                       ; preds = %if.then5.i, %do.body.i, %ice_write_phy_reg_e810.exit.thread.i
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_phy_get_speed_and_fec_e822(ptr noundef %hw, i8 noundef zeroext %port, ptr noundef writeonly %link_out, ptr noundef writeonly %fec_out) unnamed_addr #1 align 64 {
entry:
  %msg.i = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %0 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %conv.i.i = zext i8 %port to i32
  %rem.i.i = and i32 %conv.i.i, 7
  %2 = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.i = icmp eq i32 %2, 0
  %mul.i.i = shl nuw nsw i32 %rem.i.i, 13
  %add7.i.i = or i32 %mul.i.i, 525564
  %sub.neg.i.i = mul nsw i32 %rem.i.i, -8192
  %sub16.i.i = add nsw i32 %sub.neg.i.i, 1107196
  %conv18.sink.in.i.i = select i1 %cmp.i.i, i32 %add7.i.i, i32 %sub16.i.i
  %shr2556.sink.i.i = lshr i32 %conv18.sink.in.i.i, 16
  %conv18.sink.i.i = trunc i32 %conv18.sink.in.i.i to i16
  %3 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv18.sink.i.i, ptr %3, align 2
  %5 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr2556.sink.i.i, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %port)
  %cmp27.i.i = icmp ult i8 %port, 8
  %div54.mask.i.i = and i32 %conv.i.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div54.mask.i.i)
  %cmp31.i.i = icmp eq i32 %div54.mask.i.i, 8
  %..i.i = select i1 %cmp31.i.i, i8 3, i8 4
  %.sink.i.i = select i1 %cmp27.i.i, i8 2, i8 %..i.i
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink.i.i, ptr %msg.i, align 4
  %opcode.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 1
  %8 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %opcode.i, align 1
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end7, label %do.body.i

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_get_speed_and_fec_e822, %if.then5.i)) #7
          to label %do.body [label %if.then5.i], !srcloc !308

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %call.i) #7
  br label %do.body

do.body:                                          ; preds = %if.then5.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_phy_get_speed_and_fec_e822.__UNIQUE_ID_ddebug646, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_get_speed_and_fec_e822, %if.then5)) #7
          to label %cleanup [label %if.then5], !srcloc !308

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_phy_get_speed_and_fec_e822.__UNIQUE_ID_ddebug646, ptr noundef %dev, ptr noundef nonnull @.str.33) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %0, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %and = lshr i32 %14, 3
  %shr = and i32 %and, 3
  %and8 = and i32 %14, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr)
  %cmp = icmp eq i32 %shr, 2
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  %15 = zext i32 %and8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %and8, label %if.then9.cleanup_crit_edge [
    i32 2, label %if.then9.if.end19_crit_edge
    i32 4, label %sw.bb10
    i32 5, label %sw.bb11
  ]

if.then9.if.end19_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb10:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

sw.bb11:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and8)
  %16 = icmp ult i32 %and8, 5
  br i1 %16, label %switch.lookup, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.ice_phy_get_speed_and_fec_e822, i32 0, i32 %and8
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end19

if.end19:                                         ; preds = %switch.lookup, %sw.bb11, %sw.bb10, %if.then9.if.end19_crit_edge
  %link.0 = phi i32 [ 7, %sw.bb11 ], [ 6, %sw.bb10 ], [ 3, %if.then9.if.end19_crit_edge ], [ %switch.load, %switch.lookup ]
  %tobool20.not = icmp eq ptr %link_out, null
  br i1 %tobool20.not, label %if.end19.if.end22_crit_edge, label %if.then21

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %link_out to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %link.0, ptr %link_out, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end19.if.end22_crit_edge
  %tobool23.not = icmp eq ptr %fec_out, null
  br i1 %tobool23.not, label %if.end22.cleanup_crit_edge, label %if.then24

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %fec_out to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr, ptr %fec_out, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end22.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ %call.i, %if.then5 ], [ -5, %if.then9.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ], [ 0, %if.then24 ], [ 0, %if.end22.cleanup_crit_edge ], [ %call.i, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @div_u64(i64 noundef %dividend, i32 noundef %divisor) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %dividend)
  %cmp164.i = icmp ult i64 %dividend, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !313

if.then168.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i = trunc i64 %dividend to i32
  %div172.i = udiv i32 %conv169.i, %divisor
  %conv173.i = zext i32 %div172.i to i64
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %divisor, i64 %dividend) #10, !srcloc !314
  %asmresult1.i.i = extractvalue { i64, i64 } %0, 1
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %dividend.addr.0.i = phi i64 [ %conv173.i, %if.then168.i ], [ %asmresult1.i.i, %if.else174.i ]
  ret i64 %dividend.addr.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_write_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext %low_addr, i64 noundef %val) unnamed_addr #1 align 64 {
entry:
  %msg.i86 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %low_addr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.133)
  switch i16 %low_addr, label %do.body [
    i16 1220, label %entry.if.end6_crit_edge
    i16 1256, label %sw.bb1.i
    i16 1228, label %sw.bb2.i
    i16 1264, label %sw.bb3.i
    i16 1088, label %sw.bb4.i
    i16 1120, label %sw.bb5.i
    i16 1152, label %sw.bb6.i
    i16 1160, label %sw.bb7.i
    i16 1204, label %sw.bb8.i
    i16 1240, label %sw.bb9.i
    i16 1100, label %sw.bb10.i
    i16 1132, label %sw.bb11.i
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb9.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb10.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb11.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_64b_phy_reg_e822.__UNIQUE_ID_ddebug621, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_write_64b_phy_reg_e822, %if.then4)) #7
          to label %cleanup [label %if.then4], !srcloc !308

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %conv = zext i16 %low_addr to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_64b_phy_reg_e822.__UNIQUE_ID_ddebug621, ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %conv) #7
  br label %cleanup

if.end6:                                          ; preds = %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.if.end6_crit_edge
  %.sink.i = phi i32 [ 1136, %sw.bb11.i ], [ 1104, %sw.bb10.i ], [ 1244, %sw.bb9.i ], [ 1208, %sw.bb8.i ], [ 1164, %sw.bb7.i ], [ 1156, %sw.bb6.i ], [ 1124, %sw.bb5.i ], [ 1092, %sw.bb4.i ], [ 1268, %sw.bb3.i ], [ 1232, %sw.bb2.i ], [ 1260, %sw.bb1.i ], [ 1224, %entry.if.end6_crit_edge ]
  %conv7 = trunc i64 %val to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %conv.i.i = zext i8 %port to i32
  %rem.i.i = and i32 %conv.i.i, 7
  %3 = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 0
  %conv6.i.i = zext i16 %low_addr to i32
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i = or i32 %conv6.i.i, 524288
  %mul.i.i = shl nuw nsw i32 %rem.i.i, 13
  %add7.i.i = add nuw nsw i32 %add.i.i, %mul.i.i
  br label %ice_fill_phy_msg_e822.exit.i

if.else.i.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %sub.neg.i.i = mul nsw i32 %rem.i.i, -8192
  %add14.i.i = add nuw nsw i32 %conv6.i.i, 1105920
  %sub16.i.i = add nsw i32 %add14.i.i, %sub.neg.i.i
  br label %ice_fill_phy_msg_e822.exit.i

ice_fill_phy_msg_e822.exit.i:                     ; preds = %if.else.i.i, %if.then.i.i
  %conv18.sink.in.i.i = phi i32 [ %add7.i.i, %if.then.i.i ], [ %sub16.i.i, %if.else.i.i ]
  %shr2556.sink.i.i = lshr i32 %conv18.sink.in.i.i, 16
  %conv18.sink.i.i = trunc i32 %conv18.sink.in.i.i to i16
  %4 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv18.sink.i.i, ptr %4, align 2
  %6 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr2556.sink.i.i, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %port)
  %cmp27.i.i = icmp ult i8 %port, 8
  %div54.mask.i.i = and i32 %conv.i.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div54.mask.i.i)
  %cmp31.i.i = icmp eq i32 %div54.mask.i.i, 8
  %..i.i = select i1 %cmp31.i.i, i8 3, i8 4
  %.sink.i.i = select i1 %cmp27.i.i, i8 2, i8 %..i.i
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink.i.i, ptr %msg.i, align 4
  %opcode.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %opcode.i, align 1
  %data.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 4
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv7, ptr %data.i, align 4
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end35, label %do.body.i

do.body.i:                                        ; preds = %ice_fill_phy_msg_e822.exit.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_write_64b_phy_reg_e822, %if.then5.i)) #7
          to label %do.body13 [label %if.then5.i], !srcloc !308

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %call.i) #7
  br label %do.body13

do.body13:                                        ; preds = %if.then5.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_64b_phy_reg_e822.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_write_64b_phy_reg_e822, %if.then25)) #7
          to label %cleanup [label %if.then25], !srcloc !308

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr28 = getelementptr i8, ptr %hw, i32 -2960
  %13 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr28, align 8
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_64b_phy_reg_e822.__UNIQUE_ID_ddebug622, ptr noundef %dev30, ptr noundef nonnull @.str.39, i32 noundef %conv6.i.i, i32 noundef %call.i) #7
  br label %cleanup

if.end35:                                         ; preds = %ice_fill_phy_msg_e822.exit.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %shr = lshr i64 %val, 32
  %conv9 = trunc i64 %shr to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i86) #7
  br i1 %cmp.i.i, label %if.then.i.i94, label %if.else.i.i98

if.then.i.i94:                                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i.i92 = shl nuw nsw i32 %rem.i.i, 13
  %add.i.i91 = or i32 %.sink.i, %mul.i.i92
  %add7.i.i93 = or i32 %add.i.i91, 524288
  br label %ice_fill_phy_msg_e822.exit.i111

if.else.i.i98:                                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %sub.neg.i.i95 = mul nsw i32 %rem.i.i, -8192
  %add14.i.i96 = add nsw i32 %sub.neg.i.i95, 1105920
  %sub16.i.i97 = or i32 %add14.i.i96, %.sink.i
  br label %ice_fill_phy_msg_e822.exit.i111

ice_fill_phy_msg_e822.exit.i111:                  ; preds = %if.else.i.i98, %if.then.i.i94
  %conv18.sink.in.i.i99 = phi i32 [ %add7.i.i93, %if.then.i.i94 ], [ %sub16.i.i97, %if.else.i.i98 ]
  %shr2556.sink.i.i100 = lshr i32 %conv18.sink.in.i.i99, 16
  %conv18.sink.i.i101 = trunc i32 %conv18.sink.in.i.i99 to i16
  %15 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i86, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv18.sink.i.i101, ptr %15, align 2
  %17 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i86, i32 0, i32 3
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr2556.sink.i.i100, ptr %17, align 4
  %19 = ptrtoint ptr %msg.i86 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink.i.i, ptr %msg.i86, align 4
  %opcode.i107 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i86, i32 0, i32 1
  %20 = ptrtoint ptr %opcode.i107 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %opcode.i107, align 1
  %data.i108 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i86, i32 0, i32 4
  %21 = ptrtoint ptr %data.i108 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv9, ptr %data.i108, align 4
  %call.i109 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i86) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool.not.i110 = icmp eq i32 %call.i109, 0
  br i1 %tobool.not.i110, label %ice_write_phy_reg_e822.exit116.thread, label %do.body.i112

ice_write_phy_reg_e822.exit116.thread:            ; preds = %ice_fill_phy_msg_e822.exit.i111
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i86) #7
  br label %cleanup

do.body.i112:                                     ; preds = %ice_fill_phy_msg_e822.exit.i111
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_write_64b_phy_reg_e822, %if.then5.i115)) #7
          to label %do.body39 [label %if.then5.i115], !srcloc !308

if.then5.i115:                                    ; preds = %do.body.i112
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i113 = getelementptr i8, ptr %hw, i32 -2960
  %22 = ptrtoint ptr %add.ptr.i113 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i113, align 8
  %dev.i114 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, ptr noundef %dev.i114, ptr noundef nonnull @.str.3, i32 noundef %call.i109) #7
  br label %do.body39

do.body39:                                        ; preds = %if.then5.i115, %do.body.i112
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i86) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_64b_phy_reg_e822.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_write_64b_phy_reg_e822, %if.then51)) #7
          to label %cleanup [label %if.then51], !srcloc !308

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr54 = getelementptr i8, ptr %hw, i32 -2960
  %24 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr54, align 8
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_64b_phy_reg_e822.__UNIQUE_ID_ddebug623, ptr noundef %dev56, ptr noundef nonnull @.str.40, i32 noundef %.sink.i, i32 noundef %call.i109) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %do.body39, %ice_write_phy_reg_e822.exit116.thread, %if.then25, %do.body13, %if.then4, %do.body
  %retval.0 = phi i32 [ -22, %if.then4 ], [ %call.i, %if.then25 ], [ %call.i109, %if.then51 ], [ -22, %do.body ], [ %call.i, %do.body13 ], [ 0, %ice_write_phy_reg_e822.exit116.thread ], [ %call.i109, %do.body39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_read_phy_and_phc_time_e822(ptr noundef %hw, i8 noundef zeroext %port, ptr nocapture noundef writeonly %phy_time, ptr nocapture noundef writeonly %phc_time) unnamed_addr #1 align 64 {
entry:
  %tx_time = alloca i64, align 8
  %rx_time = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tx_time) #7
  %0 = ptrtoint ptr %tx_time to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %tx_time, align 8, !annotation !309
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rx_time) #7
  %1 = ptrtoint ptr %rx_time to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %rx_time, align 8, !annotation !309
  %tmr_index_assoc.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6, i32 3
  %2 = ptrtoint ptr %tmr_index_assoc.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tmr_index_assoc.i, align 2
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %or8.i = or i32 %shl.i, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !328
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %or8.i) #7
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 559120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !320
  %call1 = tail call fastcc i32 @ice_ptp_one_port_cmd(ptr noundef %hw, i8 noundef zeroext %port, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !319
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 8
  %add.ptr.i45 = getelementptr i8, ptr %8, i32 559124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 50331648) #7, !srcloc !320
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 8
  %add.ptr2.i = getelementptr i8, ptr %10, i32 745772
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !321
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 8
  %mul = shl nuw nsw i32 %conv.i, 2
  %add = add nuw nsw i32 %mul, 559328
  %add.ptr = getelementptr i8, ptr %13, i32 %add
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 8
  %add9 = add nuw nsw i32 %mul, 559336
  %add.ptr10 = getelementptr i8, ptr %16, i32 %add9
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #7, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !340
  %18 = zext i32 %17 to i64
  %19 = zext i32 %14 to i64
  %20 = shl nuw i64 %19, 32
  %21 = or i64 %20, %18
  %22 = tail call i64 @llvm.bswap.i64(i64 %21)
  %23 = ptrtoint ptr %phc_time to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %phc_time, align 8
  %call16 = call fastcc i32 @ice_ptp_read_port_capture(ptr noundef %hw, i8 noundef zeroext %port, ptr noundef nonnull %tx_time, ptr noundef nonnull %rx_time)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %24 = ptrtoint ptr %tx_time to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tx_time, align 8
  %26 = ptrtoint ptr %rx_time to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %rx_time, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %27)
  %cmp.not = icmp eq i64 %25, %27
  br i1 %cmp.not, label %if.end19.if.end25_crit_edge, label %do.end

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr23 = getelementptr i8, ptr %hw, i32 -2960
  %28 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr23, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %conv24 = zext i8 %port to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %conv24, i64 noundef %25, i64 noundef %27) #11
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.end19.if.end25_crit_edge
  %30 = ptrtoint ptr %phy_time to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %25, ptr %phy_time, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ %call1, %entry.cleanup_crit_edge ], [ %call16, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rx_time) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tx_time) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_ptp_read_port_capture(ptr noundef %hw, i8 noundef zeroext %port, ptr nocapture noundef %tx_ts, ptr nocapture noundef %rx_ts) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ice_read_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1204, ptr noundef %tx_ts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body8, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_read_port_capture.__UNIQUE_ID_ddebug638, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_read_port_capture, %if.then5)) #7
          to label %cleanup [label %if.then5], !srcloc !308

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_read_port_capture.__UNIQUE_ID_ddebug638, ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef %call) #7
  br label %cleanup

do.body8:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_read_port_capture.__UNIQUE_ID_ddebug639, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_read_port_capture, %if.then20)) #7
          to label %do.end28 [label %if.then20], !srcloc !308

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr23 = getelementptr i8, ptr %hw, i32 -2960
  %2 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr23, align 8
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %tx_ts to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tx_ts, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_read_port_capture.__UNIQUE_ID_ddebug639, ptr noundef %dev25, ptr noundef nonnull @.str.56, i64 noundef %5) #7
  br label %do.end28

do.end28:                                         ; preds = %if.then20, %do.body8
  %call29 = tail call fastcc i32 @ice_read_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext 1240, ptr noundef %rx_ts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.body54, label %do.body32

do.body32:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_read_port_capture.__UNIQUE_ID_ddebug640, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_read_port_capture, %if.then44)) #7
          to label %cleanup [label %if.then44], !srcloc !308

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr47 = getelementptr i8, ptr %hw, i32 -2960
  %6 = ptrtoint ptr %add.ptr47 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr47, align 8
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_read_port_capture.__UNIQUE_ID_ddebug640, ptr noundef %dev49, ptr noundef nonnull @.str.57, i32 noundef %call29) #7
  br label %cleanup

do.body54:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_read_port_capture.__UNIQUE_ID_ddebug641, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_read_port_capture, %if.then66)) #7
          to label %cleanup [label %if.then66], !srcloc !308

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr69 = getelementptr i8, ptr %hw, i32 -2960
  %8 = ptrtoint ptr %add.ptr69 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr69, align 8
  %dev71 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %10 = ptrtoint ptr %rx_ts to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rx_ts, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_read_port_capture.__UNIQUE_ID_ddebug641, ptr noundef %dev71, ptr noundef nonnull @.str.58, i64 noundef %11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %do.body54, %if.then44, %do.body32, %if.then5, %do.body
  %retval.0 = phi i32 [ %call, %if.then5 ], [ %call29, %if.then44 ], [ 0, %if.then66 ], [ %call, %do.body ], [ %call29, %do.body32 ], [ 0, %do.body54 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_read_64b_phy_reg_e822(ptr noundef %hw, i8 noundef zeroext %port, i16 noundef zeroext %low_addr, ptr nocapture noundef writeonly %val) unnamed_addr #1 align 64 {
entry:
  %msg.i84 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %low_addr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.134)
  switch i16 %low_addr, label %do.body [
    i16 1220, label %entry.if.end6_crit_edge
    i16 1256, label %sw.bb1.i
    i16 1228, label %sw.bb2.i
    i16 1264, label %sw.bb3.i
    i16 1088, label %sw.bb4.i
    i16 1120, label %sw.bb5.i
    i16 1152, label %sw.bb6.i
    i16 1160, label %sw.bb7.i
    i16 1204, label %sw.bb8.i
    i16 1240, label %sw.bb9.i
    i16 1100, label %sw.bb10.i
    i16 1132, label %sw.bb11.i
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb9.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb10.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb11.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_64b_phy_reg_e822.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_read_64b_phy_reg_e822, %if.then4)) #7
          to label %cleanup [label %if.then4], !srcloc !308

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %conv = zext i16 %low_addr to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_64b_phy_reg_e822.__UNIQUE_ID_ddebug614, ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %conv) #7
  br label %cleanup

if.end6:                                          ; preds = %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.if.end6_crit_edge
  %.sink.i = phi i32 [ 1136, %sw.bb11.i ], [ 1104, %sw.bb10.i ], [ 1244, %sw.bb9.i ], [ 1208, %sw.bb8.i ], [ 1164, %sw.bb7.i ], [ 1156, %sw.bb6.i ], [ 1124, %sw.bb5.i ], [ 1092, %sw.bb4.i ], [ 1268, %sw.bb3.i ], [ 1232, %sw.bb2.i ], [ 1260, %sw.bb1.i ], [ 1224, %entry.if.end6_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %3, align 4
  %conv.i.i = zext i8 %port to i32
  %rem.i.i = and i32 %conv.i.i, 7
  %5 = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  %conv6.i.i = zext i16 %low_addr to i32
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i = or i32 %conv6.i.i, 524288
  %mul.i.i = shl nuw nsw i32 %rem.i.i, 13
  %add7.i.i = add nuw nsw i32 %add.i.i, %mul.i.i
  br label %ice_fill_phy_msg_e822.exit.i

if.else.i.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %sub.neg.i.i = mul nsw i32 %rem.i.i, -8192
  %add14.i.i = add nuw nsw i32 %conv6.i.i, 1105920
  %sub16.i.i = add nsw i32 %add14.i.i, %sub.neg.i.i
  br label %ice_fill_phy_msg_e822.exit.i

ice_fill_phy_msg_e822.exit.i:                     ; preds = %if.else.i.i, %if.then.i.i
  %conv18.sink.in.i.i = phi i32 [ %add7.i.i, %if.then.i.i ], [ %sub16.i.i, %if.else.i.i ]
  %shr2556.sink.i.i = lshr i32 %conv18.sink.in.i.i, 16
  %conv18.sink.i.i = trunc i32 %conv18.sink.in.i.i to i16
  %6 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv18.sink.i.i, ptr %6, align 2
  %8 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr2556.sink.i.i, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %port)
  %cmp27.i.i = icmp ult i8 %port, 8
  %div54.mask.i.i = and i32 %conv.i.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div54.mask.i.i)
  %cmp31.i.i = icmp eq i32 %div54.mask.i.i, 8
  %..i.i = select i1 %cmp31.i.i, i8 3, i8 4
  %.sink.i.i = select i1 %cmp27.i.i, i8 2, i8 %..i.i
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink.i.i, ptr %msg.i, align 4
  %opcode.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %opcode.i, align 1
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end32, label %do.body.i

do.body.i:                                        ; preds = %ice_fill_phy_msg_e822.exit.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_read_64b_phy_reg_e822, %if.then5.i)) #7
          to label %do.body10 [label %if.then5.i], !srcloc !308

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %call.i) #7
  br label %do.body10

do.body10:                                        ; preds = %if.then5.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_64b_phy_reg_e822.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_read_64b_phy_reg_e822, %if.then22)) #7
          to label %cleanup [label %if.then22], !srcloc !308

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr25 = getelementptr i8, ptr %hw, i32 -2960
  %14 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr25, align 8
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_64b_phy_reg_e822.__UNIQUE_ID_ddebug615, ptr noundef %dev27, ptr noundef nonnull @.str.60, i32 noundef %conv6.i.i, i32 noundef %call.i) #7
  br label %cleanup

if.end32:                                         ; preds = %ice_fill_phy_msg_e822.exit.i
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i84) #7
  %18 = getelementptr inbounds i8, ptr %msg.i84, i32 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %18, align 4
  br i1 %cmp.i.i, label %if.then.i.i92, label %if.else.i.i96

if.then.i.i92:                                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i.i90 = shl nuw nsw i32 %rem.i.i, 13
  %add.i.i89 = or i32 %.sink.i, %mul.i.i90
  %add7.i.i91 = or i32 %add.i.i89, 524288
  br label %ice_fill_phy_msg_e822.exit.i108

if.else.i.i96:                                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %sub.neg.i.i93 = mul nsw i32 %rem.i.i, -8192
  %add14.i.i94 = add nsw i32 %sub.neg.i.i93, 1105920
  %sub16.i.i95 = or i32 %add14.i.i94, %.sink.i
  br label %ice_fill_phy_msg_e822.exit.i108

ice_fill_phy_msg_e822.exit.i108:                  ; preds = %if.else.i.i96, %if.then.i.i92
  %conv18.sink.in.i.i97 = phi i32 [ %add7.i.i91, %if.then.i.i92 ], [ %sub16.i.i95, %if.else.i.i96 ]
  %shr2556.sink.i.i98 = lshr i32 %conv18.sink.in.i.i97, 16
  %conv18.sink.i.i99 = trunc i32 %conv18.sink.in.i.i97 to i16
  %20 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i84, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv18.sink.i.i99, ptr %20, align 2
  %22 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i84, i32 0, i32 3
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shr2556.sink.i.i98, ptr %22, align 4
  %24 = ptrtoint ptr %msg.i84 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink.i.i, ptr %msg.i84, align 4
  %opcode.i105 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i84, i32 0, i32 1
  %25 = ptrtoint ptr %opcode.i105 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %opcode.i105, align 1
  %call.i106 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i84) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool.not.i107 = icmp eq i32 %call.i106, 0
  br i1 %tobool.not.i107, label %if.end58, label %do.body.i109

do.body.i109:                                     ; preds = %ice_fill_phy_msg_e822.exit.i108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_read_64b_phy_reg_e822, %if.then5.i112)) #7
          to label %do.body36 [label %if.then5.i112], !srcloc !308

if.then5.i112:                                    ; preds = %do.body.i109
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i110 = getelementptr i8, ptr %hw, i32 -2960
  %26 = ptrtoint ptr %add.ptr.i110 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i110, align 8
  %dev.i111 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, ptr noundef %dev.i111, ptr noundef nonnull @.str.3, i32 noundef %call.i106) #7
  br label %do.body36

do.body36:                                        ; preds = %if.then5.i112, %do.body.i109
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i84) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_64b_phy_reg_e822.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_read_64b_phy_reg_e822, %if.then48)) #7
          to label %cleanup [label %if.then48], !srcloc !308

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr51 = getelementptr i8, ptr %hw, i32 -2960
  %28 = ptrtoint ptr %add.ptr51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr51, align 8
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_64b_phy_reg_e822.__UNIQUE_ID_ddebug616, ptr noundef %dev53, ptr noundef nonnull @.str.61, i32 noundef %.sink.i, i32 noundef %call.i106) #7
  br label %cleanup

if.end58:                                         ; preds = %ice_fill_phy_msg_e822.exit.i108
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %18, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i84) #7
  %conv59 = zext i32 %31 to i64
  %shl = shl nuw i64 %conv59, 32
  %conv60 = zext i32 %17 to i64
  %or = or i64 %shl, %conv60
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %or, ptr %val, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then48, %do.body36, %if.then22, %do.body10, %if.then4, %do.body
  %retval.0 = phi i32 [ 0, %if.end58 ], [ -22, %if.then4 ], [ %call.i, %if.then22 ], [ %call.i106, %if.then48 ], [ -22, %do.body ], [ %call.i, %do.body10 ], [ %call.i106, %do.body36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_phy_calc_pmd_adj_e822(ptr noundef %hw, i8 noundef zeroext %port, i32 noundef %link_spd, i32 noundef %fec_mode, ptr nocapture noundef writeonly %pmd_adj) unnamed_addr #1 align 64 {
entry:
  %msg.i412 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i269 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %0 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %conv.i.i = zext i8 %port to i32
  %rem.i.i = and i32 %conv.i.i, 7
  %2 = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.i = icmp eq i32 %2, 0
  %mul.i.i = shl nuw nsw i32 %rem.i.i, 13
  %add7.i.i = or i32 %mul.i.i, 524540
  %sub.neg.i.i = mul nsw i32 %rem.i.i, -8192
  %sub16.i.i = add nsw i32 %sub.neg.i.i, 1106172
  %conv18.sink.in.i.i = select i1 %cmp.i.i, i32 %add7.i.i, i32 %sub16.i.i
  %shr2556.sink.i.i = lshr i32 %conv18.sink.in.i.i, 16
  %conv18.sink.i.i = trunc i32 %conv18.sink.in.i.i to i16
  %3 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv18.sink.i.i, ptr %3, align 2
  %5 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr2556.sink.i.i, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %port)
  %cmp27.i.i = icmp ult i8 %port, 8
  %div54.mask.i.i = and i32 %conv.i.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div54.mask.i.i)
  %cmp31.i.i = icmp eq i32 %div54.mask.i.i, 8
  %..i.i = select i1 %cmp31.i.i, i8 3, i8 4
  %.sink.i.i = select i1 %cmp27.i.i, i8 2, i8 %..i.i
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink.i.i, ptr %msg.i, align 4
  %opcode.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 1
  %8 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %opcode.i, align 1
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end7, label %do.body.i

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_calc_pmd_adj_e822, %if.then5.i)) #7
          to label %do.body [label %if.then5.i], !srcloc !308

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %call.i) #7
  br label %do.body

do.body:                                          ; preds = %if.then5.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_phy_calc_pmd_adj_e822.__UNIQUE_ID_ddebug652, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_calc_pmd_adj_e822, %if.then5)) #7
          to label %cleanup186 [label %if.then5], !srcloc !308

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_phy_calc_pmd_adj_e822.__UNIQUE_ID_ddebug652, ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %call.i) #7
  br label %cleanup186

if.end7:                                          ; preds = %entry
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %0, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %ts_func_info.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6
  %15 = ptrtoint ptr %ts_func_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ts_func_info.i, align 4
  %arrayidx.i = getelementptr [6 x %struct.ice_time_ref_info_e822], ptr @e822_time_ref, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.i, align 8
  %tmr_index_assoc.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6, i32 3
  %19 = ptrtoint ptr %tmr_index_assoc.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tmr_index_assoc.i.i, align 2
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 8
  %conv.i = zext i8 %20 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 559384
  %add.ptr.i260 = getelementptr i8, ptr %22, i32 %add.i
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i260) #7, !srcloc !310
  %24 = call i32 @llvm.bswap.i32(i32 %23) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !311
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 8
  %add8.i = add nuw nsw i32 %mul.i, 559392
  %add.ptr9.i = getelementptr i8, ptr %26, i32 %add8.i
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #7, !srcloc !310
  %28 = lshr i32 %27, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !312
  %conv13.i = zext i32 %28 to i64
  %shl.i = shl nuw nsw i64 %conv13.i, 32
  %conv14.i = zext i32 %24 to i64
  %or.i = or i64 %shl.i, %conv14.i
  %mul = mul i64 %or.i, %18
  %29 = zext i32 %link_spd to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %link_spd, label %do.body63 [
    i32 0, label %if.then12
    i32 1, label %if.end7.if.then31_crit_edge
    i32 2, label %if.end7.if.then31_crit_edge582
    i32 4, label %if.end7.if.then31_crit_edge583
    i32 5, label %if.end7.if.then31_crit_edge584
    i32 3, label %if.end7.if.then51_crit_edge
    i32 6, label %if.end7.if.then51_crit_edge585
    i32 7, label %if.end7.if.then51_crit_edge586
  ]

if.end7.if.then51_crit_edge586:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then51

if.end7.if.then51_crit_edge585:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then51

if.end7.if.then51_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then51

if.end7.if.then31_crit_edge584:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.end7.if.then31_crit_edge583:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.end7.if.then31_crit_edge582:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.end7.if.then31_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.then12:                                        ; preds = %if.end7
  %conv13 = and i32 %14, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv13)
  %cmp14 = icmp eq i32 %conv13, 4
  br i1 %cmp14, label %if.then12.if.end89_crit_edge, label %if.else

if.then12.if.end89_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %30 = trunc i32 %conv13 to i16
  %rem.lhs.trunc = add nuw nsw i16 %30, 6
  %rem580 = urem i16 %rem.lhs.trunc, 10
  %rem.zext = zext i16 %rem580 to i32
  br label %if.end86

if.then31:                                        ; preds = %if.end7.if.then31_crit_edge, %if.end7.if.then31_crit_edge582, %if.end7.if.then31_crit_edge583, %if.end7.if.then31_crit_edge584
  %conv32 = and i32 %14, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %conv32)
  %cmp33.not = icmp ne i32 %conv32, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %fec_mode)
  %cmp36 = icmp eq i32 %fec_mode, 1
  %or.cond = or i1 %cmp36, %cmp33.not
  br i1 %or.cond, label %if.then31.if.end86_crit_edge, label %if.then31.if.then88_crit_edge

if.then31.if.then88_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then88

if.then31.if.end86_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then51:                                        ; preds = %if.end7.if.then51_crit_edge, %if.end7.if.then51_crit_edge585, %if.end7.if.then51_crit_edge586
  %conv52 = and i32 %14, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %conv52)
  %cmp53 = icmp ult i32 %conv52, 17
  %add57 = add nuw nsw i32 %conv52, 40
  %spec.select = select i1 %cmp53, i32 %add57, i32 %conv52
  br label %if.end89

do.body63:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_phy_calc_pmd_adj_e822.__UNIQUE_ID_ddebug653, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_calc_pmd_adj_e822, %if.then75)) #7
          to label %if.end86 [label %if.then75], !srcloc !308

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr78 = getelementptr i8, ptr %hw, i32 -2960
  %31 = ptrtoint ptr %add.ptr78 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr78, align 8
  %dev80 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_phy_calc_pmd_adj_e822.__UNIQUE_ID_ddebug653, ptr noundef %dev80, ptr noundef nonnull @.str.64, i32 noundef %link_spd) #7
  br label %if.then88

if.end86:                                         ; preds = %do.body63, %if.then31.if.end86_crit_edge, %if.else
  %mult.0.shrunk = phi i32 [ %rem.zext, %if.else ], [ 0, %do.body63 ], [ %conv32, %if.then31.if.end86_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mult.0.shrunk)
  %tobool87.not = icmp eq i32 %mult.0.shrunk, 0
  br i1 %tobool87.not, label %if.end86.if.then88_crit_edge, label %if.end86.if.end89_crit_edge

if.end86.if.end89_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.end86.if.then88_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then88

if.then88:                                        ; preds = %if.end86.if.then88_crit_edge, %if.then75, %if.then31.if.then88_crit_edge
  %33 = ptrtoint ptr %pmd_adj to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %pmd_adj, align 8
  br label %cleanup186

if.end89:                                         ; preds = %if.end86.if.end89_crit_edge, %if.then51, %if.then12.if.end89_crit_edge
  %mult.0.shrunk566 = phi i32 [ %mult.0.shrunk, %if.end86.if.end89_crit_edge ], [ 10, %if.then12.if.end89_crit_edge ], [ %spec.select, %if.then51 ]
  %mult.0 = zext i32 %mult.0.shrunk566 to i64
  %34 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul, i32 0) #10, !srcloc !341
  %asmresult.i.i.i = extractvalue { i64, i32 } %34, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %34, 1
  %35 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #10, !srcloc !318
  %asmresult10.i.i.i = extractvalue { i64, i32 } %35, 0
  %div158.i.i581 = lshr i64 %asmresult10.i.i.i, 6
  %mul91 = mul i64 %div158.i.i581, %mult.0
  %pmd_adj_divisor = getelementptr [8 x %struct.ice_vernier_info_e822], ptr @e822_vernier, i32 0, i32 %link_spd, i32 9
  %36 = ptrtoint ptr %pmd_adj_divisor to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pmd_adj_divisor, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul91)
  %cmp164.i.i = icmp ult i64 %mul91, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !313

if.then168.i.i:                                   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %mul91 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %37
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  %38 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %37, i64 %mul91) #10, !srcloc !314
  %asmresult1.i.i.i = extractvalue { i64, i64 } %38, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %39 = zext i32 %link_spd to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %link_spd, label %div_u64.exit.if.end185_crit_edge [
    i32 3, label %if.then95
    i32 6, label %if.then138
  ]

div_u64.exit.if.end185_crit_edge:                 ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185

if.then95:                                        ; preds = %div_u64.exit
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i269) #7
  %40 = getelementptr inbounds i8, ptr %msg.i269, i32 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %40, align 4
  %add7.i.i274 = or i32 %mul.i.i, 526588
  %sub16.i.i277 = add nsw i32 %sub.neg.i.i, 1108220
  %conv18.sink.in.i.i279 = select i1 %cmp.i.i, i32 %add7.i.i274, i32 %sub16.i.i277
  %shr2556.sink.i.i280 = lshr i32 %conv18.sink.in.i.i279, 16
  %conv18.sink.i.i281 = trunc i32 %conv18.sink.in.i.i279 to i16
  %42 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i269, i32 0, i32 2
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv18.sink.i.i281, ptr %42, align 2
  %44 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i269, i32 0, i32 3
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shr2556.sink.i.i280, ptr %44, align 4
  %46 = ptrtoint ptr %msg.i269 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %.sink.i.i, ptr %msg.i269, align 4
  %opcode.i287 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i269, i32 0, i32 1
  %47 = ptrtoint ptr %opcode.i287 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %opcode.i287, align 1
  %call.i288 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i269) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i288)
  %tobool.not.i289 = icmp eq i32 %call.i288, 0
  br i1 %tobool.not.i289, label %if.end120, label %do.body.i291

do.body.i291:                                     ; preds = %if.then95
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_calc_pmd_adj_e822, %if.then5.i294)) #7
          to label %do.body99 [label %if.then5.i294], !srcloc !308

if.then5.i294:                                    ; preds = %do.body.i291
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i292 = getelementptr i8, ptr %hw, i32 -2960
  %48 = ptrtoint ptr %add.ptr.i292 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i292, align 8
  %dev.i293 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, ptr noundef %dev.i293, ptr noundef nonnull @.str.3, i32 noundef %call.i288) #7
  br label %do.body99

do.body99:                                        ; preds = %if.then5.i294, %do.body.i291
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i269) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_phy_calc_pmd_adj_e822.__UNIQUE_ID_ddebug654, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_calc_pmd_adj_e822, %if.then111)) #7
          to label %cleanup186 [label %if.then111], !srcloc !308

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr114 = getelementptr i8, ptr %hw, i32 -2960
  %50 = ptrtoint ptr %add.ptr114 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr114, align 8
  %dev116 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_phy_calc_pmd_adj_e822.__UNIQUE_ID_ddebug654, ptr noundef %dev116, ptr noundef nonnull @.str.65, i32 noundef %call.i288) #7
  br label %cleanup186

if.end120:                                        ; preds = %if.then95
  %52 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %40, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i269) #7
  %54 = trunc i32 %53 to i8
  %conv121 = and i8 %54, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv121)
  %tobool122.not = icmp eq i8 %conv121, 0
  br i1 %tobool122.not, label %if.end120.if.end185_crit_edge, label %if.then123

if.end120.if.end185_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185

if.then123:                                       ; preds = %if.end120
  %narrow = sub nuw nsw i8 4, %conv121
  %sub = zext i8 %narrow to i32
  %mul125 = mul nuw nsw i32 %sub, 40
  %55 = zext i32 %mul125 to i64
  %call127 = call fastcc i64 @div_u64(i64 noundef %mul, i32 noundef 125)
  %mul128 = mul i64 %call127, %55
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul128)
  %cmp164.i.i402 = icmp ult i64 %mul128, 4294967296
  br i1 %cmp164.i.i402, label %if.then168.i.i407, label %if.else174.i.i409, !prof !313

if.then168.i.i407:                                ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i404 = trunc i64 %mul128 to i32
  %div172.i.i405 = udiv i32 %conv169.i.i404, %37
  %conv173.i.i406 = zext i32 %div172.i.i405 to i64
  br label %div_u64.exit411

if.else174.i.i409:                                ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #9
  %56 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %37, i64 %mul128) #10, !srcloc !314
  %asmresult1.i.i.i408 = extractvalue { i64, i64 } %56, 1
  br label %div_u64.exit411

div_u64.exit411:                                  ; preds = %if.else174.i.i409, %if.then168.i.i407
  %dividend.addr.0.i.i410 = phi i64 [ %conv173.i.i406, %if.then168.i.i407 ], [ %asmresult1.i.i.i408, %if.else174.i.i409 ]
  %add132 = add i64 %dividend.addr.0.i.i410, %dividend.addr.0.i.i
  br label %if.end185

if.then138:                                       ; preds = %div_u64.exit
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i412) #7
  %57 = getelementptr inbounds i8, ptr %msg.i412, i32 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %57, align 4
  %add7.i.i417 = or i32 %mul.i.i, 526076
  %sub16.i.i420 = add nsw i32 %sub.neg.i.i, 1107708
  %conv18.sink.in.i.i422 = select i1 %cmp.i.i, i32 %add7.i.i417, i32 %sub16.i.i420
  %shr2556.sink.i.i423 = lshr i32 %conv18.sink.in.i.i422, 16
  %conv18.sink.i.i424 = trunc i32 %conv18.sink.in.i.i422 to i16
  %59 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i412, i32 0, i32 2
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv18.sink.i.i424, ptr %59, align 2
  %61 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i412, i32 0, i32 3
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %shr2556.sink.i.i423, ptr %61, align 4
  %63 = ptrtoint ptr %msg.i412 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %.sink.i.i, ptr %msg.i412, align 4
  %opcode.i430 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i412, i32 0, i32 1
  %64 = ptrtoint ptr %opcode.i430 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %opcode.i430, align 1
  %call.i431 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i412) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i431)
  %tobool.not.i432 = icmp eq i32 %call.i431, 0
  br i1 %tobool.not.i432, label %if.end165, label %do.body.i434

do.body.i434:                                     ; preds = %if.then138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_calc_pmd_adj_e822, %if.then5.i437)) #7
          to label %do.body144 [label %if.then5.i437], !srcloc !308

if.then5.i437:                                    ; preds = %do.body.i434
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i435 = getelementptr i8, ptr %hw, i32 -2960
  %65 = ptrtoint ptr %add.ptr.i435 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i435, align 8
  %dev.i436 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, ptr noundef %dev.i436, ptr noundef nonnull @.str.3, i32 noundef %call.i431) #7
  br label %do.body144

do.body144:                                       ; preds = %if.then5.i437, %do.body.i434
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i412) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_phy_calc_pmd_adj_e822.__UNIQUE_ID_ddebug655, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_phy_calc_pmd_adj_e822, %if.then156)) #7
          to label %cleanup186 [label %if.then156], !srcloc !308

if.then156:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr159 = getelementptr i8, ptr %hw, i32 -2960
  %67 = ptrtoint ptr %add.ptr159 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr159, align 8
  %dev161 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_phy_calc_pmd_adj_e822.__UNIQUE_ID_ddebug655, ptr noundef %dev161, ptr noundef nonnull @.str.66, i32 noundef %call.i431) #7
  br label %cleanup186

if.end165:                                        ; preds = %if.then138
  %69 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %57, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i412) #7
  %conv167249 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv167249)
  %tobool168.not = icmp eq i32 %conv167249, 0
  br i1 %tobool168.not, label %if.end165.if.end185_crit_edge, label %if.then169

if.end165.if.end185_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185

if.then169:                                       ; preds = %if.end165
  %call173 = call fastcc i64 @div_u64(i64 noundef %mul, i32 noundef 125)
  %mul174 = mul i64 %call173, 40
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul174)
  %cmp164.i.i545 = icmp ult i64 %mul174, 4294967296
  br i1 %cmp164.i.i545, label %if.then168.i.i550, label %if.else174.i.i552, !prof !313

if.then168.i.i550:                                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i547 = trunc i64 %mul174 to i32
  %div172.i.i548 = udiv i32 %conv169.i.i547, %37
  %conv173.i.i549 = zext i32 %div172.i.i548 to i64
  br label %div_u64.exit554

if.else174.i.i552:                                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #9
  %71 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %37, i64 %mul174) #10, !srcloc !314
  %asmresult1.i.i.i551 = extractvalue { i64, i64 } %71, 1
  br label %div_u64.exit554

div_u64.exit554:                                  ; preds = %if.else174.i.i552, %if.then168.i.i550
  %dividend.addr.0.i.i553 = phi i64 [ %conv173.i.i549, %if.then168.i.i550 ], [ %asmresult1.i.i.i551, %if.else174.i.i552 ]
  %add178 = add i64 %dividend.addr.0.i.i553, %dividend.addr.0.i.i
  br label %if.end185

if.end185:                                        ; preds = %div_u64.exit554, %if.end165.if.end185_crit_edge, %div_u64.exit411, %if.end120.if.end185_crit_edge, %div_u64.exit.if.end185_crit_edge
  %adj.4 = phi i64 [ %dividend.addr.0.i.i, %div_u64.exit.if.end185_crit_edge ], [ %dividend.addr.0.i.i, %if.end120.if.end185_crit_edge ], [ %add132, %div_u64.exit411 ], [ %dividend.addr.0.i.i, %if.end165.if.end185_crit_edge ], [ %add178, %div_u64.exit554 ]
  %72 = ptrtoint ptr %pmd_adj to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %adj.4, ptr %pmd_adj, align 8
  br label %cleanup186

cleanup186:                                       ; preds = %if.end185, %if.then156, %do.body144, %if.then111, %do.body99, %if.then88, %if.then5, %do.body
  %retval.2 = phi i32 [ 0, %if.end185 ], [ 0, %if.then88 ], [ %call.i, %if.then5 ], [ %call.i, %do.body ], [ %call.i288, %do.body99 ], [ %call.i288, %if.then111 ], [ %call.i431, %do.body144 ], [ %call.i431, %if.then156 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_ptp_port_cmd_e810(ptr noundef %hw, i32 noundef %cmd) unnamed_addr #1 align 64 {
entry:
  %msg.i50 = alloca %struct.ice_sbq_msg_input, align 4
  %msg.i = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cmd)
  %0 = icmp ult i32 %cmd, 3
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.ice_ptp_port_cmd_e810, i32 0, i32 %cmd
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %cmd_val.0 = phi i32 [ -1, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %2, align 4
  %msg_addr_low.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 2
  %4 = ptrtoint ptr %msg_addr_low.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 836, ptr %msg_addr_low.i, align 2
  %msg_addr_high.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 3
  %5 = ptrtoint ptr %msg_addr_high.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 768, ptr %msg_addr_high.i, align 4
  %opcode.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 1
  %6 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %opcode.i, align 1
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %msg.i, align 4
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end11, label %do.body.i

do.body.i:                                        ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_phy_reg_e810.__UNIQUE_ID_ddebug668, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_port_cmd_e810, %if.then7.i)) #7
          to label %do.body [label %if.then7.i], !srcloc !308

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_phy_reg_e810.__UNIQUE_ID_ddebug668, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %call.i) #7
  br label %do.body

do.body:                                          ; preds = %if.then7.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_port_cmd_e810.__UNIQUE_ID_ddebug681, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_port_cmd_e810, %if.then9)) #7
          to label %cleanup [label %if.then9], !srcloc !308

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_port_cmd_e810.__UNIQUE_ID_ddebug681, ptr noundef %dev, ptr noundef nonnull @.str.76, i32 noundef %call.i) #7
  br label %cleanup

if.end11:                                         ; preds = %sw.epilog
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %and = and i32 %13, -256
  %or = or i32 %and, %cmd_val.0
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i50) #7
  %msg_addr_low.i51 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i50, i32 0, i32 2
  %14 = ptrtoint ptr %msg_addr_low.i51 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 836, ptr %msg_addr_low.i51, align 2
  %msg_addr_high.i52 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i50, i32 0, i32 3
  %15 = ptrtoint ptr %msg_addr_high.i52 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 768, ptr %msg_addr_high.i52, align 4
  %opcode.i53 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i50, i32 0, i32 1
  %16 = ptrtoint ptr %opcode.i53 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %opcode.i53, align 1
  %17 = ptrtoint ptr %msg.i50 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %msg.i50, align 4
  %data.i54 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i50, i32 0, i32 4
  %18 = ptrtoint ptr %data.i54 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %data.i54, align 4
  %call.i55 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool.not.i56 = icmp eq i32 %call.i55, 0
  br i1 %tobool.not.i56, label %ice_write_phy_reg_e810.exit.thread, label %do.body.i57

ice_write_phy_reg_e810.exit.thread:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i50) #7
  br label %cleanup

do.body.i57:                                      ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e810.__UNIQUE_ID_ddebug669, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_port_cmd_e810, %if.then7.i60)) #7
          to label %do.body15 [label %if.then7.i60], !srcloc !308

if.then7.i60:                                     ; preds = %do.body.i57
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i58 = getelementptr i8, ptr %hw, i32 -2960
  %19 = ptrtoint ptr %add.ptr.i58 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i58, align 8
  %dev.i59 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e810.__UNIQUE_ID_ddebug669, ptr noundef %dev.i59, ptr noundef nonnull @.str.3, i32 noundef %call.i55) #7
  br label %do.body15

do.body15:                                        ; preds = %if.then7.i60, %do.body.i57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i50) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_port_cmd_e810.__UNIQUE_ID_ddebug682, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_port_cmd_e810, %if.then27)) #7
          to label %cleanup [label %if.then27], !srcloc !308

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr30 = getelementptr i8, ptr %hw, i32 -2960
  %21 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr30, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_port_cmd_e810.__UNIQUE_ID_ddebug682, ptr noundef %dev32, ptr noundef nonnull @.str.77, i32 noundef %call.i55) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %do.body15, %ice_write_phy_reg_e810.exit.thread, %if.then9, %do.body
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ %call.i55, %if.then27 ], [ %call.i, %do.body ], [ 0, %ice_write_phy_reg_e810.exit.thread ], [ %call.i55, %do.body15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_fill_dflt_direct_cmd_desc(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_send_cmd(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_init_cgu_e822(ptr noundef %hw) unnamed_addr #1 align 64 {
entry:
  %cgu_msg.i23 = alloca %struct.ice_sbq_msg_input, align 4
  %cgu_msg.i = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ts_func_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cgu_msg.i) #7
  %0 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg.i, i32 0, i32 3
  %3 = getelementptr inbounds i8, ptr %cgu_msg.i, i32 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %0, align 1
  %6 = ptrtoint ptr %cgu_msg.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 6, ptr %cgu_msg.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 836, ptr %1, align 2
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %2, align 4
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %cgu_msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %do.body.i

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_cgu_reg_e822.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_cgu_e822, %if.then5.i)) #7
          to label %ice_read_cgu_reg_e822.exit [label %if.then5.i], !srcloc !308

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_cgu_reg_e822.__UNIQUE_ID_ddebug630, ptr noundef %dev.i, ptr noundef nonnull @.str.96, i32 noundef 836, i32 noundef %call.i) #7
  br label %ice_read_cgu_reg_e822.exit

ice_read_cgu_reg_e822.exit:                       ; preds = %if.then5.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cgu_msg.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cgu_msg.i) #7
  %bf.clear2 = and i32 %12, -98305
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cgu_msg.i23) #7
  %13 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg.i23, i32 0, i32 1
  %14 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg.i23, i32 0, i32 2
  %15 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg.i23, i32 0, i32 3
  %16 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg.i23, i32 0, i32 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %13, align 1
  %18 = ptrtoint ptr %cgu_msg.i23 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 6, ptr %cgu_msg.i23, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 836, ptr %14, align 2
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %15, align 4
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %bf.clear2, ptr %16, align 4
  %call.i24 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %cgu_msg.i23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool.not.i25 = icmp eq i32 %call.i24, 0
  br i1 %tobool.not.i25, label %if.end7, label %do.body.i26

do.body.i26:                                      ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_cgu_reg_e822.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_cgu_e822, %if.then5.i29)) #7
          to label %ice_write_cgu_reg_e822.exit [label %if.then5.i29], !srcloc !308

if.then5.i29:                                     ; preds = %do.body.i26
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i27 = getelementptr i8, ptr %hw, i32 -2960
  %22 = ptrtoint ptr %add.ptr.i27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i27, align 8
  %dev.i28 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_cgu_reg_e822.__UNIQUE_ID_ddebug631, ptr noundef %dev.i28, ptr noundef nonnull @.str.98, i32 noundef 836, i32 noundef %call.i24) #7
  br label %ice_write_cgu_reg_e822.exit

ice_write_cgu_reg_e822.exit:                      ; preds = %if.then5.i29, %do.body.i26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cgu_msg.i23) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cgu_msg.i23) #7
  %24 = ptrtoint ptr %ts_func_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ts_func_info, align 4
  %clk_src = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 6, i32 2
  %26 = ptrtoint ptr %clk_src to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %clk_src, align 1
  %conv = zext i8 %27 to i32
  %call8 = call fastcc i32 @ice_cfg_cgu_pll_e822(ptr noundef %hw, i32 noundef %25, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %ice_write_cgu_reg_e822.exit, %ice_read_cgu_reg_e822.exit
  %retval.0 = phi i32 [ %call.i, %ice_read_cgu_reg_e822.exit ], [ %call.i24, %ice_write_cgu_reg_e822.exit ], [ %call8, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_ptp_set_vernier_wl(ptr noundef %hw) unnamed_addr #1 align 64 {
entry:
  %msg.i = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 2
  %1 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 3
  %opcode.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 1
  %data.i = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %msg.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1036, ptr %0, align 2
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %1, align 4
  %4 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %msg.i, align 4
  %5 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %opcode.i, align 1
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 70125, ptr %data.i, align 4
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.inc, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.6.do.body.i_crit_edge, %for.inc.5.do.body.i_crit_edge, %for.inc.4.do.body.i_crit_edge, %for.inc.3.do.body.i_crit_edge, %for.inc.2.do.body.i_crit_edge, %for.inc.1.do.body.i_crit_edge, %for.inc.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %conv22.lcssa = phi i32 [ 0, %entry.do.body.i_crit_edge ], [ 1, %for.inc.do.body.i_crit_edge ], [ 2, %for.inc.1.do.body.i_crit_edge ], [ 3, %for.inc.2.do.body.i_crit_edge ], [ 4, %for.inc.3.do.body.i_crit_edge ], [ 5, %for.inc.4.do.body.i_crit_edge ], [ 6, %for.inc.5.do.body.i_crit_edge ], [ 7, %for.inc.6.do.body.i_crit_edge ]
  %call.i.lcssa = phi i32 [ %call.i, %entry.do.body.i_crit_edge ], [ %call.i.1, %for.inc.do.body.i_crit_edge ], [ %call.i.2, %for.inc.1.do.body.i_crit_edge ], [ %call.i.3, %for.inc.2.do.body.i_crit_edge ], [ %call.i.4, %for.inc.3.do.body.i_crit_edge ], [ %call.i.5, %for.inc.4.do.body.i_crit_edge ], [ %call.i.6, %for.inc.5.do.body.i_crit_edge ], [ %call.i.7, %for.inc.6.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_set_vernier_wl, %if.then5.i)) #7
          to label %do.body [label %if.then5.i], !srcloc !308

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %call.i.lcssa) #7
  br label %do.body

do.body:                                          ; preds = %if.then5.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_ptp_set_vernier_wl.__UNIQUE_ID_ddebug634, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_ptp_set_vernier_wl, %if.then6)) #7
          to label %cleanup10 [label %if.then6], !srcloc !308

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_ptp_set_vernier_wl.__UNIQUE_ID_ddebug634, ptr noundef %dev, ptr noundef nonnull @.str.126, i32 noundef %conv22.lcssa, i32 noundef %call.i.lcssa) #7
  br label %cleanup10

for.inc:                                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 9228, ptr %0, align 2
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %1, align 4
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %msg.i, align 4
  %14 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %opcode.i, align 1
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 70125, ptr %data.i, align 4
  %call.i.1 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %for.inc.1, label %for.inc.do.body.i_crit_edge

for.inc.do.body.i_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.inc.1:                                        ; preds = %for.inc
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 17420, ptr %0, align 2
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %1, align 4
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %msg.i, align 4
  %19 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %opcode.i, align 1
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 70125, ptr %data.i, align 4
  %call.i.2 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.i.2, label %for.inc.2, label %for.inc.1.do.body.i_crit_edge

for.inc.1.do.body.i_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.inc.2:                                        ; preds = %for.inc.1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 25612, ptr %0, align 2
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %1, align 4
  %23 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %msg.i, align 4
  %24 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %opcode.i, align 1
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 70125, ptr %data.i, align 4
  %call.i.3 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool.not.i.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool.not.i.3, label %for.inc.3, label %for.inc.2.do.body.i_crit_edge

for.inc.2.do.body.i_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.inc.3:                                        ; preds = %for.inc.2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 25612, ptr %0, align 2
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16, ptr %1, align 4
  %28 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 2, ptr %msg.i, align 4
  %29 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %opcode.i, align 1
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 70125, ptr %data.i, align 4
  %call.i.4 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %tobool.not.i.4 = icmp eq i32 %call.i.4, 0
  br i1 %tobool.not.i.4, label %for.inc.4, label %for.inc.3.do.body.i_crit_edge

for.inc.3.do.body.i_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.inc.4:                                        ; preds = %for.inc.3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 17420, ptr %0, align 2
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 16, ptr %1, align 4
  %33 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %msg.i, align 4
  %34 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %opcode.i, align 1
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 70125, ptr %data.i, align 4
  %call.i.5 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5)
  %tobool.not.i.5 = icmp eq i32 %call.i.5, 0
  br i1 %tobool.not.i.5, label %for.inc.5, label %for.inc.4.do.body.i_crit_edge

for.inc.4.do.body.i_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.inc.5:                                        ; preds = %for.inc.4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 9228, ptr %0, align 2
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 16, ptr %1, align 4
  %38 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 2, ptr %msg.i, align 4
  %39 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %opcode.i, align 1
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 70125, ptr %data.i, align 4
  %call.i.6 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.6)
  %tobool.not.i.6 = icmp eq i32 %call.i.6, 0
  br i1 %tobool.not.i.6, label %for.inc.6, label %for.inc.5.do.body.i_crit_edge

for.inc.5.do.body.i_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.inc.6:                                        ; preds = %for.inc.5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1036, ptr %0, align 2
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 16, ptr %1, align 4
  %43 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %msg.i, align 4
  %44 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %opcode.i, align 1
  %45 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 70125, ptr %data.i, align 4
  %call.i.7 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.7)
  %tobool.not.i.7 = icmp eq i32 %call.i.7, 0
  br i1 %tobool.not.i.7, label %for.inc.7, label %for.inc.6.do.body.i_crit_edge

for.inc.6.do.body.i_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %cleanup10

cleanup10:                                        ; preds = %for.inc.7, %if.then6, %do.body
  %retval.2 = phi i32 [ %call.i.lcssa, %if.then6 ], [ %call.i.lcssa, %do.body ], [ 0, %for.inc.7 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_read_cgu_reg_e822(ptr noundef %hw, i32 noundef %addr, ptr nocapture noundef writeonly %val) unnamed_addr #1 align 64 {
entry:
  %cgu_msg = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cgu_msg) #7
  %0 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg, i32 0, i32 3
  %3 = getelementptr inbounds i8, ptr %cgu_msg, i32 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %0, align 1
  %6 = ptrtoint ptr %cgu_msg to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 6, ptr %cgu_msg, align 4
  %conv = trunc i32 %addr to i16
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %1, align 2
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %2, align 4
  %call = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %cgu_msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_cgu_reg_e822.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_read_cgu_reg_e822, %if.then5)) #7
          to label %cleanup [label %if.then5], !srcloc !308

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_cgu_reg_e822.__UNIQUE_ID_ddebug630, ptr noundef %dev, ptr noundef nonnull @.str.96, i32 noundef %addr, i32 noundef %call) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg, i32 0, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %do.body
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cgu_msg) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_write_cgu_reg_e822(ptr noundef %hw, i32 noundef %addr, i32 noundef %val) unnamed_addr #1 align 64 {
entry:
  %cgu_msg = alloca %struct.ice_sbq_msg_input, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cgu_msg) #7
  %0 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg, i32 0, i32 3
  %3 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg, i32 0, i32 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %0, align 1
  %5 = ptrtoint ptr %cgu_msg to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 6, ptr %cgu_msg, align 4
  %conv = trunc i32 %addr to i16
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %1, align 2
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %val, ptr %3, align 4
  %call = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %cgu_msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_cgu_reg_e822.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_write_cgu_reg_e822, %if.then5)) #7
          to label %cleanup [label %if.then5], !srcloc !308

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_cgu_reg_e822.__UNIQUE_ID_ddebug631, ptr noundef %dev, ptr noundef nonnull @.str.98, i32 noundef %addr, i32 noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %do.body, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cgu_msg) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_cfg_cgu_pll_e822(ptr noundef %hw, i32 noundef %clk_freq, i32 noundef %clk_src) unnamed_addr #1 align 64 {
entry:
  %cgu_msg.i289 = alloca %struct.ice_sbq_msg_input, align 4
  %cgu_msg.i282 = alloca %struct.ice_sbq_msg_input, align 4
  %cgu_msg.i272 = alloca %struct.ice_sbq_msg_input, align 4
  %cgu_msg.i263 = alloca %struct.ice_sbq_msg_input, align 4
  %cgu_msg.i = alloca %struct.ice_sbq_msg_input, align 4
  %bwm_lf = alloca %union.tspll_ro_bwm_lf, align 4
  %dw19 = alloca %union.nac_cgu_dword19, align 4
  %dw22 = alloca %union.nac_cgu_dword22, align 4
  %dw24 = alloca %union.nac_cgu_dword24, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bwm_lf) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dw19) #7
  %0 = ptrtoint ptr %dw19 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dw19, align 4, !annotation !309
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dw22) #7
  %1 = ptrtoint ptr %dw22 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dw22, align 4, !annotation !309
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dw24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %clk_freq)
  %cmp = icmp ugt i32 %clk_freq, 5
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.99, i32 noundef %clk_freq) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %clk_src)
  %cmp1 = icmp ugt i32 %clk_src, 1
  br i1 %cmp1, label %do.end5, label %if.end11

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr8 = getelementptr i8, ptr %hw, i32 -2960
  %4 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr8, align 8
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev10, ptr noundef nonnull @.str.102, i32 noundef %clk_src) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk_src)
  %cmp12 = icmp ne i32 %clk_src, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk_freq)
  %cmp13.not = icmp eq i32 %clk_freq, 0
  %or.cond = or i1 %cmp13.not, %cmp12
  br i1 %or.cond, label %if.end23, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr20 = getelementptr i8, ptr %hw, i32 -2960
  %6 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr20, align 8
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev22, ptr noundef nonnull @.str.105) #11
  br label %cleanup

if.end23:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cgu_msg.i) #7
  %8 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg.i, i32 0, i32 3
  %11 = getelementptr inbounds i8, ptr %cgu_msg.i, i32 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %8, align 1
  %14 = ptrtoint ptr %cgu_msg.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 6, ptr %cgu_msg.i, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 36, ptr %9, align 2
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %10, align 4
  %call.i = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %cgu_msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end25, label %do.body.i

do.body.i:                                        ; preds = %if.end23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_cgu_reg_e822.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_cfg_cgu_pll_e822, %if.then5.i)) #7
          to label %ice_read_cgu_reg_e822.exit [label %if.then5.i], !srcloc !308

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_cgu_reg_e822.__UNIQUE_ID_ddebug630, ptr noundef %dev.i, ptr noundef nonnull @.str.96, i32 noundef 36, i32 noundef %call.i) #7
  br label %ice_read_cgu_reg_e822.exit

ice_read_cgu_reg_e822.exit:                       ; preds = %if.then5.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cgu_msg.i) #7
  br label %cleanup

if.end25:                                         ; preds = %if.end23
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cgu_msg.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cgu_msg.i263) #7
  %21 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg.i263, i32 0, i32 1
  %22 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg.i263, i32 0, i32 2
  %23 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg.i263, i32 0, i32 3
  %24 = getelementptr inbounds i8, ptr %cgu_msg.i263, i32 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %24, align 4
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %21, align 1
  %27 = ptrtoint ptr %cgu_msg.i263 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 6, ptr %cgu_msg.i263, align 4
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 96, ptr %22, align 2
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %23, align 4
  %call.i264 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %cgu_msg.i263) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264)
  %tobool.not.i265 = icmp eq i32 %call.i264, 0
  br i1 %tobool.not.i265, label %if.end29, label %do.body.i266

do.body.i266:                                     ; preds = %if.end25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_cgu_reg_e822.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_cfg_cgu_pll_e822, %if.then5.i269)) #7
          to label %ice_read_cgu_reg_e822.exit271 [label %if.then5.i269], !srcloc !308

if.then5.i269:                                    ; preds = %do.body.i266
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i267 = getelementptr i8, ptr %hw, i32 -2960
  %30 = ptrtoint ptr %add.ptr.i267 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i267, align 8
  %dev.i268 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_cgu_reg_e822.__UNIQUE_ID_ddebug630, ptr noundef %dev.i268, ptr noundef nonnull @.str.96, i32 noundef 96, i32 noundef %call.i264) #7
  br label %ice_read_cgu_reg_e822.exit271

ice_read_cgu_reg_e822.exit271:                    ; preds = %if.then5.i269, %do.body.i266
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cgu_msg.i263) #7
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %24, align 4
  %34 = ptrtoint ptr %dw24 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %dw24, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cgu_msg.i263) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cgu_msg.i272) #7
  %35 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg.i272, i32 0, i32 1
  %36 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg.i272, i32 0, i32 2
  %37 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg.i272, i32 0, i32 3
  %38 = getelementptr inbounds i8, ptr %cgu_msg.i272, i32 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %38, align 4
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %35, align 1
  %41 = ptrtoint ptr %cgu_msg.i272 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 6, ptr %cgu_msg.i272, align 4
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 880, ptr %36, align 2
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %37, align 4
  %call.i273 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %cgu_msg.i272) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i273)
  %tobool.not.i274 = icmp eq i32 %call.i273, 0
  br i1 %tobool.not.i274, label %do.body34, label %do.body.i275

do.body.i275:                                     ; preds = %if.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_cgu_reg_e822.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_cfg_cgu_pll_e822, %if.then5.i278)) #7
          to label %ice_read_cgu_reg_e822.exit280 [label %if.then5.i278], !srcloc !308

if.then5.i278:                                    ; preds = %do.body.i275
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i276 = getelementptr i8, ptr %hw, i32 -2960
  %44 = ptrtoint ptr %add.ptr.i276 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i276, align 8
  %dev.i277 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_cgu_reg_e822.__UNIQUE_ID_ddebug630, ptr noundef %dev.i277, ptr noundef nonnull @.str.96, i32 noundef 880, i32 noundef %call.i273) #7
  br label %ice_read_cgu_reg_e822.exit280

ice_read_cgu_reg_e822.exit280:                    ; preds = %if.then5.i278, %do.body.i275
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cgu_msg.i272) #7
  br label %cleanup

do.body34:                                        ; preds = %if.end29
  %46 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %38, align 4
  %48 = ptrtoint ptr %bwm_lf to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %bwm_lf, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cgu_msg.i272) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_cfg_cgu_pll_e822.__UNIQUE_ID_ddebug632, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_cfg_cgu_pll_e822, %if.then40)) #7
          to label %do.end61 [label %if.then40], !srcloc !308

if.then40:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr43 = getelementptr i8, ptr %hw, i32 -2960
  %49 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr43, align 8
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %51 = ptrtoint ptr %dw24 to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load = load i32, ptr %dw24, align 4
  %52 = and i32 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool46.not = icmp eq i32 %52, 0
  %cond = select i1 %tobool46.not, ptr @.str.109, ptr @.str.108
  %conv316 = and i32 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv316)
  %switch.selectcmp.i.not = icmp eq i32 %conv316, 0
  %switch.select3.i = select i1 %switch.selectcmp.i.not, ptr @.str.116, ptr @.str.117
  %bf.lshr51 = lshr i32 %20, 29
  %switch.tableidx = xor i32 %bf.lshr51, 4
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.ice_cfg_cgu_pll_e822, i32 0, i32 %switch.tableidx
  %53 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %53)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %54 = ptrtoint ptr %bwm_lf to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load54 = load i32, ptr %bwm_lf, align 4
  %55 = and i32 %bf.load54, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool57.not = icmp eq i32 %55, 0
  %cond58 = select i1 %tobool57.not, ptr @.str.111, ptr @.str.110
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_cfg_cgu_pll_e822.__UNIQUE_ID_ddebug632, ptr noundef %dev45, ptr noundef nonnull @.str.107, ptr noundef nonnull %cond, ptr noundef nonnull %switch.select3.i, ptr noundef nonnull %switch.load, ptr noundef nonnull %cond58) #7
  br label %do.end61

do.end61:                                         ; preds = %if.then40, %do.body34
  %56 = ptrtoint ptr %dw24 to i32
  call void @__asan_load4_noabort(i32 %56)
  %bf.load62 = load i32, ptr %dw24, align 4
  %57 = and i32 %bf.load62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool65.not = icmp eq i32 %57, 0
  br i1 %tobool65.not, label %do.end61.if.end73_crit_edge, label %if.then66

do.end61.if.end73_crit_edge:                      ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then66:                                        ; preds = %do.end61
  %bf.clear68 = and i32 %bf.load62, -129
  %58 = ptrtoint ptr %dw24 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %bf.clear68, ptr %dw24, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cgu_msg.i282) #7
  %59 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg.i282, i32 0, i32 1
  %60 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg.i282, i32 0, i32 2
  %61 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg.i282, i32 0, i32 3
  %62 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg.i282, i32 0, i32 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %59, align 1
  %64 = ptrtoint ptr %cgu_msg.i282 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 6, ptr %cgu_msg.i282, align 4
  %65 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 96, ptr %60, align 2
  %66 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %61, align 4
  %67 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %bf.clear68, ptr %62, align 4
  %call.i283 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %cgu_msg.i282) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i283)
  %tobool.not.i284 = icmp eq i32 %call.i283, 0
  br i1 %tobool.not.i284, label %ice_write_cgu_reg_e822.exit.thread, label %do.body.i285

ice_write_cgu_reg_e822.exit.thread:               ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cgu_msg.i282) #7
  br label %if.end73

do.body.i285:                                     ; preds = %if.then66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_cgu_reg_e822.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_cfg_cgu_pll_e822, %if.then5.i288)) #7
          to label %ice_write_cgu_reg_e822.exit [label %if.then5.i288], !srcloc !308

if.then5.i288:                                    ; preds = %do.body.i285
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i286 = getelementptr i8, ptr %hw, i32 -2960
  %68 = ptrtoint ptr %add.ptr.i286 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i286, align 8
  %dev.i287 = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_cgu_reg_e822.__UNIQUE_ID_ddebug631, ptr noundef %dev.i287, ptr noundef nonnull @.str.98, i32 noundef 96, i32 noundef %call.i283) #7
  br label %ice_write_cgu_reg_e822.exit

ice_write_cgu_reg_e822.exit:                      ; preds = %if.then5.i288, %do.body.i285
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cgu_msg.i282) #7
  br label %cleanup

if.end73:                                         ; preds = %ice_write_cgu_reg_e822.exit.thread, %do.end61.if.end73_crit_edge
  %bf.shl = shl nuw i32 %clk_freq, 29
  %bf.clear75 = and i32 %20, 536870911
  %bf.set76 = or i32 %bf.clear75, %bf.shl
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cgu_msg.i289) #7
  %70 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg.i289, i32 0, i32 1
  %71 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg.i289, i32 0, i32 2
  %72 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg.i289, i32 0, i32 3
  %73 = getelementptr inbounds %struct.ice_sbq_msg_input, ptr %cgu_msg.i289, i32 0, i32 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %70, align 1
  %75 = ptrtoint ptr %cgu_msg.i289 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 6, ptr %cgu_msg.i289, align 4
  %76 = ptrtoint ptr %71 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 36, ptr %71, align 2
  %77 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %72, align 4
  %78 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %bf.set76, ptr %73, align 4
  %call.i290 = call i32 @ice_sbq_rw_reg(ptr noundef %hw, ptr noundef nonnull %cgu_msg.i289) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i290)
  %tobool.not.i291 = icmp eq i32 %call.i290, 0
  br i1 %tobool.not.i291, label %if.end80, label %do.body.i292

do.body.i292:                                     ; preds = %if.end73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_cgu_reg_e822.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_cfg_cgu_pll_e822, %if.then5.i295)) #7
          to label %ice_write_cgu_reg_e822.exit296 [label %if.then5.i295], !srcloc !308

if.then5.i295:                                    ; preds = %do.body.i292
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i293 = getelementptr i8, ptr %hw, i32 -2960
  %79 = ptrtoint ptr %add.ptr.i293 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i293, align 8
  %dev.i294 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_cgu_reg_e822.__UNIQUE_ID_ddebug631, ptr noundef %dev.i294, ptr noundef nonnull @.str.98, i32 noundef 36, i32 noundef %call.i290) #7
  br label %ice_write_cgu_reg_e822.exit296

ice_write_cgu_reg_e822.exit296:                   ; preds = %if.then5.i295, %do.body.i292
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cgu_msg.i289) #7
  br label %cleanup

if.end80:                                         ; preds = %if.end73
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cgu_msg.i289) #7
  %call81 = call fastcc i32 @ice_read_cgu_reg_e822(ptr noundef %hw, i32 noundef 76, ptr noundef nonnull %dw19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end80.cleanup_crit_edge

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end84:                                         ; preds = %if.end80
  %arrayidx = getelementptr [6 x %struct.ice_cgu_pll_params_e822], ptr @e822_cgu_params, i32 0, i32 %clk_freq
  %feedback_div = getelementptr [6 x %struct.ice_cgu_pll_params_e822], ptr @e822_cgu_params, i32 0, i32 %clk_freq, i32 1
  %81 = ptrtoint ptr %feedback_div to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %feedback_div, align 4
  %83 = ptrtoint ptr %dw19 to i32
  call void @__asan_load4_noabort(i32 %83)
  %bf.load85 = load i32, ptr %dw19, align 4
  %bf.shl87 = shl i32 %82, 24
  %bf.clear88 = and i32 %bf.load85, 16715775
  %bf.set89 = or i32 %bf.clear88, %bf.shl87
  %bf.set92 = or i32 %bf.set89, 4096
  store i32 %bf.set92, ptr %dw19, align 4
  %call93 = call fastcc i32 @ice_write_cgu_reg_e822(ptr noundef %hw, i32 noundef 76, i32 noundef %bf.set92)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %if.end84.cleanup_crit_edge

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end96:                                         ; preds = %if.end84
  %call97 = call fastcc i32 @ice_read_cgu_reg_e822(ptr noundef %hw, i32 noundef 88, ptr noundef nonnull %dw22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %if.end96.cleanup_crit_edge

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end100:                                        ; preds = %if.end96
  %post_pll_div = getelementptr [6 x %struct.ice_cgu_pll_params_e822], ptr @e822_cgu_params, i32 0, i32 %clk_freq, i32 3
  %84 = ptrtoint ptr %post_pll_div to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %post_pll_div, align 4
  %86 = ptrtoint ptr %dw22 to i32
  call void @__asan_load4_noabort(i32 %86)
  %bf.load102 = load i32, ptr %dw22, align 4
  %bf.value103 = shl i32 %85, 8
  %bf.shl104 = and i32 %bf.value103, 3840
  %bf.clear105 = and i32 %bf.load102, -3843
  %bf.set106 = or i32 %bf.clear105, %bf.shl104
  store i32 %bf.set106, ptr %dw22, align 4
  %call110 = call fastcc i32 @ice_write_cgu_reg_e822(ptr noundef %hw, i32 noundef 88, i32 noundef %bf.set106)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.end100.cleanup_crit_edge

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end113:                                        ; preds = %if.end100
  %call114 = call fastcc i32 @ice_read_cgu_reg_e822(ptr noundef %hw, i32 noundef 96, ptr noundef nonnull %dw24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %if.end113.cleanup_crit_edge

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end117:                                        ; preds = %if.end113
  %87 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx, align 4
  %89 = ptrtoint ptr %dw24 to i32
  call void @__asan_load4_noabort(i32 %89)
  %bf.load119 = load i32, ptr %dw24, align 4
  %bf.value120 = shl i32 %88, 1
  %bf.shl121 = and i32 %bf.value120, 30
  %bf.clear122 = and i32 %bf.load119, 992
  %bf.set123 = or i32 %bf.clear122, %bf.shl121
  %frac_n_div = getelementptr [6 x %struct.ice_cgu_pll_params_e822], ptr @e822_cgu_params, i32 0, i32 %clk_freq, i32 2
  %90 = ptrtoint ptr %frac_n_div to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %frac_n_div, align 4
  %bf.shl127 = shl i32 %91, 10
  %bf.set129 = or i32 %bf.set123, %bf.shl127
  %bf.set133 = or i32 %bf.set129, %clk_src
  %call134 = call fastcc i32 @ice_write_cgu_reg_e822(ptr noundef %hw, i32 noundef 96, i32 noundef %bf.set133)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %if.end117.cleanup_crit_edge

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end137:                                        ; preds = %if.end117
  %bf.set140 = or i32 %bf.set133, 128
  %92 = ptrtoint ptr %dw24 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %bf.set140, ptr %dw24, align 4
  %call141 = call fastcc i32 @ice_write_cgu_reg_e822(ptr noundef %hw, i32 noundef 96, i32 noundef %bf.set140)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end144, label %if.end137.cleanup_crit_edge

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end144:                                        ; preds = %if.end137
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #7
  %call145 = call fastcc i32 @ice_read_cgu_reg_e822(ptr noundef %hw, i32 noundef 880, ptr noundef nonnull %bwm_lf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end148, label %if.end144.cleanup_crit_edge

if.end144.cleanup_crit_edge:                      ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end148:                                        ; preds = %if.end144
  %93 = ptrtoint ptr %bwm_lf to i32
  call void @__asan_load4_noabort(i32 %93)
  %bf.load149 = load i32, ptr %bwm_lf, align 4
  %94 = and i32 %bf.load149, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool152.not = icmp eq i32 %94, 0
  br i1 %tobool152.not, label %do.end156, label %do.body163

do.end156:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr159 = getelementptr i8, ptr %hw, i32 -2960
  %95 = ptrtoint ptr %add.ptr159 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %add.ptr159, align 8
  %dev161 = getelementptr inbounds %struct.pci_dev, ptr %96, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev161, ptr noundef nonnull @.str.113) #11
  br label %cleanup

do.body163:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_cfg_cgu_pll_e822.__UNIQUE_ID_ddebug633, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_cfg_cgu_pll_e822, %if.then175)) #7
          to label %cleanup [label %if.then175], !srcloc !308

if.then175:                                       ; preds = %do.body163
  %add.ptr178 = getelementptr i8, ptr %hw, i32 -2960
  %97 = ptrtoint ptr %add.ptr178 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %add.ptr178, align 8
  %dev180 = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk_src)
  %switch.selectcmp.i297.not = icmp eq i32 %clk_src, 0
  %switch.select3.i300 = select i1 %switch.selectcmp.i297.not, ptr @.str.116, ptr @.str.117
  %conv192 = trunc i32 %clk_freq to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %conv192)
  %99 = icmp ult i8 %conv192, 6
  br i1 %99, label %switch.lookup, label %if.then175.ice_clk_freq_str.exit308_crit_edge

if.then175.ice_clk_freq_str.exit308_crit_edge:    ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_clk_freq_str.exit308

switch.lookup:                                    ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #9
  %sext = shl i32 %clk_freq, 24
  %100 = ashr exact i32 %sext, 24
  %switch.gep318 = getelementptr inbounds [6 x ptr], ptr @switch.table.ice_cfg_cgu_pll_e822.127, i32 0, i32 %100
  %101 = ptrtoint ptr %switch.gep318 to i32
  call void @__asan_load4_noabort(i32 %101)
  %switch.load319 = load ptr, ptr %switch.gep318, align 4
  br label %ice_clk_freq_str.exit308

ice_clk_freq_str.exit308:                         ; preds = %switch.lookup, %if.then175.ice_clk_freq_str.exit308_crit_edge
  %retval.0.i307 = phi ptr [ %switch.load319, %switch.lookup ], [ @.str.118, %if.then175.ice_clk_freq_str.exit308_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_cfg_cgu_pll_e822.__UNIQUE_ID_ddebug633, ptr noundef %dev180, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.108, ptr noundef nonnull %switch.select3.i300, ptr noundef nonnull %retval.0.i307, ptr noundef nonnull @.str.110) #7
  br label %cleanup

cleanup:                                          ; preds = %ice_clk_freq_str.exit308, %do.body163, %do.end156, %if.end144.cleanup_crit_edge, %if.end137.cleanup_crit_edge, %if.end117.cleanup_crit_edge, %if.end113.cleanup_crit_edge, %if.end100.cleanup_crit_edge, %if.end96.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %ice_write_cgu_reg_e822.exit296, %ice_write_cgu_reg_e822.exit, %ice_read_cgu_reg_e822.exit280, %ice_read_cgu_reg_e822.exit271, %ice_read_cgu_reg_e822.exit, %do.end17, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end5 ], [ -22, %do.end17 ], [ -16, %do.end156 ], [ %call.i, %ice_read_cgu_reg_e822.exit ], [ %call.i264, %ice_read_cgu_reg_e822.exit271 ], [ %call.i273, %ice_read_cgu_reg_e822.exit280 ], [ %call.i283, %ice_write_cgu_reg_e822.exit ], [ %call.i290, %ice_write_cgu_reg_e822.exit296 ], [ %call81, %if.end80.cleanup_crit_edge ], [ %call93, %if.end84.cleanup_crit_edge ], [ %call97, %if.end96.cleanup_crit_edge ], [ %call110, %if.end100.cleanup_crit_edge ], [ %call114, %if.end113.cleanup_crit_edge ], [ %call134, %if.end117.cleanup_crit_edge ], [ %call141, %if.end137.cleanup_crit_edge ], [ %call145, %if.end144.cleanup_crit_edge ], [ 0, %ice_clk_freq_str.exit308 ], [ 0, %do.body163 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dw24) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dw22) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dw19) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bwm_lf) #7
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !96, !98, !99, !101, !102, !104, !105, !106, !108, !110, !112, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !136, !137, !139, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !177, !178, !179, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !199, !200, !202, !203, !204, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !220, !221, !222, !224, !225, !227, !228, !230, !232, !233, !234, !236, !237, !239, !240, !242, !244, !245, !246, !248, !249, !250, !252, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !268, !269, !270, !272, !273, !274, !276, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !298}
!llvm.module.flags = !{!299, !300, !301, !302, !303, !304, !305, !306}
!llvm.ident = !{!307}

!0 = !{ptr @e822_time_ref, !1, !"e822_time_ref", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_consts.h", i32 22, i32 37}
!2 = !{ptr @e822_cgu_params, !3, !"e822_cgu_params", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_consts.h", i32 84, i32 38}
!4 = !{ptr @e822_vernier, !5, !"e822_vernier", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_consts.h", i32 171, i32 36}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 306, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ice_read_phy_reg_e822.__UNIQUE_ID_ddebug613, !7, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 384, i32 3}
!14 = !{ptr @ice_write_phy_reg_e822.__UNIQUE_ID_ddebug617, !13, !"__UNIQUE_ID_ddebug617", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 535, i32 3}
!17 = !{ptr @ice_read_quad_reg_e822.__UNIQUE_ID_ddebug624, !16, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 570, i32 3}
!20 = !{ptr @ice_write_quad_reg_e822.__UNIQUE_ID_ddebug625, !19, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 1089, i32 2}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ice_ptp_prep_port_adj_e822.__UNIQUE_ID_ddebug636, !22, !"__UNIQUE_ID_ddebug636", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2316, i32 2}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ice_stop_phy_timer_e822.__UNIQUE_ID_ddebug657, !26, !"__UNIQUE_ID_ddebug657", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2434, i32 2}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ice_start_phy_timer_e822.__UNIQUE_ID_ddebug658, !30, !"__UNIQUE_ID_ddebug658", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2460, i32 3}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug659, !34, !"__UNIQUE_ID_ddebug659", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2466, i32 3}
!39 = !{ptr @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug660, !38, !"__UNIQUE_ID_ddebug660", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2473, i32 3}
!42 = !{ptr @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug661, !41, !"__UNIQUE_ID_ddebug661", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2479, i32 3}
!45 = !{ptr @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug662, !44, !"__UNIQUE_ID_ddebug662", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2486, i32 3}
!48 = !{ptr @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug663, !47, !"__UNIQUE_ID_ddebug663", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2493, i32 3}
!51 = !{ptr @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug664, !50, !"__UNIQUE_ID_ddebug664", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2501, i32 3}
!54 = !{ptr @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug665, !53, !"__UNIQUE_ID_ddebug665", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2507, i32 3}
!57 = !{ptr @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug666, !56, !"__UNIQUE_ID_ddebug666", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2513, i32 3}
!60 = !{ptr @ice_phy_exit_bypass_e822.__UNIQUE_ID_ddebug667, !59, !"__UNIQUE_ID_ddebug667", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2518, i32 2}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ice_phy_exit_bypass_e822._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @ice_phy_exit_bypass_e822._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2680, i32 3}
!69 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ice_ptp_init_phy_e810.__UNIQUE_ID_ddebug674, !68, !"__UNIQUE_ID_ddebug674", i1 false, i1 false}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 1403, i32 3}
!73 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ice_phy_cfg_lane_e822.__UNIQUE_ID_ddebug647, !72, !"__UNIQUE_ID_ddebug647", i1 false, i1 false}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 1412, i32 3}
!77 = !{ptr @ice_phy_cfg_lane_e822.__UNIQUE_ID_ddebug648, !76, !"__UNIQUE_ID_ddebug648", i1 false, i1 false}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 1424, i32 3}
!80 = !{ptr @ice_phy_cfg_lane_e822.__UNIQUE_ID_ddebug649, !79, !"__UNIQUE_ID_ddebug649", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 1335, i32 3}
!83 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ice_phy_get_speed_and_fec_e822.__UNIQUE_ID_ddebug646, !82, !"__UNIQUE_ID_ddebug646", i1 false, i1 false}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 1496, i32 3}
!87 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @ice_phy_cfg_uix_e822.__UNIQUE_ID_ddebug650, !86, !"__UNIQUE_ID_ddebug650", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 1507, i32 3}
!91 = !{ptr @ice_phy_cfg_uix_e822.__UNIQUE_ID_ddebug651, !90, !"__UNIQUE_ID_ddebug651", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 461, i32 3}
!94 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @ice_write_64b_phy_reg_e822.__UNIQUE_ID_ddebug621, !93, !"__UNIQUE_ID_ddebug621", i1 false, i1 false}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 471, i32 3}
!98 = !{ptr @ice_write_64b_phy_reg_e822.__UNIQUE_ID_ddebug622, !97, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 478, i32 3}
!101 = !{ptr @ice_write_64b_phy_reg_e822.__UNIQUE_ID_ddebug623, !100, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 413, i32 3}
!104 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @ice_write_40b_phy_reg_e822.__UNIQUE_ID_ddebug618, !103, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!106 = !{ptr @ice_write_40b_phy_reg_e822.__UNIQUE_ID_ddebug619, !107, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 423, i32 3}
!108 = !{ptr @ice_write_40b_phy_reg_e822.__UNIQUE_ID_ddebug620, !109, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 430, i32 3}
!110 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 1243, i32 3}
!112 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @ice_ptp_one_port_cmd.__UNIQUE_ID_ddebug642, !111, !"__UNIQUE_ID_ddebug642", i1 false, i1 false}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 1254, i32 3}
!116 = !{ptr @ice_ptp_one_port_cmd.__UNIQUE_ID_ddebug643, !115, !"__UNIQUE_ID_ddebug643", i1 false, i1 false}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 1263, i32 3}
!119 = !{ptr @ice_ptp_one_port_cmd.__UNIQUE_ID_ddebug644, !118, !"__UNIQUE_ID_ddebug644", i1 false, i1 false}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 1274, i32 3}
!122 = !{ptr @ice_ptp_one_port_cmd.__UNIQUE_ID_ddebug645, !121, !"__UNIQUE_ID_ddebug645", i1 false, i1 false}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2221, i32 3}
!125 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @ice_sync_phy_timer_e822.__UNIQUE_ID_ddebug656, !124, !"__UNIQUE_ID_ddebug656", i1 false, i1 false}
!127 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2257, i32 2}
!129 = !{ptr @ice_sync_phy_timer_e822._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @ice_sync_phy_timer_e822._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.51, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2194, i32 3}
!133 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.53, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @ice_read_phy_and_phc_time_e822._entry, !132, !"_entry", i1 false, i1 false}
!136 = !{ptr @ice_read_phy_and_phc_time_e822._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 1179, i32 3}
!139 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @ice_ptp_read_port_capture.__UNIQUE_ID_ddebug638, !138, !"__UNIQUE_ID_ddebug638", i1 false, i1 false}
!141 = !{ptr @.str.56, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 1184, i32 2}
!143 = !{ptr @ice_ptp_read_port_capture.__UNIQUE_ID_ddebug639, !142, !"__UNIQUE_ID_ddebug639", i1 false, i1 false}
!144 = !{ptr @.str.57, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 1190, i32 3}
!146 = !{ptr @ice_ptp_read_port_capture.__UNIQUE_ID_ddebug640, !145, !"__UNIQUE_ID_ddebug640", i1 false, i1 false}
!147 = !{ptr @.str.58, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 1195, i32 2}
!149 = !{ptr @ice_ptp_read_port_capture.__UNIQUE_ID_ddebug641, !148, !"__UNIQUE_ID_ddebug641", i1 false, i1 false}
!150 = !{ptr @.str.59, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 339, i32 3}
!152 = !{ptr @ice_read_64b_phy_reg_e822.__UNIQUE_ID_ddebug614, !151, !"__UNIQUE_ID_ddebug614", i1 false, i1 false}
!153 = !{ptr @.str.60, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 346, i32 3}
!155 = !{ptr @ice_read_64b_phy_reg_e822.__UNIQUE_ID_ddebug615, !154, !"__UNIQUE_ID_ddebug615", i1 false, i1 false}
!156 = !{ptr @.str.61, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 353, i32 3}
!158 = !{ptr @ice_read_64b_phy_reg_e822.__UNIQUE_ID_ddebug616, !157, !"__UNIQUE_ID_ddebug616", i1 false, i1 false}
!159 = !{ptr @.str.62, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 1853, i32 3}
!161 = !{ptr @.str.63, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @ice_phy_calc_pmd_adj_e822.__UNIQUE_ID_ddebug652, !160, !"__UNIQUE_ID_ddebug652", i1 false, i1 false}
!163 = !{ptr @.str.64, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 1912, i32 3}
!165 = !{ptr @ice_phy_calc_pmd_adj_e822.__UNIQUE_ID_ddebug653, !164, !"__UNIQUE_ID_ddebug653", i1 false, i1 false}
!166 = !{ptr @.str.65, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 1942, i32 4}
!168 = !{ptr @ice_phy_calc_pmd_adj_e822.__UNIQUE_ID_ddebug654, !167, !"__UNIQUE_ID_ddebug654", i1 false, i1 false}
!169 = !{ptr @.str.66, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 1964, i32 4}
!171 = !{ptr @ice_phy_calc_pmd_adj_e822.__UNIQUE_ID_ddebug655, !170, !"__UNIQUE_ID_ddebug655", i1 false, i1 false}
!172 = !{ptr @.str.67, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2581, i32 3}
!174 = !{ptr @ice_write_phy_reg_e810.__UNIQUE_ID_ddebug669, !173, !"__UNIQUE_ID_ddebug669", i1 false, i1 false}
!175 = !{ptr @.str.68, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2721, i32 3}
!177 = !{ptr @.str.69, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @ice_ptp_prep_phy_time_e810.__UNIQUE_ID_ddebug675, !176, !"__UNIQUE_ID_ddebug675", i1 false, i1 false}
!179 = !{ptr @.str.70, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2728, i32 3}
!181 = !{ptr @ice_ptp_prep_phy_time_e810.__UNIQUE_ID_ddebug676, !180, !"__UNIQUE_ID_ddebug676", i1 false, i1 false}
!182 = !{ptr @.str.71, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 1034, i32 2}
!184 = !{ptr @.str.72, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @ice_ptp_prep_phy_time_e822.__UNIQUE_ID_ddebug635, !183, !"__UNIQUE_ID_ddebug635", i1 false, i1 false}
!186 = !{ptr @.str.73, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2940, i32 3}
!188 = !{ptr @.str.74, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @ice_ptp_tmr_cmd.__UNIQUE_ID_ddebug683, !187, !"__UNIQUE_ID_ddebug683", i1 false, i1 false}
!190 = !{ptr @.str.75, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2846, i32 3}
!192 = !{ptr @.str.76, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @ice_ptp_port_cmd_e810.__UNIQUE_ID_ddebug681, !191, !"__UNIQUE_ID_ddebug681", i1 false, i1 false}
!194 = !{ptr @.str.77, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2856, i32 3}
!196 = !{ptr @ice_ptp_port_cmd_e810.__UNIQUE_ID_ddebug682, !195, !"__UNIQUE_ID_ddebug682", i1 false, i1 false}
!197 = !{ptr @.str.78, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2550, i32 3}
!199 = !{ptr @ice_read_phy_reg_e810.__UNIQUE_ID_ddebug668, !198, !"__UNIQUE_ID_ddebug668", i1 false, i1 false}
!200 = !{ptr @.str.79, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2797, i32 3}
!202 = !{ptr @.str.80, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @ice_ptp_prep_phy_incval_e810.__UNIQUE_ID_ddebug679, !201, !"__UNIQUE_ID_ddebug679", i1 false, i1 false}
!204 = !{ptr @.str.81, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2804, i32 3}
!206 = !{ptr @ice_ptp_prep_phy_incval_e810.__UNIQUE_ID_ddebug680, !205, !"__UNIQUE_ID_ddebug680", i1 false, i1 false}
!207 = !{ptr @.str.82, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 1154, i32 2}
!209 = !{ptr @.str.83, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @ice_ptp_prep_phy_incval_e822.__UNIQUE_ID_ddebug637, !208, !"__UNIQUE_ID_ddebug637", i1 false, i1 false}
!211 = !{ptr @.str.84, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2761, i32 3}
!213 = !{ptr @.str.85, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @ice_ptp_prep_phy_adj_e810.__UNIQUE_ID_ddebug677, !212, !"__UNIQUE_ID_ddebug677", i1 false, i1 false}
!215 = !{ptr @.str.86, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2768, i32 3}
!217 = !{ptr @ice_ptp_prep_phy_adj_e810.__UNIQUE_ID_ddebug678, !216, !"__UNIQUE_ID_ddebug678", i1 false, i1 false}
!218 = !{ptr @.str.87, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2610, i32 3}
!220 = !{ptr @.str.88, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @ice_read_phy_tstamp_e810.__UNIQUE_ID_ddebug670, !219, !"__UNIQUE_ID_ddebug670", i1 false, i1 false}
!222 = !{ptr @.str.89, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2617, i32 3}
!224 = !{ptr @ice_read_phy_tstamp_e810.__UNIQUE_ID_ddebug671, !223, !"__UNIQUE_ID_ddebug671", i1 false, i1 false}
!225 = !{ptr @.str.90, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 601, i32 3}
!227 = !{ptr @ice_read_phy_tstamp_e822.__UNIQUE_ID_ddebug626, !226, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!228 = !{ptr @ice_read_phy_tstamp_e822.__UNIQUE_ID_ddebug627, !229, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 608, i32 3}
!230 = !{ptr @.str.91, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2649, i32 3}
!232 = !{ptr @.str.92, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @ice_clear_phy_tstamp_e810.__UNIQUE_ID_ddebug672, !231, !"__UNIQUE_ID_ddebug672", i1 false, i1 false}
!234 = !{ptr @.str.93, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 2656, i32 3}
!236 = !{ptr @ice_clear_phy_tstamp_e810.__UNIQUE_ID_ddebug673, !235, !"__UNIQUE_ID_ddebug673", i1 false, i1 false}
!237 = !{ptr @.str.94, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 642, i32 3}
!239 = !{ptr @ice_clear_phy_tstamp_e822.__UNIQUE_ID_ddebug628, !238, !"__UNIQUE_ID_ddebug628", i1 false, i1 false}
!240 = !{ptr @ice_clear_phy_tstamp_e822.__UNIQUE_ID_ddebug629, !241, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 649, i32 3}
!242 = !{ptr @.str.95, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 679, i32 3}
!244 = !{ptr @.str.96, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @ice_read_cgu_reg_e822.__UNIQUE_ID_ddebug630, !243, !"__UNIQUE_ID_ddebug630", i1 false, i1 false}
!246 = !{ptr @.str.97, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 712, i32 3}
!248 = !{ptr @.str.98, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @ice_write_cgu_reg_e822.__UNIQUE_ID_ddebug631, !247, !"__UNIQUE_ID_ddebug631", i1 false, i1 false}
!250 = !{ptr @.str.99, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 785, i32 3}
!252 = !{ptr @.str.100, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @ice_cfg_cgu_pll_e822._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @ice_cfg_cgu_pll_e822._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.102, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 791, i32 3}
!257 = !{ptr @ice_cfg_cgu_pll_e822._entry.101, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @ice_cfg_cgu_pll_e822._entry_ptr.103, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.105, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 798, i32 3}
!261 = !{ptr @ice_cfg_cgu_pll_e822._entry.104, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @ice_cfg_cgu_pll_e822._entry_ptr.106, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.107, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 816, i32 2}
!265 = !{ptr @ice_cfg_cgu_pll_e822.__UNIQUE_ID_ddebug632, !264, !"__UNIQUE_ID_ddebug632", i1 false, i1 false}
!266 = !{ptr @.str.108, !264, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.109, !264, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.110, !264, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.111, !264, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.113, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 889, i32 3}
!272 = !{ptr @ice_cfg_cgu_pll_e822._entry.112, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @ice_cfg_cgu_pll_e822._entry_ptr.114, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.115, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 894, i32 2}
!276 = !{ptr @ice_cfg_cgu_pll_e822.__UNIQUE_ID_ddebug633, !275, !"__UNIQUE_ID_ddebug633", i1 false, i1 false}
!277 = !{ptr @.str.116, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 756, i32 10}
!279 = !{ptr @.str.117, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 758, i32 10}
!281 = !{ptr @.str.118, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 760, i32 10}
!283 = !{ptr @.str.119, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 730, i32 10}
!285 = !{ptr @.str.120, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 732, i32 10}
!287 = !{ptr @.str.121, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 734, i32 10}
!289 = !{ptr @.str.122, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 736, i32 10}
!291 = !{ptr @.str.123, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 738, i32 10}
!293 = !{ptr @.str.124, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 740, i32 10}
!295 = !{ptr @.str.125, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/ethernet/intel/ice/ice_ptp_hw.c", i32 956, i32 4}
!297 = !{ptr @.str.126, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @ice_ptp_set_vernier_wl.__UNIQUE_ID_ddebug634, !296, !"__UNIQUE_ID_ddebug634", i1 false, i1 false}
!299 = !{i32 1, !"wchar_size", i32 2}
!300 = !{i32 1, !"min_enum_size", i32 4}
!301 = !{i32 8, !"branch-target-enforcement", i32 0}
!302 = !{i32 8, !"sign-return-address", i32 0}
!303 = !{i32 8, !"sign-return-address-all", i32 0}
!304 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!305 = !{i32 7, !"uwtable", i32 1}
!306 = !{i32 7, !"frame-pointer", i32 2}
!307 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!308 = !{i64 2148815678, i64 2148815683, i64 2148815696, i64 2148815740, i64 2148815774, i64 2148815795}
!309 = !{!"auto-init"}
!310 = !{i64 6835320}
!311 = !{i64 2160145790}
!312 = !{i64 2160146522}
!313 = !{!"branch_weights", i32 2000, i32 1}
!314 = !{i64 2148724397, i64 2148724677, i64 2148725011, i64 2148725345}
!315 = !{i64 2160424407}
!316 = !{i64 2160425139}
!317 = !{i64 1238566, i64 1238593}
!318 = !{i64 1239261, i64 1239288, i64 1239321, i64 1239342, i64 1239369, i64 1239395}
!319 = !{i64 2160147861}
!320 = !{i64 6834902}
!321 = !{i64 2160148709}
!322 = !{i64 2160565952}
!323 = !{i64 1239076, i64 1239103, i64 1239137, i64 1239158}
!324 = !{i64 2160565530}
!325 = !{i64 2160571956}
!326 = !{i64 2160572722}
!327 = !{i64 2160573399}
!328 = !{i64 2160147337}
!329 = !{i64 2160574081}
!330 = !{i64 2160574859}
!331 = !{i64 2160575545}
!332 = !{i64 2160576136}
!333 = !{i8 0, i8 2}
!334 = !{i64 2160577189}
!335 = !{i64 2160578219}
!336 = !{i64 2160285647}
!337 = !{i64 2160286121}
!338 = !{i64 2160518737}
!339 = !{i64 2160400450}
!340 = !{i64 2160401182}
!341 = !{i64 1238853, i64 1238880, i64 1238902, i64 1238930}
