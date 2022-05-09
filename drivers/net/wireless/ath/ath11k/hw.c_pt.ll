; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath11k/hw.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath11k/hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ath11k_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ce_pipe_config = type { i32, i32, i32, i32, i32, i32 }
%struct.service_to_pipe = type { i32, i32, i32 }
%struct.ath11k_hw_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath11k_hw_hal_params = type { i32 }
%struct.ath11k_base = type { i32, ptr, ptr, %struct.ath11k_qmi, %struct.ath11k_wmi_base, %struct.completion, i32, i32, %struct.ath11k_htc, %struct.ath11k_dp, ptr, i32, %struct.anon.101, %struct.anon.102, %struct.ath11k_ce, %struct.timer_list, %struct.ath11k_hal, %struct.mutex, %struct.spinlock, [3 x %struct.ath11k_pdev], [3 x %struct.anon.146], i8, [3 x ptr], [3 x %struct.ath11k_hal_reg_capabilities_ext], i64, %struct.list_head, %struct.wait_queue_head, [6 x i8], i8, i32, [52 x i32], [11 x %struct.ath11k_ext_irq_grp], %struct.ath11k_targ_cap, [16 x i32], i8, i32, %struct.ath11k_hw_params, %struct.ath11k_bus_params, ptr, [3 x ptr], [3 x ptr], i32, ptr, ptr, %struct.ath11k_soc_dp_stats, i32, %struct.completion, ptr, %struct.work_struct, %struct.work_struct, [3 x i8], %struct.anon.150, i32, ptr, i32, %struct.work_struct, i8, %struct.mutex, %struct.timer_list, %struct.completion, %struct.anon.151, [0 x i8], [52 x i8] }
%struct.ath11k_qmi = type { ptr, %struct.qmi_handle, %struct.sockaddr_qrtr, %struct.work_struct, ptr, %struct.list_head, %struct.spinlock, %struct.ath11k_qmi_ce_cfg, [52 x %struct.target_mem_chunk], i32, i32, i8, i8, %struct.target_info, %struct.m3_mem_region, i32, %struct.wait_queue_head }
%struct.qmi_handle = type { ptr, %struct.mutex, %struct.sockaddr_qrtr, %struct.work_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.qmi_ops, %struct.idr, %struct.mutex, ptr }
%struct.qmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sockaddr_qrtr = type { i16, i32, i32 }
%struct.ath11k_qmi_ce_cfg = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.target_mem_chunk = type { i32, i32, i32, ptr, ptr }
%struct.target_info = type { i32, i32, i32, i32, i32, i32, [33 x i8], [129 x i8], [32 x i8] }
%struct.m3_mem_region = type { i32, i32, ptr }
%struct.ath11k_wmi_base = type { ptr, [3 x %struct.ath11k_pdev_wmi], [3 x i32], [3 x i32], %struct.completion, %struct.completion, [8 x i32], %struct.wait_queue_head, ptr, i32, i32, [32 x %struct.wmi_host_mem_chunk], i32, %struct.target_resource_config, ptr }
%struct.ath11k_pdev_wmi = type { ptr, i32, ptr, i32, %struct.wait_queue_head }
%struct.wmi_host_mem_chunk = type { ptr, i32, i32, i32 }
%struct.target_resource_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath11k_htc = type { ptr, [9 x %struct.ath11k_htc_ep], %struct.spinlock, [256 x i8], i32, %struct.completion, i32, [8 x %struct.ath11k_htc_svc_tx_credits], i32, i8 }
%struct.ath11k_htc_ep = type { ptr, i32, i32, %struct.ath11k_htc_ep_ops, i32, i32, i8, i8, i8, i32, i8 }
%struct.ath11k_htc_ep_ops = type { ptr, ptr, ptr }
%struct.ath11k_htc_svc_tx_credits = type { i16, i8 }
%struct.ath11k_dp = type { ptr, i32, %struct.completion, i8, i8, [8 x %struct.dp_link_desc_bank], %struct.dp_srng, %struct.dp_srng, %struct.dp_srng, %struct.dp_srng, %struct.dp_srng, %struct.dp_srng, %struct.dp_srng, %struct.dp_srng, %struct.dp_srng, [4 x %struct.dp_srng], [3 x %struct.dp_tx_ring], [16 x %struct.hal_wbm_idle_scatter_list], %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.spinlock, %struct.ath11k_hp_update_timer, [3 x %struct.ath11k_hp_update_timer] }
%struct.dp_link_desc_bank = type { ptr, ptr, i32, i32, i32 }
%struct.dp_srng = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.dp_tx_ring = type { i8, %struct.dp_srng, %struct.dp_srng, %struct.idr, %struct.spinlock, ptr, i32, i32 }
%struct.hal_wbm_idle_scatter_list = type { i32, ptr }
%struct.ath11k_hp_update_timer = type { %struct.timer_list, i8, i8, i32, i32, i32, i32, ptr }
%struct.anon.101 = type { i32, ptr }
%struct.anon.102 = type { %struct.completion }
%struct.ath11k_ce = type { [12 x %struct.ath11k_ce_pipe], %struct.spinlock, [12 x %struct.ath11k_hp_update_timer] }
%struct.ath11k_ce_pipe = type { ptr, i16, i32, i32, i32, ptr, ptr, %struct.tasklet_struct, ptr, ptr, ptr, i64 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.103, i32 }
%struct.atomic_t = type { i32 }
%union.anon.103 = type { ptr }
%struct.ath11k_hal = type { [172 x %struct.hal_srng], ptr, %struct.anon.107, %struct.anon.108, i8, i8, [36 x i32], i32, [172 x %struct.lock_class_key] }
%struct.hal_srng = type { i8, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, [2 x i32], i64, i32, %union.anon.104 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { i32, ptr, i32, ptr, i32, i16, i32 }
%struct.anon.107 = type { ptr, i32 }
%struct.anon.108 = type { ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ath11k_pdev = type { ptr, i32, %struct.ath11k_pdev_cap, [6 x i8] }
%struct.ath11k_pdev_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x %struct.ath11k_band_cap], i8, i8 }
%struct.ath11k_band_cap = type { i32, i32, i32, [2 x i32], i32, [3 x i32], %struct.ath11k_ppe_threshold, i16 }
%struct.ath11k_ppe_threshold = type { i32, i32, [8 x i32] }
%struct.anon.146 = type { i32, i32 }
%struct.ath11k_hal_reg_capabilities_ext = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ath11k_ext_irq_grp = type { ptr, [16 x i32], i32, i32, i64, i8, %struct.napi_struct, [64 x i8], %struct.net_device }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.109, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.128, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.109 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.128 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ath11k_targ_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath11k_hw_params = type { ptr, i16, i8, i32, %struct.anon.147, ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i8, i32, i32, i32, i8, i32, i8, i8, i8, %struct.anon.149, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8 }
%struct.anon.147 = type { ptr, i32, i32 }
%struct.anon.149 = type { i8, i8, i8, i8, i16 }
%struct.ath11k_bus_params = type { i8, i8, i8, i8, i8 }
%struct.ath11k_soc_dp_stats = type { i32, i32, [14 x i32], [15 x i32], [4 x i32], %struct.ath11k_soc_dp_tx_err_stats, %struct.ath11k_dp_ring_bp_stats }
%struct.ath11k_soc_dp_tx_err_stats = type { [3 x i32], %struct.atomic_t }
%struct.ath11k_dp_ring_bp_stats = type { [18 x %struct.ath11k_bp_stats], [13 x [3 x %struct.ath11k_bp_stats]] }
%struct.ath11k_bp_stats = type { i16, i16, i32, i32 }
%struct.anon.150 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.151 = type { i32, i32, i32, i32, i32 }
%struct.hal_tcl_data_cmd = type { %struct.ath11k_buffer_addr, i32, i32, i32, i32, i32 }
%struct.ath11k_buffer_addr = type { i32, i32 }
%struct.hal_rx_desc_ipq8074 = type { i32, %struct.rx_msdu_end_ipq8074, i32, %struct.rx_attention, i32, %struct.rx_msdu_start_ipq8074, [4 x i8], i32, %struct.rx_mpdu_start_ipq8074, i32, %struct.rx_mpdu_end, [16 x i8], i32, i32, [120 x i8], [0 x i8] }
%struct.rx_msdu_end_ipq8074 = type { i16, i16, i16, i16, i32, [2 x i32], i32, i32, i32, i32, i16, i16, i32, [2 x i32], i16, i16, i32, i32, i16, i16 }
%struct.rx_attention = type { i16, i16, i32, i32 }
%struct.rx_msdu_start_ipq8074 = type { i16, i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.rx_mpdu_start_ipq8074 = type { i16, i16, i16, i16, i32, i32, [4 x i32], i32, i32, i32, i32, i32, i32, i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8], i16, i32, i32 }
%struct.rx_mpdu_end = type { i16, i16, i32 }
%struct.ath11k_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hal_rx_mpdu_info = type { i32, i32, [21 x i32] }
%struct.hal_rx_desc_qcn9074 = type { i32, %struct.rx_msdu_end_qcn9074, i32, %struct.rx_attention, i32, %struct.rx_msdu_start_qcn9074, [4 x i8], i32, %struct.rx_mpdu_start_qcn9074, i32, %struct.rx_mpdu_end, [16 x i8], i32, i32, [120 x i8], [0 x i8] }
%struct.rx_msdu_end_qcn9074 = type { i16, i16, i16, i16, i32, [2 x i32], i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i16, i16 }
%struct.rx_msdu_start_qcn9074 = type { i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%struct.rx_mpdu_start_qcn9074 = type { i32, i32, i32, [4 x i32], i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8], i16, i32 }
%struct.hal_rx_desc_wcn6855 = type { i32, %struct.rx_msdu_end_wcn6855, i32, %struct.rx_attention, i32, %struct.rx_msdu_start_wcn6855, [4 x i8], i32, %struct.rx_mpdu_start_wcn6855, i32, %struct.rx_mpdu_end, [16 x i8], i32, i32, [120 x i8], [0 x i8] }
%struct.rx_msdu_end_wcn6855 = type { i16, i16, i16, i16, i32, [2 x i32], i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i16, i16, [2 x i32], i32, i32 }
%struct.rx_msdu_start_wcn6855 = type { i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%struct.rx_mpdu_start_wcn6855 = type { i32, i32, i32, [4 x i32], i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8], i16, i32 }
%struct.hal_rx_mpdu_info_wcn6855 = type { [8 x i32], i32, [14 x i32] }

