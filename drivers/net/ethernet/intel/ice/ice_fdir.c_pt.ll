; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_fdir.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_fdir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ice_fdir_base_pkt = type { i32, i16, ptr, i16, ptr }
%struct.atomic_t = type { i32 }
%struct.ice_fdir_fltr = type { %struct.list_head, i32, %union.anon.202, %union.anon.202, %struct.ice_fdir_udp_gtp, %struct.ice_fdir_udp_gtp, %struct.ice_fdir_l2tpv3, %struct.ice_fdir_l2tpv3, %struct.ice_fdir_extra, %struct.ice_fdir_extra, i16, i8, i16, i16, i16, i16, i16, i8, i8, i8, i16, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%union.anon.202 = type { %struct.ice_fdir_v6 }
%struct.ice_fdir_v6 = type { [4 x i32], [4 x i32], i16, i16, i32, i32, i8, i8, i8 }
%struct.ice_fdir_udp_gtp = type <{ i8, i8, i16, i32, i16, i8, i8, i8, i16, i8, i32, i8, [3 x i8] }>
%struct.ice_fdir_l2tpv3 = type { i32 }
%struct.ice_fdir_extra = type { [6 x i8], [6 x i8], i16, [2 x i32], i16, i16 }
%struct.ice_fltr_desc = type { i64, i64 }
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
%struct.ice_mbx_snapshot = type { %struct.ice_mbx_snap_buffer_data, %struct.ice_mbx_vf_counter }
%struct.ice_mbx_snap_buffer_data = type { i32, i32, i32, i32, i16, i16, i16 }
%struct.ice_mbx_vf_counter = type { ptr, i32 }
%struct.ice_fdir_v4 = type { i32, i32, i16, i16, i32, i32, i8, i8, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.204, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.204 = type { ptr }

@ice_fdir_pkt = internal constant { [25 x %struct.ice_fdir_base_pkt], [108 x i8] } { [25 x %struct.ice_fdir_base_pkt] [%struct.ice_fdir_base_pkt { i32 2, i16 54, ptr @ice_fdir_tcpv4_pkt, i16 104, ptr @ice_fdir_tcp4_tun_pkt }, %struct.ice_fdir_base_pkt { i32 1, i16 42, ptr @ice_fdir_udpv4_pkt, i16 92, ptr @ice_fdir_udp4_tun_pkt }, %struct.ice_fdir_base_pkt { i32 3, i16 46, ptr @ice_fdir_sctpv4_pkt, i16 96, ptr @ice_fdir_sctp4_tun_pkt }, %struct.ice_fdir_base_pkt { i32 4, i16 34, ptr @ice_fdir_ipv4_pkt, i16 84, ptr @ice_fdir_ip4_tun_pkt }, %struct.ice_fdir_base_pkt { i32 5, i16 90, ptr @ice_fdir_udp4_gtpu4_pkt, i16 90, ptr @ice_fdir_udp4_gtpu4_pkt }, %struct.ice_fdir_base_pkt { i32 6, i16 102, ptr @ice_fdir_tcp4_gtpu4_pkt, i16 102, ptr @ice_fdir_tcp4_gtpu4_pkt }, %struct.ice_fdir_base_pkt { i32 7, i16 90, ptr @ice_fdir_icmp4_gtpu4_pkt, i16 90, ptr @ice_fdir_icmp4_gtpu4_pkt }, %struct.ice_fdir_base_pkt { i32 8, i16 82, ptr @ice_fdir_ipv4_gtpu4_pkt, i16 82, ptr @ice_fdir_ipv4_gtpu4_pkt }, %struct.ice_fdir_base_pkt { i32 10, i16 46, ptr @ice_fdir_ipv4_l2tpv3_pkt, i16 46, ptr @ice_fdir_ipv4_l2tpv3_pkt }, %struct.ice_fdir_base_pkt { i32 11, i16 66, ptr @ice_fdir_ipv6_l2tpv3_pkt, i16 66, ptr @ice_fdir_ipv6_l2tpv3_pkt }, %struct.ice_fdir_base_pkt { i32 12, i16 42, ptr @ice_fdir_ipv4_esp_pkt, i16 42, ptr @ice_fdir_ipv4_esp_pkt }, %struct.ice_fdir_base_pkt { i32 13, i16 62, ptr @ice_fdir_ipv6_esp_pkt, i16 62, ptr @ice_fdir_ipv6_esp_pkt }, %struct.ice_fdir_base_pkt { i32 14, i16 50, ptr @ice_fdir_ipv4_ah_pkt, i16 50, ptr @ice_fdir_ipv4_ah_pkt }, %struct.ice_fdir_base_pkt { i32 15, i16 70, ptr @ice_fdir_ipv6_ah_pkt, i16 70, ptr @ice_fdir_ipv6_ah_pkt }, %struct.ice_fdir_base_pkt { i32 16, i16 50, ptr @ice_fdir_ipv4_nat_t_esp_pkt, i16 50, ptr @ice_fdir_ipv4_nat_t_esp_pkt }, %struct.ice_fdir_base_pkt { i32 17, i16 62, ptr @ice_fdir_ipv6_nat_t_esp_pkt, i16 62, ptr @ice_fdir_ipv6_nat_t_esp_pkt }, %struct.ice_fdir_base_pkt { i32 18, i16 58, ptr @ice_fdir_ipv4_pfcp_node_pkt, i16 58, ptr @ice_fdir_ipv4_pfcp_node_pkt }, %struct.ice_fdir_base_pkt { i32 19, i16 58, ptr @ice_fdir_ipv4_pfcp_session_pkt, i16 58, ptr @ice_fdir_ipv4_pfcp_session_pkt }, %struct.ice_fdir_base_pkt { i32 20, i16 78, ptr @ice_fdir_ipv6_pfcp_node_pkt, i16 78, ptr @ice_fdir_ipv6_pfcp_node_pkt }, %struct.ice_fdir_base_pkt { i32 21, i16 78, ptr @ice_fdir_ipv6_pfcp_session_pkt, i16 78, ptr @ice_fdir_ipv6_pfcp_session_pkt }, %struct.ice_fdir_base_pkt { i32 22, i16 22, ptr @ice_fdir_non_ip_l2_pkt, i16 22, ptr @ice_fdir_non_ip_l2_pkt }, %struct.ice_fdir_base_pkt { i32 25, i16 74, ptr @ice_fdir_tcpv6_pkt, i16 124, ptr @ice_fdir_tcp6_tun_pkt }, %struct.ice_fdir_base_pkt { i32 24, i16 62, ptr @ice_fdir_udpv6_pkt, i16 112, ptr @ice_fdir_udp6_tun_pkt }, %struct.ice_fdir_base_pkt { i32 26, i16 66, ptr @ice_fdir_sctpv6_pkt, i16 116, ptr @ice_fdir_sctp6_tun_pkt }, %struct.ice_fdir_base_pkt { i32 27, i16 54, ptr @ice_fdir_ipv6_pkt, i16 104, ptr @ice_fdir_ip6_tun_pkt }], [108 x i8] zeroinitializer }, align 32
@ice_fdir_update_cntrs.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ice\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_fdir_update_cntrs\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/intel/ice/ice_fdir.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown filter type %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ice_fdir_tcpv4_pkt = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00(\00\01\00\00@\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00P\00 \00\00\00\00\00", [42 x i8] zeroinitializer }, align 32
@ice_fdir_tcp4_tun_pkt = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00Z\00\00@\00@\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00(\00\00@\00@\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00P\00 \00\00\00\00\00", [56 x i8] zeroinitializer }, align 32
@ice_fdir_ipv6_nat_t_esp_pkt = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\86\DD`\00\00\00\00\08\11@\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\94\00\00\00\08", [34 x i8] zeroinitializer }, align 32
@ice_fdir_non_ip_l2_pkt = internal constant { [22 x i8], [42 x i8] } zeroinitializer, align 32
@ice_fdir_tcpv6_pkt = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\86\DD`\00\00\00\00\14\06@\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00P\00 \00\00\00\00\00", [54 x i8] zeroinitializer }, align 32
@ice_fdir_tcp6_tun_pkt = internal constant { [124 x i8], [36 x i8] } { [124 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00n\00\00@\00@\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\86\DD`\00\00\00\00\14\06@\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00P\00 \00\00\00\00\00", [36 x i8] zeroinitializer }, align 32
@ice_fdir_udpv6_pkt = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\86\DD`\00\00\00\00\08\11@\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00", [34 x i8] zeroinitializer }, align 32
@ice_fdir_udpv4_pkt = internal constant { <{ [24 x i8], [18 x i8] }>, [54 x i8] } { <{ [24 x i8], [18 x i8] }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00\1C\00\00@\00@\11", [18 x i8] zeroinitializer }>, [54 x i8] zeroinitializer }, align 32
@ice_fdir_udp4_tun_pkt = internal constant { <{ [74 x i8], [18 x i8] }>, [36 x i8] } { <{ [74 x i8], [18 x i8] }> <{ [74 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00N\00\00@\00@\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00\1C\00\00@\00@\11", [18 x i8] zeroinitializer }>, [36 x i8] zeroinitializer }, align 32
@ice_fdir_sctpv4_pkt = internal constant { <{ [24 x i8], [22 x i8] }>, [50 x i8] } { <{ [24 x i8], [22 x i8] }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00 \00\00@\00@\84", [22 x i8] zeroinitializer }>, [50 x i8] zeroinitializer }, align 32
@ice_fdir_sctp4_tun_pkt = internal constant { <{ [74 x i8], [22 x i8] }>, [32 x i8] } { <{ [74 x i8], [22 x i8] }> <{ [74 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00R\00\00@\00@\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00 \00\01\00\00@\84", [22 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_fdir_ipv4_pkt = internal constant { <{ [24 x i8], [10 x i8] }>, [62 x i8] } { <{ [24 x i8], [10 x i8] }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00\14\00\00@\00@\10", [10 x i8] zeroinitializer }>, [62 x i8] zeroinitializer }, align 32
@ice_fdir_ip4_tun_pkt = internal constant { <{ [73 x i8], [11 x i8] }>, [44 x i8] } { <{ [73 x i8], [11 x i8] }> <{ [73 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00F\00\00@\00@\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00\14\00\00\00\00@", [11 x i8] zeroinitializer }>, [44 x i8] zeroinitializer }, align 32
@ice_fdir_udp4_gtpu4_pkt = internal constant { <{ [72 x i8], [18 x i8] }>, [38 x i8] } { <{ [72 x i8], [18 x i8] }> <{ [72 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00L\00\00@\00@\11\00\00\00\00\00\00\00\00\00\00\08h\08h\00\00\00\004\FF\00(\00\00\00\00\00\00\00\85\02\00\00\00\00\00\00\00E\00\00\1C\00\00@\00@\11", [18 x i8] zeroinitializer }>, [38 x i8] zeroinitializer }, align 32
@ice_fdir_tcp4_gtpu4_pkt = internal constant { <{ [72 x i8], [30 x i8] }>, [58 x i8] } { <{ [72 x i8], [30 x i8] }> <{ [72 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00X\00\00@\00@\11\00\00\00\00\00\00\00\00\00\00\08h\08h\00\00\00\004\FF\00(\00\00\00\00\00\00\00\85\02\00\00\00\00\00\00\00E\00\00(\00\00@\00@\06", [30 x i8] zeroinitializer }>, [58 x i8] zeroinitializer }, align 32
@ice_fdir_icmp4_gtpu4_pkt = internal constant { <{ [72 x i8], [18 x i8] }>, [38 x i8] } { <{ [72 x i8], [18 x i8] }> <{ [72 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00L\00\00@\00@\11\00\00\00\00\00\00\00\00\00\00\08h\08h\00\00\00\004\FF\00(\00\00\00\00\00\00\00\85\02\00\00\00\00\00\00\00E\00\00\1C\00\00@\00@\01", [18 x i8] zeroinitializer }>, [38 x i8] zeroinitializer }, align 32
@ice_fdir_ipv4_gtpu4_pkt = internal constant { <{ [71 x i8], [11 x i8] }>, [46 x i8] } { <{ [71 x i8], [11 x i8] }> <{ [71 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00D\00\00@\00@\11\00\00\00\00\00\00\00\00\00\00\08h\08h\00\00\00\004\FF\00(\00\00\00\00\00\00\00\85\02\00\00\00\00\00\00\00E\00\00\14\00\00@\00@", [11 x i8] zeroinitializer }>, [46 x i8] zeroinitializer }, align 32
@ice_fdir_ipv4_l2tpv3_pkt = internal constant { <{ [24 x i8], [22 x i8] }>, [50 x i8] } { <{ [24 x i8], [22 x i8] }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00\14\00\00@\00@s", [22 x i8] zeroinitializer }>, [50 x i8] zeroinitializer }, align 32
@ice_fdir_ipv6_l2tpv3_pkt = internal constant { <{ [22 x i8], [44 x i8] }>, [62 x i8] } { <{ [22 x i8], [44 x i8] }> <{ [22 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\86\DD`\00\00\00\00\00s@", [44 x i8] zeroinitializer }>, [62 x i8] zeroinitializer }, align 32
@ice_fdir_ipv4_esp_pkt = internal constant { <{ [24 x i8], [18 x i8] }>, [54 x i8] } { <{ [24 x i8], [18 x i8] }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00\14\00\00@\00@2", [18 x i8] zeroinitializer }>, [54 x i8] zeroinitializer }, align 32
@ice_fdir_ipv6_esp_pkt = internal constant { <{ [22 x i8], [40 x i8] }>, [34 x i8] } { <{ [22 x i8], [40 x i8] }> <{ [22 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\86\DD`\00\00\00\00\002@", [40 x i8] zeroinitializer }>, [34 x i8] zeroinitializer }, align 32
@ice_fdir_ipv4_ah_pkt = internal constant { <{ [24 x i8], [26 x i8] }>, [46 x i8] } { <{ [24 x i8], [26 x i8] }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00\14\00\00@\00@3", [26 x i8] zeroinitializer }>, [46 x i8] zeroinitializer }, align 32
@ice_fdir_ipv6_ah_pkt = internal constant { <{ [22 x i8], [48 x i8] }>, [58 x i8] } { <{ [22 x i8], [48 x i8] }> <{ [22 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\86\DD`\00\00\00\00\003@", [48 x i8] zeroinitializer }>, [58 x i8] zeroinitializer }, align 32
@ice_fdir_ipv4_nat_t_esp_pkt = internal constant { <{ [38 x i8], [12 x i8] }>, [46 x i8] } { <{ [38 x i8], [12 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00\1C\00\00@\00@\11\00\00\00\00\00\00\00\00\00\00\00\00\11\94", [12 x i8] zeroinitializer }>, [46 x i8] zeroinitializer }, align 32
@ice_fdir_ipv4_pfcp_node_pkt = internal constant { <{ [46 x i8], [12 x i8] }>, [38 x i8] } { <{ [46 x i8], [12 x i8] }> <{ [46 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00,\00\00@\00@\11\00\00\00\00\00\00\00\00\00\00\22e\22e\00\00\00\00 \00\00\10", [12 x i8] zeroinitializer }>, [38 x i8] zeroinitializer }, align 32
@ice_fdir_ipv4_pfcp_session_pkt = internal constant { <{ [46 x i8], [12 x i8] }>, [38 x i8] } { <{ [46 x i8], [12 x i8] }> <{ [46 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00,\00\00@\00@\11\00\00\00\00\00\00\00\00\00\00\22e\22e\00\00\00\00!\00\00\10", [12 x i8] zeroinitializer }>, [38 x i8] zeroinitializer }, align 32
@ice_fdir_ipv6_pfcp_node_pkt = internal constant { <{ [66 x i8], [12 x i8] }>, [50 x i8] } { <{ [66 x i8], [12 x i8] }> <{ [66 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\86\DD`\00\00\00\00\18\11@\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\22e\22e\00\00\00\00 \00\00\10", [12 x i8] zeroinitializer }>, [50 x i8] zeroinitializer }, align 32
@ice_fdir_ipv6_pfcp_session_pkt = internal constant { <{ [66 x i8], [12 x i8] }>, [50 x i8] } { <{ [66 x i8], [12 x i8] }> <{ [66 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\86\DD`\00\00\00\00\18\11@\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\22e\22e\00\00\00\00!\00\00\10", [12 x i8] zeroinitializer }>, [50 x i8] zeroinitializer }, align 32
@ice_fdir_udp6_tun_pkt = internal constant { <{ [72 x i8], [40 x i8] }>, [48 x i8] } { <{ [72 x i8], [40 x i8] }> <{ [72 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00b\00\00@\00@\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\86\DD`\00\00\00\00\08\11@", [40 x i8] zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@ice_fdir_sctpv6_pkt = internal constant { <{ [22 x i8], [44 x i8] }>, [62 x i8] } { <{ [22 x i8], [44 x i8] }> <{ [22 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\86\DD`\00\00\00\00\0C\84@", [44 x i8] zeroinitializer }>, [62 x i8] zeroinitializer }, align 32
@ice_fdir_sctp6_tun_pkt = internal constant { <{ [72 x i8], [44 x i8] }>, [44 x i8] } { <{ [72 x i8], [44 x i8] }> <{ [72 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00f\00\00@\00@\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\86\DD`\00\00\00\00\0C\84@", [44 x i8] zeroinitializer }>, [44 x i8] zeroinitializer }, align 32
@ice_fdir_ipv6_pkt = internal constant { <{ [22 x i8], [32 x i8] }>, [42 x i8] } { <{ [22 x i8], [32 x i8] }> <{ [22 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\86\DD`\00\00\00\00\00;@", [32 x i8] zeroinitializer }>, [42 x i8] zeroinitializer }, align 32
@ice_fdir_ip6_tun_pkt = internal constant { <{ [72 x i8], [32 x i8] }>, [56 x i8] } { <{ [72 x i8], [32 x i8] }> <{ [72 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\08\00E\00\00Z\00\00@\00@\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\86\DD`\00\00\00\00\00;@", [32 x i8] zeroinitializer }>, [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [27 x i64] [i64 25, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 24, i64 25, i64 26, i64 27]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 17, i64 132]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 17, i64 132]
@__sancov_gen_cov_switch_values.33 = internal global [27 x i64] [i64 25, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 24, i64 25, i64 26, i64 27]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 24, i64 25, i64 26, i64 27]
@___asan_gen_.36 = private unnamed_addr constant [13 x i8] c"ice_fdir_pkt\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 418, i32 39 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1194, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [19 x i8] c"ice_fdir_tcpv4_pkt\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 7, i32 17 }
@___asan_gen_.54 = private unnamed_addr constant [22 x i8] c"ice_fdir_tcp4_tun_pkt\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 287, i32 17 }
@___asan_gen_.57 = private unnamed_addr constant [28 x i8] c"ice_fdir_ipv6_nat_t_esp_pkt\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 176, i32 17 }
@___asan_gen_.60 = private unnamed_addr constant [23 x i8] c"ice_fdir_non_ip_l2_pkt\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 235, i32 17 }
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"ice_fdir_tcpv6_pkt\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 241, i32 17 }
@___asan_gen_.66 = private unnamed_addr constant [22 x i8] c"ice_fdir_tcp6_tun_pkt\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 347, i32 17 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"ice_fdir_udpv6_pkt\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 254, i32 17 }
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"ice_fdir_udpv4_pkt\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 17, i32 17 }
@___asan_gen_.75 = private unnamed_addr constant [22 x i8] c"ice_fdir_udp4_tun_pkt\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 303, i32 17 }
@___asan_gen_.78 = private unnamed_addr constant [20 x i8] c"ice_fdir_sctpv4_pkt\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 26, i32 17 }
@___asan_gen_.81 = private unnamed_addr constant [23 x i8] c"ice_fdir_sctp4_tun_pkt\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 318, i32 17 }
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"ice_fdir_ipv4_pkt\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 35, i32 17 }
@___asan_gen_.87 = private unnamed_addr constant [21 x i8] c"ice_fdir_ip4_tun_pkt\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 333, i32 17 }
@___asan_gen_.90 = private unnamed_addr constant [24 x i8] c"ice_fdir_udp4_gtpu4_pkt\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 43, i32 17 }
@___asan_gen_.93 = private unnamed_addr constant [24 x i8] c"ice_fdir_tcp4_gtpu4_pkt\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 58, i32 17 }
@___asan_gen_.96 = private unnamed_addr constant [25 x i8] c"ice_fdir_icmp4_gtpu4_pkt\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 74, i32 17 }
@___asan_gen_.99 = private unnamed_addr constant [24 x i8] c"ice_fdir_ipv4_gtpu4_pkt\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 89, i32 17 }
@___asan_gen_.102 = private unnamed_addr constant [25 x i8] c"ice_fdir_ipv4_l2tpv3_pkt\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 103, i32 17 }
@___asan_gen_.105 = private unnamed_addr constant [25 x i8] c"ice_fdir_ipv6_l2tpv3_pkt\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 112, i32 17 }
@___asan_gen_.108 = private unnamed_addr constant [22 x i8] c"ice_fdir_ipv4_esp_pkt\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 124, i32 17 }
@___asan_gen_.111 = private unnamed_addr constant [22 x i8] c"ice_fdir_ipv6_esp_pkt\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 133, i32 17 }
@___asan_gen_.114 = private unnamed_addr constant [21 x i8] c"ice_fdir_ipv4_ah_pkt\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 144, i32 17 }
@___asan_gen_.117 = private unnamed_addr constant [21 x i8] c"ice_fdir_ipv6_ah_pkt\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 154, i32 17 }
@___asan_gen_.120 = private unnamed_addr constant [28 x i8] c"ice_fdir_ipv4_nat_t_esp_pkt\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 166, i32 17 }
@___asan_gen_.123 = private unnamed_addr constant [28 x i8] c"ice_fdir_ipv4_pfcp_node_pkt\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 187, i32 17 }
@___asan_gen_.126 = private unnamed_addr constant [31 x i8] c"ice_fdir_ipv4_pfcp_session_pkt\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 198, i32 17 }
@___asan_gen_.129 = private unnamed_addr constant [28 x i8] c"ice_fdir_ipv6_pfcp_node_pkt\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 209, i32 17 }
@___asan_gen_.132 = private unnamed_addr constant [31 x i8] c"ice_fdir_ipv6_pfcp_session_pkt\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 222, i32 17 }
@___asan_gen_.135 = private unnamed_addr constant [22 x i8] c"ice_fdir_udp6_tun_pkt\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 366, i32 17 }
@___asan_gen_.138 = private unnamed_addr constant [20 x i8] c"ice_fdir_sctpv6_pkt\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 265, i32 17 }
@___asan_gen_.141 = private unnamed_addr constant [23 x i8] c"ice_fdir_sctp6_tun_pkt\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 383, i32 17 }
@___asan_gen_.144 = private unnamed_addr constant [18 x i8] c"ice_fdir_ipv6_pkt\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 277, i32 17 }
@___asan_gen_.147 = private unnamed_addr constant [21 x i8] c"ice_fdir_ip6_tun_pkt\00", align 1
@___asan_gen_.148 = private constant [45 x i8] c"../drivers/net/ethernet/intel/ice/ice_fdir.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 401, i32 17 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @ice_fdir_pkt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ice_fdir_tcpv4_pkt, ptr @ice_fdir_tcp4_tun_pkt, ptr @ice_fdir_ipv6_nat_t_esp_pkt, ptr @ice_fdir_non_ip_l2_pkt, ptr @ice_fdir_tcpv6_pkt, ptr @ice_fdir_tcp6_tun_pkt, ptr @ice_fdir_udpv6_pkt, ptr @ice_fdir_udpv4_pkt, ptr @ice_fdir_udp4_tun_pkt, ptr @ice_fdir_sctpv4_pkt, ptr @ice_fdir_sctp4_tun_pkt, ptr @ice_fdir_ipv4_pkt, ptr @ice_fdir_ip4_tun_pkt, ptr @ice_fdir_udp4_gtpu4_pkt, ptr @ice_fdir_tcp4_gtpu4_pkt, ptr @ice_fdir_icmp4_gtpu4_pkt, ptr @ice_fdir_ipv4_gtpu4_pkt, ptr @ice_fdir_ipv4_l2tpv3_pkt, ptr @ice_fdir_ipv6_l2tpv3_pkt, ptr @ice_fdir_ipv4_esp_pkt, ptr @ice_fdir_ipv6_esp_pkt, ptr @ice_fdir_ipv4_ah_pkt, ptr @ice_fdir_ipv6_ah_pkt, ptr @ice_fdir_ipv4_nat_t_esp_pkt, ptr @ice_fdir_ipv4_pfcp_node_pkt, ptr @ice_fdir_ipv4_pfcp_session_pkt, ptr @ice_fdir_ipv6_pfcp_node_pkt, ptr @ice_fdir_ipv6_pfcp_session_pkt, ptr @ice_fdir_udp6_tun_pkt, ptr @ice_fdir_sctpv6_pkt, ptr @ice_fdir_sctp6_tun_pkt, ptr @ice_fdir_ipv6_pkt, ptr @ice_fdir_ip6_tun_pkt], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_pkt to i32), i32 500, i32 608, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_tcpv4_pkt to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_tcp4_tun_pkt to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_ipv6_nat_t_esp_pkt to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_non_ip_l2_pkt to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_tcpv6_pkt to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_tcp6_tun_pkt to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_udpv6_pkt to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_udpv4_pkt to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_udp4_tun_pkt to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_sctpv4_pkt to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_sctp4_tun_pkt to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_ipv4_pkt to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_ip4_tun_pkt to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_udp4_gtpu4_pkt to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_tcp4_gtpu4_pkt to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_icmp4_gtpu4_pkt to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_ipv4_gtpu4_pkt to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_ipv4_l2tpv3_pkt to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_ipv6_l2tpv3_pkt to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_ipv4_esp_pkt to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_ipv6_esp_pkt to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_ipv4_ah_pkt to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_ipv6_ah_pkt to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_ipv4_nat_t_esp_pkt to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_ipv4_pfcp_node_pkt to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_ipv4_pfcp_session_pkt to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_ipv6_pfcp_node_pkt to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_ipv6_pfcp_session_pkt to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_udp6_tun_pkt to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_sctpv6_pkt to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_sctp6_tun_pkt to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_ipv6_pkt to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fdir_ip6_tun_pkt to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_fdir_get_prgm_desc(ptr noundef %hw, ptr nocapture noundef readonly %input, ptr nocapture noundef writeonly %fdesc, i1 noundef zeroext %add) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fltr_id = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 21
  %0 = ptrtoint ptr %fltr_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fltr_id, align 4
  %dest_ctl = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 17
  %2 = ptrtoint ptr %dest_ctl to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dest_ctl, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %entry.if.end_crit_edge [
    i8 0, label %entry.if.end18_crit_edge
    i8 3, label %if.then6
    i8 2, label %if.then14
  ]

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %q_region = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 11
  %5 = ptrtoint ptr %q_region to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %q_region, align 2
  br label %if.end

if.end:                                           ; preds = %if.then14, %entry.if.end_crit_edge
  %fdir_fltr_ctx.sroa.30.0 = phi i8 [ 0, %entry.if.end_crit_edge ], [ %6, %if.then14 ]
  %q_index = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 14
  %7 = ptrtoint ptr %q_index to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %q_index, align 4
  %phi.bo = and i16 %8, 2047
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then6, %entry.if.end18_crit_edge
  %fdir_fltr_ctx.sroa.6.0 = phi i16 [ %phi.bo, %if.end ], [ 0, %if.then6 ], [ 0, %entry.if.end18_crit_edge ]
  %fdir_fltr_ctx.sroa.30.1 = phi i8 [ %fdir_fltr_ctx.sroa.30.0, %if.end ], [ 0, %if.then6 ], [ %3, %entry.if.end18_crit_edge ]
  %fdir_fltr_ctx.sroa.37.sroa.5.0 = phi i8 [ 0, %if.end ], [ 0, %if.then6 ], [ 1, %entry.if.end18_crit_edge ]
  %cnt_ena = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 18
  %9 = ptrtoint ptr %cnt_ena to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cnt_ena, align 1
  %cnt_index = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 20
  %11 = ptrtoint ptr %cnt_index to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cnt_index, align 2
  %dest_vsi = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 16
  %13 = ptrtoint ptr %dest_vsi to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %dest_vsi, align 4
  %call = tail call zeroext i16 @ice_get_hw_vsi_num(ptr noundef %hw, i16 noundef zeroext %14) #9
  %15 = ptrtoint ptr %dest_ctl to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dest_ctl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %cmp23 = icmp eq i8 %16, 3
  %spec.select = select i1 %cmp23, i8 0, i8 3
  %comp_report = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 23
  %17 = ptrtoint ptr %comp_report to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %comp_report, align 1
  %fdid_prio = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 22
  %19 = ptrtoint ptr %fdid_prio to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fdid_prio, align 4
  %and.i = zext i16 %fdir_fltr_ctx.sroa.6.0 to i64
  %conv4.i = zext i8 %18 to i64
  %shl5.i = shl nuw nsw i64 %conv4.i, 12
  %and6.i = and i64 %shl5.i, 12288
  %conv12.i = zext i16 %12 to i64
  %shl13.i = shl nuw nsw i64 %conv12.i, 16
  %and14.i = and i64 %shl13.i, 536805376
  %conv16.i = zext i8 %10 to i64
  %shl17.i = shl nuw nsw i64 %conv16.i, 29
  %and18.i = and i64 %shl17.i, 1610612736
  %conv24.i = zext i8 %fdir_fltr_ctx.sroa.30.1 to i64
  %shl25.i = shl nuw nsw i64 %conv24.i, 32
  %and26.i = and i64 %shl25.i, 30064771072
  %conv28.i = zext i8 %spec.select to i64
  %shl29.i = shl nuw nsw i64 %conv28.i, 35
  %conv36.i = zext i8 %fdir_fltr_ctx.sroa.37.sroa.5.0 to i64
  %shl37.i = shl nuw nsw i64 %conv36.i, 40
  %or15.i = or i64 %and26.i, %and.i
  %or19.i = or i64 %or15.i, %shl37.i
  %or27.i = or i64 %or19.i, %and18.i
  %or11.i = or i64 %or27.i, %and14.i
  %or7.i = add nuw nsw i64 %or11.i, %and6.i
  %or31.i = or i64 %or7.i, %shl29.i
  %or39.i = or i64 %or31.i, 32768
  %21 = tail call i64 @llvm.bswap.i64(i64 %or39.i) #9
  %22 = ptrtoint ptr %fdesc to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %fdesc, align 8
  %conv67.i = zext i16 %call to i64
  %shl68.i = shl nuw nsw i64 %conv67.i, 14
  %and69.i = and i64 %shl68.i, 16760832
  %conv75.i = zext i8 %20 to i64
  %shl76.i = shl nuw nsw i64 %conv75.i, 25
  %and77.i = and i64 %shl76.i, 234881024
  %conv83.i = zext i32 %1 to i64
  %shl84.i = shl nuw i64 %conv83.i, 32
  %or70.i = select i1 %add, i64 1342177640, i64 1342177656
  %or78.i = or i64 %or70.i, %shl84.i
  %or82.i = or i64 %or78.i, %and69.i
  %or86.i = or i64 %or82.i, %and77.i
  %23 = tail call i64 @llvm.bswap.i64(i64 %or86.i) #9
  %dtype_cmd_vsi_fdid.i = getelementptr inbounds %struct.ice_fltr_desc, ptr %fdesc, i32 0, i32 1
  %24 = ptrtoint ptr %dtype_cmd_vsi_fdid.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %dtype_cmd_vsi_fdid.i, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ice_get_hw_vsi_num(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_alloc_fd_res_cntr(ptr noundef %hw, ptr noundef %cntr_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ice_alloc_res_cntr(ptr noundef %hw, i8 noundef zeroext 33, i8 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %cntr_id) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_alloc_res_cntr(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_free_fd_res_cntr(ptr noundef %hw, i16 noundef zeroext %cntr_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ice_free_res_cntr(ptr noundef %hw, i8 noundef zeroext 33, i8 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext %cntr_id) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_free_res_cntr(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_alloc_fd_guar_item(ptr noundef %hw, ptr noundef %cntr_id, i16 noundef zeroext %num_fltr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ice_alloc_res_cntr(ptr noundef %hw, i8 noundef zeroext 34, i8 noundef zeroext 0, i16 noundef zeroext %num_fltr, ptr noundef %cntr_id) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_alloc_fd_shrd_item(ptr noundef %hw, ptr noundef %cntr_id, i16 noundef zeroext %num_fltr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ice_alloc_res_cntr(ptr noundef %hw, i8 noundef zeroext 35, i8 noundef zeroext 0, i16 noundef zeroext %num_fltr, ptr noundef %cntr_id) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ice_get_fdir_cnt_all(ptr nocapture noundef readonly %hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fd_fltr_guar = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 4
  %0 = ptrtoint ptr %fd_fltr_guar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fd_fltr_guar, align 4
  %fd_fltr_best_effort = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 5
  %2 = ptrtoint ptr %fd_fltr_best_effort to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fd_fltr_best_effort, align 8
  %add = add i32 %3, %1
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_fdir_get_gen_prgm_pkt(ptr noundef %hw, ptr noundef readonly %input, ptr noundef %pkt, i1 noundef zeroext %frag, i1 noundef zeroext %tun) local_unnamed_addr #0 align 64 {
entry:
  %tnl_port = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tnl_port) #9
  %0 = ptrtoint ptr %tnl_port to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %tnl_port, align 2, !annotation !83
  %flow_type = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 1
  %1 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flow_type, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 4, label %if.then
    i32 27, label %if.then7
    i32 2, label %entry.if.end31_crit_edge
    i32 1, label %if.end31.fold.split
    i32 3, label %if.end31.fold.split655
    i32 5, label %if.end31.fold.split656
    i32 6, label %if.end31.fold.split657
    i32 7, label %if.end31.fold.split658
    i32 8, label %if.end31.fold.split659
    i32 10, label %if.end31.fold.split660
    i32 11, label %if.end31.fold.split661
    i32 12, label %if.end31.fold.split662
    i32 13, label %if.end31.fold.split663
    i32 14, label %if.end31.fold.split664
    i32 15, label %if.end31.fold.split665
    i32 16, label %if.end31.fold.split666
    i32 17, label %if.end31.fold.split667
    i32 18, label %if.end31.fold.split668
    i32 19, label %if.end31.fold.split669
    i32 20, label %if.end31.fold.split670
    i32 21, label %if.end31.fold.split671
    i32 22, label %if.end31.fold.split672
    i32 25, label %if.end31.fold.split673
    i32 24, label %if.end31.fold.split674
    i32 26, label %if.end31.fold.split675
  ]

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %ip = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2
  %proto = getelementptr inbounds %struct.ice_fdir_v4, ptr %ip, i32 0, i32 8
  %4 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %proto, align 2
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %5, label %for.inc.2.thread581 [
    i8 6, label %if.then.if.end31_crit_edge
    i8 17, label %for.inc.thread569
    i8 -124, label %for.inc.1.thread575
  ]

if.then.if.end31_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

for.inc.2.thread581:                              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

for.inc.1.thread575:                              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

for.inc.thread569:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then7:                                         ; preds = %entry
  %proto9 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 7
  %7 = ptrtoint ptr %proto9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %proto9, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %8, label %for.inc.23.thread [
    i8 6, label %if.then7.if.end31_crit_edge
    i8 17, label %for.inc.21.thread644
    i8 -124, label %for.inc.22.thread
  ]

if.then7.if.end31_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

for.inc.22.thread:                                ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

for.inc.21.thread644:                             ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

for.inc.23.thread:                                ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31.fold.split655:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31.fold.split656:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31.fold.split657:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31.fold.split658:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31.fold.split659:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31.fold.split660:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31.fold.split661:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31.fold.split662:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31.fold.split663:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31.fold.split664:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31.fold.split665:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31.fold.split666:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31.fold.split667:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31.fold.split668:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31.fold.split669:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31.fold.split670:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31.fold.split671:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31.fold.split672:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31.fold.split673:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31.fold.split674:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31.fold.split675:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31:                                         ; preds = %if.end31.fold.split675, %if.end31.fold.split674, %if.end31.fold.split673, %if.end31.fold.split672, %if.end31.fold.split671, %if.end31.fold.split670, %if.end31.fold.split669, %if.end31.fold.split668, %if.end31.fold.split667, %if.end31.fold.split666, %if.end31.fold.split665, %if.end31.fold.split664, %if.end31.fold.split663, %if.end31.fold.split662, %if.end31.fold.split661, %if.end31.fold.split660, %if.end31.fold.split659, %if.end31.fold.split658, %if.end31.fold.split657, %if.end31.fold.split656, %if.end31.fold.split655, %if.end31.fold.split, %for.inc.23.thread, %for.inc.21.thread644, %for.inc.22.thread, %if.then7.if.end31_crit_edge, %for.inc.thread569, %for.inc.1.thread575, %for.inc.2.thread581, %if.then.if.end31_crit_edge, %entry.if.end31_crit_edge
  %flow.0562 = phi i32 [ 2, %if.then.if.end31_crit_edge ], [ 1, %for.inc.thread569 ], [ 3, %for.inc.1.thread575 ], [ 4, %for.inc.2.thread581 ], [ 25, %if.then7.if.end31_crit_edge ], [ 24, %for.inc.21.thread644 ], [ 26, %for.inc.22.thread ], [ 27, %for.inc.23.thread ], [ %2, %entry.if.end31_crit_edge ], [ %2, %if.end31.fold.split ], [ %2, %if.end31.fold.split655 ], [ %2, %if.end31.fold.split656 ], [ %2, %if.end31.fold.split657 ], [ %2, %if.end31.fold.split658 ], [ %2, %if.end31.fold.split659 ], [ %2, %if.end31.fold.split660 ], [ %2, %if.end31.fold.split661 ], [ %2, %if.end31.fold.split662 ], [ %2, %if.end31.fold.split663 ], [ %2, %if.end31.fold.split664 ], [ %2, %if.end31.fold.split665 ], [ %2, %if.end31.fold.split666 ], [ %2, %if.end31.fold.split667 ], [ %2, %if.end31.fold.split668 ], [ %2, %if.end31.fold.split669 ], [ %2, %if.end31.fold.split670 ], [ %2, %if.end31.fold.split671 ], [ %2, %if.end31.fold.split672 ], [ %2, %if.end31.fold.split673 ], [ %2, %if.end31.fold.split674 ], [ %2, %if.end31.fold.split675 ]
  %conv19556.lcssa = phi i32 [ 0, %if.then.if.end31_crit_edge ], [ 1, %for.inc.thread569 ], [ 2, %for.inc.1.thread575 ], [ 3, %for.inc.2.thread581 ], [ 21, %if.then7.if.end31_crit_edge ], [ 22, %for.inc.21.thread644 ], [ 23, %for.inc.22.thread ], [ 24, %for.inc.23.thread ], [ 0, %entry.if.end31_crit_edge ], [ 1, %if.end31.fold.split ], [ 2, %if.end31.fold.split655 ], [ 4, %if.end31.fold.split656 ], [ 5, %if.end31.fold.split657 ], [ 6, %if.end31.fold.split658 ], [ 7, %if.end31.fold.split659 ], [ 8, %if.end31.fold.split660 ], [ 9, %if.end31.fold.split661 ], [ 10, %if.end31.fold.split662 ], [ 11, %if.end31.fold.split663 ], [ 12, %if.end31.fold.split664 ], [ 13, %if.end31.fold.split665 ], [ 14, %if.end31.fold.split666 ], [ 15, %if.end31.fold.split667 ], [ 16, %if.end31.fold.split668 ], [ 17, %if.end31.fold.split669 ], [ 18, %if.end31.fold.split670 ], [ 19, %if.end31.fold.split671 ], [ 20, %if.end31.fold.split672 ], [ 21, %if.end31.fold.split673 ], [ 22, %if.end31.fold.split674 ], [ 23, %if.end31.fold.split675 ]
  br i1 %tun, label %if.else39, label %if.then32

if.then32:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %pkt35 = getelementptr [25 x %struct.ice_fdir_base_pkt], ptr @ice_fdir_pkt, i32 0, i32 %conv19556.lcssa, i32 2
  %10 = ptrtoint ptr %pkt35 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pkt35, align 4
  %pkt_len = getelementptr [25 x %struct.ice_fdir_base_pkt], ptr @ice_fdir_pkt, i32 0, i32 %conv19556.lcssa, i32 1
  %12 = ptrtoint ptr %pkt_len to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pkt_len, align 4
  %conv38 = zext i16 %13 to i32
  %14 = call ptr @memcpy(ptr %pkt, ptr %11, i32 %conv38)
  br label %if.end54

if.else39:                                        ; preds = %if.end31
  %call = call zeroext i1 @ice_get_open_tunnel_port(ptr noundef %hw, ptr noundef nonnull %tnl_port, i32 noundef 255) #9
  br i1 %call, label %if.end46, label %if.else39.cleanup_crit_edge

if.else39.cleanup_crit_edge:                      ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end46:                                         ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #11
  %tun_pkt = getelementptr [25 x %struct.ice_fdir_base_pkt], ptr @ice_fdir_pkt, i32 0, i32 %conv19556.lcssa, i32 4
  %15 = ptrtoint ptr %tun_pkt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tun_pkt, align 4
  %tun_pkt_len = getelementptr [25 x %struct.ice_fdir_base_pkt], ptr @ice_fdir_pkt, i32 0, i32 %conv19556.lcssa, i32 3
  %17 = ptrtoint ptr %tun_pkt_len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %tun_pkt_len, align 4
  %conv52 = zext i16 %18 to i32
  %19 = call ptr @memcpy(ptr %pkt, ptr %16, i32 %conv52)
  %20 = ptrtoint ptr %tnl_port to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %tnl_port, align 2
  %add.ptr.i = getelementptr i8, ptr %pkt, i32 36
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %21, ptr %add.ptr.i, align 1
  %arrayidx53 = getelementptr i8, ptr %pkt, i32 50
  br label %if.end54

if.end54:                                         ; preds = %if.end46, %if.then32
  %loc.0 = phi ptr [ %arrayidx53, %if.end46 ], [ %pkt, %if.then32 ]
  %23 = zext i32 %flow.0562 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %flow.0562, label %if.end54.cleanup_crit_edge [
    i32 2, label %sw.bb55
    i32 1, label %sw.bb66
    i32 3, label %sw.bb84
    i32 4, label %sw.bb100
    i32 5, label %if.end54.sw.bb114_crit_edge
    i32 6, label %if.end54.sw.bb114_crit_edge676
    i32 7, label %if.end54.sw.bb114_crit_edge677
    i32 8, label %if.end54.sw.bb114_crit_edge678
    i32 10, label %sw.bb120
    i32 11, label %sw.bb121
    i32 12, label %sw.bb124
    i32 13, label %sw.bb126
    i32 14, label %sw.bb129
    i32 15, label %sw.bb132
    i32 16, label %sw.bb135
    i32 17, label %sw.bb142
    i32 18, label %if.end54.sw.bb151_crit_edge
    i32 19, label %if.end54.sw.bb151_crit_edge679
    i32 20, label %if.end54.sw.bb154_crit_edge
    i32 21, label %if.end54.sw.bb154_crit_edge680
    i32 22, label %sw.bb157
    i32 25, label %sw.bb159
    i32 24, label %sw.bb175
    i32 26, label %sw.bb193
    i32 27, label %sw.bb211
  ]

if.end54.sw.bb154_crit_edge680:                   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb154

if.end54.sw.bb154_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb154

if.end54.sw.bb151_crit_edge679:                   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb151

if.end54.sw.bb151_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb151

if.end54.sw.bb114_crit_edge678:                   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb114

if.end54.sw.bb114_crit_edge677:                   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb114

if.end54.sw.bb114_crit_edge676:                   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb114

if.end54.sw.bb114_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb114

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb55:                                          ; preds = %if.end54
  %ip56 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2
  %src_ip = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %src_ip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src_ip, align 4
  %add.ptr.i406 = getelementptr i8, ptr %loc.0, i32 30
  %26 = ptrtoint ptr %add.ptr.i406 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %add.ptr.i406, align 1
  %src_port = getelementptr inbounds %struct.ice_fdir_v4, ptr %ip56, i32 0, i32 3
  %27 = ptrtoint ptr %src_port to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %src_port, align 2
  %add.ptr.i407 = getelementptr i8, ptr %loc.0, i32 36
  %29 = ptrtoint ptr %add.ptr.i407 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %add.ptr.i407, align 1
  %30 = ptrtoint ptr %ip56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ip56, align 4
  %add.ptr.i408 = getelementptr i8, ptr %loc.0, i32 26
  %32 = ptrtoint ptr %add.ptr.i408 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %add.ptr.i408, align 1
  %dst_port = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 2
  %33 = ptrtoint ptr %dst_port to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %dst_port, align 4
  %add.ptr.i409 = getelementptr i8, ptr %loc.0, i32 34
  %35 = ptrtoint ptr %add.ptr.i409 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %add.ptr.i409, align 1
  %tos = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tos, align 4
  %add.ptr.i410 = getelementptr i8, ptr %loc.0, i32 15
  %38 = ptrtoint ptr %add.ptr.i410 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %add.ptr.i410, align 1
  %ttl = getelementptr inbounds %struct.ice_fdir_v4, ptr %ip56, i32 0, i32 9
  %39 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ttl, align 1
  %add.ptr.i411 = getelementptr i8, ptr %loc.0, i32 22
  %41 = ptrtoint ptr %add.ptr.i411 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %add.ptr.i411, align 1
  %ext_data = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 8
  %42 = ptrtoint ptr %ext_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ext_data, align 4
  %44 = ptrtoint ptr %loc.0 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %loc.0, align 4
  %add.ptr.i.i = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 8, i32 0, i32 4
  %45 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %loc.0, i32 4
  %47 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %add.ptr1.i.i, align 2
  br i1 %frag, label %if.then63, label %sw.bb55.sw.epilog228_crit_edge

sw.bb55.sw.epilog228_crit_edge:                   ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog228

if.then63:                                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx64 = getelementptr i8, ptr %loc.0, i32 20
  %48 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 32, ptr %arrayidx64, align 1
  br label %sw.epilog228

sw.bb66:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %ip67 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2
  %src_ip68 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 1
  %49 = ptrtoint ptr %src_ip68 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %src_ip68, align 4
  %add.ptr.i412 = getelementptr i8, ptr %loc.0, i32 30
  %51 = ptrtoint ptr %add.ptr.i412 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %50, ptr %add.ptr.i412, align 1
  %src_port70 = getelementptr inbounds %struct.ice_fdir_v4, ptr %ip67, i32 0, i32 3
  %52 = ptrtoint ptr %src_port70 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %src_port70, align 2
  %add.ptr.i413 = getelementptr i8, ptr %loc.0, i32 36
  %54 = ptrtoint ptr %add.ptr.i413 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 %53, ptr %add.ptr.i413, align 1
  %55 = ptrtoint ptr %ip67 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ip67, align 4
  %add.ptr.i414 = getelementptr i8, ptr %loc.0, i32 26
  %57 = ptrtoint ptr %add.ptr.i414 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %56, ptr %add.ptr.i414, align 1
  %dst_port74 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 2
  %58 = ptrtoint ptr %dst_port74 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %dst_port74, align 4
  %add.ptr.i415 = getelementptr i8, ptr %loc.0, i32 34
  %60 = ptrtoint ptr %add.ptr.i415 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 %59, ptr %add.ptr.i415, align 1
  %tos76 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %tos76 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %tos76, align 4
  %add.ptr.i416 = getelementptr i8, ptr %loc.0, i32 15
  %63 = ptrtoint ptr %add.ptr.i416 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %add.ptr.i416, align 1
  %ttl78 = getelementptr inbounds %struct.ice_fdir_v4, ptr %ip67, i32 0, i32 9
  %64 = ptrtoint ptr %ttl78 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %ttl78, align 1
  %add.ptr.i417 = getelementptr i8, ptr %loc.0, i32 22
  %66 = ptrtoint ptr %add.ptr.i417 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %add.ptr.i417, align 1
  %ext_data79 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 8
  %67 = ptrtoint ptr %ext_data79 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ext_data79, align 4
  %69 = ptrtoint ptr %loc.0 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %loc.0, align 4
  %add.ptr.i.i418 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 8, i32 0, i32 4
  %70 = ptrtoint ptr %add.ptr.i.i418 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %add.ptr.i.i418, align 2
  %add.ptr1.i.i419 = getelementptr i8, ptr %loc.0, i32 4
  %72 = ptrtoint ptr %add.ptr1.i.i419 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %add.ptr1.i.i419, align 2
  %add.ptr = getelementptr i8, ptr %loc.0, i32 6
  %src_mac = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 8, i32 1
  %73 = ptrtoint ptr %src_mac to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %src_mac, align 4
  %75 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %add.ptr, align 4
  %add.ptr.i.i420 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 8, i32 1, i32 4
  %76 = ptrtoint ptr %add.ptr.i.i420 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %add.ptr.i.i420, align 2
  %add.ptr1.i.i421 = getelementptr i8, ptr %loc.0, i32 10
  %78 = ptrtoint ptr %add.ptr1.i.i421 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %add.ptr1.i.i421, align 2
  br label %sw.epilog228

sw.bb84:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %ip85 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2
  %src_ip86 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 1
  %79 = ptrtoint ptr %src_ip86 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %src_ip86, align 4
  %add.ptr.i422 = getelementptr i8, ptr %loc.0, i32 30
  %81 = ptrtoint ptr %add.ptr.i422 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %80, ptr %add.ptr.i422, align 1
  %src_port88 = getelementptr inbounds %struct.ice_fdir_v4, ptr %ip85, i32 0, i32 3
  %82 = ptrtoint ptr %src_port88 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %src_port88, align 2
  %add.ptr.i423 = getelementptr i8, ptr %loc.0, i32 36
  %84 = ptrtoint ptr %add.ptr.i423 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 2)
  store i16 %83, ptr %add.ptr.i423, align 1
  %85 = ptrtoint ptr %ip85 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ip85, align 4
  %add.ptr.i424 = getelementptr i8, ptr %loc.0, i32 26
  %87 = ptrtoint ptr %add.ptr.i424 to i32
  call void @__asan_storeN_noabort(i32 %87, i32 4)
  store i32 %86, ptr %add.ptr.i424, align 1
  %dst_port92 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 2
  %88 = ptrtoint ptr %dst_port92 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %dst_port92, align 4
  %add.ptr.i425 = getelementptr i8, ptr %loc.0, i32 34
  %90 = ptrtoint ptr %add.ptr.i425 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 2)
  store i16 %89, ptr %add.ptr.i425, align 1
  %tos94 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1, i32 1
  %91 = ptrtoint ptr %tos94 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %tos94, align 4
  %add.ptr.i426 = getelementptr i8, ptr %loc.0, i32 15
  %93 = ptrtoint ptr %add.ptr.i426 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %add.ptr.i426, align 1
  %ttl96 = getelementptr inbounds %struct.ice_fdir_v4, ptr %ip85, i32 0, i32 9
  %94 = ptrtoint ptr %ttl96 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %ttl96, align 1
  %add.ptr.i427 = getelementptr i8, ptr %loc.0, i32 22
  %96 = ptrtoint ptr %add.ptr.i427 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %add.ptr.i427, align 1
  %ext_data97 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 8
  %97 = ptrtoint ptr %ext_data97 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ext_data97, align 4
  %99 = ptrtoint ptr %loc.0 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %loc.0, align 4
  %add.ptr.i.i428 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 8, i32 0, i32 4
  %100 = ptrtoint ptr %add.ptr.i.i428 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %add.ptr.i.i428, align 2
  %add.ptr1.i.i429 = getelementptr i8, ptr %loc.0, i32 4
  %102 = ptrtoint ptr %add.ptr1.i.i429 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %add.ptr1.i.i429, align 2
  br label %sw.epilog228

sw.bb100:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %ip101 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2
  %src_ip102 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 1
  %103 = ptrtoint ptr %src_ip102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %src_ip102, align 4
  %add.ptr.i430 = getelementptr i8, ptr %loc.0, i32 30
  %105 = ptrtoint ptr %add.ptr.i430 to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 %104, ptr %add.ptr.i430, align 1
  %106 = ptrtoint ptr %ip101 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ip101, align 4
  %add.ptr.i431 = getelementptr i8, ptr %loc.0, i32 26
  %108 = ptrtoint ptr %add.ptr.i431 to i32
  call void @__asan_storeN_noabort(i32 %108, i32 4)
  store i32 %107, ptr %add.ptr.i431, align 1
  %tos106 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1, i32 1
  %109 = ptrtoint ptr %tos106 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %tos106, align 4
  %add.ptr.i432 = getelementptr i8, ptr %loc.0, i32 15
  %111 = ptrtoint ptr %add.ptr.i432 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %add.ptr.i432, align 1
  %ttl108 = getelementptr inbounds %struct.ice_fdir_v4, ptr %ip101, i32 0, i32 9
  %112 = ptrtoint ptr %ttl108 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %ttl108, align 1
  %add.ptr.i433 = getelementptr i8, ptr %loc.0, i32 22
  %114 = ptrtoint ptr %add.ptr.i433 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %add.ptr.i433, align 1
  %proto110 = getelementptr inbounds %struct.ice_fdir_v4, ptr %ip101, i32 0, i32 8
  %115 = ptrtoint ptr %proto110 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %proto110, align 2
  %add.ptr.i434 = getelementptr i8, ptr %loc.0, i32 23
  %117 = ptrtoint ptr %add.ptr.i434 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %add.ptr.i434, align 1
  %ext_data111 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 8
  %118 = ptrtoint ptr %ext_data111 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ext_data111, align 4
  %120 = ptrtoint ptr %loc.0 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %loc.0, align 4
  %add.ptr.i.i435 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 8, i32 0, i32 4
  %121 = ptrtoint ptr %add.ptr.i.i435 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %add.ptr.i.i435, align 2
  %add.ptr1.i.i436 = getelementptr i8, ptr %loc.0, i32 4
  %123 = ptrtoint ptr %add.ptr1.i.i436 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %add.ptr1.i.i436, align 2
  br label %sw.epilog228

sw.bb114:                                         ; preds = %if.end54.sw.bb114_crit_edge, %if.end54.sw.bb114_crit_edge676, %if.end54.sw.bb114_crit_edge677, %if.end54.sw.bb114_crit_edge678
  %ip115 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2
  %src_ip116 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 1
  %124 = ptrtoint ptr %src_ip116 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %src_ip116, align 4
  %add.ptr.i437 = getelementptr i8, ptr %loc.0, i32 30
  %126 = ptrtoint ptr %add.ptr.i437 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 4)
  store i32 %125, ptr %add.ptr.i437, align 1
  %127 = ptrtoint ptr %ip115 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %ip115, align 4
  %add.ptr.i438 = getelementptr i8, ptr %loc.0, i32 26
  %129 = ptrtoint ptr %add.ptr.i438 to i32
  call void @__asan_storeN_noabort(i32 %129, i32 4)
  store i32 %128, ptr %add.ptr.i438, align 1
  %teid = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 4, i32 3
  %130 = ptrtoint ptr %teid to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %teid, align 4
  %add.ptr.i439 = getelementptr i8, ptr %loc.0, i32 46
  %132 = ptrtoint ptr %add.ptr.i439 to i32
  call void @__asan_storeN_noabort(i32 %132, i32 4)
  store i32 %131, ptr %add.ptr.i439, align 1
  %qfi = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 4, i32 8
  %133 = ptrtoint ptr %qfi to i32
  call void @__asan_loadN_noabort(i32 %133, i32 2)
  %bf.load = load i16, ptr %qfi, align 1
  %134 = trunc i16 %bf.load to i8
  %bf.cast = and i8 %134, 63
  %add.ptr.i440 = getelementptr i8, ptr %loc.0, i32 56
  %135 = ptrtoint ptr %add.ptr.i440 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %add.ptr.i440, align 1
  %137 = and i8 %136, -64
  %add1.i = or i8 %137, %bf.cast
  store i8 %add1.i, ptr %add.ptr.i440, align 1
  br label %sw.epilog228

sw.bb120:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %l2tpv3_data = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 6
  %138 = ptrtoint ptr %l2tpv3_data to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %l2tpv3_data, align 4
  %add.ptr.i441 = getelementptr i8, ptr %loc.0, i32 34
  %140 = ptrtoint ptr %add.ptr.i441 to i32
  call void @__asan_storeN_noabort(i32 %140, i32 4)
  store i32 %139, ptr %add.ptr.i441, align 1
  br label %sw.epilog228

sw.bb121:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %l2tpv3_data122 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 6
  %141 = ptrtoint ptr %l2tpv3_data122 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %l2tpv3_data122, align 4
  %add.ptr.i442 = getelementptr i8, ptr %loc.0, i32 54
  %143 = ptrtoint ptr %add.ptr.i442 to i32
  call void @__asan_storeN_noabort(i32 %143, i32 4)
  store i32 %142, ptr %add.ptr.i442, align 1
  br label %sw.epilog228

sw.bb124:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %sec_parm_idx = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1
  %144 = ptrtoint ptr %sec_parm_idx to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %sec_parm_idx, align 4
  %add.ptr.i443 = getelementptr i8, ptr %loc.0, i32 34
  %146 = ptrtoint ptr %add.ptr.i443 to i32
  call void @__asan_storeN_noabort(i32 %146, i32 4)
  store i32 %145, ptr %add.ptr.i443, align 1
  br label %sw.epilog228

sw.bb126:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %sec_parm_idx128 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 5
  %147 = ptrtoint ptr %sec_parm_idx128 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %sec_parm_idx128, align 4
  %add.ptr.i444 = getelementptr i8, ptr %loc.0, i32 54
  %149 = ptrtoint ptr %add.ptr.i444 to i32
  call void @__asan_storeN_noabort(i32 %149, i32 4)
  store i32 %148, ptr %add.ptr.i444, align 1
  br label %sw.epilog228

sw.bb129:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %sec_parm_idx131 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1
  %150 = ptrtoint ptr %sec_parm_idx131 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %sec_parm_idx131, align 4
  %add.ptr.i445 = getelementptr i8, ptr %loc.0, i32 38
  %152 = ptrtoint ptr %add.ptr.i445 to i32
  call void @__asan_storeN_noabort(i32 %152, i32 4)
  store i32 %151, ptr %add.ptr.i445, align 1
  br label %sw.epilog228

sw.bb132:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %sec_parm_idx134 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 5
  %153 = ptrtoint ptr %sec_parm_idx134 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %sec_parm_idx134, align 4
  %add.ptr.i446 = getelementptr i8, ptr %loc.0, i32 58
  %155 = ptrtoint ptr %add.ptr.i446 to i32
  call void @__asan_storeN_noabort(i32 %155, i32 4)
  store i32 %154, ptr %add.ptr.i446, align 1
  br label %sw.epilog228

sw.bb135:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %ip136 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2
  %src_ip137 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 1
  %156 = ptrtoint ptr %src_ip137 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %src_ip137, align 4
  %add.ptr.i447 = getelementptr i8, ptr %loc.0, i32 30
  %158 = ptrtoint ptr %add.ptr.i447 to i32
  call void @__asan_storeN_noabort(i32 %158, i32 4)
  store i32 %157, ptr %add.ptr.i447, align 1
  %159 = ptrtoint ptr %ip136 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %ip136, align 4
  %add.ptr.i448 = getelementptr i8, ptr %loc.0, i32 26
  %161 = ptrtoint ptr %add.ptr.i448 to i32
  call void @__asan_storeN_noabort(i32 %161, i32 4)
  store i32 %160, ptr %add.ptr.i448, align 1
  %sec_parm_idx141 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1
  %162 = ptrtoint ptr %sec_parm_idx141 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %sec_parm_idx141, align 4
  %add.ptr.i449 = getelementptr i8, ptr %loc.0, i32 42
  %164 = ptrtoint ptr %add.ptr.i449 to i32
  call void @__asan_storeN_noabort(i32 %164, i32 4)
  store i32 %163, ptr %add.ptr.i449, align 1
  br label %sw.epilog228

sw.bb142:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %ip143 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2
  %src_ip144 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1
  %add.ptr.i450 = getelementptr i8, ptr %loc.0, i32 38
  %165 = ptrtoint ptr %src_ip144 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %src_ip144, align 4
  %167 = ptrtoint ptr %add.ptr.i450 to i32
  call void @__asan_storeN_noabort(i32 %167, i32 4)
  store i32 %166, ptr %add.ptr.i450, align 1
  %add.ptr1.1.i = getelementptr i8, ptr %loc.0, i32 42
  %arrayidx.1.i = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1, i32 1
  %168 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx.1.i, align 4
  %170 = ptrtoint ptr %add.ptr1.1.i to i32
  call void @__asan_storeN_noabort(i32 %170, i32 4)
  store i32 %169, ptr %add.ptr1.1.i, align 1
  %add.ptr1.2.i = getelementptr i8, ptr %loc.0, i32 46
  %arrayidx.2.i = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1, i32 2
  %171 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx.2.i, align 4
  %173 = ptrtoint ptr %add.ptr1.2.i to i32
  call void @__asan_storeN_noabort(i32 %173, i32 4)
  store i32 %172, ptr %add.ptr1.2.i, align 1
  %add.ptr1.3.i = getelementptr i8, ptr %loc.0, i32 50
  %arrayidx.3.i = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1, i32 3
  %174 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx.3.i, align 4
  %176 = ptrtoint ptr %add.ptr1.3.i to i32
  call void @__asan_storeN_noabort(i32 %176, i32 4)
  store i32 %175, ptr %add.ptr1.3.i, align 1
  %add.ptr.i451 = getelementptr i8, ptr %loc.0, i32 22
  %177 = ptrtoint ptr %ip143 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %ip143, align 4
  %179 = ptrtoint ptr %add.ptr.i451 to i32
  call void @__asan_storeN_noabort(i32 %179, i32 4)
  store i32 %178, ptr %add.ptr.i451, align 1
  %add.ptr1.1.i452 = getelementptr i8, ptr %loc.0, i32 26
  %arrayidx.1.i453 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 1
  %180 = ptrtoint ptr %arrayidx.1.i453 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx.1.i453, align 4
  %182 = ptrtoint ptr %add.ptr1.1.i452 to i32
  call void @__asan_storeN_noabort(i32 %182, i32 4)
  store i32 %181, ptr %add.ptr1.1.i452, align 1
  %add.ptr1.2.i454 = getelementptr i8, ptr %loc.0, i32 30
  %arrayidx.2.i455 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 2
  %183 = ptrtoint ptr %arrayidx.2.i455 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx.2.i455, align 4
  %185 = ptrtoint ptr %add.ptr1.2.i454 to i32
  call void @__asan_storeN_noabort(i32 %185, i32 4)
  store i32 %184, ptr %add.ptr1.2.i454, align 1
  %add.ptr1.3.i456 = getelementptr i8, ptr %loc.0, i32 34
  %arrayidx.3.i457 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 3
  %186 = ptrtoint ptr %arrayidx.3.i457 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx.3.i457, align 4
  %188 = ptrtoint ptr %add.ptr1.3.i456 to i32
  call void @__asan_storeN_noabort(i32 %188, i32 4)
  store i32 %187, ptr %add.ptr1.3.i456, align 1
  %sec_parm_idx150 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 5
  %189 = ptrtoint ptr %sec_parm_idx150 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %sec_parm_idx150, align 4
  %add.ptr.i458 = getelementptr i8, ptr %loc.0, i32 62
  %191 = ptrtoint ptr %add.ptr.i458 to i32
  call void @__asan_storeN_noabort(i32 %191, i32 4)
  store i32 %190, ptr %add.ptr.i458, align 1
  br label %sw.epilog228

sw.bb151:                                         ; preds = %if.end54.sw.bb151_crit_edge, %if.end54.sw.bb151_crit_edge679
  %dst_port153 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 2
  %192 = ptrtoint ptr %dst_port153 to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %dst_port153, align 4
  %add.ptr.i459 = getelementptr i8, ptr %loc.0, i32 34
  %194 = ptrtoint ptr %add.ptr.i459 to i32
  call void @__asan_storeN_noabort(i32 %194, i32 2)
  store i16 %193, ptr %add.ptr.i459, align 1
  br label %sw.epilog228

sw.bb154:                                         ; preds = %if.end54.sw.bb154_crit_edge, %if.end54.sw.bb154_crit_edge680
  %dst_port156 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 2
  %195 = ptrtoint ptr %dst_port156 to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %dst_port156, align 4
  %add.ptr.i460 = getelementptr i8, ptr %loc.0, i32 54
  %197 = ptrtoint ptr %add.ptr.i460 to i32
  call void @__asan_storeN_noabort(i32 %197, i32 2)
  store i16 %196, ptr %add.ptr.i460, align 1
  br label %sw.epilog228

sw.bb157:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %ether_type = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 8, i32 2
  %198 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %ether_type, align 4
  %add.ptr.i461 = getelementptr i8, ptr %loc.0, i32 12
  %200 = ptrtoint ptr %add.ptr.i461 to i32
  call void @__asan_storeN_noabort(i32 %200, i32 2)
  store i16 %199, ptr %add.ptr.i461, align 1
  br label %sw.epilog228

sw.bb159:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %ip160 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2
  %src_ip161 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1
  %add.ptr.i462 = getelementptr i8, ptr %loc.0, i32 38
  %201 = ptrtoint ptr %src_ip161 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %src_ip161, align 4
  %203 = ptrtoint ptr %add.ptr.i462 to i32
  call void @__asan_storeN_noabort(i32 %203, i32 4)
  store i32 %202, ptr %add.ptr.i462, align 1
  %add.ptr1.1.i463 = getelementptr i8, ptr %loc.0, i32 42
  %arrayidx.1.i464 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1, i32 1
  %204 = ptrtoint ptr %arrayidx.1.i464 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx.1.i464, align 4
  %206 = ptrtoint ptr %add.ptr1.1.i463 to i32
  call void @__asan_storeN_noabort(i32 %206, i32 4)
  store i32 %205, ptr %add.ptr1.1.i463, align 1
  %add.ptr1.2.i465 = getelementptr i8, ptr %loc.0, i32 46
  %arrayidx.2.i466 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1, i32 2
  %207 = ptrtoint ptr %arrayidx.2.i466 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx.2.i466, align 4
  %209 = ptrtoint ptr %add.ptr1.2.i465 to i32
  call void @__asan_storeN_noabort(i32 %209, i32 4)
  store i32 %208, ptr %add.ptr1.2.i465, align 1
  %add.ptr1.3.i467 = getelementptr i8, ptr %loc.0, i32 50
  %arrayidx.3.i468 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1, i32 3
  %210 = ptrtoint ptr %arrayidx.3.i468 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx.3.i468, align 4
  %212 = ptrtoint ptr %add.ptr1.3.i467 to i32
  call void @__asan_storeN_noabort(i32 %212, i32 4)
  store i32 %211, ptr %add.ptr1.3.i467, align 1
  %add.ptr.i469 = getelementptr i8, ptr %loc.0, i32 22
  %213 = ptrtoint ptr %ip160 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %ip160, align 4
  %215 = ptrtoint ptr %add.ptr.i469 to i32
  call void @__asan_storeN_noabort(i32 %215, i32 4)
  store i32 %214, ptr %add.ptr.i469, align 1
  %add.ptr1.1.i470 = getelementptr i8, ptr %loc.0, i32 26
  %arrayidx.1.i471 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 1
  %216 = ptrtoint ptr %arrayidx.1.i471 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx.1.i471, align 4
  %218 = ptrtoint ptr %add.ptr1.1.i470 to i32
  call void @__asan_storeN_noabort(i32 %218, i32 4)
  store i32 %217, ptr %add.ptr1.1.i470, align 1
  %add.ptr1.2.i472 = getelementptr i8, ptr %loc.0, i32 30
  %arrayidx.2.i473 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 2
  %219 = ptrtoint ptr %arrayidx.2.i473 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %arrayidx.2.i473, align 4
  %221 = ptrtoint ptr %add.ptr1.2.i472 to i32
  call void @__asan_storeN_noabort(i32 %221, i32 4)
  store i32 %220, ptr %add.ptr1.2.i472, align 1
  %add.ptr1.3.i474 = getelementptr i8, ptr %loc.0, i32 34
  %arrayidx.3.i475 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 3
  %222 = ptrtoint ptr %arrayidx.3.i475 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx.3.i475, align 4
  %224 = ptrtoint ptr %add.ptr1.3.i474 to i32
  call void @__asan_storeN_noabort(i32 %224, i32 4)
  store i32 %223, ptr %add.ptr1.3.i474, align 1
  %src_port167 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 3
  %225 = ptrtoint ptr %src_port167 to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %src_port167, align 2
  %add.ptr.i476 = getelementptr i8, ptr %loc.0, i32 56
  %227 = ptrtoint ptr %add.ptr.i476 to i32
  call void @__asan_storeN_noabort(i32 %227, i32 2)
  store i16 %226, ptr %add.ptr.i476, align 1
  %dst_port169 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 2
  %228 = ptrtoint ptr %dst_port169 to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %dst_port169, align 4
  %add.ptr.i477 = getelementptr i8, ptr %loc.0, i32 54
  %230 = ptrtoint ptr %add.ptr.i477 to i32
  call void @__asan_storeN_noabort(i32 %230, i32 2)
  store i16 %229, ptr %add.ptr.i477, align 1
  %tc = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 6
  %231 = ptrtoint ptr %tc to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %tc, align 4
  %233 = lshr i8 %232, 4
  %add.ptr.i478 = getelementptr i8, ptr %loc.0, i32 14
  %234 = ptrtoint ptr %add.ptr.i478 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %add.ptr.i478, align 1
  %236 = and i8 %235, -16
  %add.i = or i8 %236, %233
  store i8 %add.i, ptr %add.ptr.i478, align 1
  %add.ptr5.i = getelementptr i8, ptr %loc.0, i32 15
  %237 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %add.ptr5.i, align 1
  %239 = and i8 %238, 15
  %240 = shl i8 %232, 4
  %add101.i = or i8 %239, %240
  store i8 %add101.i, ptr %add.ptr5.i, align 1
  %hlim = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 8
  %241 = ptrtoint ptr %hlim to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %hlim, align 2
  %add.ptr.i479 = getelementptr i8, ptr %loc.0, i32 21
  %243 = ptrtoint ptr %add.ptr.i479 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %242, ptr %add.ptr.i479, align 1
  %ext_data172 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 8
  %244 = ptrtoint ptr %ext_data172 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %ext_data172, align 4
  %246 = ptrtoint ptr %loc.0 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %245, ptr %loc.0, align 4
  %add.ptr.i.i480 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 8, i32 0, i32 4
  %247 = ptrtoint ptr %add.ptr.i.i480 to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %add.ptr.i.i480, align 2
  %add.ptr1.i.i481 = getelementptr i8, ptr %loc.0, i32 4
  %249 = ptrtoint ptr %add.ptr1.i.i481 to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 %248, ptr %add.ptr1.i.i481, align 2
  br label %sw.epilog228

sw.bb175:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %ip176 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2
  %src_ip177 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1
  %add.ptr.i482 = getelementptr i8, ptr %loc.0, i32 38
  %250 = ptrtoint ptr %src_ip177 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %src_ip177, align 4
  %252 = ptrtoint ptr %add.ptr.i482 to i32
  call void @__asan_storeN_noabort(i32 %252, i32 4)
  store i32 %251, ptr %add.ptr.i482, align 1
  %add.ptr1.1.i483 = getelementptr i8, ptr %loc.0, i32 42
  %arrayidx.1.i484 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1, i32 1
  %253 = ptrtoint ptr %arrayidx.1.i484 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %arrayidx.1.i484, align 4
  %255 = ptrtoint ptr %add.ptr1.1.i483 to i32
  call void @__asan_storeN_noabort(i32 %255, i32 4)
  store i32 %254, ptr %add.ptr1.1.i483, align 1
  %add.ptr1.2.i485 = getelementptr i8, ptr %loc.0, i32 46
  %arrayidx.2.i486 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1, i32 2
  %256 = ptrtoint ptr %arrayidx.2.i486 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx.2.i486, align 4
  %258 = ptrtoint ptr %add.ptr1.2.i485 to i32
  call void @__asan_storeN_noabort(i32 %258, i32 4)
  store i32 %257, ptr %add.ptr1.2.i485, align 1
  %add.ptr1.3.i487 = getelementptr i8, ptr %loc.0, i32 50
  %arrayidx.3.i488 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1, i32 3
  %259 = ptrtoint ptr %arrayidx.3.i488 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %arrayidx.3.i488, align 4
  %261 = ptrtoint ptr %add.ptr1.3.i487 to i32
  call void @__asan_storeN_noabort(i32 %261, i32 4)
  store i32 %260, ptr %add.ptr1.3.i487, align 1
  %add.ptr.i489 = getelementptr i8, ptr %loc.0, i32 22
  %262 = ptrtoint ptr %ip176 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %ip176, align 4
  %264 = ptrtoint ptr %add.ptr.i489 to i32
  call void @__asan_storeN_noabort(i32 %264, i32 4)
  store i32 %263, ptr %add.ptr.i489, align 1
  %add.ptr1.1.i490 = getelementptr i8, ptr %loc.0, i32 26
  %arrayidx.1.i491 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 1
  %265 = ptrtoint ptr %arrayidx.1.i491 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %arrayidx.1.i491, align 4
  %267 = ptrtoint ptr %add.ptr1.1.i490 to i32
  call void @__asan_storeN_noabort(i32 %267, i32 4)
  store i32 %266, ptr %add.ptr1.1.i490, align 1
  %add.ptr1.2.i492 = getelementptr i8, ptr %loc.0, i32 30
  %arrayidx.2.i493 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 2
  %268 = ptrtoint ptr %arrayidx.2.i493 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx.2.i493, align 4
  %270 = ptrtoint ptr %add.ptr1.2.i492 to i32
  call void @__asan_storeN_noabort(i32 %270, i32 4)
  store i32 %269, ptr %add.ptr1.2.i492, align 1
  %add.ptr1.3.i494 = getelementptr i8, ptr %loc.0, i32 34
  %arrayidx.3.i495 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 3
  %271 = ptrtoint ptr %arrayidx.3.i495 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %arrayidx.3.i495, align 4
  %273 = ptrtoint ptr %add.ptr1.3.i494 to i32
  call void @__asan_storeN_noabort(i32 %273, i32 4)
  store i32 %272, ptr %add.ptr1.3.i494, align 1
  %src_port183 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 3
  %274 = ptrtoint ptr %src_port183 to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %src_port183, align 2
  %add.ptr.i496 = getelementptr i8, ptr %loc.0, i32 56
  %276 = ptrtoint ptr %add.ptr.i496 to i32
  call void @__asan_storeN_noabort(i32 %276, i32 2)
  store i16 %275, ptr %add.ptr.i496, align 1
  %dst_port185 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 2
  %277 = ptrtoint ptr %dst_port185 to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %dst_port185, align 4
  %add.ptr.i497 = getelementptr i8, ptr %loc.0, i32 54
  %279 = ptrtoint ptr %add.ptr.i497 to i32
  call void @__asan_storeN_noabort(i32 %279, i32 2)
  store i16 %278, ptr %add.ptr.i497, align 1
  %tc187 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 6
  %280 = ptrtoint ptr %tc187 to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %tc187, align 4
  %282 = lshr i8 %281, 4
  %add.ptr.i498 = getelementptr i8, ptr %loc.0, i32 14
  %283 = ptrtoint ptr %add.ptr.i498 to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %add.ptr.i498, align 1
  %285 = and i8 %284, -16
  %add.i499 = or i8 %285, %282
  store i8 %add.i499, ptr %add.ptr.i498, align 1
  %add.ptr5.i500 = getelementptr i8, ptr %loc.0, i32 15
  %286 = ptrtoint ptr %add.ptr5.i500 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %add.ptr5.i500, align 1
  %288 = and i8 %287, 15
  %289 = shl i8 %281, 4
  %add101.i501 = or i8 %288, %289
  store i8 %add101.i501, ptr %add.ptr5.i500, align 1
  %hlim189 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 8
  %290 = ptrtoint ptr %hlim189 to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %hlim189, align 2
  %add.ptr.i502 = getelementptr i8, ptr %loc.0, i32 21
  %292 = ptrtoint ptr %add.ptr.i502 to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 %291, ptr %add.ptr.i502, align 1
  %ext_data190 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 8
  %293 = ptrtoint ptr %ext_data190 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %ext_data190, align 4
  %295 = ptrtoint ptr %loc.0 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %294, ptr %loc.0, align 4
  %add.ptr.i.i503 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 8, i32 0, i32 4
  %296 = ptrtoint ptr %add.ptr.i.i503 to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %add.ptr.i.i503, align 2
  %add.ptr1.i.i504 = getelementptr i8, ptr %loc.0, i32 4
  %298 = ptrtoint ptr %add.ptr1.i.i504 to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 %297, ptr %add.ptr1.i.i504, align 2
  br label %sw.epilog228

sw.bb193:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %ip194 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2
  %src_ip195 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1
  %add.ptr.i505 = getelementptr i8, ptr %loc.0, i32 38
  %299 = ptrtoint ptr %src_ip195 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %src_ip195, align 4
  %301 = ptrtoint ptr %add.ptr.i505 to i32
  call void @__asan_storeN_noabort(i32 %301, i32 4)
  store i32 %300, ptr %add.ptr.i505, align 1
  %add.ptr1.1.i506 = getelementptr i8, ptr %loc.0, i32 42
  %arrayidx.1.i507 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1, i32 1
  %302 = ptrtoint ptr %arrayidx.1.i507 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %arrayidx.1.i507, align 4
  %304 = ptrtoint ptr %add.ptr1.1.i506 to i32
  call void @__asan_storeN_noabort(i32 %304, i32 4)
  store i32 %303, ptr %add.ptr1.1.i506, align 1
  %add.ptr1.2.i508 = getelementptr i8, ptr %loc.0, i32 46
  %arrayidx.2.i509 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1, i32 2
  %305 = ptrtoint ptr %arrayidx.2.i509 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %arrayidx.2.i509, align 4
  %307 = ptrtoint ptr %add.ptr1.2.i508 to i32
  call void @__asan_storeN_noabort(i32 %307, i32 4)
  store i32 %306, ptr %add.ptr1.2.i508, align 1
  %add.ptr1.3.i510 = getelementptr i8, ptr %loc.0, i32 50
  %arrayidx.3.i511 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1, i32 3
  %308 = ptrtoint ptr %arrayidx.3.i511 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %arrayidx.3.i511, align 4
  %310 = ptrtoint ptr %add.ptr1.3.i510 to i32
  call void @__asan_storeN_noabort(i32 %310, i32 4)
  store i32 %309, ptr %add.ptr1.3.i510, align 1
  %add.ptr.i512 = getelementptr i8, ptr %loc.0, i32 22
  %311 = ptrtoint ptr %ip194 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %ip194, align 4
  %313 = ptrtoint ptr %add.ptr.i512 to i32
  call void @__asan_storeN_noabort(i32 %313, i32 4)
  store i32 %312, ptr %add.ptr.i512, align 1
  %add.ptr1.1.i513 = getelementptr i8, ptr %loc.0, i32 26
  %arrayidx.1.i514 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 1
  %314 = ptrtoint ptr %arrayidx.1.i514 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %arrayidx.1.i514, align 4
  %316 = ptrtoint ptr %add.ptr1.1.i513 to i32
  call void @__asan_storeN_noabort(i32 %316, i32 4)
  store i32 %315, ptr %add.ptr1.1.i513, align 1
  %add.ptr1.2.i515 = getelementptr i8, ptr %loc.0, i32 30
  %arrayidx.2.i516 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 2
  %317 = ptrtoint ptr %arrayidx.2.i516 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %arrayidx.2.i516, align 4
  %319 = ptrtoint ptr %add.ptr1.2.i515 to i32
  call void @__asan_storeN_noabort(i32 %319, i32 4)
  store i32 %318, ptr %add.ptr1.2.i515, align 1
  %add.ptr1.3.i517 = getelementptr i8, ptr %loc.0, i32 34
  %arrayidx.3.i518 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 3
  %320 = ptrtoint ptr %arrayidx.3.i518 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %arrayidx.3.i518, align 4
  %322 = ptrtoint ptr %add.ptr1.3.i517 to i32
  call void @__asan_storeN_noabort(i32 %322, i32 4)
  store i32 %321, ptr %add.ptr1.3.i517, align 1
  %src_port201 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 3
  %323 = ptrtoint ptr %src_port201 to i32
  call void @__asan_load2_noabort(i32 %323)
  %324 = load i16, ptr %src_port201, align 2
  %add.ptr.i519 = getelementptr i8, ptr %loc.0, i32 56
  %325 = ptrtoint ptr %add.ptr.i519 to i32
  call void @__asan_storeN_noabort(i32 %325, i32 2)
  store i16 %324, ptr %add.ptr.i519, align 1
  %dst_port203 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 2
  %326 = ptrtoint ptr %dst_port203 to i32
  call void @__asan_load2_noabort(i32 %326)
  %327 = load i16, ptr %dst_port203, align 4
  %add.ptr.i520 = getelementptr i8, ptr %loc.0, i32 54
  %328 = ptrtoint ptr %add.ptr.i520 to i32
  call void @__asan_storeN_noabort(i32 %328, i32 2)
  store i16 %327, ptr %add.ptr.i520, align 1
  %tc205 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 6
  %329 = ptrtoint ptr %tc205 to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %tc205, align 4
  %331 = lshr i8 %330, 4
  %add.ptr.i521 = getelementptr i8, ptr %loc.0, i32 14
  %332 = ptrtoint ptr %add.ptr.i521 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %add.ptr.i521, align 1
  %334 = and i8 %333, -16
  %add.i522 = or i8 %334, %331
  store i8 %add.i522, ptr %add.ptr.i521, align 1
  %add.ptr5.i523 = getelementptr i8, ptr %loc.0, i32 15
  %335 = ptrtoint ptr %add.ptr5.i523 to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %add.ptr5.i523, align 1
  %337 = and i8 %336, 15
  %338 = shl i8 %330, 4
  %add101.i524 = or i8 %337, %338
  store i8 %add101.i524, ptr %add.ptr5.i523, align 1
  %hlim207 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 8
  %339 = ptrtoint ptr %hlim207 to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %hlim207, align 2
  %add.ptr.i525 = getelementptr i8, ptr %loc.0, i32 21
  %341 = ptrtoint ptr %add.ptr.i525 to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 %340, ptr %add.ptr.i525, align 1
  %ext_data208 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 8
  %342 = ptrtoint ptr %ext_data208 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %ext_data208, align 4
  %344 = ptrtoint ptr %loc.0 to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %343, ptr %loc.0, align 4
  %add.ptr.i.i526 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 8, i32 0, i32 4
  %345 = ptrtoint ptr %add.ptr.i.i526 to i32
  call void @__asan_load2_noabort(i32 %345)
  %346 = load i16, ptr %add.ptr.i.i526, align 2
  %add.ptr1.i.i527 = getelementptr i8, ptr %loc.0, i32 4
  %347 = ptrtoint ptr %add.ptr1.i.i527 to i32
  call void @__asan_store2_noabort(i32 %347)
  store i16 %346, ptr %add.ptr1.i.i527, align 2
  br label %sw.epilog228

sw.bb211:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %ip212 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2
  %src_ip213 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1
  %add.ptr.i528 = getelementptr i8, ptr %loc.0, i32 38
  %348 = ptrtoint ptr %src_ip213 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %src_ip213, align 4
  %350 = ptrtoint ptr %add.ptr.i528 to i32
  call void @__asan_storeN_noabort(i32 %350, i32 4)
  store i32 %349, ptr %add.ptr.i528, align 1
  %add.ptr1.1.i529 = getelementptr i8, ptr %loc.0, i32 42
  %arrayidx.1.i530 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1, i32 1
  %351 = ptrtoint ptr %arrayidx.1.i530 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %arrayidx.1.i530, align 4
  %353 = ptrtoint ptr %add.ptr1.1.i529 to i32
  call void @__asan_storeN_noabort(i32 %353, i32 4)
  store i32 %352, ptr %add.ptr1.1.i529, align 1
  %add.ptr1.2.i531 = getelementptr i8, ptr %loc.0, i32 46
  %arrayidx.2.i532 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1, i32 2
  %354 = ptrtoint ptr %arrayidx.2.i532 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %arrayidx.2.i532, align 4
  %356 = ptrtoint ptr %add.ptr1.2.i531 to i32
  call void @__asan_storeN_noabort(i32 %356, i32 4)
  store i32 %355, ptr %add.ptr1.2.i531, align 1
  %add.ptr1.3.i533 = getelementptr i8, ptr %loc.0, i32 50
  %arrayidx.3.i534 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1, i32 3
  %357 = ptrtoint ptr %arrayidx.3.i534 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %arrayidx.3.i534, align 4
  %359 = ptrtoint ptr %add.ptr1.3.i533 to i32
  call void @__asan_storeN_noabort(i32 %359, i32 4)
  store i32 %358, ptr %add.ptr1.3.i533, align 1
  %add.ptr.i535 = getelementptr i8, ptr %loc.0, i32 22
  %360 = ptrtoint ptr %ip212 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %ip212, align 4
  %362 = ptrtoint ptr %add.ptr.i535 to i32
  call void @__asan_storeN_noabort(i32 %362, i32 4)
  store i32 %361, ptr %add.ptr.i535, align 1
  %add.ptr1.1.i536 = getelementptr i8, ptr %loc.0, i32 26
  %arrayidx.1.i537 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 1
  %363 = ptrtoint ptr %arrayidx.1.i537 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %arrayidx.1.i537, align 4
  %365 = ptrtoint ptr %add.ptr1.1.i536 to i32
  call void @__asan_storeN_noabort(i32 %365, i32 4)
  store i32 %364, ptr %add.ptr1.1.i536, align 1
  %add.ptr1.2.i538 = getelementptr i8, ptr %loc.0, i32 30
  %arrayidx.2.i539 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 2
  %366 = ptrtoint ptr %arrayidx.2.i539 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %arrayidx.2.i539, align 4
  %368 = ptrtoint ptr %add.ptr1.2.i538 to i32
  call void @__asan_storeN_noabort(i32 %368, i32 4)
  store i32 %367, ptr %add.ptr1.2.i538, align 1
  %add.ptr1.3.i540 = getelementptr i8, ptr %loc.0, i32 34
  %arrayidx.3.i541 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 3
  %369 = ptrtoint ptr %arrayidx.3.i541 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %arrayidx.3.i541, align 4
  %371 = ptrtoint ptr %add.ptr1.3.i540 to i32
  call void @__asan_storeN_noabort(i32 %371, i32 4)
  store i32 %370, ptr %add.ptr1.3.i540, align 1
  %tc219 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 6
  %372 = ptrtoint ptr %tc219 to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %tc219, align 4
  %374 = lshr i8 %373, 4
  %add.ptr.i542 = getelementptr i8, ptr %loc.0, i32 14
  %375 = ptrtoint ptr %add.ptr.i542 to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %add.ptr.i542, align 1
  %377 = and i8 %376, -16
  %add.i543 = or i8 %377, %374
  store i8 %add.i543, ptr %add.ptr.i542, align 1
  %add.ptr5.i544 = getelementptr i8, ptr %loc.0, i32 15
  %378 = ptrtoint ptr %add.ptr5.i544 to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %add.ptr5.i544, align 1
  %380 = and i8 %379, 15
  %381 = shl i8 %373, 4
  %add101.i545 = or i8 %380, %381
  store i8 %add101.i545, ptr %add.ptr5.i544, align 1
  %hlim221 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 8
  %382 = ptrtoint ptr %hlim221 to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %hlim221, align 2
  %add.ptr.i546 = getelementptr i8, ptr %loc.0, i32 21
  %384 = ptrtoint ptr %add.ptr.i546 to i32
  call void @__asan_store1_noabort(i32 %384)
  store i8 %383, ptr %add.ptr.i546, align 1
  %proto223 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 7
  %385 = ptrtoint ptr %proto223 to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %proto223, align 1
  %add.ptr.i547 = getelementptr i8, ptr %loc.0, i32 20
  %387 = ptrtoint ptr %add.ptr.i547 to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 %386, ptr %add.ptr.i547, align 1
  %ext_data224 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 8
  %388 = ptrtoint ptr %ext_data224 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %ext_data224, align 4
  %390 = ptrtoint ptr %loc.0 to i32
  call void @__asan_store4_noabort(i32 %390)
  store i32 %389, ptr %loc.0, align 4
  %add.ptr.i.i548 = getelementptr %struct.ice_fdir_fltr, ptr %input, i32 0, i32 8, i32 0, i32 4
  %391 = ptrtoint ptr %add.ptr.i.i548 to i32
  call void @__asan_load2_noabort(i32 %391)
  %392 = load i16, ptr %add.ptr.i.i548, align 2
  %add.ptr1.i.i549 = getelementptr i8, ptr %loc.0, i32 4
  %393 = ptrtoint ptr %add.ptr1.i.i549 to i32
  call void @__asan_store2_noabort(i32 %393)
  store i16 %392, ptr %add.ptr1.i.i549, align 2
  br label %sw.epilog228

sw.epilog228:                                     ; preds = %sw.bb211, %sw.bb193, %sw.bb175, %sw.bb159, %sw.bb157, %sw.bb154, %sw.bb151, %sw.bb142, %sw.bb135, %sw.bb132, %sw.bb129, %sw.bb126, %sw.bb124, %sw.bb121, %sw.bb120, %sw.bb114, %sw.bb100, %sw.bb84, %sw.bb66, %if.then63, %sw.bb55.sw.epilog228_crit_edge
  %flex_fltr = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 13
  %394 = ptrtoint ptr %flex_fltr to i32
  call void @__asan_load2_noabort(i32 %394)
  %395 = load i16, ptr %flex_fltr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %395)
  %tobool229.not = icmp eq i16 %395, 0
  br i1 %tobool229.not, label %sw.epilog228.cleanup_crit_edge, label %if.then230

sw.epilog228.cleanup_crit_edge:                   ; preds = %sw.epilog228
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then230:                                       ; preds = %sw.epilog228
  call void @__sanitizer_cov_trace_pc() #11
  %flex_offset = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 12
  %396 = ptrtoint ptr %flex_offset to i32
  call void @__asan_load2_noabort(i32 %396)
  %397 = load i16, ptr %flex_offset, align 4
  %conv231 = zext i16 %397 to i32
  %flex_word = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 10
  %398 = ptrtoint ptr %flex_word to i32
  call void @__asan_load2_noabort(i32 %398)
  %399 = load i16, ptr %flex_word, align 4
  %add.ptr.i550 = getelementptr i8, ptr %loc.0, i32 %conv231
  %400 = ptrtoint ptr %add.ptr.i550 to i32
  call void @__asan_storeN_noabort(i32 %400, i32 2)
  store i16 %399, ptr %add.ptr.i550, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then230, %sw.epilog228.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %if.else39.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.else39.cleanup_crit_edge ], [ -22, %if.end54.cleanup_crit_edge ], [ 0, %if.then230 ], [ 0, %sw.epilog228.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tnl_port) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_get_open_tunnel_port(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ice_fdir_has_frag(i32 noundef %flow) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %flow)
  %cmp = icmp eq i32 %flow, 4
  ret i1 %cmp
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ice_fdir_find_fltr_by_idx(ptr noundef readonly %hw, i32 noundef %fltr_idx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fdir_list_head = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 66
  br label %for.cond

for.cond:                                         ; preds = %if.end.for.cond_crit_edge, %entry
  %rule.0.in = phi ptr [ %fdir_list_head, %entry ], [ %rule.0, %if.end.for.cond_crit_edge ]
  %0 = ptrtoint ptr %rule.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %rule.0 = load ptr, ptr %rule.0.in, align 4
  %cmp.not = icmp eq ptr %rule.0, %fdir_list_head
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %fltr_id = getelementptr inbounds %struct.ice_fdir_fltr, ptr %rule.0, i32 0, i32 21
  %1 = ptrtoint ptr %fltr_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fltr_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %fltr_idx)
  %cmp2 = icmp eq i32 %2, %fltr_idx
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  %cmp4 = icmp ugt i32 %2, %fltr_idx
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end.for.cond_crit_edge

if.end.for.cond_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %rule.0, %for.body.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_fdir_list_add_fltr(ptr noundef %hw, ptr noundef %fltr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fdir_list_head = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 66
  %0 = ptrtoint ptr %fdir_list_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %rule.028 = load ptr, ptr %fdir_list_head, align 4
  %cmp.not29 = icmp eq ptr %rule.028, %fdir_list_head
  br i1 %cmp.not29, label %entry.if.else_crit_edge, label %for.body.lr.ph

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.body.lr.ph:                                   ; preds = %entry
  %fltr_id2 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %fltr, i32 0, i32 21
  %1 = ptrtoint ptr %fltr_id2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fltr_id2, align 4
  %fltr_id37 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %rule.028, i32 0, i32 21
  %3 = ptrtoint ptr %fltr_id37 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fltr_id37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %2)
  %cmp3.not38 = icmp ult i32 %4, %2
  br i1 %cmp3.not38, label %for.body.lr.ph.for.cond_crit_edge, label %for.body.lr.ph.for.end_crit_edge

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph.for.cond_crit_edge:                ; preds = %for.body.lr.ph
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.lr.ph.for.cond_crit_edge
  %rule.03139 = phi ptr [ %rule.0, %for.body.for.cond_crit_edge ], [ %rule.028, %for.body.lr.ph.for.cond_crit_edge ]
  %5 = ptrtoint ptr %rule.03139 to i32
  call void @__asan_load4_noabort(i32 %5)
  %rule.0 = load ptr, ptr %rule.03139, align 4
  %cmp.not = icmp eq ptr %rule.0, %fdir_list_head
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond
  %fltr_id = getelementptr inbounds %struct.ice_fdir_fltr, ptr %rule.0, i32 0, i32 21
  %6 = ptrtoint ptr %fltr_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fltr_id, align 4
  %cmp3.not = icmp ult i32 %7, %2
  br i1 %cmp3.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %for.body.lr.ph.for.end_crit_edge
  %parent.0.lcssa = phi ptr [ null, %for.body.lr.ph.for.end_crit_edge ], [ %rule.03139, %for.cond.for.end_crit_edge ], [ %rule.03139, %for.body.for.end_crit_edge ]
  %tobool.not = icmp eq ptr %parent.0.lcssa, null
  br i1 %tobool.not, label %for.end.if.else_crit_edge, label %if.then9

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then9:                                         ; preds = %for.end
  %8 = ptrtoint ptr %parent.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.0.lcssa, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %fltr, ptr noundef nonnull %parent.0.lcssa, ptr noundef %9) #9
  br i1 %call.i.i, label %if.then9.if.end14.sink.split_crit_edge, label %if.then9.if.end14_crit_edge

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then9.if.end14.sink.split_crit_edge:           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split

if.else:                                          ; preds = %for.end.if.else_crit_edge, %entry.if.else_crit_edge
  %10 = ptrtoint ptr %fdir_list_head to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fdir_list_head, align 4
  %call.i.i23 = tail call zeroext i1 @__list_add_valid(ptr noundef %fltr, ptr noundef %fdir_list_head, ptr noundef %11) #9
  br i1 %call.i.i23, label %if.else.if.end14.sink.split_crit_edge, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.else.if.end14.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.else.if.end14.sink.split_crit_edge, %if.then9.if.end14.sink.split_crit_edge
  %.sink36 = phi ptr [ %9, %if.then9.if.end14.sink.split_crit_edge ], [ %11, %if.else.if.end14.sink.split_crit_edge ]
  %fdir_list_head.sink35 = phi ptr [ %parent.0.lcssa, %if.then9.if.end14.sink.split_crit_edge ], [ %fdir_list_head, %if.else.if.end14.sink.split_crit_edge ]
  %prev1.i.i24 = getelementptr inbounds %struct.list_head, ptr %.sink36, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %fltr, ptr %prev1.i.i24, align 4
  %13 = ptrtoint ptr %fltr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %.sink36, ptr %fltr, align 4
  %prev3.i.i25 = getelementptr inbounds %struct.list_head, ptr %fltr, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %fdir_list_head.sink35, ptr %prev3.i.i25, align 4
  %15 = ptrtoint ptr %fdir_list_head.sink35 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %fltr, ptr %fdir_list_head.sink35, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.else.if.end14_crit_edge, %if.then9.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_fdir_update_cntrs(ptr nocapture noundef %hw, i32 noundef %flow, i1 noundef zeroext %add) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %add, i32 1, i32 -1
  %fdir_active_fltr = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 64
  %0 = ptrtoint ptr %fdir_active_fltr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fdir_active_fltr, align 8
  %add1 = add i32 %1, %cond
  store i32 %add1, ptr %fdir_active_fltr, align 8
  %2 = add i32 %flow, -28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -27, i32 %2)
  %3 = icmp ult i32 %2, -27
  br i1 %3, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_fdir_update_cntrs.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_fdir_update_cntrs, %if.then7)) #9
          to label %if.end11 [label %if.then7], !srcloc !84

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_fdir_update_cntrs.__UNIQUE_ID_ddebug613, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %flow) #9
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 67, i32 %flow
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %8 = trunc i32 %cond to i16
  %conv10 = add i16 %7, %8
  store i16 %conv10, ptr %arrayidx, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then7, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ice_fdir_is_dup_fltr(ptr noundef readonly %hw, ptr nocapture noundef readonly %input) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fdir_list_head = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 66
  %0 = ptrtoint ptr %fdir_list_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %rule.068 = load ptr, ptr %fdir_list_head, align 4
  %cmp.not69 = icmp eq ptr %rule.068, %fdir_list_head
  br i1 %cmp.not69, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %flow_type3 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 1
  %1 = ptrtoint ptr %flow_type3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flow_type3, align 4
  %.off = add i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch56 = icmp ult i32 %.off, 4
  %dst_port132.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 2
  %src_port141.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 3
  %ip92.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2
  %src_ip118.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1
  %src_ip42.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 1
  %l4_header48.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 3
  %proto55.i = getelementptr inbounds %struct.ice_fdir_v4, ptr %ip92.i, i32 0, i32 8
  %ip_ver63.i = getelementptr inbounds %struct.ice_fdir_v4, ptr %ip92.i, i32 0, i32 7
  %tos71.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 1, i32 1
  %dst_port16.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 2, i32 0, i32 0, i32 2
  %src_port24.i = getelementptr inbounds %struct.ice_fdir_v4, ptr %ip92.i, i32 0, i32 3
  %fltr_id17 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 21
  %q_index19 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %input, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %rule.070 = phi ptr [ %rule.068, %for.body.lr.ph ], [ %rule.0, %cleanup.for.body_crit_edge ]
  %flow_type2 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %rule.070, i32 0, i32 1
  %3 = ptrtoint ptr %flow_type2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flow_type2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %2)
  %cmp4.not = icmp eq i32 %4, %2
  br i1 %cmp4.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  br i1 %switch56, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  %5 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %2, label %if.then12.cleanup_crit_edge [
    i32 2, label %if.then12.if.then5.i_crit_edge
    i32 1, label %if.then12.if.then5.i_crit_edge74
    i32 3, label %if.then12.if.then5.i_crit_edge75
    i32 4, label %if.then31.i
  ]

if.then12.if.then5.i_crit_edge75:                 ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i

if.then12.if.then5.i_crit_edge74:                 ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i

if.then12.if.then5.i_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5.i:                                       ; preds = %if.then12.if.then5.i_crit_edge, %if.then12.if.then5.i_crit_edge74, %if.then12.if.then5.i_crit_edge75
  %ip.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %rule.070, i32 0, i32 2
  %6 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ip.i, align 4
  %8 = ptrtoint ptr %ip92.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ip92.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp8.i = icmp eq i32 %7, %9
  br i1 %cmp8.i, label %land.lhs.true.i, label %if.then5.i.cleanup_crit_edge

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then5.i
  %src_ip.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %rule.070, i32 0, i32 2, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %src_ip.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %src_ip.i, align 4
  %12 = ptrtoint ptr %src_ip42.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %src_ip42.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp12.i = icmp eq i32 %11, %13
  br i1 %cmp12.i, label %land.lhs.true13.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true13.i:                                ; preds = %land.lhs.true.i
  %dst_port.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %rule.070, i32 0, i32 2, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dst_port.i, align 4
  %16 = ptrtoint ptr %dst_port16.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %dst_port16.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp18.i = icmp eq i16 %15, %17
  br i1 %cmp18.i, label %land.lhs.true20.i, label %land.lhs.true13.i.cleanup_crit_edge

land.lhs.true13.i.cleanup_crit_edge:              ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true20.i:                                ; preds = %land.lhs.true13.i
  %src_port.i = getelementptr inbounds %struct.ice_fdir_v4, ptr %ip.i, i32 0, i32 3
  %18 = ptrtoint ptr %src_port.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %src_port.i, align 2
  %20 = ptrtoint ptr %src_port24.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %src_port24.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp26.i = icmp eq i16 %19, %21
  br i1 %cmp26.i, label %land.lhs.true20.i.if.then16_crit_edge, label %land.lhs.true20.i.cleanup_crit_edge

land.lhs.true20.i.cleanup_crit_edge:              ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true20.i.if.then16_crit_edge:            ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.then31.i:                                      ; preds = %if.then12
  %ip32.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %rule.070, i32 0, i32 2
  %22 = ptrtoint ptr %ip32.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ip32.i, align 4
  %24 = ptrtoint ptr %ip92.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ip92.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp36.i = icmp eq i32 %23, %25
  br i1 %cmp36.i, label %land.lhs.true38.i, label %if.then31.i.cleanup_crit_edge

if.then31.i.cleanup_crit_edge:                    ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true38.i:                                ; preds = %if.then31.i
  %src_ip40.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %rule.070, i32 0, i32 2, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %src_ip40.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src_ip40.i, align 4
  %28 = ptrtoint ptr %src_ip42.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %src_ip42.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp43.i = icmp eq i32 %27, %29
  br i1 %cmp43.i, label %land.lhs.true45.i, label %land.lhs.true38.i.cleanup_crit_edge

land.lhs.true38.i.cleanup_crit_edge:              ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true45.i:                                ; preds = %land.lhs.true38.i
  %l4_header.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %rule.070, i32 0, i32 2, i32 0, i32 0, i32 3
  %30 = ptrtoint ptr %l4_header.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %l4_header.i, align 4
  %32 = ptrtoint ptr %l4_header48.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %l4_header48.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp49.i = icmp eq i32 %31, %33
  br i1 %cmp49.i, label %land.lhs.true51.i, label %land.lhs.true45.i.cleanup_crit_edge

land.lhs.true45.i.cleanup_crit_edge:              ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true51.i:                                ; preds = %land.lhs.true45.i
  %proto.i = getelementptr inbounds %struct.ice_fdir_v4, ptr %ip32.i, i32 0, i32 8
  %34 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %proto.i, align 2
  %36 = ptrtoint ptr %proto55.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %proto55.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %37)
  %cmp57.i = icmp eq i8 %35, %37
  br i1 %cmp57.i, label %land.lhs.true59.i, label %land.lhs.true51.i.cleanup_crit_edge

land.lhs.true51.i.cleanup_crit_edge:              ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true59.i:                                ; preds = %land.lhs.true51.i
  %ip_ver.i = getelementptr inbounds %struct.ice_fdir_v4, ptr %ip32.i, i32 0, i32 7
  %38 = ptrtoint ptr %ip_ver.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ip_ver.i, align 1
  %40 = ptrtoint ptr %ip_ver63.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ip_ver63.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp65.i = icmp eq i8 %39, %41
  br i1 %cmp65.i, label %land.lhs.true67.i, label %land.lhs.true59.i.cleanup_crit_edge

land.lhs.true59.i.cleanup_crit_edge:              ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true67.i:                                ; preds = %land.lhs.true59.i
  %tos.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %rule.070, i32 0, i32 2, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tos.i, align 4
  %44 = ptrtoint ptr %tos71.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %tos71.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %cmp73.i = icmp eq i8 %43, %45
  br i1 %cmp73.i, label %land.lhs.true67.i.if.then16_crit_edge, label %land.lhs.true67.i.cleanup_crit_edge

land.lhs.true67.i.cleanup_crit_edge:              ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true67.i.if.then16_crit_edge:            ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.else:                                          ; preds = %if.end
  %46 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %2, label %if.else.cleanup_crit_edge [
    i32 24, label %if.else.if.then88.i_crit_edge
    i32 25, label %if.else.if.then88.i_crit_edge76
    i32 26, label %if.else.if.then88.i_crit_edge77
    i32 27, label %if.then127.i
  ]

if.else.if.then88.i_crit_edge77:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then88.i

if.else.if.then88.i_crit_edge76:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then88.i

if.else.if.then88.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then88.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then88.i:                                      ; preds = %if.else.if.then88.i_crit_edge, %if.else.if.then88.i_crit_edge76, %if.else.if.then88.i_crit_edge77
  %ip89.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %rule.070, i32 0, i32 2
  %dst_port90.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %rule.070, i32 0, i32 2, i32 0, i32 2
  %47 = ptrtoint ptr %dst_port90.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %dst_port90.i, align 4
  %49 = ptrtoint ptr %dst_port132.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %dst_port132.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %50)
  %cmp95.i = icmp eq i16 %48, %50
  br i1 %cmp95.i, label %land.lhs.true97.i, label %if.then88.i.cleanup_crit_edge

if.then88.i.cleanup_crit_edge:                    ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true97.i:                                ; preds = %if.then88.i
  %src_port99.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %rule.070, i32 0, i32 2, i32 0, i32 3
  %51 = ptrtoint ptr %src_port99.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %src_port99.i, align 2
  %53 = ptrtoint ptr %src_port141.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %src_port141.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %54)
  %cmp104.i = icmp eq i16 %52, %54
  br i1 %cmp104.i, label %land.lhs.true106.i, label %land.lhs.true97.i.cleanup_crit_edge

land.lhs.true97.i.cleanup_crit_edge:              ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true106.i:                               ; preds = %land.lhs.true97.i
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %ip89.i, ptr noundef dereferenceable(16) %ip92.i, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool112.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool112.not.i, label %land.lhs.true113.i, label %land.lhs.true106.i.cleanup_crit_edge

land.lhs.true106.i.cleanup_crit_edge:             ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true113.i:                               ; preds = %land.lhs.true106.i
  %src_ip115.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %rule.070, i32 0, i32 2, i32 0, i32 1
  %bcmp189.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %src_ip115.i, ptr noundef dereferenceable(16) %src_ip118.i, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp189.i)
  %tobool121.not.i = icmp eq i32 %bcmp189.i, 0
  br i1 %tobool121.not.i, label %land.lhs.true113.i.if.then16_crit_edge, label %land.lhs.true113.i.cleanup_crit_edge

land.lhs.true113.i.cleanup_crit_edge:             ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true113.i.if.then16_crit_edge:           ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.then127.i:                                     ; preds = %if.else
  %dst_port129.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %rule.070, i32 0, i32 2, i32 0, i32 2
  %55 = ptrtoint ptr %dst_port129.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %dst_port129.i, align 4
  %57 = ptrtoint ptr %dst_port132.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %dst_port132.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %58)
  %cmp134.i = icmp eq i16 %56, %58
  br i1 %cmp134.i, label %land.lhs.true136.i, label %if.then127.i.cleanup_crit_edge

if.then127.i.cleanup_crit_edge:                   ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true136.i:                               ; preds = %if.then127.i
  %src_port138.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %rule.070, i32 0, i32 2, i32 0, i32 3
  %59 = ptrtoint ptr %src_port138.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %src_port138.i, align 2
  %61 = ptrtoint ptr %src_port141.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %src_port141.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %60, i16 %62)
  %cmp143.i = icmp eq i16 %60, %62
  br i1 %cmp143.i, label %land.lhs.true136.i.if.then16_crit_edge, label %land.lhs.true136.i.cleanup_crit_edge

land.lhs.true136.i.cleanup_crit_edge:             ; preds = %land.lhs.true136.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true136.i.if.then16_crit_edge:           ; preds = %land.lhs.true136.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.then16:                                        ; preds = %land.lhs.true136.i.if.then16_crit_edge, %land.lhs.true113.i.if.then16_crit_edge, %land.lhs.true67.i.if.then16_crit_edge, %land.lhs.true20.i.if.then16_crit_edge
  %fltr_id = getelementptr inbounds %struct.ice_fdir_fltr, ptr %rule.070, i32 0, i32 21
  %63 = ptrtoint ptr %fltr_id to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fltr_id, align 4
  %65 = ptrtoint ptr %fltr_id17 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fltr_id17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp18 = icmp eq i32 %64, %66
  br i1 %cmp18, label %land.lhs.true, label %if.then16.for.end_crit_edge

if.then16.for.end_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true:                                    ; preds = %if.then16
  %q_index = getelementptr inbounds %struct.ice_fdir_fltr, ptr %rule.070, i32 0, i32 14
  %67 = ptrtoint ptr %q_index to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %q_index, align 4
  %69 = ptrtoint ptr %q_index19 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %q_index19, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %68, i16 %70)
  %cmp21.not = icmp eq i16 %68, %70
  br i1 %cmp21.not, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup:                                          ; preds = %land.lhs.true.cleanup_crit_edge, %land.lhs.true136.i.cleanup_crit_edge, %if.then127.i.cleanup_crit_edge, %land.lhs.true113.i.cleanup_crit_edge, %land.lhs.true106.i.cleanup_crit_edge, %land.lhs.true97.i.cleanup_crit_edge, %if.then88.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %land.lhs.true67.i.cleanup_crit_edge, %land.lhs.true59.i.cleanup_crit_edge, %land.lhs.true51.i.cleanup_crit_edge, %land.lhs.true45.i.cleanup_crit_edge, %land.lhs.true38.i.cleanup_crit_edge, %if.then31.i.cleanup_crit_edge, %land.lhs.true20.i.cleanup_crit_edge, %land.lhs.true13.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.then5.i.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %71 = ptrtoint ptr %rule.070 to i32
  call void @__asan_load4_noabort(i32 %71)
  %rule.0 = load ptr, ptr %rule.070, align 4
  %cmp.not = icmp eq ptr %rule.0, %fdir_list_head
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %if.then16.for.end_crit_edge, %entry.for.end_crit_edge
  %cmp.not.lcssa = phi i1 [ false, %entry.for.end_crit_edge ], [ true, %if.then16.for.end_crit_edge ], [ true, %land.lhs.true.for.end_crit_edge ], [ false, %cleanup.for.end_crit_edge ]
  ret i1 %cmp.not.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 1194, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ice_fdir_update_cntrs.__UNIQUE_ID_ddebug613, !1, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!6 = !{ptr @ice_fdir_pkt, !7, !"ice_fdir_pkt", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 418, i32 39}
!8 = !{ptr @ice_fdir_tcpv4_pkt, !9, !"ice_fdir_tcpv4_pkt", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 7, i32 17}
!10 = !{ptr @ice_fdir_tcp4_tun_pkt, !11, !"ice_fdir_tcp4_tun_pkt", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 287, i32 17}
!12 = !{ptr @ice_fdir_udpv4_pkt, !13, !"ice_fdir_udpv4_pkt", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 17, i32 17}
!14 = !{ptr @ice_fdir_udp4_tun_pkt, !15, !"ice_fdir_udp4_tun_pkt", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 303, i32 17}
!16 = !{ptr @ice_fdir_sctpv4_pkt, !17, !"ice_fdir_sctpv4_pkt", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 26, i32 17}
!18 = !{ptr @ice_fdir_sctp4_tun_pkt, !19, !"ice_fdir_sctp4_tun_pkt", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 318, i32 17}
!20 = !{ptr @ice_fdir_ipv4_pkt, !21, !"ice_fdir_ipv4_pkt", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 35, i32 17}
!22 = !{ptr @ice_fdir_ip4_tun_pkt, !23, !"ice_fdir_ip4_tun_pkt", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 333, i32 17}
!24 = !{ptr @ice_fdir_udp4_gtpu4_pkt, !25, !"ice_fdir_udp4_gtpu4_pkt", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 43, i32 17}
!26 = !{ptr @ice_fdir_tcp4_gtpu4_pkt, !27, !"ice_fdir_tcp4_gtpu4_pkt", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 58, i32 17}
!28 = !{ptr @ice_fdir_icmp4_gtpu4_pkt, !29, !"ice_fdir_icmp4_gtpu4_pkt", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 74, i32 17}
!30 = !{ptr @ice_fdir_ipv4_gtpu4_pkt, !31, !"ice_fdir_ipv4_gtpu4_pkt", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 89, i32 17}
!32 = !{ptr @ice_fdir_ipv4_l2tpv3_pkt, !33, !"ice_fdir_ipv4_l2tpv3_pkt", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 103, i32 17}
!34 = !{ptr @ice_fdir_ipv6_l2tpv3_pkt, !35, !"ice_fdir_ipv6_l2tpv3_pkt", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 112, i32 17}
!36 = !{ptr @ice_fdir_ipv4_esp_pkt, !37, !"ice_fdir_ipv4_esp_pkt", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 124, i32 17}
!38 = !{ptr @ice_fdir_ipv6_esp_pkt, !39, !"ice_fdir_ipv6_esp_pkt", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 133, i32 17}
!40 = !{ptr @ice_fdir_ipv4_ah_pkt, !41, !"ice_fdir_ipv4_ah_pkt", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 144, i32 17}
!42 = !{ptr @ice_fdir_ipv6_ah_pkt, !43, !"ice_fdir_ipv6_ah_pkt", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 154, i32 17}
!44 = !{ptr @ice_fdir_ipv4_nat_t_esp_pkt, !45, !"ice_fdir_ipv4_nat_t_esp_pkt", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 166, i32 17}
!46 = !{ptr @ice_fdir_ipv6_nat_t_esp_pkt, !47, !"ice_fdir_ipv6_nat_t_esp_pkt", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 176, i32 17}
!48 = !{ptr @ice_fdir_ipv4_pfcp_node_pkt, !49, !"ice_fdir_ipv4_pfcp_node_pkt", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 187, i32 17}
!50 = !{ptr @ice_fdir_ipv4_pfcp_session_pkt, !51, !"ice_fdir_ipv4_pfcp_session_pkt", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 198, i32 17}
!52 = !{ptr @ice_fdir_ipv6_pfcp_node_pkt, !53, !"ice_fdir_ipv6_pfcp_node_pkt", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 209, i32 17}
!54 = !{ptr @ice_fdir_ipv6_pfcp_session_pkt, !55, !"ice_fdir_ipv6_pfcp_session_pkt", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 222, i32 17}
!56 = !{ptr @ice_fdir_non_ip_l2_pkt, !57, !"ice_fdir_non_ip_l2_pkt", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 235, i32 17}
!58 = !{ptr @ice_fdir_tcpv6_pkt, !59, !"ice_fdir_tcpv6_pkt", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 241, i32 17}
!60 = !{ptr @ice_fdir_tcp6_tun_pkt, !61, !"ice_fdir_tcp6_tun_pkt", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 347, i32 17}
!62 = !{ptr @ice_fdir_udpv6_pkt, !63, !"ice_fdir_udpv6_pkt", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 254, i32 17}
!64 = !{ptr @ice_fdir_udp6_tun_pkt, !65, !"ice_fdir_udp6_tun_pkt", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 366, i32 17}
!66 = !{ptr @ice_fdir_sctpv6_pkt, !67, !"ice_fdir_sctpv6_pkt", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 265, i32 17}
!68 = !{ptr @ice_fdir_sctp6_tun_pkt, !69, !"ice_fdir_sctp6_tun_pkt", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 383, i32 17}
!70 = !{ptr @ice_fdir_ipv6_pkt, !71, !"ice_fdir_ipv6_pkt", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 277, i32 17}
!72 = !{ptr @ice_fdir_ip6_tun_pkt, !73, !"ice_fdir_ip6_tun_pkt", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/ice/ice_fdir.c", i32 401, i32 17}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"auto-init"}
!84 = !{i64 2148771254, i64 2148771259, i64 2148771272, i64 2148771316, i64 2148771350, i64 2148771371}