@ipq8074_ops = dso_local constant { %struct.ath11k_hw_ops, [52 x i8] } { %struct.ath11k_hw_ops { ptr @ath11k_hw_ipq8074_mac_from_pdev_id, ptr @ath11k_init_wmi_config_ipq8074, ptr @ath11k_hw_mac_id_to_pdev_id_ipq8074, ptr @ath11k_hw_mac_id_to_srng_id_ipq8074, ptr @ath11k_hw_ipq8074_tx_mesh_enable, ptr @ath11k_hw_ipq8074_rx_desc_get_first_msdu, ptr @ath11k_hw_ipq8074_rx_desc_get_last_msdu, ptr @ath11k_hw_ipq8074_rx_desc_get_l3_pad_bytes, ptr @ath11k_hw_ipq8074_rx_desc_get_hdr_status, ptr @ath11k_hw_ipq8074_rx_desc_encrypt_valid, ptr @ath11k_hw_ipq8074_rx_desc_get_encrypt_type, ptr @ath11k_hw_ipq8074_rx_desc_get_decap_type, ptr @ath11k_hw_ipq8074_rx_desc_get_mesh_ctl, ptr @ath11k_hw_ipq8074_rx_desc_get_mpdu_seq_ctl_vld, ptr @ath11k_hw_ipq8074_rx_desc_get_mpdu_fc_valid, ptr @ath11k_hw_ipq8074_rx_desc_get_mpdu_start_seq_no, ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_len, ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_sgi, ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_rate_mcs, ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_rx_bw, ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_freq, ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_pkt_type, ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_nss, ptr @ath11k_hw_ipq8074_rx_desc_get_mpdu_tid, ptr @ath11k_hw_ipq8074_rx_desc_get_mpdu_peer_id, ptr @ath11k_hw_ipq8074_rx_desc_copy_attn_end, ptr @ath11k_hw_ipq8074_rx_desc_get_mpdu_start_tag, ptr @ath11k_hw_ipq8074_rx_desc_get_mpdu_ppdu_id, ptr @ath11k_hw_ipq8074_rx_desc_set_msdu_len, ptr @ath11k_hw_ipq8074_rx_desc_get_attention, ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_payload, ptr @ath11k_hw_ipq8074_reo_setup, ptr @ath11k_hw_ipq8074_mpdu_info_get_peerid, ptr @ath11k_hw_ipq8074_rx_desc_mac_addr2_valid, ptr @ath11k_hw_ipq8074_rx_desc_mpdu_start_addr2 }, [52 x i8] zeroinitializer }, align 32
@ipq6018_ops = dso_local constant { %struct.ath11k_hw_ops, [52 x i8] } { %struct.ath11k_hw_ops { ptr @ath11k_hw_ipq6018_mac_from_pdev_id, ptr @ath11k_init_wmi_config_ipq8074, ptr @ath11k_hw_mac_id_to_pdev_id_ipq8074, ptr @ath11k_hw_mac_id_to_srng_id_ipq8074, ptr @ath11k_hw_ipq8074_tx_mesh_enable, ptr @ath11k_hw_ipq8074_rx_desc_get_first_msdu, ptr @ath11k_hw_ipq8074_rx_desc_get_last_msdu, ptr @ath11k_hw_ipq8074_rx_desc_get_l3_pad_bytes, ptr @ath11k_hw_ipq8074_rx_desc_get_hdr_status, ptr @ath11k_hw_ipq8074_rx_desc_encrypt_valid, ptr @ath11k_hw_ipq8074_rx_desc_get_encrypt_type, ptr @ath11k_hw_ipq8074_rx_desc_get_decap_type, ptr @ath11k_hw_ipq8074_rx_desc_get_mesh_ctl, ptr @ath11k_hw_ipq8074_rx_desc_get_mpdu_seq_ctl_vld, ptr @ath11k_hw_ipq8074_rx_desc_get_mpdu_fc_valid, ptr @ath11k_hw_ipq8074_rx_desc_get_mpdu_start_seq_no, ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_len, ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_sgi, ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_rate_mcs, ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_rx_bw, ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_freq, ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_pkt_type, ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_nss, ptr @ath11k_hw_ipq8074_rx_desc_get_mpdu_tid, ptr @ath11k_hw_ipq8074_rx_desc_get_mpdu_peer_id, ptr @ath11k_hw_ipq8074_rx_desc_copy_attn_end, ptr @ath11k_hw_ipq8074_rx_desc_get_mpdu_start_tag, ptr @ath11k_hw_ipq8074_rx_desc_get_mpdu_ppdu_id, ptr @ath11k_hw_ipq8074_rx_desc_set_msdu_len, ptr @ath11k_hw_ipq8074_rx_desc_get_attention, ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_payload, ptr @ath11k_hw_ipq8074_reo_setup, ptr @ath11k_hw_ipq8074_mpdu_info_get_peerid, ptr @ath11k_hw_ipq8074_rx_desc_mac_addr2_valid, ptr @ath11k_hw_ipq8074_rx_desc_mpdu_start_addr2 }, [52 x i8] zeroinitializer }, align 32
@qca6390_ops = dso_local constant { %struct.ath11k_hw_ops, [52 x i8] } { %struct.ath11k_hw_ops { ptr @ath11k_hw_ipq8074_mac_from_pdev_id, ptr @ath11k_init_wmi_config_qca6390, ptr @ath11k_hw_mac_id_to_pdev_id_qca6390, ptr @ath11k_hw_mac_id_to_srng_id_qca6390, ptr @ath11k_hw_ipq8074_tx_mesh_enable, ptr @ath11k_hw_ipq8074_rx_desc_get_first_msdu, ptr @ath11k_hw_ipq8074_rx_desc_get_last_msdu, ptr @ath11k_hw_ipq8074_rx_desc_get_l3_pad_bytes, ptr @ath11k_hw_ipq8074_rx_desc_get_hdr_status, ptr @ath11k_hw_ipq8074_rx_desc_encrypt_valid, ptr @ath11k_hw_ipq8074_rx_desc_get_encrypt_type, ptr @ath11k_hw_ipq8074_rx_desc_get_decap_type, ptr @ath11k_hw_ipq8074_rx_desc_get_mesh_ctl, ptr @ath11k_hw_ipq8074_rx_desc_get_mpdu_seq_ctl_vld, ptr @ath11k_hw_ipq8074_rx_desc_get_mpdu_fc_valid, ptr @ath11k_hw_ipq8074_rx_desc_get_mpdu_start_seq_no, ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_len, ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_sgi, ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_rate_mcs, ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_rx_bw, ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_freq, ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_pkt_type, ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_nss, ptr @ath11k_hw_ipq8074_rx_desc_get_mpdu_tid, ptr @ath11k_hw_ipq8074_rx_desc_get_mpdu_peer_id, ptr @ath11k_hw_ipq8074_rx_desc_copy_attn_end, ptr @ath11k_hw_ipq8074_rx_desc_get_mpdu_start_tag, ptr @ath11k_hw_ipq8074_rx_desc_get_mpdu_ppdu_id, ptr @ath11k_hw_ipq8074_rx_desc_set_msdu_len, ptr @ath11k_hw_ipq8074_rx_desc_get_attention, ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_payload, ptr @ath11k_hw_ipq8074_reo_setup, ptr @ath11k_hw_ipq8074_mpdu_info_get_peerid, ptr @ath11k_hw_ipq8074_rx_desc_mac_addr2_valid, ptr @ath11k_hw_ipq8074_rx_desc_mpdu_start_addr2 }, [52 x i8] zeroinitializer }, align 32
@qcn9074_ops = dso_local constant { %struct.ath11k_hw_ops, [52 x i8] } { %struct.ath11k_hw_ops { ptr @ath11k_hw_ipq6018_mac_from_pdev_id, ptr @ath11k_init_wmi_config_ipq8074, ptr @ath11k_hw_mac_id_to_pdev_id_ipq8074, ptr @ath11k_hw_mac_id_to_srng_id_ipq8074, ptr @ath11k_hw_qcn9074_tx_mesh_enable, ptr @ath11k_hw_qcn9074_rx_desc_get_first_msdu, ptr @ath11k_hw_qcn9074_rx_desc_get_last_msdu, ptr @ath11k_hw_qcn9074_rx_desc_get_l3_pad_bytes, ptr @ath11k_hw_qcn9074_rx_desc_get_hdr_status, ptr @ath11k_hw_qcn9074_rx_desc_encrypt_valid, ptr @ath11k_hw_qcn9074_rx_desc_get_encrypt_type, ptr @ath11k_hw_qcn9074_rx_desc_get_decap_type, ptr @ath11k_hw_qcn9074_rx_desc_get_mesh_ctl, ptr @ath11k_hw_qcn9074_rx_desc_get_mpdu_seq_ctl_vld, ptr @ath11k_hw_qcn9074_rx_desc_get_mpdu_fc_valid, ptr @ath11k_hw_qcn9074_rx_desc_get_mpdu_start_seq_no, ptr @ath11k_hw_qcn9074_rx_desc_get_msdu_len, ptr @ath11k_hw_qcn9074_rx_desc_get_msdu_sgi, ptr @ath11k_hw_qcn9074_rx_desc_get_msdu_rate_mcs, ptr @ath11k_hw_qcn9074_rx_desc_get_msdu_rx_bw, ptr @ath11k_hw_qcn9074_rx_desc_get_msdu_freq, ptr @ath11k_hw_qcn9074_rx_desc_get_msdu_pkt_type, ptr @ath11k_hw_qcn9074_rx_desc_get_msdu_nss, ptr @ath11k_hw_qcn9074_rx_desc_get_mpdu_tid, ptr @ath11k_hw_qcn9074_rx_desc_get_mpdu_peer_id, ptr @ath11k_hw_qcn9074_rx_desc_copy_attn_end, ptr @ath11k_hw_qcn9074_rx_desc_get_mpdu_start_tag, ptr @ath11k_hw_qcn9074_rx_desc_get_mpdu_ppdu_id, ptr @ath11k_hw_qcn9074_rx_desc_set_msdu_len, ptr @ath11k_hw_qcn9074_rx_desc_get_attention, ptr @ath11k_hw_qcn9074_rx_desc_get_msdu_payload, ptr @ath11k_hw_ipq8074_reo_setup, ptr @ath11k_hw_ipq8074_mpdu_info_get_peerid, ptr @ath11k_hw_ipq9074_rx_desc_mac_addr2_valid, ptr @ath11k_hw_ipq9074_rx_desc_mpdu_start_addr2 }, [52 x i8] zeroinitializer }, align 32
@wcn6855_ops = dso_local constant { %struct.ath11k_hw_ops, [52 x i8] } { %struct.ath11k_hw_ops { ptr @ath11k_hw_ipq8074_mac_from_pdev_id, ptr @ath11k_init_wmi_config_qca6390, ptr @ath11k_hw_mac_id_to_pdev_id_qca6390, ptr @ath11k_hw_mac_id_to_srng_id_qca6390, ptr @ath11k_hw_wcn6855_tx_mesh_enable, ptr @ath11k_hw_wcn6855_rx_desc_get_first_msdu, ptr @ath11k_hw_wcn6855_rx_desc_get_last_msdu, ptr @ath11k_hw_wcn6855_rx_desc_get_l3_pad_bytes, ptr @ath11k_hw_wcn6855_rx_desc_get_hdr_status, ptr @ath11k_hw_wcn6855_rx_desc_encrypt_valid, ptr @ath11k_hw_wcn6855_rx_desc_get_encrypt_type, ptr @ath11k_hw_wcn6855_rx_desc_get_decap_type, ptr @ath11k_hw_wcn6855_rx_desc_get_mesh_ctl, ptr @ath11k_hw_wcn6855_rx_desc_get_mpdu_seq_ctl_vld, ptr @ath11k_hw_wcn6855_rx_desc_get_mpdu_fc_valid, ptr @ath11k_hw_wcn6855_rx_desc_get_mpdu_start_seq_no, ptr @ath11k_hw_wcn6855_rx_desc_get_msdu_len, ptr @ath11k_hw_wcn6855_rx_desc_get_msdu_sgi, ptr @ath11k_hw_wcn6855_rx_desc_get_msdu_rate_mcs, ptr @ath11k_hw_wcn6855_rx_desc_get_msdu_rx_bw, ptr @ath11k_hw_wcn6855_rx_desc_get_msdu_freq, ptr @ath11k_hw_wcn6855_rx_desc_get_msdu_pkt_type, ptr @ath11k_hw_wcn6855_rx_desc_get_msdu_nss, ptr @ath11k_hw_wcn6855_rx_desc_get_mpdu_tid, ptr @ath11k_hw_wcn6855_rx_desc_get_mpdu_peer_id, ptr @ath11k_hw_wcn6855_rx_desc_copy_attn_end, ptr @ath11k_hw_wcn6855_rx_desc_get_mpdu_start_tag, ptr @ath11k_hw_wcn6855_rx_desc_get_mpdu_ppdu_id, ptr @ath11k_hw_wcn6855_rx_desc_set_msdu_len, ptr @ath11k_hw_wcn6855_rx_desc_get_attention, ptr @ath11k_hw_wcn6855_rx_desc_get_msdu_payload, ptr @ath11k_hw_wcn6855_reo_setup, ptr @ath11k_hw_wcn6855_mpdu_info_get_peerid, ptr @ath11k_hw_wcn6855_rx_desc_mac_addr2_valid, ptr @ath11k_hw_wcn6855_rx_desc_mpdu_start_addr2 }, [52 x i8] zeroinitializer }, align 32
@ath11k_hw_ring_mask_ipq8074 = dso_local constant { { <{ i8, i8, i8, [8 x i8] }>, [11 x i8], [11 x i8], <{ i8, [10 x i8] }>, <{ i8, [10 x i8] }>, <{ i8, [10 x i8] }>, <{ i8, i8, i8, [8 x i8] }>, <{ i8, i8, i8, [8 x i8] }> }, [40 x i8] } { { <{ i8, i8, i8, [8 x i8] }>, [11 x i8], [11 x i8], <{ i8, [10 x i8] }>, <{ i8, [10 x i8] }>, <{ i8, [10 x i8] }>, <{ i8, i8, i8, [8 x i8] }>, <{ i8, i8, i8, [8 x i8] }> } { <{ i8, i8, i8, [8 x i8] }> <{ i8 1, i8 2, i8 4, [8 x i8] zeroinitializer }>, [11 x i8] c"\00\00\00\00\01\02\04\00\00\00\00", [11 x i8] c"\00\00\00\00\00\00\00\01\02\04\08", <{ i8, [10 x i8] }> <{ i8 1, [10 x i8] zeroinitializer }>, <{ i8, [10 x i8] }> <{ i8 1, [10 x i8] zeroinitializer }>, <{ i8, [10 x i8] }> <{ i8 1, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, [8 x i8] }> <{ i8 1, i8 2, i8 4, [8 x i8] zeroinitializer }>, <{ i8, i8, i8, [8 x i8] }> <{ i8 1, i8 2, i8 4, [8 x i8] zeroinitializer }> }, [40 x i8] zeroinitializer }, align 32
@ath11k_hw_ring_mask_qca6390 = dso_local constant { { <{ i8, [10 x i8] }>, [11 x i8], [11 x i8], <{ i8, [10 x i8] }>, <{ i8, [10 x i8] }>, <{ i8, [10 x i8] }>, <{ i8, i8, i8, [8 x i8] }>, [11 x i8] }, [40 x i8] } { { <{ i8, [10 x i8] }>, [11 x i8], [11 x i8], <{ i8, [10 x i8] }>, <{ i8, [10 x i8] }>, <{ i8, [10 x i8] }>, <{ i8, i8, i8, [8 x i8] }>, [11 x i8] } { <{ i8, [10 x i8] }> <{ i8 1, [10 x i8] zeroinitializer }>, [11 x i8] c"\00\00\00\00\01\02\04\00\00\00\00", [11 x i8] c"\00\00\00\00\00\00\00\01\02\04\08", <{ i8, [10 x i8] }> <{ i8 1, [10 x i8] zeroinitializer }>, <{ i8, [10 x i8] }> <{ i8 1, [10 x i8] zeroinitializer }>, <{ i8, [10 x i8] }> <{ i8 1, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, [8 x i8] }> <{ i8 1, i8 2, i8 4, [8 x i8] zeroinitializer }>, [11 x i8] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@ath11k_target_ce_config_wlan_ipq8074 = dso_local constant { [11 x %struct.ce_pipe_config], [88 x i8] } { [11 x %struct.ce_pipe_config] [%struct.ce_pipe_config { i32 0, i32 33554432, i32 536870912, i32 524288, i32 33554432, i32 0 }, %struct.ce_pipe_config { i32 16777216, i32 16777216, i32 536870912, i32 524288, i32 33554432, i32 0 }, %struct.ce_pipe_config { i32 33554432, i32 16777216, i32 536870912, i32 524288, i32 33554432, i32 0 }, %struct.ce_pipe_config { i32 50331648, i32 33554432, i32 536870912, i32 524288, i32 33554432, i32 0 }, %struct.ce_pipe_config { i32 67108864, i32 33554432, i32 65536, i32 65536, i32 167772160, i32 0 }, %struct.ce_pipe_config { i32 83886080, i32 16777216, i32 536870912, i32 524288, i32 0, i32 0 }, %struct.ce_pipe_config { i32 100663296, i32 50331648, i32 536870912, i32 -65536, i32 33554432, i32 0 }, %struct.ce_pipe_config { i32 117440512, i32 33554432, i32 536870912, i32 524288, i32 33554432, i32 0 }, %struct.ce_pipe_config { i32 134217728, i32 50331648, i32 536870912, i32 -65536, i32 33554432, i32 0 }, %struct.ce_pipe_config { i32 150994944, i32 33554432, i32 536870912, i32 524288, i32 33554432, i32 0 }, %struct.ce_pipe_config { i32 167772160, i32 67108864, i32 0, i32 0, i32 33554432, i32 0 }], [88 x i8] zeroinitializer }, align 32
@ath11k_target_service_to_ce_map_wlan_ipq8074 = dso_local constant { [22 x %struct.service_to_pipe], [88 x i8] } { [22 x %struct.service_to_pipe] [%struct.service_to_pipe { i32 67174400, i32 33554432, i32 50331648 }, %struct.service_to_pipe { i32 67174400, i32 16777216, i32 33554432 }, %struct.service_to_pipe { i32 33619968, i32 33554432, i32 50331648 }, %struct.service_to_pipe { i32 33619968, i32 16777216, i32 33554432 }, %struct.service_to_pipe { i32 16842752, i32 33554432, i32 50331648 }, %struct.service_to_pipe { i32 16842752, i32 16777216, i32 33554432 }, %struct.service_to_pipe { i32 50397184, i32 33554432, i32 50331648 }, %struct.service_to_pipe { i32 50397184, i32 16777216, i32 33554432 }, %struct.service_to_pipe { i32 65536, i32 33554432, i32 50331648 }, %struct.service_to_pipe { i32 65536, i32 16777216, i32 33554432 }, %struct.service_to_pipe { i32 83951616, i32 33554432, i32 117440512 }, %struct.service_to_pipe { i32 83951616, i32 16777216, i32 33554432 }, %struct.service_to_pipe { i32 100728832, i32 33554432, i32 150994944 }, %struct.service_to_pipe { i32 100728832, i32 16777216, i32 33554432 }, %struct.service_to_pipe { i32 16777216, i32 33554432, i32 0 }, %struct.service_to_pipe { i32 16777216, i32 16777216, i32 16777216 }, %struct.service_to_pipe { i32 16646144, i32 33554432, i32 0 }, %struct.service_to_pipe { i32 16646144, i32 16777216, i32 16777216 }, %struct.service_to_pipe { i32 196608, i32 33554432, i32 67108864 }, %struct.service_to_pipe { i32 196608, i32 16777216, i32 16777216 }, %struct.service_to_pipe { i32 393216, i32 16777216, i32 83886080 }, %struct.service_to_pipe zeroinitializer], [88 x i8] zeroinitializer }, align 32
@ath11k_target_service_to_ce_map_wlan_ipq6018 = dso_local constant { [20 x %struct.service_to_pipe], [48 x i8] } { [20 x %struct.service_to_pipe] [%struct.service_to_pipe { i32 67174400, i32 33554432, i32 50331648 }, %struct.service_to_pipe { i32 67174400, i32 16777216, i32 33554432 }, %struct.service_to_pipe { i32 33619968, i32 33554432, i32 50331648 }, %struct.service_to_pipe { i32 33619968, i32 16777216, i32 33554432 }, %struct.service_to_pipe { i32 16842752, i32 33554432, i32 50331648 }, %struct.service_to_pipe { i32 16842752, i32 16777216, i32 33554432 }, %struct.service_to_pipe { i32 50397184, i32 33554432, i32 50331648 }, %struct.service_to_pipe { i32 50397184, i32 16777216, i32 33554432 }, %struct.service_to_pipe { i32 65536, i32 33554432, i32 50331648 }, %struct.service_to_pipe { i32 65536, i32 16777216, i32 33554432 }, %struct.service_to_pipe { i32 83951616, i32 33554432, i32 117440512 }, %struct.service_to_pipe { i32 83951616, i32 16777216, i32 33554432 }, %struct.service_to_pipe { i32 16777216, i32 33554432, i32 0 }, %struct.service_to_pipe { i32 16777216, i32 16777216, i32 16777216 }, %struct.service_to_pipe { i32 16646144, i32 33554432, i32 0 }, %struct.service_to_pipe { i32 16646144, i32 16777216, i32 16777216 }, %struct.service_to_pipe { i32 196608, i32 33554432, i32 67108864 }, %struct.service_to_pipe { i32 196608, i32 16777216, i32 16777216 }, %struct.service_to_pipe { i32 393216, i32 16777216, i32 83886080 }, %struct.service_to_pipe zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ath11k_target_ce_config_wlan_qca6390 = dso_local constant { [9 x %struct.ce_pipe_config], [40 x i8] } { [9 x %struct.ce_pipe_config] [%struct.ce_pipe_config { i32 0, i32 33554432, i32 536870912, i32 524288, i32 33554432, i32 0 }, %struct.ce_pipe_config { i32 16777216, i32 16777216, i32 536870912, i32 524288, i32 33554432, i32 0 }, %struct.ce_pipe_config { i32 33554432, i32 16777216, i32 536870912, i32 524288, i32 33554432, i32 0 }, %struct.ce_pipe_config { i32 50331648, i32 33554432, i32 536870912, i32 524288, i32 33554432, i32 0 }, %struct.ce_pipe_config { i32 67108864, i32 33554432, i32 65536, i32 65536, i32 167772160, i32 0 }, %struct.ce_pipe_config { i32 83886080, i32 16777216, i32 536870912, i32 524288, i32 33554432, i32 0 }, %struct.ce_pipe_config { i32 100663296, i32 50331648, i32 536870912, i32 4194304, i32 33554432, i32 0 }, %struct.ce_pipe_config { i32 117440512, i32 67108864, i32 0, i32 0, i32 167772160, i32 0 }, %struct.ce_pipe_config { i32 134217728, i32 50331648, i32 536870912, i32 4194304, i32 33554432, i32 0 }], [40 x i8] zeroinitializer }, align 32
@ath11k_target_service_to_ce_map_wlan_qca6390 = dso_local constant { [15 x %struct.service_to_pipe], [44 x i8] } { [15 x %struct.service_to_pipe] [%struct.service_to_pipe { i32 67174400, i32 33554432, i32 50331648 }, %struct.service_to_pipe { i32 67174400, i32 16777216, i32 33554432 }, %struct.service_to_pipe { i32 33619968, i32 33554432, i32 50331648 }, %struct.service_to_pipe { i32 33619968, i32 16777216, i32 33554432 }, %struct.service_to_pipe { i32 16842752, i32 33554432, i32 50331648 }, %struct.service_to_pipe { i32 16842752, i32 16777216, i32 33554432 }, %struct.service_to_pipe { i32 50397184, i32 33554432, i32 50331648 }, %struct.service_to_pipe { i32 50397184, i32 16777216, i32 33554432 }, %struct.service_to_pipe { i32 65536, i32 33554432, i32 50331648 }, %struct.service_to_pipe { i32 65536, i32 16777216, i32 33554432 }, %struct.service_to_pipe { i32 16777216, i32 33554432, i32 0 }, %struct.service_to_pipe { i32 16777216, i32 16777216, i32 33554432 }, %struct.service_to_pipe { i32 196608, i32 33554432, i32 67108864 }, %struct.service_to_pipe { i32 196608, i32 16777216, i32 16777216 }, %struct.service_to_pipe zeroinitializer], [44 x i8] zeroinitializer }, align 32
@ath11k_target_ce_config_wlan_qcn9074 = dso_local constant { [9 x %struct.ce_pipe_config], [40 x i8] } { [9 x %struct.ce_pipe_config] [%struct.ce_pipe_config { i32 0, i32 33554432, i32 536870912, i32 524288, i32 33554432, i32 0 }, %struct.ce_pipe_config { i32 16777216, i32 16777216, i32 536870912, i32 524288, i32 33554432, i32 0 }, %struct.ce_pipe_config { i32 33554432, i32 16777216, i32 536870912, i32 524288, i32 33554432, i32 0 }, %struct.ce_pipe_config { i32 50331648, i32 33554432, i32 536870912, i32 524288, i32 33554432, i32 0 }, %struct.ce_pipe_config { i32 67108864, i32 33554432, i32 65536, i32 65536, i32 167772160, i32 0 }, %struct.ce_pipe_config { i32 83886080, i32 16777216, i32 536870912, i32 524288, i32 33554432, i32 0 }, %struct.ce_pipe_config { i32 100663296, i32 50331648, i32 536870912, i32 4194304, i32 33554432, i32 0 }, %struct.ce_pipe_config { i32 117440512, i32 67108864, i32 0, i32 0, i32 167772160, i32 0 }, %struct.ce_pipe_config { i32 134217728, i32 50331648, i32 536870912, i32 4194304, i32 33554432, i32 0 }], [40 x i8] zeroinitializer }, align 32
@ath11k_target_service_to_ce_map_wlan_qcn9074 = dso_local constant { [18 x %struct.service_to_pipe], [40 x i8] } { [18 x %struct.service_to_pipe] [%struct.service_to_pipe { i32 67174400, i32 33554432, i32 50331648 }, %struct.service_to_pipe { i32 67174400, i32 16777216, i32 33554432 }, %struct.service_to_pipe { i32 33619968, i32 33554432, i32 50331648 }, %struct.service_to_pipe { i32 33619968, i32 16777216, i32 33554432 }, %struct.service_to_pipe { i32 16842752, i32 33554432, i32 50331648 }, %struct.service_to_pipe { i32 16842752, i32 16777216, i32 33554432 }, %struct.service_to_pipe { i32 50397184, i32 33554432, i32 50331648 }, %struct.service_to_pipe { i32 50397184, i32 16777216, i32 33554432 }, %struct.service_to_pipe { i32 65536, i32 33554432, i32 50331648 }, %struct.service_to_pipe { i32 65536, i32 16777216, i32 33554432 }, %struct.service_to_pipe { i32 16777216, i32 33554432, i32 0 }, %struct.service_to_pipe { i32 16777216, i32 16777216, i32 16777216 }, %struct.service_to_pipe { i32 16646144, i32 33554432, i32 0 }, %struct.service_to_pipe { i32 16646144, i32 16777216, i32 16777216 }, %struct.service_to_pipe { i32 196608, i32 33554432, i32 67108864 }, %struct.service_to_pipe { i32 196608, i32 16777216, i32 16777216 }, %struct.service_to_pipe { i32 393216, i32 16777216, i32 83886080 }, %struct.service_to_pipe zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ath11k_hw_ring_mask_qcn9074 = dso_local constant { { <{ i8, i8, i8, [8 x i8] }>, [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8] }, [40 x i8] } { { <{ i8, i8, i8, [8 x i8] }>, [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8] } { <{ i8, i8, i8, [8 x i8] }> <{ i8 1, i8 2, i8 4, [8 x i8] zeroinitializer }>, [11 x i8] c"\00\00\00\01\02\04\00\00\00\00\00", [11 x i8] c"\00\00\00\00\01\02\04\08\00\00\00", [11 x i8] c"\00\00\00\01\00\00\00\00\00\00\00", [11 x i8] c"\00\00\00\01\00\00\00\00\00\00\00", [11 x i8] c"\00\00\00\01\00\00\00\00\00\00\00", [11 x i8] c"\00\00\00\01\00\00\00\00\00\00\00", [11 x i8] c"\00\00\00\01\00\00\00\00\00\00\00" }, [40 x i8] zeroinitializer }, align 32
@ipq8074_regs = dso_local constant { %struct.ath11k_hw_regs, [36 x i8] } { %struct.ath11k_hw_regs { i32 1296, i32 1300, i32 1304, i32 1312, i32 1324, i32 1328, i32 1344, i32 1348, i32 1368, i32 1372, i32 1376, i32 1384, i32 1560, i32 1824, i32 668, i32 672, i32 676, i32 684, i32 688, i32 692, i32 704, i32 740, i32 744, i32 748, i32 756, i32 1380, i32 1384, i32 1388, i32 1392, i32 12344, i32 12348, i32 12352, i32 1020, i32 12376, i32 1284, i32 12400, i32 10485760, i32 10489856, i32 10493952, i32 10498048, i32 2144, i32 2160, i32 472, i32 2320, i32 2408, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@qca6390_regs = dso_local constant { %struct.ath11k_hw_regs, [36 x i8] } { %struct.ath11k_hw_regs { i32 1668, i32 1672, i32 1676, i32 1684, i32 1696, i32 1700, i32 1716, i32 1720, i32 1740, i32 1744, i32 1748, i32 1756, i32 1932, i32 2196, i32 580, i32 584, i32 588, i32 596, i32 600, i32 604, i32 616, i32 652, i32 656, i32 660, i32 668, i32 1292, i32 1296, i32 1300, i32 1304, i32 12336, i32 12340, i32 12344, i32 932, i32 12368, i32 1196, i32 12392, i32 10485760, i32 10489856, i32 10493952, i32 10498048, i32 2144, i32 2160, i32 472, i32 2320, i32 2408, i32 31506604, i32 31508008 }, [36 x i8] zeroinitializer }, align 32
@qcn9074_regs = dso_local constant { %struct.ath11k_hw_regs, [36 x i8] } { %struct.ath11k_hw_regs { i32 1264, i32 1268, i32 1272, i32 1280, i32 1292, i32 1296, i32 1312, i32 1316, i32 1336, i32 1340, i32 1344, i32 1352, i32 1528, i32 1792, i32 668, i32 672, i32 676, i32 684, i32 688, i32 692, i32 704, i32 740, i32 744, i32 748, i32 756, i32 1380, i32 1384, i32 1388, i32 1392, i32 12344, i32 12348, i32 12352, i32 1020, i32 12376, i32 1284, i32 12400, i32 28835840, i32 28839936, i32 28844032, i32 28848128, i32 2164, i32 2180, i32 492, i32 2340, i32 2428, i32 31514792, i32 31519836 }, [36 x i8] zeroinitializer }, align 32
@wcn6855_regs = dso_local constant { %struct.ath11k_hw_regs, [36 x i8] } { %struct.ath11k_hw_regs { i32 1680, i32 1684, i32 1688, i32 1696, i32 1708, i32 1712, i32 1728, i32 1732, i32 1752, i32 1756, i32 1760, i32 1768, i32 1944, i32 2208, i32 580, i32 584, i32 588, i32 596, i32 600, i32 604, i32 616, i32 652, i32 656, i32 660, i32 668, i32 1468, i32 1472, i32 1476, i32 1480, i32 12336, i32 12340, i32 12344, i32 1108, i32 12384, i32 1372, i32 12408, i32 28835840, i32 28839936, i32 28844032, i32 28848128, i32 2160, i32 2176, i32 488, i32 2336, i32 2424, i32 31506604, i32 31508008 }, [36 x i8] zeroinitializer }, align 32
@ath11k_hw_hal_params_ipq8074 = dso_local constant { %struct.ath11k_hw_hal_params, [28 x i8] } { %struct.ath11k_hw_hal_params { i32 6 }, [28 x i8] zeroinitializer }, align 32
@ath11k_hw_hal_params_qca6390 = dso_local constant { %struct.ath11k_hw_hal_params, [28 x i8] } { %struct.ath11k_hw_hal_params { i32 4 }, [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"ipq8074_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 804, i32 28 }
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"ipq6018_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 842, i32 28 }
@___asan_gen_.7 = private unnamed_addr constant [12 x i8] c"qca6390_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 880, i32 28 }
@___asan_gen_.10 = private unnamed_addr constant [12 x i8] c"qcn9074_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 918, i32 28 }
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"wcn6855_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 956, i32 28 }
@___asan_gen_.16 = private unnamed_addr constant [28 x i8] c"ath11k_hw_ring_mask_ipq8074\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1021, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [28 x i8] c"ath11k_hw_ring_mask_qca6390\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1061, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant [37 x i8] c"ath11k_target_ce_config_wlan_ipq8074\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1097, i32 29 }
@___asan_gen_.25 = private unnamed_addr constant [45 x i8] c"ath11k_target_service_to_ce_map_wlan_ipq8074\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1215, i32 30 }
@___asan_gen_.28 = private unnamed_addr constant [45 x i8] c"ath11k_target_service_to_ce_map_wlan_ipq6018\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1327, i32 30 }
@___asan_gen_.31 = private unnamed_addr constant [37 x i8] c"ath11k_target_ce_config_wlan_qca6390\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1430, i32 29 }
@___asan_gen_.34 = private unnamed_addr constant [45 x i8] c"ath11k_target_service_to_ce_map_wlan_qca6390\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1527, i32 30 }
@___asan_gen_.37 = private unnamed_addr constant [37 x i8] c"ath11k_target_ce_config_wlan_qcn9074\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1609, i32 29 }
@___asan_gen_.40 = private unnamed_addr constant [45 x i8] c"ath11k_target_service_to_ce_map_wlan_qcn9074\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1706, i32 30 }
@___asan_gen_.43 = private unnamed_addr constant [28 x i8] c"ath11k_hw_ring_mask_qcn9074\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1802, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"ipq8074_regs\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1843, i32 29 }
@___asan_gen_.49 = private unnamed_addr constant [13 x i8] c"qca6390_regs\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1914, i32 29 }
@___asan_gen_.52 = private unnamed_addr constant [13 x i8] c"qcn9074_regs\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1985, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"wcn6855_regs\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 2056, i32 29 }
@___asan_gen_.58 = private unnamed_addr constant [29 x i8] c"ath11k_hw_hal_params_ipq8074\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 2127, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant [29 x i8] c"ath11k_hw_hal_params_qca6390\00", align 1
@___asan_gen_.62 = private constant [40 x i8] c"../drivers/net/wireless/ath/ath11k/hw.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 2131, i32 35 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @ipq8074_ops, ptr @ipq6018_ops, ptr @qca6390_ops, ptr @qcn9074_ops, ptr @wcn6855_ops, ptr @ath11k_hw_ring_mask_ipq8074, ptr @ath11k_hw_ring_mask_qca6390, ptr @ath11k_target_ce_config_wlan_ipq8074, ptr @ath11k_target_service_to_ce_map_wlan_ipq8074, ptr @ath11k_target_service_to_ce_map_wlan_ipq6018, ptr @ath11k_target_ce_config_wlan_qca6390, ptr @ath11k_target_service_to_ce_map_wlan_qca6390, ptr @ath11k_target_ce_config_wlan_qcn9074, ptr @ath11k_target_service_to_ce_map_wlan_qcn9074, ptr @ath11k_hw_ring_mask_qcn9074, ptr @ipq8074_regs, ptr @qca6390_regs, ptr @qcn9074_regs, ptr @wcn6855_regs, ptr @ath11k_hw_hal_params_ipq8074, ptr @ath11k_hw_hal_params_qca6390], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq8074_ops to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq6018_ops to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca6390_ops to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcn9074_ops to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn6855_ops to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_hw_ring_mask_ipq8074 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_hw_ring_mask_qca6390 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_target_ce_config_wlan_ipq8074 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_target_service_to_ce_map_wlan_ipq8074 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_target_service_to_ce_map_wlan_ipq6018 to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_target_ce_config_wlan_qca6390 to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_target_service_to_ce_map_wlan_qca6390 to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_target_ce_config_wlan_qcn9074 to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_target_service_to_ce_map_wlan_qcn9074 to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_hw_ring_mask_qcn9074 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq8074_regs to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca6390_regs to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcn9074_regs to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn6855_regs to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_hw_hal_params_ipq8074 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_hw_hal_params_qca6390 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_ipq8074_mac_from_pdev_id(i32 noundef %pdev_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %pdev_idx)
  %0 = icmp ult i32 %pdev_idx, 3
  %switch.cast = trunc i32 %pdev_idx to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 66048, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %retval.0 = select i1 %0, i8 %switch.masked, i8 -1
  ret i8 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ath11k_init_wmi_config_ipq8074(ptr noundef %ab, ptr noundef %config) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_radios = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 6
  %0 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_radios, align 64
  %num_vdevs = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 34
  %2 = ptrtoint ptr %num_vdevs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_vdevs, align 4
  %mul = mul i32 %3, %1
  %4 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %config, align 4
  %5 = load i32, ptr %num_radios, align 64
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.else43 [
    i32 2, label %if.then
    i32 3, label %if.then22
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %num_peers = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 35
  %7 = ptrtoint ptr %num_peers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_peers, align 4
  %9 = ptrtoint ptr %num_vdevs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_vdevs, align 4
  %add = add i32 %10, %8
  %mul6 = shl i32 %add, 1
  %num_peers7 = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 1
  %11 = ptrtoint ptr %num_peers7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul6, ptr %num_peers7, align 4
  %12 = load i32, ptr %num_peers, align 4
  %13 = load i32, ptr %num_vdevs, align 4
  %reass.add = shl i32 %13, 1
  %mul14142 = add i32 %reass.add, %12
  %add18 = shl i32 %mul14142, 2
  %add19 = add i32 %add18, 8
  br label %if.end62

if.then22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %num_peers24 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 35
  %14 = ptrtoint ptr %num_peers24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_peers24, align 4
  %16 = ptrtoint ptr %num_vdevs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_vdevs, align 4
  %add27 = add i32 %17, %15
  %mul28 = mul i32 %add27, 3
  %num_peers29 = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 1
  %18 = ptrtoint ptr %num_peers29 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul28, ptr %num_peers29, align 4
  %19 = load i32, ptr %num_peers24, align 4
  %20 = load i32, ptr %num_vdevs, align 4
  %add34 = add i32 %20, %19
  %mul36 = mul i32 %add34, 6
  %mul39 = shl i32 %20, 2
  %add40 = add i32 %mul39, 8
  %add41 = add i32 %add40, %mul36
  br label %if.end62

if.else43:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %num_peers45 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 35
  %21 = ptrtoint ptr %num_peers45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_peers45, align 4
  %23 = ptrtoint ptr %num_vdevs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_vdevs, align 4
  %add48 = add i32 %24, %22
  %num_peers49 = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 1
  %25 = ptrtoint ptr %num_peers49 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add48, ptr %num_peers49, align 4
  %26 = load i32, ptr %num_peers45, align 4
  %27 = load i32, ptr %num_vdevs, align 4
  %add54 = add i32 %27, %26
  %mul55 = shl i32 %add54, 1
  %mul58 = shl i32 %27, 2
  %add59 = add i32 %mul58, 8
  %add60 = add i32 %add59, %mul55
  br label %if.end62

if.end62:                                         ; preds = %if.else43, %if.then22, %if.then
  %add41.sink = phi i32 [ %add41, %if.then22 ], [ %add60, %if.else43 ], [ %add19, %if.then ]
  %num_tids42 = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 6
  %28 = ptrtoint ptr %num_tids42 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add41.sink, ptr %num_tids42, align 4
  %num_offload_peers = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 3
  %29 = ptrtoint ptr %num_offload_peers to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %num_offload_peers, align 4
  %num_offload_reorder_buffs = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 4
  %30 = ptrtoint ptr %num_offload_reorder_buffs to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %num_offload_reorder_buffs, align 4
  %num_peer_keys = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 5
  %31 = ptrtoint ptr %num_peer_keys to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %num_peer_keys, align 4
  %ast_skid_limit = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 7
  %32 = ptrtoint ptr %ast_skid_limit to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 16, ptr %ast_skid_limit, align 4
  %num_rf_chains = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 32, i32 2
  %33 = ptrtoint ptr %num_rf_chains to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_rf_chains, align 8
  %notmask = shl nsw i32 -1, %34
  %sub = xor i32 %notmask, -1
  %tx_chain_mask = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 8
  %35 = ptrtoint ptr %tx_chain_mask to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub, ptr %tx_chain_mask, align 4
  %36 = load i32, ptr %num_rf_chains, align 8
  %notmask141 = shl nsw i32 -1, %36
  %sub66 = xor i32 %notmask141, -1
  %rx_chain_mask = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 9
  %37 = ptrtoint ptr %rx_chain_mask to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub66, ptr %rx_chain_mask, align 4
  %rx_timeout_pri = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 10
  %38 = ptrtoint ptr %rx_timeout_pri to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 100, ptr %rx_timeout_pri, align 4
  %arrayidx68 = getelementptr %struct.target_resource_config, ptr %config, i32 0, i32 10, i32 1
  %39 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 100, ptr %arrayidx68, align 4
  %arrayidx70 = getelementptr %struct.target_resource_config, ptr %config, i32 0, i32 10, i32 2
  %40 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 100, ptr %arrayidx70, align 4
  %arrayidx72 = getelementptr %struct.target_resource_config, ptr %config, i32 0, i32 10, i32 3
  %41 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 40, ptr %arrayidx72, align 4
  %dev_flags = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 45
  %42 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %dev_flags, align 4
  %44 = lshr i32 %43, 3
  %.lobit = and i32 %44, 1
  %45 = xor i32 %.lobit, 1
  %46 = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 11
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %45, ptr %46, align 4
  %scan_max_pending_req = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 12
  %48 = ptrtoint ptr %scan_max_pending_req to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 4, ptr %scan_max_pending_req, align 4
  %bmiss_offload_max_vdev = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 13
  %49 = ptrtoint ptr %bmiss_offload_max_vdev to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %bmiss_offload_max_vdev, align 4
  %roam_offload_max_vdev = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 14
  %50 = ptrtoint ptr %roam_offload_max_vdev to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 3, ptr %roam_offload_max_vdev, align 4
  %roam_offload_max_ap_profiles = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 15
  %51 = ptrtoint ptr %roam_offload_max_ap_profiles to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 8, ptr %roam_offload_max_ap_profiles, align 4
  %num_mcast_groups = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 16
  %52 = ptrtoint ptr %num_mcast_groups to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 12, ptr %num_mcast_groups, align 4
  %num_mcast_table_elems = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 17
  %53 = ptrtoint ptr %num_mcast_table_elems to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 64, ptr %num_mcast_table_elems, align 4
  %mcast2ucast_mode = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 18
  %54 = ptrtoint ptr %mcast2ucast_mode to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %mcast2ucast_mode, align 4
  %tx_dbg_log_size = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 19
  %55 = ptrtoint ptr %tx_dbg_log_size to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1024, ptr %tx_dbg_log_size, align 4
  %num_wds_entries = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 20
  %56 = ptrtoint ptr %num_wds_entries to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 32, ptr %num_wds_entries, align 4
  %dma_burst_size = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 21
  %57 = ptrtoint ptr %dma_burst_size to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %dma_burst_size, align 4
  %rx_skip_defrag_timeout_dup_detection_check = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 23
  %58 = ptrtoint ptr %rx_skip_defrag_timeout_dup_detection_check to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %rx_skip_defrag_timeout_dup_detection_check, align 4
  %vow_config = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 24
  %59 = ptrtoint ptr %vow_config to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %vow_config, align 4
  %gtk_offload_max_vdev = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 25
  %60 = ptrtoint ptr %gtk_offload_max_vdev to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 3, ptr %gtk_offload_max_vdev, align 4
  %num_msdu_desc = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 26
  %61 = ptrtoint ptr %num_msdu_desc to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2500, ptr %num_msdu_desc, align 4
  %62 = ptrtoint ptr %num_radios to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_radios, align 64
  %mul78 = shl i32 %63, 4
  %beacon_tx_offload_max_vdev = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 41
  %64 = ptrtoint ptr %beacon_tx_offload_max_vdev to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %mul78, ptr %beacon_tx_offload_max_vdev, align 4
  %rx_batchmode = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 34
  %65 = ptrtoint ptr %rx_batchmode to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %rx_batchmode, align 4
  %peer_map_unmap_v2_support = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 56
  %66 = ptrtoint ptr %peer_map_unmap_v2_support to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %peer_map_unmap_v2_support, align 4
  %67 = load i32, ptr %num_radios, align 64
  %twt_ap_pdev_count = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 58
  %68 = ptrtoint ptr %twt_ap_pdev_count to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %twt_ap_pdev_count, align 4
  %twt_ap_sta_count = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 59
  %69 = ptrtoint ptr %twt_ap_sta_count to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1000, ptr %twt_ap_sta_count, align 4
  %flag1 = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 36
  %70 = ptrtoint ptr %flag1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flag1, align 4
  %or = or i32 %71, 32
  store i32 %or, ptr %flag1, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath11k_hw_mac_id_to_pdev_id_ipq8074(ptr nocapture noundef readnone %hw, i32 noundef returned %mac_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %mac_id
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath11k_hw_mac_id_to_srng_id_ipq8074(ptr nocapture noundef readnone %hw, i32 noundef %mac_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ath11k_hw_ipq8074_tx_mesh_enable(ptr nocapture noundef readnone %ab, ptr nocapture noundef %tcl_cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info2 = getelementptr inbounds %struct.hal_tcl_data_cmd, ptr %tcl_cmd, i32 0, i32 3
  %0 = ptrtoint ptr %info2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info2, align 1
  %or = or i32 %1, 1048576
  store i32 %or, ptr %info2, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ath11k_hw_ipq8074_rx_desc_get_first_msdu(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info2 = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 1, i32 6
  %0 = ptrtoint ptr %info2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info2, align 1
  %2 = and i32 %1, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ath11k_hw_ipq8074_rx_desc_get_last_msdu(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info2 = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 1, i32 6
  %0 = ptrtoint ptr %info2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info2, align 1
  %2 = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_ipq8074_rx_desc_get_l3_pad_bytes(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info2 = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 1, i32 6
  %0 = ptrtoint ptr %info2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info2, align 1
  %2 = trunc i32 %1 to i8
  %3 = lshr i8 %2, 2
  %conv = and i8 %3, 3
  ret i8 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ath11k_hw_ipq8074_rx_desc_get_hdr_status(ptr noundef readnone %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdr_status = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 14
  ret ptr %hdr_status
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ath11k_hw_ipq8074_rx_desc_encrypt_valid(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info1, align 1
  %2 = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath11k_hw_ipq8074_rx_desc_get_encrypt_type(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info2 = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 8, i32 5
  %0 = ptrtoint ptr %info2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info2, align 1
  %2 = lshr i32 %1, 26
  %and = and i32 %2, 15
  ret i32 %and
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_ipq8074_rx_desc_get_decap_type(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info2 = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %info2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info2, align 1
  %2 = lshr i32 %1, 16
  %3 = trunc i32 %2 to i8
  %conv = and i8 %3, 3
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_ipq8074_rx_desc_get_mesh_ctl(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info2 = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %info2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info2, align 1
  %2 = lshr i32 %1, 14
  %3 = trunc i32 %2 to i8
  %conv = and i8 %3, 1
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ath11k_hw_ipq8074_rx_desc_get_mpdu_seq_ctl_vld(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info1, align 1
  %2 = and i32 %1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ath11k_hw_ipq8074_rx_desc_get_mpdu_fc_valid(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info1, align 1
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ath11k_hw_ipq8074_rx_desc_get_mpdu_start_seq_no(ptr nocapture noundef readonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info1, align 1
  %2 = and i32 %1, 61695
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr exact i32 %3, 20
  %conv = trunc i32 %shr to i16
  ret i16 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ath11k_hw_ipq8074_rx_desc_get_msdu_len(ptr nocapture noundef readonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info1, align 1
  %2 = and i32 %1, -12648448
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %conv = trunc i32 %3 to i16
  ret i16 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_ipq8074_rx_desc_get_msdu_sgi(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info3 = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 5, i32 6
  %0 = ptrtoint ptr %info3 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info3, align 1
  %2 = lshr i32 %1, 21
  %3 = trunc i32 %2 to i8
  %conv = and i8 %3, 3
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_ipq8074_rx_desc_get_msdu_rate_mcs(ptr nocapture noundef readonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info3 = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 5, i32 6
  %0 = ptrtoint ptr %info3 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info3, align 1
  %2 = and i32 %1, 8390400
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr exact i32 %3, 15
  %conv = trunc i32 %shr to i8
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_ipq8074_rx_desc_get_msdu_rx_bw(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info3 = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 5, i32 6
  %0 = ptrtoint ptr %info3 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info3, align 1
  %2 = lshr i32 %1, 11
  %3 = trunc i32 %2 to i8
  %conv = and i8 %3, 3
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath11k_hw_ipq8074_rx_desc_get_msdu_freq(ptr nocapture noundef readonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_meta_data = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %phy_meta_data to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %phy_meta_data, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_ipq8074_rx_desc_get_msdu_pkt_type(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info3 = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 5, i32 6
  %0 = ptrtoint ptr %info3 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info3, align 1
  %2 = lshr i32 %1, 16
  %3 = trunc i32 %2 to i8
  %conv = and i8 %3, 15
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_ipq8074_rx_desc_get_msdu_nss(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info3 = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 5, i32 6
  %0 = ptrtoint ptr %info3 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info3, align 1
  %conv = trunc i32 %1 to i8
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_ipq8074_rx_desc_get_mpdu_tid(ptr nocapture noundef readonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info2 = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 8, i32 5
  %0 = ptrtoint ptr %info2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info2, align 1
  %2 = and i32 %1, 12583680
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr exact i32 %3, 14
  %conv = trunc i32 %shr to i8
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ath11k_hw_ipq8074_rx_desc_get_mpdu_peer_id(ptr nocapture noundef readonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_peer_id = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 8, i32 3
  %0 = ptrtoint ptr %sw_peer_id to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %sw_peer_id, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  ret i16 %2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ath11k_hw_ipq8074_rx_desc_copy_attn_end(ptr nocapture noundef writeonly %fdesc, ptr nocapture noundef readonly %ldesc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msdu_end = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %fdesc, i32 0, i32 1
  %msdu_end2 = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %ldesc, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %msdu_end, ptr %msdu_end2, i32 68)
  %attention = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %fdesc, i32 0, i32 3
  %attention5 = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %ldesc, i32 0, i32 3
  %1 = call ptr @memcpy(ptr %attention, ptr %attention5, i32 12)
  %mpdu_end = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %fdesc, i32 0, i32 10
  %mpdu_end8 = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %ldesc, i32 0, i32 10
  %2 = ptrtoint ptr %mpdu_end8 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %mpdu_end8, align 1
  %4 = ptrtoint ptr %mpdu_end to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %3, ptr %mpdu_end, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath11k_hw_ipq8074_rx_desc_get_mpdu_start_tag(ptr nocapture noundef readonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mpdu_start_tag = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 7
  %0 = ptrtoint ptr %mpdu_start_tag to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %mpdu_start_tag, align 1
  %2 = and i32 %1, -33357824
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr exact i32 %3, 1
  ret i32 %shr
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath11k_hw_ipq8074_rx_desc_get_mpdu_ppdu_id(ptr nocapture noundef readonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_ppdu_id = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %phy_ppdu_id to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %phy_ppdu_id, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_hw_ipq8074_rx_desc_set_msdu_len(ptr nocapture noundef %desc, i16 noundef zeroext %len) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info1, align 1
  %2 = and i32 %1, 12648447
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = and i16 %len, 16383
  %and15 = zext i16 %4 to i32
  %or = or i32 %3, %and15
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %info1 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %info1, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ath11k_hw_ipq8074_rx_desc_get_attention(ptr noundef readnone %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attention = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 3
  ret ptr %attention
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ath11k_hw_ipq8074_rx_desc_get_msdu_payload(ptr noundef readnone %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msdu_payload = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 15
  ret ptr %msdu_payload
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_hw_ipq8074_reo_setup(ptr noundef %ab) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 %3(ptr noundef %ab, i32 noundef 10715136) #8
  %and = and i32 %call.i, -58720269
  %or46 = or i32 %and, 12
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i, align 4
  tail call void %7(ptr noundef %ab, i32 noundef 10715136, i32 noundef %or46) #8
  %regs = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 8
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %hal_reo1_aging_thresh_ix_0 = getelementptr inbounds %struct.ath11k_hw_regs, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %hal_reo1_aging_thresh_ix_0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hal_reo1_aging_thresh_ix_0, align 4
  %add48 = add i32 %11, 10715136
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %write32.i189 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write32.i189 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i189, align 4
  tail call void %15(ptr noundef %ab, i32 noundef %add48, i32 noundef 40000) #8
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %hal_reo1_aging_thresh_ix_1 = getelementptr inbounds %struct.ath11k_hw_regs, ptr %17, i32 0, i32 26
  %18 = ptrtoint ptr %hal_reo1_aging_thresh_ix_1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hal_reo1_aging_thresh_ix_1, align 4
  %add51 = add i32 %19, 10715136
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %write32.i191 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write32.i191 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i191, align 4
  tail call void %23(ptr noundef %ab, i32 noundef %add51, i32 noundef 40000) #8
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %hal_reo1_aging_thresh_ix_2 = getelementptr inbounds %struct.ath11k_hw_regs, ptr %25, i32 0, i32 27
  %26 = ptrtoint ptr %hal_reo1_aging_thresh_ix_2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hal_reo1_aging_thresh_ix_2, align 4
  %add54 = add i32 %27, 10715136
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %write32.i193 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %write32.i193 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i193, align 4
  tail call void %31(ptr noundef %ab, i32 noundef %add54, i32 noundef 40000) #8
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %hal_reo1_aging_thresh_ix_3 = getelementptr inbounds %struct.ath11k_hw_regs, ptr %33, i32 0, i32 28
  %34 = ptrtoint ptr %hal_reo1_aging_thresh_ix_3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hal_reo1_aging_thresh_ix_3, align 4
  %add57 = add i32 %35, 10715136
  %36 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i, align 4
  %write32.i195 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %write32.i195 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i195, align 4
  tail call void %39(ptr noundef %ab, i32 noundef %add57, i32 noundef 40000) #8
  %40 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i, align 4
  %write32.i197 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %write32.i197 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write32.i197, align 4
  tail call void %43(ptr noundef %ab, i32 noundef 10715140, i32 noundef -1927753472) #8
  %44 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i, align 4
  %write32.i199 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %write32.i199 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write32.i199, align 4
  tail call void %47(ptr noundef %ab, i32 noundef 10715144, i32 noundef -1927753472) #8
  %48 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i, align 4
  %write32.i201 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %write32.i201 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write32.i201, align 4
  tail call void %51(ptr noundef %ab, i32 noundef 10715148, i32 noundef -1927753472) #8
  %52 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i, align 4
  %write32.i203 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %write32.i203 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write32.i203, align 4
  tail call void %55(ptr noundef %ab, i32 noundef 10715152, i32 noundef -1927753472) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ath11k_hw_ipq8074_mpdu_info_get_peerid(ptr nocapture noundef readonly %tlv_data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info0 = getelementptr inbounds %struct.hal_rx_mpdu_info, ptr %tlv_data, i32 0, i32 1
  %0 = ptrtoint ptr %info0 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info0, align 1
  %2 = and i32 %1, 65535
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr exact i32 %3, 16
  %conv = trunc i32 %shr to i16
  ret i16 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ath11k_hw_ipq8074_rx_desc_mac_addr2_valid(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info1, align 1
  %2 = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ath11k_hw_ipq8074_rx_desc_mpdu_start_addr2(ptr noundef readnone %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %addr2 = getelementptr inbounds %struct.hal_rx_desc_ipq8074, ptr %desc, i32 0, i32 8, i32 16
  ret ptr %addr2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_ipq6018_mac_from_pdev_id(i32 noundef %pdev_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %pdev_idx to i8
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ath11k_init_wmi_config_qca6390(ptr nocapture noundef readonly %ab, ptr noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %config, align 4
  %num_peers = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 1
  %1 = ptrtoint ptr %num_peers to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16, ptr %num_peers, align 4
  %num_tids = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 6
  %2 = ptrtoint ptr %num_tids to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 32, ptr %num_tids, align 4
  %num_offload_peers = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 3
  %3 = ptrtoint ptr %num_offload_peers to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %num_offload_peers, align 4
  %num_offload_reorder_buffs = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 4
  %4 = ptrtoint ptr %num_offload_reorder_buffs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %num_offload_reorder_buffs, align 4
  %num_peer_keys = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 5
  %5 = ptrtoint ptr %num_peer_keys to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %num_peer_keys, align 4
  %ast_skid_limit = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 7
  %6 = ptrtoint ptr %ast_skid_limit to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %ast_skid_limit, align 4
  %num_rf_chains = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 32, i32 2
  %7 = ptrtoint ptr %num_rf_chains to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_rf_chains, align 8
  %notmask = shl nsw i32 -1, %8
  %sub = xor i32 %notmask, -1
  %tx_chain_mask = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 8
  %9 = ptrtoint ptr %tx_chain_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub, ptr %tx_chain_mask, align 4
  %10 = load i32, ptr %num_rf_chains, align 8
  %notmask52 = shl nsw i32 -1, %10
  %sub4 = xor i32 %notmask52, -1
  %rx_chain_mask = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 9
  %11 = ptrtoint ptr %rx_chain_mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub4, ptr %rx_chain_mask, align 4
  %rx_timeout_pri = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 10
  %12 = ptrtoint ptr %rx_timeout_pri to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 100, ptr %rx_timeout_pri, align 4
  %arrayidx6 = getelementptr %struct.target_resource_config, ptr %config, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 100, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr %struct.target_resource_config, ptr %config, i32 0, i32 10, i32 2
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 100, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr %struct.target_resource_config, ptr %config, i32 0, i32 10, i32 3
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 40, ptr %arrayidx10, align 4
  %rx_decap_mode = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 11
  %16 = ptrtoint ptr %rx_decap_mode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %rx_decap_mode, align 4
  %scan_max_pending_req = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 12
  %17 = ptrtoint ptr %scan_max_pending_req to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %scan_max_pending_req, align 4
  %bmiss_offload_max_vdev = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 13
  %18 = ptrtoint ptr %bmiss_offload_max_vdev to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %bmiss_offload_max_vdev, align 4
  %roam_offload_max_vdev = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 14
  %19 = ptrtoint ptr %roam_offload_max_vdev to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %roam_offload_max_vdev, align 4
  %roam_offload_max_ap_profiles = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 15
  %20 = ptrtoint ptr %roam_offload_max_ap_profiles to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %roam_offload_max_ap_profiles, align 4
  %num_mcast_groups = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 16
  %21 = ptrtoint ptr %num_mcast_groups to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %num_mcast_groups, align 4
  %num_mcast_table_elems = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 17
  %22 = ptrtoint ptr %num_mcast_table_elems to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %num_mcast_table_elems, align 4
  %mcast2ucast_mode = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 18
  %23 = ptrtoint ptr %mcast2ucast_mode to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %mcast2ucast_mode, align 4
  %tx_dbg_log_size = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 19
  %24 = ptrtoint ptr %tx_dbg_log_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1024, ptr %tx_dbg_log_size, align 4
  %num_wds_entries = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 20
  %25 = ptrtoint ptr %num_wds_entries to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %num_wds_entries, align 4
  %dma_burst_size = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 21
  %26 = ptrtoint ptr %dma_burst_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %dma_burst_size, align 4
  %rx_skip_defrag_timeout_dup_detection_check = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 23
  %27 = ptrtoint ptr %rx_skip_defrag_timeout_dup_detection_check to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %rx_skip_defrag_timeout_dup_detection_check, align 4
  %vow_config = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 24
  %28 = ptrtoint ptr %vow_config to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %vow_config, align 4
  %gtk_offload_max_vdev = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 25
  %29 = ptrtoint ptr %gtk_offload_max_vdev to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %gtk_offload_max_vdev, align 4
  %num_msdu_desc = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 26
  %30 = ptrtoint ptr %num_msdu_desc to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1024, ptr %num_msdu_desc, align 4
  %beacon_tx_offload_max_vdev = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 41
  %rx_batchmode = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 34
  %31 = ptrtoint ptr %rx_batchmode to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %rx_batchmode, align 4
  %peer_map_unmap_v2_support = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 56
  %32 = ptrtoint ptr %peer_map_unmap_v2_support to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %peer_map_unmap_v2_support, align 4
  %use_pdev_id = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 55
  %33 = ptrtoint ptr %use_pdev_id to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %use_pdev_id, align 4
  %max_frag_entries = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 27
  %34 = ptrtoint ptr %max_frag_entries to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 10, ptr %max_frag_entries, align 4
  %num_tdls_vdevs = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 39
  %35 = ptrtoint ptr %num_tdls_vdevs to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %num_tdls_vdevs, align 4
  %num_tdls_conn_table_entries = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 40
  %36 = ptrtoint ptr %num_tdls_conn_table_entries to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8, ptr %num_tdls_conn_table_entries, align 4
  %37 = ptrtoint ptr %beacon_tx_offload_max_vdev to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %beacon_tx_offload_max_vdev, align 4
  %num_multicast_filter_entries = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 42
  %38 = ptrtoint ptr %num_multicast_filter_entries to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 32, ptr %num_multicast_filter_entries, align 4
  %num_wow_filters = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 43
  %39 = ptrtoint ptr %num_wow_filters to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 22, ptr %num_wow_filters, align 4
  %num_keep_alive_pattern = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 44
  %40 = ptrtoint ptr %num_keep_alive_pattern to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %num_keep_alive_pattern, align 4
  %flag1 = getelementptr inbounds %struct.target_resource_config, ptr %config, i32 0, i32 36
  %41 = ptrtoint ptr %flag1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flag1, align 4
  %or = or i32 %42, 32
  store i32 %or, ptr %flag1, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath11k_hw_mac_id_to_pdev_id_qca6390(ptr nocapture noundef readnone %hw, i32 noundef %mac_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath11k_hw_mac_id_to_srng_id_qca6390(ptr nocapture noundef readnone %hw, i32 noundef returned %mac_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %mac_id
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ath11k_hw_qcn9074_tx_mesh_enable(ptr nocapture noundef readnone %ab, ptr nocapture noundef %tcl_cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info3 = getelementptr inbounds %struct.hal_tcl_data_cmd, ptr %tcl_cmd, i32 0, i32 4
  %0 = ptrtoint ptr %info3 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info3, align 1
  %or = or i32 %1, 1073741824
  store i32 %or, ptr %info3, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ath11k_hw_qcn9074_rx_desc_get_first_msdu(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info4 = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 1, i32 13
  %0 = ptrtoint ptr %info4 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %info4, align 1
  %2 = and i16 %1, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool = icmp ne i16 %2, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ath11k_hw_qcn9074_rx_desc_get_last_msdu(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info4 = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 1, i32 13
  %0 = ptrtoint ptr %info4 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %info4, align 1
  %2 = and i16 %1, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool = icmp ne i16 %2, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_qcn9074_rx_desc_get_l3_pad_bytes(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info4 = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 1, i32 13
  %0 = ptrtoint ptr %info4 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %info4, align 1
  %2 = trunc i16 %1 to i8
  %3 = lshr i8 %2, 2
  %conv9 = and i8 %3, 3
  ret i8 %conv9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ath11k_hw_qcn9074_rx_desc_get_hdr_status(ptr noundef readnone %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdr_status = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 14
  ret ptr %hdr_status
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ath11k_hw_qcn9074_rx_desc_encrypt_valid(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info11 = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 8, i32 10
  %0 = ptrtoint ptr %info11 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info11, align 1
  %2 = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath11k_hw_qcn9074_rx_desc_get_encrypt_type(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info9 = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %info9 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info9, align 1
  %2 = lshr i32 %1, 26
  %and = and i32 %2, 15
  ret i32 %and
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_qcn9074_rx_desc_get_decap_type(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info2 = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %info2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info2, align 1
  %2 = lshr i32 %1, 16
  %3 = trunc i32 %2 to i8
  %conv = and i8 %3, 3
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_qcn9074_rx_desc_get_mesh_ctl(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info2 = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %info2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info2, align 1
  %2 = lshr i32 %1, 14
  %3 = trunc i32 %2 to i8
  %conv = and i8 %3, 1
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ath11k_hw_qcn9074_rx_desc_get_mpdu_seq_ctl_vld(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info11 = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 8, i32 10
  %0 = ptrtoint ptr %info11 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info11, align 1
  %2 = and i32 %1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ath11k_hw_qcn9074_rx_desc_get_mpdu_fc_valid(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info11 = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 8, i32 10
  %0 = ptrtoint ptr %info11 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info11, align 1
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ath11k_hw_qcn9074_rx_desc_get_mpdu_start_seq_no(ptr nocapture noundef readonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info11 = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 8, i32 10
  %0 = ptrtoint ptr %info11 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info11, align 1
  %2 = and i32 %1, 61695
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr exact i32 %3, 20
  %conv = trunc i32 %shr to i16
  ret i16 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ath11k_hw_qcn9074_rx_desc_get_msdu_len(ptr nocapture noundef readonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info1, align 1
  %2 = and i32 %1, -12648448
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %conv = trunc i32 %3 to i16
  ret i16 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_qcn9074_rx_desc_get_msdu_sgi(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info3 = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 5, i32 6
  %0 = ptrtoint ptr %info3 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info3, align 1
  %2 = lshr i32 %1, 21
  %3 = trunc i32 %2 to i8
  %conv = and i8 %3, 3
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_qcn9074_rx_desc_get_msdu_rate_mcs(ptr nocapture noundef readonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info3 = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 5, i32 6
  %0 = ptrtoint ptr %info3 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info3, align 1
  %2 = and i32 %1, 8390400
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr exact i32 %3, 15
  %conv = trunc i32 %shr to i8
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_qcn9074_rx_desc_get_msdu_rx_bw(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info3 = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 5, i32 6
  %0 = ptrtoint ptr %info3 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info3, align 1
  %2 = lshr i32 %1, 11
  %3 = trunc i32 %2 to i8
  %conv = and i8 %3, 3
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath11k_hw_qcn9074_rx_desc_get_msdu_freq(ptr nocapture noundef readonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_meta_data = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %phy_meta_data to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %phy_meta_data, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_qcn9074_rx_desc_get_msdu_pkt_type(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info3 = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 5, i32 6
  %0 = ptrtoint ptr %info3 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info3, align 1
  %2 = lshr i32 %1, 16
  %3 = trunc i32 %2 to i8
  %conv = and i8 %3, 15
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_qcn9074_rx_desc_get_msdu_nss(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info3 = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 5, i32 6
  %0 = ptrtoint ptr %info3 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info3, align 1
  %conv = trunc i32 %1 to i8
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_qcn9074_rx_desc_get_mpdu_tid(ptr nocapture noundef readonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info9 = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %info9 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info9, align 1
  %2 = and i32 %1, 8390400
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr exact i32 %3, 15
  %conv = trunc i32 %shr to i8
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ath11k_hw_qcn9074_rx_desc_get_mpdu_peer_id(ptr nocapture noundef readonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_peer_id = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 8, i32 9
  %0 = ptrtoint ptr %sw_peer_id to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %sw_peer_id, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  ret i16 %2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ath11k_hw_qcn9074_rx_desc_copy_attn_end(ptr nocapture noundef writeonly %fdesc, ptr nocapture noundef readonly %ldesc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msdu_end = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %fdesc, i32 0, i32 1
  %msdu_end2 = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %ldesc, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %msdu_end, ptr %msdu_end2, i32 68)
  %attention = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %fdesc, i32 0, i32 3
  %attention5 = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %ldesc, i32 0, i32 3
  %1 = call ptr @memcpy(ptr %attention, ptr %attention5, i32 12)
  %mpdu_end = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %fdesc, i32 0, i32 10
  %mpdu_end8 = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %ldesc, i32 0, i32 10
  %2 = ptrtoint ptr %mpdu_end8 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %mpdu_end8, align 1
  %4 = ptrtoint ptr %mpdu_end to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %3, ptr %mpdu_end, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath11k_hw_qcn9074_rx_desc_get_mpdu_start_tag(ptr nocapture noundef readonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mpdu_start_tag = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 7
  %0 = ptrtoint ptr %mpdu_start_tag to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %mpdu_start_tag, align 1
  %2 = and i32 %1, -33357824
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr exact i32 %3, 1
  ret i32 %shr
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath11k_hw_qcn9074_rx_desc_get_mpdu_ppdu_id(ptr nocapture noundef readonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_ppdu_id = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 8, i32 7
  %0 = ptrtoint ptr %phy_ppdu_id to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %phy_ppdu_id, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_hw_qcn9074_rx_desc_set_msdu_len(ptr nocapture noundef %desc, i16 noundef zeroext %len) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info1, align 1
  %2 = and i32 %1, 12648447
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = and i16 %len, 16383
  %and15 = zext i16 %4 to i32
  %or = or i32 %3, %and15
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %info1 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %info1, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ath11k_hw_qcn9074_rx_desc_get_attention(ptr noundef readnone %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attention = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 3
  ret ptr %attention
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ath11k_hw_qcn9074_rx_desc_get_msdu_payload(ptr noundef readnone %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msdu_payload = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 15
  ret ptr %msdu_payload
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ath11k_hw_ipq9074_rx_desc_mac_addr2_valid(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info11 = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 8, i32 10
  %0 = ptrtoint ptr %info11 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info11, align 1
  %2 = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ath11k_hw_ipq9074_rx_desc_mpdu_start_addr2(ptr noundef readnone %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %addr2 = getelementptr inbounds %struct.hal_rx_desc_qcn9074, ptr %desc, i32 0, i32 8, i32 16
  ret ptr %addr2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ath11k_hw_wcn6855_tx_mesh_enable(ptr nocapture noundef readnone %ab, ptr nocapture noundef %tcl_cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info3 = getelementptr inbounds %struct.hal_tcl_data_cmd, ptr %tcl_cmd, i32 0, i32 4
  %0 = ptrtoint ptr %info3 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info3, align 1
  %or = or i32 %1, 1073741824
  store i32 %or, ptr %info3, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ath11k_hw_wcn6855_rx_desc_get_first_msdu(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info2 = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 1, i32 12
  %0 = ptrtoint ptr %info2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info2, align 1
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ath11k_hw_wcn6855_rx_desc_get_last_msdu(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info2 = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 1, i32 12
  %0 = ptrtoint ptr %info2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info2, align 1
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_wcn6855_rx_desc_get_l3_pad_bytes(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info2 = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 1, i32 12
  %0 = ptrtoint ptr %info2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info2, align 1
  %2 = trunc i32 %1 to i8
  %3 = lshr i8 %2, 2
  %conv = and i8 %3, 3
  ret i8 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ath11k_hw_wcn6855_rx_desc_get_hdr_status(ptr noundef readnone %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdr_status = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 14
  ret ptr %hdr_status
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ath11k_hw_wcn6855_rx_desc_encrypt_valid(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 8, i32 10
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info1, align 1
  %2 = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath11k_hw_wcn6855_rx_desc_get_encrypt_type(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info2 = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %info2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info2, align 1
  %2 = lshr i32 %1, 26
  %and = and i32 %2, 15
  ret i32 %and
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_wcn6855_rx_desc_get_decap_type(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info2 = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %info2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info2, align 1
  %2 = lshr i32 %1, 16
  %3 = trunc i32 %2 to i8
  %conv = and i8 %3, 3
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_wcn6855_rx_desc_get_mesh_ctl(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info2 = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %info2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info2, align 1
  %2 = lshr i32 %1, 14
  %3 = trunc i32 %2 to i8
  %conv = and i8 %3, 1
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ath11k_hw_wcn6855_rx_desc_get_mpdu_seq_ctl_vld(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 8, i32 10
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info1, align 1
  %2 = and i32 %1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ath11k_hw_wcn6855_rx_desc_get_mpdu_fc_valid(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 8, i32 10
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info1, align 1
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ath11k_hw_wcn6855_rx_desc_get_mpdu_start_seq_no(ptr nocapture noundef readonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 8, i32 10
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info1, align 1
  %2 = and i32 %1, 61695
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr exact i32 %3, 20
  %conv = trunc i32 %shr to i16
  ret i16 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ath11k_hw_wcn6855_rx_desc_get_msdu_len(ptr nocapture noundef readonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info1, align 1
  %2 = and i32 %1, -12648448
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %conv = trunc i32 %3 to i16
  ret i16 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_wcn6855_rx_desc_get_msdu_sgi(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info3 = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 5, i32 6
  %0 = ptrtoint ptr %info3 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info3, align 1
  %2 = lshr i32 %1, 21
  %3 = trunc i32 %2 to i8
  %conv = and i8 %3, 3
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_wcn6855_rx_desc_get_msdu_rate_mcs(ptr nocapture noundef readonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info3 = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 5, i32 6
  %0 = ptrtoint ptr %info3 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info3, align 1
  %2 = and i32 %1, 8390400
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr exact i32 %3, 15
  %conv = trunc i32 %shr to i8
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_wcn6855_rx_desc_get_msdu_rx_bw(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info3 = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 5, i32 6
  %0 = ptrtoint ptr %info3 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info3, align 1
  %2 = lshr i32 %1, 11
  %3 = trunc i32 %2 to i8
  %conv = and i8 %3, 3
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath11k_hw_wcn6855_rx_desc_get_msdu_freq(ptr nocapture noundef readonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_meta_data = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %phy_meta_data to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %phy_meta_data, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_wcn6855_rx_desc_get_msdu_pkt_type(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info3 = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 5, i32 6
  %0 = ptrtoint ptr %info3 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info3, align 1
  %2 = lshr i32 %1, 16
  %3 = trunc i32 %2 to i8
  %conv = and i8 %3, 15
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_wcn6855_rx_desc_get_msdu_nss(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info3 = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 5, i32 6
  %0 = ptrtoint ptr %info3 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info3, align 1
  %conv = trunc i32 %1 to i8
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath11k_hw_wcn6855_rx_desc_get_mpdu_tid(ptr nocapture noundef readonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info2 = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %info2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info2, align 1
  %2 = and i32 %1, 8390400
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr exact i32 %3, 15
  %conv = trunc i32 %shr to i8
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ath11k_hw_wcn6855_rx_desc_get_mpdu_peer_id(ptr nocapture noundef readonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_peer_id = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 8, i32 9
  %0 = ptrtoint ptr %sw_peer_id to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %sw_peer_id, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  ret i16 %2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ath11k_hw_wcn6855_rx_desc_copy_attn_end(ptr nocapture noundef writeonly %fdesc, ptr nocapture noundef readonly %ldesc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msdu_end = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %fdesc, i32 0, i32 1
  %msdu_end2 = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %ldesc, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %msdu_end, ptr %msdu_end2, i32 76)
  %attention = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %fdesc, i32 0, i32 3
  %attention5 = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %ldesc, i32 0, i32 3
  %1 = call ptr @memcpy(ptr %attention, ptr %attention5, i32 12)
  %mpdu_end = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %fdesc, i32 0, i32 10
  %mpdu_end8 = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %ldesc, i32 0, i32 10
  %2 = ptrtoint ptr %mpdu_end8 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %mpdu_end8, align 1
  %4 = ptrtoint ptr %mpdu_end to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %3, ptr %mpdu_end, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath11k_hw_wcn6855_rx_desc_get_mpdu_start_tag(ptr nocapture noundef readonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mpdu_start_tag = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 7
  %0 = ptrtoint ptr %mpdu_start_tag to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %mpdu_start_tag, align 1
  %2 = and i32 %1, -33357824
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr exact i32 %3, 1
  ret i32 %shr
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath11k_hw_wcn6855_rx_desc_get_mpdu_ppdu_id(ptr nocapture noundef readonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_ppdu_id = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 8, i32 7
  %0 = ptrtoint ptr %phy_ppdu_id to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %phy_ppdu_id, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_hw_wcn6855_rx_desc_set_msdu_len(ptr nocapture noundef %desc, i16 noundef zeroext %len) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info1, align 1
  %2 = and i32 %1, 12648447
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = and i16 %len, 16383
  %and15 = zext i16 %4 to i32
  %or = or i32 %3, %and15
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %info1 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %info1, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ath11k_hw_wcn6855_rx_desc_get_attention(ptr noundef readnone %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attention = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 3
  ret ptr %attention
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ath11k_hw_wcn6855_rx_desc_get_msdu_payload(ptr noundef readnone %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msdu_payload = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 15
  ret ptr %msdu_payload
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_hw_wcn6855_reo_setup(ptr noundef %ab) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 %3(ptr noundef %ab, i32 noundef 10715136) #8
  %or29 = or i32 %call.i, 12
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.ath11k_hif_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i, align 4
  tail call void %7(ptr noundef %ab, i32 noundef 10715136, i32 noundef %or29) #8
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call.i92 = tail call i32 %11(ptr noundef %ab, i32 noundef 10716720) #8
  %and = and i32 %call.i92, -1966081
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %write32.i94 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write32.i94 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i94, align 4
  tail call void %15(ptr noundef %ab, i32 noundef 10716720, i32 noundef %and) #8
  %regs = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 8
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %hal_reo1_aging_thresh_ix_0 = getelementptr inbounds %struct.ath11k_hw_regs, ptr %17, i32 0, i32 25
  %18 = ptrtoint ptr %hal_reo1_aging_thresh_ix_0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hal_reo1_aging_thresh_ix_0, align 4
  %add51 = add i32 %19, 10715136
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %write32.i96 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write32.i96 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i96, align 4
  tail call void %23(ptr noundef %ab, i32 noundef %add51, i32 noundef 40000) #8
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %hal_reo1_aging_thresh_ix_1 = getelementptr inbounds %struct.ath11k_hw_regs, ptr %25, i32 0, i32 26
  %26 = ptrtoint ptr %hal_reo1_aging_thresh_ix_1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hal_reo1_aging_thresh_ix_1, align 4
  %add54 = add i32 %27, 10715136
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %write32.i98 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %write32.i98 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i98, align 4
  tail call void %31(ptr noundef %ab, i32 noundef %add54, i32 noundef 40000) #8
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %hal_reo1_aging_thresh_ix_2 = getelementptr inbounds %struct.ath11k_hw_regs, ptr %33, i32 0, i32 27
  %34 = ptrtoint ptr %hal_reo1_aging_thresh_ix_2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hal_reo1_aging_thresh_ix_2, align 4
  %add57 = add i32 %35, 10715136
  %36 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i, align 4
  %write32.i100 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %write32.i100 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i100, align 4
  tail call void %39(ptr noundef %ab, i32 noundef %add57, i32 noundef 40000) #8
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %hal_reo1_aging_thresh_ix_3 = getelementptr inbounds %struct.ath11k_hw_regs, ptr %41, i32 0, i32 28
  %42 = ptrtoint ptr %hal_reo1_aging_thresh_ix_3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hal_reo1_aging_thresh_ix_3, align 4
  %add60 = add i32 %43, 10715136
  %44 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i, align 4
  %write32.i102 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %write32.i102 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write32.i102, align 4
  tail call void %47(ptr noundef %ab, i32 noundef %add60, i32 noundef 40000) #8
  %48 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i, align 4
  %write32.i104 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %write32.i104 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write32.i104, align 4
  tail call void %51(ptr noundef %ab, i32 noundef 10715148, i32 noundef 1126253345) #8
  %52 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i, align 4
  %write32.i106 = getelementptr inbounds %struct.ath11k_hif_ops, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %write32.i106 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write32.i106, align 4
  tail call void %55(ptr noundef %ab, i32 noundef 10715152, i32 noundef 1126253345) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ath11k_hw_wcn6855_mpdu_info_get_peerid(ptr nocapture noundef readonly %tlv_data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info0 = getelementptr inbounds %struct.hal_rx_mpdu_info_wcn6855, ptr %tlv_data, i32 0, i32 1
  %0 = ptrtoint ptr %info0 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info0, align 1
  %2 = and i32 %1, -65536
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %conv = trunc i32 %3 to i16
  ret i16 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ath11k_hw_wcn6855_rx_desc_mac_addr2_valid(ptr nocapture noundef readonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 8, i32 10
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info1, align 1
  %2 = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ath11k_hw_wcn6855_rx_desc_mpdu_start_addr2(ptr noundef readnone %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %addr2 = getelementptr inbounds %struct.hal_rx_desc_wcn6855, ptr %desc, i32 0, i32 8, i32 16
  ret ptr %addr2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @ipq8074_ops, !1, !"ipq8074_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath11k/hw.c", i32 804, i32 28}
!2 = !{ptr @ipq6018_ops, !3, !"ipq6018_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath11k/hw.c", i32 842, i32 28}
!4 = !{ptr @qca6390_ops, !5, !"qca6390_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath11k/hw.c", i32 880, i32 28}
!6 = !{ptr @qcn9074_ops, !7, !"qcn9074_ops", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath11k/hw.c", i32 918, i32 28}
!8 = !{ptr @wcn6855_ops, !9, !"wcn6855_ops", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath11k/hw.c", i32 956, i32 28}
!10 = !{ptr @ath11k_hw_ring_mask_ipq8074, !11, !"ath11k_hw_ring_mask_ipq8074", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath11k/hw.c", i32 1021, i32 34}
!12 = !{ptr @ath11k_hw_ring_mask_qca6390, !13, !"ath11k_hw_ring_mask_qca6390", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath11k/hw.c", i32 1061, i32 34}
!14 = !{ptr @ath11k_target_ce_config_wlan_ipq8074, !15, !"ath11k_target_ce_config_wlan_ipq8074", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath11k/hw.c", i32 1097, i32 29}
!16 = !{ptr @ath11k_target_service_to_ce_map_wlan_ipq8074, !17, !"ath11k_target_service_to_ce_map_wlan_ipq8074", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath11k/hw.c", i32 1215, i32 30}
!18 = !{ptr @ath11k_target_service_to_ce_map_wlan_ipq6018, !19, !"ath11k_target_service_to_ce_map_wlan_ipq6018", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath11k/hw.c", i32 1327, i32 30}
!20 = !{ptr @ath11k_target_ce_config_wlan_qca6390, !21, !"ath11k_target_ce_config_wlan_qca6390", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath11k/hw.c", i32 1430, i32 29}
!22 = !{ptr @ath11k_target_service_to_ce_map_wlan_qca6390, !23, !"ath11k_target_service_to_ce_map_wlan_qca6390", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath11k/hw.c", i32 1527, i32 30}
!24 = !{ptr @ath11k_target_ce_config_wlan_qcn9074, !25, !"ath11k_target_ce_config_wlan_qcn9074", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath11k/hw.c", i32 1609, i32 29}
!26 = !{ptr @ath11k_target_service_to_ce_map_wlan_qcn9074, !27, !"ath11k_target_service_to_ce_map_wlan_qcn9074", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath11k/hw.c", i32 1706, i32 30}
!28 = !{ptr @ath11k_hw_ring_mask_qcn9074, !29, !"ath11k_hw_ring_mask_qcn9074", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath11k/hw.c", i32 1802, i32 34}
!30 = !{ptr @ipq8074_regs, !31, !"ipq8074_regs", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath11k/hw.c", i32 1843, i32 29}
!32 = !{ptr @qca6390_regs, !33, !"qca6390_regs", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath11k/hw.c", i32 1914, i32 29}
!34 = !{ptr @qcn9074_regs, !35, !"qcn9074_regs", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath11k/hw.c", i32 1985, i32 29}
!36 = !{ptr @wcn6855_regs, !37, !"wcn6855_regs", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath11k/hw.c", i32 2056, i32 29}
!38 = !{ptr @ath11k_hw_hal_params_ipq8074, !39, !"ath11k_hw_hal_params_ipq8074", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath11k/hw.c", i32 2127, i32 35}
!40 = !{ptr @ath11k_hw_hal_params_qca6390, !41, !"ath11k_hw_hal_params_qca6390", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath11k/hw.c", i32 2131, i32 35}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
