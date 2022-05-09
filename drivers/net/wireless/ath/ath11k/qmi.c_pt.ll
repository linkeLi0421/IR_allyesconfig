; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath11k/qmi.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath11k/qmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath11k_cold_boot_cal\22, \22a\22\09"
module asm "\09.weak\09__crc_ath11k_cold_boot_cal\09\09\09\09"
module asm "\09.long\09__crc_ath11k_cold_boot_cal\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath11k_cold_boot_cal:\09\09\09\09\09"
module asm "\09.asciz \09\22ath11k_cold_boot_cal\22\09\09\09\09\09"
module asm "__kstrtabns_ath11k_cold_boot_cal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath11k_qmi_deinit_service\22, \22a\22\09"
module asm "\09.weak\09__crc_ath11k_qmi_deinit_service\09\09\09\09"
module asm "\09.long\09__crc_ath11k_qmi_deinit_service\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath11k_qmi_deinit_service:\09\09\09\09\09"
module asm "\09.asciz \09\22ath11k_qmi_deinit_service\22\09\09\09\09\09"
module asm "__kstrtabns_ath11k_qmi_deinit_service:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.qmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qmi_msg_handler = type { i32, i32, ptr, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.qmi_elem_info = type { i32, i32, i32, i32, i8, i32, ptr }
%struct.qmi_wlanfw_wlan_mode_req_msg_v01 = type { i32, i8, i8 }
%struct.qmi_wlanfw_wlan_mode_resp_msg_v01 = type { %struct.qmi_response_type_v01 }
%struct.qmi_response_type_v01 = type { i16, i16 }
%struct.qmi_txn = type { ptr, i16, %struct.mutex, %struct.completion, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ath11k_base = type { i32, ptr, ptr, %struct.ath11k_qmi, %struct.ath11k_wmi_base, %struct.completion, i32, i32, %struct.ath11k_htc, %struct.ath11k_dp, ptr, i32, %struct.anon.128, %struct.anon.129, %struct.ath11k_ce, %struct.timer_list, %struct.ath11k_hal, %struct.mutex, %struct.spinlock, [3 x %struct.ath11k_pdev], [3 x %struct.anon.150], i8, [3 x ptr], [3 x %struct.ath11k_hal_reg_capabilities_ext], i64, %struct.list_head, %struct.wait_queue_head, [6 x i8], i8, i32, [52 x i32], [11 x %struct.ath11k_ext_irq_grp], %struct.ath11k_targ_cap, [16 x i32], i8, i32, %struct.ath11k_hw_params, %struct.ath11k_bus_params, ptr, [3 x ptr], [3 x ptr], i32, ptr, ptr, %struct.ath11k_soc_dp_stats, i32, %struct.completion, ptr, %struct.work_struct, %struct.work_struct, [3 x i8], %struct.anon.154, i32, ptr, i32, %struct.work_struct, i8, %struct.mutex, %struct.timer_list, %struct.completion, %struct.anon.155, [0 x i8], [52 x i8] }
%struct.ath11k_qmi = type { ptr, %struct.qmi_handle, %struct.sockaddr_qrtr, %struct.work_struct, ptr, %struct.list_head, %struct.spinlock, %struct.ath11k_qmi_ce_cfg, [52 x %struct.target_mem_chunk], i32, i32, i8, i8, %struct.target_info, %struct.m3_mem_region, i32, %struct.wait_queue_head }
%struct.qmi_handle = type { ptr, %struct.mutex, %struct.sockaddr_qrtr, %struct.work_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.qmi_ops, %struct.idr, %struct.mutex, ptr }
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
%struct.anon.128 = type { i32, ptr }
%struct.anon.129 = type { %struct.completion }
%struct.ath11k_ce = type { [12 x %struct.ath11k_ce_pipe], %struct.spinlock, [12 x %struct.ath11k_hp_update_timer] }
%struct.ath11k_ce_pipe = type { ptr, i16, i32, i32, i32, ptr, ptr, %struct.tasklet_struct, ptr, ptr, ptr, i64 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.130, i32 }
%union.anon.130 = type { ptr }
%struct.ath11k_hal = type { [172 x %struct.hal_srng], ptr, %struct.anon.134, %struct.anon.135, i8, i8, [36 x i32], i32, [172 x %struct.lock_class_key] }
%struct.hal_srng = type { i8, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, [2 x i32], i64, i32, %union.anon.131 }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { i32, ptr, i32, ptr, i32, i16, i32 }
%struct.anon.134 = type { ptr, i32 }
%struct.anon.135 = type { ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ath11k_pdev = type { ptr, i32, %struct.ath11k_pdev_cap, [6 x i8] }
%struct.ath11k_pdev_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x %struct.ath11k_band_cap], i8, i8 }
%struct.ath11k_band_cap = type { i32, i32, i32, [2 x i32], i32, [3 x i32], %struct.ath11k_ppe_threshold, i16 }
%struct.ath11k_ppe_threshold = type { i32, i32, [8 x i32] }
%struct.anon.150 = type { i32, i32 }
%struct.ath11k_hal_reg_capabilities_ext = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ath11k_ext_irq_grp = type { ptr, [16 x i32], i32, i32, i64, i8, %struct.napi_struct, [64 x i8], %struct.net_device }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
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
%struct.ath11k_hw_params = type { ptr, i16, i8, i32, %struct.anon.151, ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i8, i32, i32, i32, i8, i32, i8, i8, i8, %struct.anon.153, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8 }
%struct.anon.151 = type { ptr, i32, i32 }
%struct.anon.153 = type { i8, i8, i8, i8, i16 }
%struct.ath11k_bus_params = type { i8, i8, i8, i8, i8 }
%struct.ath11k_soc_dp_stats = type { i32, i32, [14 x i32], [15 x i32], [4 x i32], %struct.ath11k_soc_dp_tx_err_stats, %struct.ath11k_dp_ring_bp_stats }
%struct.ath11k_soc_dp_tx_err_stats = type { [3 x i32], %struct.atomic_t }
%struct.ath11k_dp_ring_bp_stats = type { [18 x %struct.ath11k_bp_stats], [13 x [3 x %struct.ath11k_bp_stats]] }
%struct.ath11k_bp_stats = type { i16, i16, i32, i32 }
%struct.anon.154 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.155 = type { i32, i32, i32, i32, i32 }
%struct.qmi_wlanfw_wlan_ini_req_msg_v01 = type { i8, i8 }
%struct.qmi_wlanfw_wlan_ini_resp_msg_v01 = type { %struct.qmi_response_type_v01 }
%struct.qmi_wlanfw_wlan_cfg_resp_msg_v01 = type { %struct.qmi_response_type_v01 }
%struct.qmi_wlanfw_wlan_cfg_req_msg_v01 = type { i8, [17 x i8], i8, i32, [12 x %struct.qmi_wlanfw_ce_tgt_pipe_cfg_s_v01], i8, i32, [24 x %struct.qmi_wlanfw_ce_svc_pipe_cfg_s_v01], i8, i32, [24 x %struct.qmi_wlanfw_shadow_reg_cfg_s_v01], i8, i32, [36 x %struct.qmi_wlanfw_shadow_reg_v2_cfg_s_v01] }
%struct.qmi_wlanfw_ce_tgt_pipe_cfg_s_v01 = type { i32, i32, i32, i32, i32 }
%struct.qmi_wlanfw_ce_svc_pipe_cfg_s_v01 = type { i32, i32, i32 }
%struct.qmi_wlanfw_shadow_reg_cfg_s_v01 = type { i16, i16 }
%struct.qmi_wlanfw_shadow_reg_v2_cfg_s_v01 = type { i32 }
%struct.ce_pipe_config = type { i32, i32, i32, i32, i32, i32 }
%struct.service_to_pipe = type { i32, i32, i32 }
%struct.ath11k_qmi_driver_event = type { %struct.list_head, i32, ptr }
%struct.qmi_service = type { i32, i32, i32, i32, i32, ptr, %struct.list_head }
%struct.qmi_wlanfw_request_mem_ind_msg_v01 = type { i32, [52 x %struct.qmi_wlanfw_mem_seg_s_v01] }
%struct.qmi_wlanfw_mem_seg_s_v01 = type { i32, i32, i32, [2 x %struct.qmi_wlanfw_mem_cfg_s_v01] }
%struct.qmi_wlanfw_mem_cfg_s_v01 = type { i64, i32, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.qmi_wlanfw_ind_register_req_msg_v01 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8 }
%struct.qmi_wlanfw_host_cap_req_msg_v01 = type { i8, i32, i8, i32, i8, i32, [32 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }
%struct.qmi_wlanfw_host_cap_resp_msg_v01 = type { %struct.qmi_response_type_v01 }
%struct.qmi_wlanfw_respond_mem_resp_msg_v01 = type { %struct.qmi_response_type_v01 }
%struct.qmi_wlanfw_respond_mem_req_msg_v01 = type { i32, [52 x %struct.qmi_wlanfw_mem_seg_resp_s_v01] }
%struct.qmi_wlanfw_mem_seg_resp_s_v01 = type { i64, i32, i32, i8 }
%struct.qmi_wlanfw_cap_req_msg_v01 = type { i8 }
%struct.qmi_wlanfw_cap_resp_msg_v01 = type { %struct.qmi_response_type_v01, i8, %struct.qmi_wlanfw_rf_chip_info_s_v01, i8, %struct.qmi_wlanfw_rf_board_info_s_v01, i8, %struct.qmi_wlanfw_soc_info_s_v01, i8, %struct.qmi_wlanfw_fw_version_info_s_v01, i8, [129 x i8], i8, i8, i8, i32, i8, i32, i8, i32, i8, i32 }
%struct.qmi_wlanfw_rf_chip_info_s_v01 = type { i32, i32 }
%struct.qmi_wlanfw_rf_board_info_s_v01 = type { i32 }
%struct.qmi_wlanfw_soc_info_s_v01 = type { i32 }
%struct.qmi_wlanfw_fw_version_info_s_v01 = type { i32, [33 x i8] }
%struct.ath11k_board_data = type { ptr, ptr, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.qmi_wlanfw_m3_info_req_msg_v01 = type { i64, i32 }
%struct.qmi_wlanfw_m3_info_resp_msg_v01 = type { %struct.qmi_response_type_v01 }
%struct.qmi_wlanfw_bdf_download_resp_msg_v01 = type { %struct.qmi_response_type_v01 }
%struct.qmi_wlanfw_bdf_download_req_msg_v01 = type { i8, i8, i32, i8, i32, i8, i32, i8, i32, [6144 x i8], i8, i8, i8, i8 }

@ath11k_cold_boot_cal = dso_local global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__kstrtab_ath11k_cold_boot_cal = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath11k_cold_boot_cal = external dso_local constant [0 x i8], align 1
@__ksymtab_ath11k_cold_boot_cal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath11k_cold_boot_cal to i32), ptr @__kstrtab_ath11k_cold_boot_cal, ptr @__kstrtabns_ath11k_cold_boot_cal }, section "___ksymtab+ath11k_cold_boot_cal", align 4
@__param_str_cold_boot_cal = internal constant [21 x i8] c"ath11k.cold_boot_cal\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_cold_boot_cal = internal constant %struct.kernel_param { ptr @__param_str_cold_boot_cal, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @ath11k_cold_boot_cal } }, section "__param", align 4
@__UNIQUE_ID_cold_boot_caltype373 = internal constant [35 x i8] c"ath11k.parmtype=cold_boot_cal:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_cold_boot_cal374 = internal constant [109 x i8] c"ath11k.parm=cold_boot_cal:Decrease the channel switch time but increase the driver load time (Default: true)\00", section ".modinfo", align 1
@ath11k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qmi firmware stop\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"qmi failed to send wlan mode off: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qmi firmware start\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"qmi failed to send wlan fw ini:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qmi failed to send wlan cfg: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"qmi failed to send wlan fw mode: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ath11k_qmi_ops = internal constant { %struct.qmi_ops, [40 x i8] } { %struct.qmi_ops { ptr @ath11k_qmi_ops_new_server, ptr @ath11k_qmi_ops_del_server, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ath11k_qmi_msg_handlers = internal constant { [4 x %struct.qmi_msg_handler], [48 x i8] } { [4 x %struct.qmi_msg_handler] [%struct.qmi_msg_handler { i32 4, i32 53, ptr @qmi_wlanfw_request_mem_ind_msg_v01_ei, i32 2504, ptr @ath11k_qmi_msg_mem_request_cb }, %struct.qmi_msg_handler { i32 4, i32 55, ptr @qmi_wlanfw_mem_ready_ind_msg_v01_ei, i32 1, ptr @ath11k_qmi_msg_mem_ready_cb }, %struct.qmi_msg_handler { i32 4, i32 56, ptr @qmi_wlanfw_fw_ready_ind_msg_v01_ei, i32 1, ptr @ath11k_qmi_msg_fw_ready_cb }, %struct.qmi_msg_handler { i32 4, i32 33, ptr @qmi_wlanfw_cold_boot_cal_done_ind_msg_v01_ei, i32 1, ptr @ath11k_qmi_msg_cold_boot_cal_done_cb }], [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to initialize qmi handle: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ath11k_qmi_driver_event\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to allocate workqueue\0A\00", [34 x i8] zeroinitializer }, align 32
@ath11k_qmi_init_service.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ab->qmi.event_lock\00", [44 x i8] zeroinitializer }, align 32
@ath11k_qmi_init_service.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&ab->qmi.event_work)\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to add qmi lookup: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_ath11k_qmi_deinit_service = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath11k_qmi_deinit_service = external dso_local constant [0 x i8], align 1
@__ksymtab_ath11k_qmi_deinit_service = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath11k_qmi_deinit_service to i32), ptr @__kstrtab_ath11k_qmi_deinit_service, ptr @__kstrtabns_ath11k_qmi_deinit_service }, section "___ksymtab+ath11k_qmi_deinit_service", align 4
@__tracepoint_ath11k_log_dbg = external dso_local global %struct.tracepoint, align 4
@qmi_wlanfw_wlan_mode_resp_msg_v01_ei = internal global { [2 x %struct.qmi_elem_info], [40 x i8] } { [2 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 2, i32 0, ptr @qmi_response_type_v01_ei }, %struct.qmi_elem_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qmi wlan mode req mode %d\0A\00", [37 x i8] zeroinitializer }, align 32
@qmi_wlanfw_wlan_mode_req_msg_v01_ei = internal global { [4 x %struct.qmi_elem_info], [48 x i8] } { [4 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 1, i32 0, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 16, i32 4, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 16, i32 5, ptr null }, %struct.qmi_elem_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to send wlan mode request (mode %d): %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"WLFW service is dis-connected\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to wait wlan mode request (mode %d): %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"wlan mode request failed (mode: %d): %d %d\0A\00", [52 x i8] zeroinitializer }, align 32
@qmi_response_type_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@qmi_wlanfw_wlan_ini_resp_msg_v01_ei = internal global { [2 x %struct.qmi_elem_info], [40 x i8] } { [2 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 2, i32 0, ptr @qmi_response_type_v01_ei }, %struct.qmi_elem_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@qmi_wlanfw_wlan_ini_req_msg_v01_ei = internal global { [3 x %struct.qmi_elem_info], [44 x i8] } { [3 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 16, i32 0, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 16, i32 1, ptr null }, %struct.qmi_elem_info zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"qmi failed to send wlan ini request, err = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"qmi failed wlan ini request, err = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"qmi wlan ini request failed, result: %d, err: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"WIN\00", [28 x i8] zeroinitializer }, align 32
@qmi_wlanfw_wlan_cfg_resp_msg_v01_ei = internal global { [2 x %struct.qmi_elem_info], [40 x i8] } { [2 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 2, i32 0, ptr @qmi_response_type_v01_ei }, %struct.qmi_elem_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qmi wlan cfg req\0A\00", [46 x i8] zeroinitializer }, align 32
@qmi_wlanfw_wlan_cfg_req_msg_v01_ei = internal global { [15 x %struct.qmi_elem_info], [124 x i8] } { [15 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 16, i32 0, ptr null }, %struct.qmi_elem_info { i32 10, i32 17, i32 1, i32 0, i8 16, i32 1, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 17, i32 18, ptr null }, %struct.qmi_elem_info { i32 2, i32 1, i32 1, i32 0, i8 17, i32 20, ptr null }, %struct.qmi_elem_info { i32 9, i32 12, i32 20, i32 2, i8 17, i32 24, ptr @qmi_wlanfw_ce_tgt_pipe_cfg_s_v01_ei }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 18, i32 264, ptr null }, %struct.qmi_elem_info { i32 2, i32 1, i32 1, i32 0, i8 18, i32 268, ptr null }, %struct.qmi_elem_info { i32 9, i32 24, i32 12, i32 2, i8 18, i32 272, ptr @qmi_wlanfw_ce_svc_pipe_cfg_s_v01_ei }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 19, i32 560, ptr null }, %struct.qmi_elem_info { i32 2, i32 1, i32 1, i32 0, i8 19, i32 564, ptr null }, %struct.qmi_elem_info { i32 9, i32 24, i32 4, i32 2, i8 19, i32 568, ptr @qmi_wlanfw_shadow_reg_cfg_s_v01_ei }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 20, i32 664, ptr null }, %struct.qmi_elem_info { i32 2, i32 1, i32 1, i32 0, i8 20, i32 668, ptr null }, %struct.qmi_elem_info { i32 9, i32 36, i32 4, i32 2, i8 20, i32 672, ptr @qmi_wlanfw_shadow_reg_v2_cfg_s_v01_ei }, %struct.qmi_elem_info zeroinitializer], [124 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to send wlan config request: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to wait wlan config request: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wlan config request failed: %d %d\0A\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qmi_wlanfw_ce_tgt_pipe_cfg_s_v01_ei = internal global { [6 x %struct.qmi_elem_info], [56 x i8] } { [6 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 0, i32 0, ptr null }, %struct.qmi_elem_info { i32 8, i32 1, i32 4, i32 0, i8 0, i32 4, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 0, i32 8, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 0, i32 12, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 0, i32 16, ptr null }, %struct.qmi_elem_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@qmi_wlanfw_ce_svc_pipe_cfg_s_v01_ei = internal global { [4 x %struct.qmi_elem_info], [48 x i8] } { [4 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 0, i32 0, ptr null }, %struct.qmi_elem_info { i32 8, i32 1, i32 4, i32 0, i8 0, i32 4, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 0, i32 8, ptr null }, %struct.qmi_elem_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@qmi_wlanfw_shadow_reg_cfg_s_v01_ei = internal global { [3 x %struct.qmi_elem_info], [44 x i8] } { [3 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 4, i32 1, i32 2, i32 0, i8 0, i32 0, ptr null }, %struct.qmi_elem_info { i32 4, i32 1, i32 2, i32 0, i8 0, i32 2, ptr null }, %struct.qmi_elem_info zeroinitializer], [44 x i8] zeroinitializer }, align 32
@qmi_wlanfw_shadow_reg_v2_cfg_s_v01_ei = internal global { [2 x %struct.qmi_elem_info], [40 x i8] } { [2 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 0, i32 0, ptr null }, %struct.qmi_elem_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to connect to qmi remote service: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"qmi wifi fw qmi service connected\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qmi wifi fw del server\0A\00", [40 x i8] zeroinitializer }, align 32
@qmi_wlanfw_request_mem_ind_msg_v01_ei = internal global { [3 x %struct.qmi_elem_info], [44 x i8] } { [3 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 2, i32 1, i32 1, i32 0, i8 1, i32 0, ptr null }, %struct.qmi_elem_info { i32 9, i32 52, i32 48, i32 2, i8 1, i32 8, ptr @qmi_wlanfw_mem_seg_s_v01_ei }, %struct.qmi_elem_info zeroinitializer], [44 x i8] zeroinitializer }, align 32
@qmi_wlanfw_mem_ready_ind_msg_v01_ei = internal global { [1 x %struct.qmi_elem_info], [36 x i8] } zeroinitializer, align 32
@qmi_wlanfw_fw_ready_ind_msg_v01_ei = internal global { [1 x %struct.qmi_elem_info], [36 x i8] } zeroinitializer, align 32
@qmi_wlanfw_cold_boot_cal_done_ind_msg_v01_ei = internal global { [1 x %struct.qmi_elem_info], [36 x i8] } zeroinitializer, align 32
@qmi_wlanfw_mem_seg_s_v01_ei = internal global { [5 x %struct.qmi_elem_info], [52 x i8] } { [5 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 0, i32 0, ptr null }, %struct.qmi_elem_info { i32 8, i32 1, i32 4, i32 0, i8 0, i32 4, ptr null }, %struct.qmi_elem_info { i32 2, i32 1, i32 1, i32 0, i8 0, i32 8, ptr null }, %struct.qmi_elem_info { i32 9, i32 2, i32 16, i32 2, i8 0, i32 16, ptr @qmi_wlanfw_mem_cfg_s_v01_ei }, %struct.qmi_elem_info zeroinitializer], [52 x i8] zeroinitializer }, align 32
@qmi_wlanfw_mem_cfg_s_v01_ei = internal global { [4 x %struct.qmi_elem_info], [48 x i8] } { [4 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 6, i32 1, i32 8, i32 0, i8 0, i32 0, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 0, i32 8, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 0, i32 12, ptr null }, %struct.qmi_elem_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"qmi firmware request memory request\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid memory segment length: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qmi mem seg type %d size %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to assign qmi target memory: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to allocate qmi target memory: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qmi fail to get hremote_node\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"qmi fail to get reg from hremote\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qmi fail to assign memory of sz\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"qmi mem size is low to load caldata\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"qmi ignore invalid mem req type %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"qmi dma allocation failed (%d B type %u), will try later with small size\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"failed to allocate dma memory for qmi (%d B type %u)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"qmi firmware memory ready indication\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qmi firmware ready\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qmi cold boot calibration done\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid qmi event type: %d\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to send qmi firmware indication: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to send qmi host cap: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@qmi_wlanfw_ind_register_resp_msg_v01_ei = internal global { [4 x %struct.qmi_elem_info], [48 x i8] } { [4 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 2, i32 0, ptr @qmi_response_type_v01_ei }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 16, i32 4, ptr null }, %struct.qmi_elem_info { i32 6, i32 1, i32 8, i32 0, i8 16, i32 8, ptr null }, %struct.qmi_elem_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qmi indication register request\0A\00", [63 x i8] zeroinitializer }, align 32
@qmi_wlanfw_ind_register_req_msg_v01_ei = internal global { [25 x %struct.qmi_elem_info], [164 x i8] } { [25 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 16, i32 0, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 16, i32 1, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 17, i32 2, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 17, i32 3, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 18, i32 4, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 18, i32 5, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 19, i32 6, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 19, i32 7, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 20, i32 8, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 20, i32 9, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 21, i32 10, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 21, i32 12, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 22, i32 16, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 22, i32 17, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 23, i32 18, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 23, i32 19, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 24, i32 20, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 24, i32 21, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 25, i32 22, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 25, i32 24, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 26, i32 28, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 26, i32 29, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 27, i32 30, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 27, i32 31, ptr null }, %struct.qmi_elem_info zeroinitializer], [164 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to send indication register request: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register fw indication: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"firmware indication register request failed: %d %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qmi host cap request\0A\00", [42 x i8] zeroinitializer }, align 32
@qmi_wlanfw_host_cap_resp_msg_v01_ei = internal global { [2 x %struct.qmi_elem_info], [40 x i8] } { [2 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 2, i32 0, ptr @qmi_response_type_v01_ei }, %struct.qmi_elem_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@qmi_wlanfw_host_cap_req_msg_v01_ei = internal global { [28 x %struct.qmi_elem_info], [208 x i8] } { [28 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 16, i32 0, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 16, i32 4, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 17, i32 8, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 17, i32 12, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 18, i32 16, ptr null }, %struct.qmi_elem_info { i32 2, i32 1, i32 1, i32 0, i8 18, i32 20, ptr null }, %struct.qmi_elem_info { i32 5, i32 32, i32 4, i32 2, i8 18, i32 24, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 19, i32 152, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 19, i32 153, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 20, i32 154, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 20, i32 155, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 21, i32 156, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 21, i32 157, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 22, i32 158, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 22, i32 159, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 23, i32 160, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 23, i32 161, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 24, i32 162, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 24, i32 163, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 25, i32 164, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 25, i32 165, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 26, i32 166, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 26, i32 167, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 27, i32 168, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 27, i32 172, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 28, i32 176, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 28, i32 177, ptr null }, %struct.qmi_elem_info zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to send host capability request: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"host capability request failed: %d %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"qmi failed to respond fw mem req: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qmi delays mem_request %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qmi req mem_seg[%d] %pad %u %u\0A\00", [32 x i8] zeroinitializer }, align 32
@qmi_wlanfw_respond_mem_resp_msg_v01_ei = internal global { [2 x %struct.qmi_elem_info], [40 x i8] } { [2 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 2, i32 0, ptr @qmi_response_type_v01_ei }, %struct.qmi_elem_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"qmi respond memory request delayed %i\0A\00", [57 x i8] zeroinitializer }, align 32
@qmi_wlanfw_respond_mem_req_msg_v01_ei = internal global { [3 x %struct.qmi_elem_info], [44 x i8] } { [3 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 2, i32 1, i32 1, i32 0, i8 1, i32 0, ptr null }, %struct.qmi_elem_info { i32 9, i32 52, i32 24, i32 2, i8 1, i32 8, ptr @qmi_wlanfw_mem_seg_resp_s_v01_ei }, %struct.qmi_elem_info zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to respond qmi memory request: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to wait qmi memory request: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"qmi respond memory request failed: %d %d\0A\00", [54 x i8] zeroinitializer }, align 32
@qmi_wlanfw_mem_seg_resp_s_v01_ei = internal global { [5 x %struct.qmi_elem_info], [52 x i8] } { [5 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 6, i32 1, i32 8, i32 0, i8 0, i32 0, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 0, i32 8, ptr null }, %struct.qmi_elem_info { i32 8, i32 1, i32 4, i32 0, i8 0, i32 12, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 0, i32 16, ptr null }, %struct.qmi_elem_info zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to request qmi target capabilities: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to load board data file: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to send qmi m3 info req: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@qmi_wlanfw_cap_resp_msg_v01_ei = internal global { [22 x %struct.qmi_elem_info], [152 x i8] } { [22 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 2, i32 0, ptr @qmi_response_type_v01_ei }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 16, i32 4, ptr null }, %struct.qmi_elem_info { i32 9, i32 1, i32 8, i32 0, i8 16, i32 8, ptr @qmi_wlanfw_rf_chip_info_s_v01_ei }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 17, i32 16, ptr null }, %struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 17, i32 20, ptr @qmi_wlanfw_rf_board_info_s_v01_ei }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 18, i32 24, ptr null }, %struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 18, i32 28, ptr @qmi_wlanfw_soc_info_s_v01_ei }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 19, i32 32, ptr null }, %struct.qmi_elem_info { i32 9, i32 1, i32 40, i32 0, i8 19, i32 36, ptr @qmi_wlanfw_fw_version_info_s_v01_ei }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 20, i32 76, ptr null }, %struct.qmi_elem_info { i32 10, i32 129, i32 1, i32 0, i8 20, i32 77, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 21, i32 206, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 21, i32 207, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 22, i32 208, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 22, i32 212, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 23, i32 216, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 23, i32 220, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 24, i32 224, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 24, i32 228, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 25, i32 232, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 25, i32 236, ptr null }, %struct.qmi_elem_info zeroinitializer], [152 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qmi target cap request\0A\00", [40 x i8] zeroinitializer }, align 32
@qmi_wlanfw_cap_req_msg_v01_ei = internal global { [1 x %struct.qmi_elem_info], [36 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to send qmi cap request: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to wait qmi cap request: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qmi cap request failed: %d %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"qmi cal data supported from eeprom\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"chip_id 0x%x chip_family 0x%x board_id 0x%x soc_id 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"fw_version 0x%x fw_build_timestamp %s fw_build_id %s\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DT bdf variant name not set.\0A\00", [34 x i8] zeroinitializer }, align 32
@qmi_wlanfw_rf_chip_info_s_v01_ei = internal global { [3 x %struct.qmi_elem_info], [44 x i8] } { [3 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 0, i32 0, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 0, i32 4, ptr null }, %struct.qmi_elem_info zeroinitializer], [44 x i8] zeroinitializer }, align 32
@qmi_wlanfw_rf_board_info_s_v01_ei = internal global { [2 x %struct.qmi_elem_info], [40 x i8] } { [2 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 0, i32 0, ptr null }, %struct.qmi_elem_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@qmi_wlanfw_soc_info_s_v01_ei = internal global { [2 x %struct.qmi_elem_info], [40 x i8] } { [2 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 0, i32 0, ptr null }, %struct.qmi_elem_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@qmi_wlanfw_fw_version_info_s_v01_ei = internal global { [3 x %struct.qmi_elem_info], [44 x i8] } { [3 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 0, i32 0, ptr null }, %struct.qmi_elem_info { i32 10, i32 33, i32 1, i32 0, i8 0, i32 4, ptr null }, %struct.qmi_elem_info zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"qmi failed to fetch board file: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\7FELF\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qmi bdf_type %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qmi failed to load bdf file\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cal-%s-%s.bin\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"caldata.bin\00", [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"qmi failed to load CAL data file:%s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qmi failed to load caldata\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qmi caldata type: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"qmi BDF download sequence completed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qmi ioremap error for bdf_addr\0A\00", [32 x i8] zeroinitializer }, align 32
@qmi_wlanfw_bdf_download_resp_msg_v01_ei = internal global { [2 x %struct.qmi_elem_info], [40 x i8] } { [2 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 2, i32 0, ptr @qmi_response_type_v01_ei }, %struct.qmi_elem_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"qmi bdf download req fixed addr type %d\0A\00", [55 x i8] zeroinitializer }, align 32
@qmi_wlanfw_bdf_download_req_msg_v01_ei = internal global { [15 x %struct.qmi_elem_info], [124 x i8] } { [15 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 1, i32 0, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 16, i32 1, ptr null }, %struct.qmi_elem_info { i32 8, i32 1, i32 4, i32 0, i8 16, i32 4, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 17, i32 8, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 17, i32 12, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 18, i32 16, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 18, i32 20, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 19, i32 24, ptr null }, %struct.qmi_elem_info { i32 2, i32 1, i32 2, i32 0, i8 19, i32 28, ptr null }, %struct.qmi_elem_info { i32 3, i32 6144, i32 1, i32 2, i8 19, i32 32, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 20, i32 6176, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 20, i32 6177, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 21, i32 6178, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 21, i32 6179, ptr null }, %struct.qmi_elem_info zeroinitializer], [124 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to wait board file download request: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"board file download request failed: %d %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"qmi bdf download request remaining %i\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pci\00", [28 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to load m3 firmware: %d\00", [33 x i8] zeroinitializer }, align 32
@qmi_wlanfw_m3_info_resp_msg_v01_ei = internal global { [2 x %struct.qmi_elem_info], [40 x i8] } { [2 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 2, i32 0, ptr @qmi_response_type_v01_ei }, %struct.qmi_elem_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qmi m3 info req\0A\00", [47 x i8] zeroinitializer }, align 32
@qmi_wlanfw_m3_info_req_msg_v01_ei = internal global { [3 x %struct.qmi_elem_info], [44 x i8] } { [3 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 6, i32 1, i32 8, i32 0, i8 1, i32 0, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 2, i32 8, ptr null }, %struct.qmi_elem_info zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to send m3 information request: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to wait m3 information request: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"m3 info request failed: %d %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"m3.bin\00", [25 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to load %s: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to allocate memory for M3 with size %zu\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s/%s/%s\00", [23 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ath11k\00", [25 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Coldboot calibration wait started\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/ath11k/qmi.c\00", [58 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"coldboot calibration timed out\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Coldboot calibration done\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.105 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.106 = private unnamed_addr constant [21 x i8] c"ath11k_cold_boot_cal\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 19, i32 6 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2597, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2601, i32 19 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2611, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2616, i32 20 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2623, i32 19 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2629, i32 19 }
@___asan_gen_.127 = private unnamed_addr constant [15 x i8] c"ath11k_qmi_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2901, i32 29 }
@___asan_gen_.130 = private unnamed_addr constant [24 x i8] c"ath11k_qmi_msg_handlers\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2834, i32 37 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2990, i32 19 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2994, i32 37 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2997, i32 18 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 3002, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 3003, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 3009, i32 19 }
@___asan_gen_.157 = private unnamed_addr constant [37 x i8] c"qmi_wlanfw_wlan_mode_resp_msg_v01_ei\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1392, i32 29 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2425, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [36 x i8] c"qmi_wlanfw_wlan_mode_req_msg_v01_ei\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1357, i32 29 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2433, i32 19 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2441, i32 20 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2444, i32 19 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2450, i32 19 }
@___asan_gen_.178 = private unnamed_addr constant [36 x i8] c"qmi_wlanfw_wlan_ini_resp_msg_v01_ei\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1613, i32 29 }
@___asan_gen_.181 = private unnamed_addr constant [35 x i8] c"qmi_wlanfw_wlan_ini_req_msg_v01_ei\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1587, i32 29 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2571, i32 19 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2579, i32 19 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2584, i32 19 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2479, i32 29 }
@___asan_gen_.196 = private unnamed_addr constant [36 x i8] c"qmi_wlanfw_wlan_cfg_resp_msg_v01_ei\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1549, i32 29 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2520, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [35 x i8] c"qmi_wlanfw_wlan_cfg_req_msg_v01_ei\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1410, i32 29 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2528, i32 19 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2535, i32 19 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2540, i32 19 }
@___asan_gen_.214 = private unnamed_addr constant [36 x i8] c"qmi_wlanfw_ce_tgt_pipe_cfg_s_v01_ei\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1228, i32 29 }
@___asan_gen_.217 = private unnamed_addr constant [36 x i8] c"qmi_wlanfw_ce_svc_pipe_cfg_s_v01_ei\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1281, i32 29 }
@___asan_gen_.220 = private unnamed_addr constant [35 x i8] c"qmi_wlanfw_shadow_reg_cfg_s_v01_ei\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1316, i32 29 }
@___asan_gen_.223 = private unnamed_addr constant [38 x i8] c"qmi_wlanfw_shadow_reg_v2_cfg_s_v01_ei\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1340, i32 29 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2881, i32 19 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2885, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2897, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [38 x i8] c"qmi_wlanfw_request_mem_ind_msg_v01_ei\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 628, i32 29 }
@___asan_gen_.238 = private unnamed_addr constant [36 x i8] c"qmi_wlanfw_mem_ready_ind_msg_v01_ei\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1566, i32 29 }
@___asan_gen_.241 = private unnamed_addr constant [35 x i8] c"qmi_wlanfw_fw_ready_ind_msg_v01_ei\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1573, i32 29 }
@___asan_gen_.244 = private unnamed_addr constant [45 x i8] c"qmi_wlanfw_cold_boot_cal_done_ind_msg_v01_ei\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1580, i32 29 }
@___asan_gen_.247 = private unnamed_addr constant [28 x i8] c"qmi_wlanfw_mem_seg_s_v01_ei\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 586, i32 29 }
@___asan_gen_.250 = private unnamed_addr constant [28 x i8] c"qmi_wlanfw_mem_cfg_s_v01_ei\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 554, i32 29 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2760, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2764, i32 19 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2772, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2780, i32 20 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2787, i32 20 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1931, i32 50 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1933, i32 5 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1940, i32 5 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1946, i32 5 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1969, i32 21 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1993, i32 20 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1901, i32 5 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1910, i32 19 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2804, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2816, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2831, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2969, i32 20 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2692, i32 19 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2699, i32 19 }
@___asan_gen_.310 = private unnamed_addr constant [40 x i8] c"qmi_wlanfw_ind_register_resp_msg_v01_ei\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 518, i32 29 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1748, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [39 x i8] c"qmi_wlanfw_ind_register_req_msg_v01_ei\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 293, i32 29 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1756, i32 19 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1763, i32 19 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1768, i32 19 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1677, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant [36 x i8] c"qmi_wlanfw_host_cap_resp_msg_v01_ei\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 276, i32 29 }
@___asan_gen_.334 = private unnamed_addr constant [35 x i8] c"qmi_wlanfw_host_cap_req_msg_v01_ei\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 25, i32 29 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1690, i32 19 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1699, i32 19 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2713, i32 19 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1804, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1815, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant [39 x i8] c"qmi_wlanfw_respond_mem_resp_msg_v01_ei\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 722, i32 29 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1828, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant [38 x i8] c"qmi_wlanfw_respond_mem_req_msg_v01_ei\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 695, i32 29 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1837, i32 19 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1844, i32 19 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1855, i32 19 }
@___asan_gen_.370 = private unnamed_addr constant [33 x i8] c"qmi_wlanfw_mem_seg_resp_s_v01_ei\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 655, i32 29 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2727, i32 19 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2737, i32 19 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2743, i32 19 }
@___asan_gen_.382 = private unnamed_addr constant [31 x i8] c"qmi_wlanfw_cap_resp_msg_v01_ei\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 833, i32 29 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2019, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant [30 x i8] c"qmi_wlanfw_cap_req_msg_v01_ei\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 740, i32 29 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2027, i32 19 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2034, i32 19 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2039, i32 19 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2072, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2075, i32 18 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2079, i32 18 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2086, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant [33 x i8] c"qmi_wlanfw_rf_chip_info_s_v01_ei\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 748, i32 29 }
@___asan_gen_.415 = private unnamed_addr constant [34 x i8] c"qmi_wlanfw_rf_board_info_s_v01_ei\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 774, i32 29 }
@___asan_gen_.418 = private unnamed_addr constant [29 x i8] c"qmi_wlanfw_soc_info_s_v01_ei\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 791, i32 29 }
@___asan_gen_.421 = private unnamed_addr constant [36 x i8] c"qmi_wlanfw_fw_version_info_s_v01_ei\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 807, i32 29 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2226, i32 20 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2234, i32 48 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2239, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2245, i32 19 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2261, i32 40 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2267, i32 47 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2271, i32 9 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2282, i32 19 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2286, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2293, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2112, i32 20 }
@___asan_gen_.457 = private unnamed_addr constant [40 x i8] c"qmi_wlanfw_bdf_download_resp_msg_v01_ei\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1169, i32 29 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2160, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant [39 x i8] c"qmi_wlanfw_bdf_download_req_msg_v01_ei\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1034, i32 29 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2174, i32 20 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2180, i32 20 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2193, i32 4 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1049, i32 10 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1051, i32 10 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1054, i32 9 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2360, i32 19 }
@___asan_gen_.487 = private unnamed_addr constant [35 x i8] c"qmi_wlanfw_m3_info_resp_msg_v01_ei\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1211, i32 29 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2376, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant [34 x i8] c"qmi_wlanfw_m3_info_req_msg_v01_ei\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1187, i32 29 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2384, i32 19 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2391, i32 19 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2396, i32 19 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2308, i32 40 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2313, i32 18 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2321, i32 18 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1041, i32 25 }
@___asan_gen_.518 = private unnamed_addr constant [42 x i8] c"../drivers/net/wireless/ath/ath11k/core.h\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1041, i32 37 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2647, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2649, i32 12 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2653, i32 19 }
@___asan_gen_.529 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.530 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath11k/qmi.c\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2657, i32 2 }
@llvm.compiler.used = appending global [147 x ptr] [ptr @__UNIQUE_ID_cold_boot_cal374, ptr @__UNIQUE_ID_cold_boot_caltype373, ptr @__ksymtab_ath11k_cold_boot_cal, ptr @__ksymtab_ath11k_qmi_deinit_service, ptr @__param_cold_boot_cal, ptr @ath11k_cold_boot_cal, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ath11k_qmi_ops, ptr @ath11k_qmi_msg_handlers, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ath11k_qmi_init_service.__key, ptr @.str.9, ptr @ath11k_qmi_init_service.__key.10, ptr @.str.11, ptr @.str.12, ptr @qmi_wlanfw_wlan_mode_resp_msg_v01_ei, ptr @.str.13, ptr @qmi_wlanfw_wlan_mode_req_msg_v01_ei, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @qmi_wlanfw_wlan_ini_resp_msg_v01_ei, ptr @qmi_wlanfw_wlan_ini_req_msg_v01_ei, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @qmi_wlanfw_wlan_cfg_resp_msg_v01_ei, ptr @.str.22, ptr @qmi_wlanfw_wlan_cfg_req_msg_v01_ei, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @qmi_wlanfw_ce_tgt_pipe_cfg_s_v01_ei, ptr @qmi_wlanfw_ce_svc_pipe_cfg_s_v01_ei, ptr @qmi_wlanfw_shadow_reg_cfg_s_v01_ei, ptr @qmi_wlanfw_shadow_reg_v2_cfg_s_v01_ei, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @qmi_wlanfw_request_mem_ind_msg_v01_ei, ptr @qmi_wlanfw_mem_ready_ind_msg_v01_ei, ptr @qmi_wlanfw_fw_ready_ind_msg_v01_ei, ptr @qmi_wlanfw_cold_boot_cal_done_ind_msg_v01_ei, ptr @qmi_wlanfw_mem_seg_s_v01_ei, ptr @qmi_wlanfw_mem_cfg_s_v01_ei, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @qmi_wlanfw_ind_register_resp_msg_v01_ei, ptr @.str.48, ptr @qmi_wlanfw_ind_register_req_msg_v01_ei, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @qmi_wlanfw_host_cap_resp_msg_v01_ei, ptr @qmi_wlanfw_host_cap_req_msg_v01_ei, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @qmi_wlanfw_respond_mem_resp_msg_v01_ei, ptr @.str.58, ptr @qmi_wlanfw_respond_mem_req_msg_v01_ei, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @qmi_wlanfw_mem_seg_resp_s_v01_ei, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @qmi_wlanfw_cap_resp_msg_v01_ei, ptr @.str.65, ptr @qmi_wlanfw_cap_req_msg_v01_ei, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @qmi_wlanfw_rf_chip_info_s_v01_ei, ptr @qmi_wlanfw_rf_board_info_s_v01_ei, ptr @qmi_wlanfw_soc_info_s_v01_ei, ptr @qmi_wlanfw_fw_version_info_s_v01_ei, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @qmi_wlanfw_bdf_download_resp_msg_v01_ei, ptr @.str.84, ptr @qmi_wlanfw_bdf_download_req_msg_v01_ei, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @qmi_wlanfw_m3_info_resp_msg_v01_ei, ptr @.str.92, ptr @qmi_wlanfw_m3_info_req_msg_v01_ei, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104], section "llvm.metadata"
@0 = internal global [142 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_cold_boot_cal to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_qmi_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_qmi_msg_handlers to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_qmi_init_service.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath11k_qmi_init_service.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_wlan_mode_resp_msg_v01_ei to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_wlan_mode_req_msg_v01_ei to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_wlan_ini_resp_msg_v01_ei to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_wlan_ini_req_msg_v01_ei to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_wlan_cfg_resp_msg_v01_ei to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_wlan_cfg_req_msg_v01_ei to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_ce_tgt_pipe_cfg_s_v01_ei to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_ce_svc_pipe_cfg_s_v01_ei to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_shadow_reg_cfg_s_v01_ei to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_shadow_reg_v2_cfg_s_v01_ei to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_request_mem_ind_msg_v01_ei to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_mem_ready_ind_msg_v01_ei to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_fw_ready_ind_msg_v01_ei to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_cold_boot_cal_done_ind_msg_v01_ei to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_mem_seg_s_v01_ei to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_mem_cfg_s_v01_ei to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_ind_register_resp_msg_v01_ei to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_ind_register_req_msg_v01_ei to i32), i32 700, i32 864, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_host_cap_resp_msg_v01_ei to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_host_cap_req_msg_v01_ei to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_respond_mem_resp_msg_v01_ei to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_respond_mem_req_msg_v01_ei to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_mem_seg_resp_s_v01_ei to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_cap_resp_msg_v01_ei to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_cap_req_msg_v01_ei to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_rf_chip_info_s_v01_ei to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_rf_board_info_s_v01_ei to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_soc_info_s_v01_ei to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_fw_version_info_s_v01_ei to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_bdf_download_resp_msg_v01_ei to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_bdf_download_req_msg_v01_ei to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_m3_info_resp_msg_v01_ei to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_wlanfw_m3_info_req_msg_v01_ei to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_qmi_firmware_stop(ptr noundef %ab) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %0 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_firmware_stop, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !301

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 64, ptr noundef nonnull @.str) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %call1 = tail call fastcc i32 @ath11k_qmi_wlanfw_mode_send(ptr noundef %ab, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.1, i32 noundef %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath11k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath11k_qmi_wlanfw_mode_send(ptr noundef %ab, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.qmi_wlanfw_wlan_mode_req_msg_v01, align 8
  %resp = alloca %struct.qmi_wlanfw_wlan_mode_resp_msg_v01, align 4
  %txn = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #8
  %0 = getelementptr inbounds %struct.qmi_response_type_v01, ptr %resp, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn) #8
  %1 = call ptr @memset(ptr %txn, i32 255, i32 168)
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 16777216, ptr %req, align 8
  %3 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %resp, align 4
  store i32 %mode, ptr %req, align 8
  %handle = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 1
  %call = call i32 @qmi_txn_init(ptr noundef %handle, ptr noundef nonnull %txn, ptr noundef nonnull @qmi_wlanfw_wlan_mode_resp_msg_v01_ei, ptr noundef nonnull %resp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %4 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body.if.then3_crit_edge

do.body.if.then3_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_wlanfw_mode_send, %if.then3)) #8
          to label %do.end [label %if.then3], !srcloc !301

if.then3:                                         ; preds = %lor.lhs.false, %do.body.if.then3_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 64, ptr noundef nonnull @.str.13, i32 noundef %mode) #8
  br label %do.end

do.end:                                           ; preds = %if.then3, %lor.lhs.false
  %call7 = call i32 @qmi_send_request(ptr noundef %handle, ptr noundef null, ptr noundef nonnull %txn, i32 noundef 34, i32 noundef 11, ptr noundef nonnull @qmi_wlanfw_wlan_mode_req_msg_v01_ei, ptr noundef nonnull %req) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @qmi_txn_cancel(ptr noundef nonnull %txn) #8
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.14, i32 noundef %mode, i32 noundef %call7) #8
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %call12 = call i32 @qmi_txn_wait(ptr noundef nonnull %txn, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mode)
  %cmp15 = icmp eq i32 %mode, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -102, i32 %call12)
  %cmp16 = icmp eq i32 %call12, -102
  %or.cond = select i1 %cmp15, i1 %cmp16, i1 false
  br i1 %or.cond, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end18:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.16, i32 noundef %mode, i32 noundef %call12) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %5 = ptrtoint ptr %resp to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp21.not = icmp eq i16 %6, 0
  br i1 %cmp21.not, label %if.end19.cleanup_crit_edge, label %if.then23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %6 to i32
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %0, align 2
  %conv28 = zext i16 %8 to i32
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.17, i32 noundef %mode, i32 noundef %conv, i32 noundef %conv28) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end19.cleanup_crit_edge, %if.end18, %if.then17, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then17 ], [ %call, %entry.cleanup_crit_edge ], [ %call7, %if.then9 ], [ %call12, %if.end18 ], [ -22, %if.then23 ], [ %call12, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_qmi_firmware_start(ptr noundef %ab, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %txn.i = alloca %struct.qmi_txn, align 4
  %req.i = alloca %struct.qmi_wlanfw_wlan_ini_req_msg_v01, align 2
  %resp.i = alloca %struct.qmi_wlanfw_wlan_ini_resp_msg_v01, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %0 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_firmware_start, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !301

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 64, ptr noundef nonnull @.str.2) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %fw_wmi_diag_event = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 47
  %1 = ptrtoint ptr %fw_wmi_diag_event to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fw_wmi_diag_event, align 4, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %do.end.if.end6_crit_edge, label %if.then2

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn.i) #8
  %3 = call ptr @memset(ptr %txn.i, i32 255, i32 168)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %req.i) #8
  %4 = ptrtoint ptr %req.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 257, ptr %req.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp.i) #8
  %5 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %resp.i, align 4
  %handle.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 1
  %call.i = call i32 @qmi_txn_init(ptr noundef %handle.i, ptr noundef nonnull %txn.i, ptr noundef nonnull @qmi_wlanfw_wlan_ini_resp_msg_v01_ei, ptr noundef nonnull %resp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then2.if.then4_crit_edge, label %if.end.i

if.then2.if.then4_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end.i:                                         ; preds = %if.then2
  %call4.i = call i32 @qmi_send_request(ptr noundef %handle.i, ptr noundef null, ptr noundef nonnull %txn.i, i32 noundef 47, i32 noundef 4, ptr noundef nonnull @qmi_wlanfw_wlan_ini_req_msg_v01_ei, ptr noundef nonnull %req.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.18, i32 noundef %call4.i) #8
  call void @qmi_txn_cancel(ptr noundef nonnull %txn.i) #8
  br label %if.then4

if.end8.i:                                        ; preds = %if.end.i
  %call10.i = call i32 @qmi_txn_wait(ptr noundef nonnull %txn.i, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.then13.i, label %if.end14.i

if.then13.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.19, i32 noundef %call10.i) #8
  br label %if.then4

if.end14.i:                                       ; preds = %if.end8.i
  %6 = ptrtoint ptr %resp.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp17.not.i = icmp eq i16 %7, 0
  br i1 %cmp17.not.i, label %ath11k_qmi_wlanfw_wlan_ini_send.exit, label %if.then19.i

if.then19.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv16.i = zext i16 %7 to i32
  %error.i = getelementptr inbounds %struct.qmi_response_type_v01, ptr %resp.i, i32 0, i32 1
  %8 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %error.i, align 2
  %conv24.i = zext i16 %9 to i32
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.20, i32 noundef %conv16.i, i32 noundef %conv24.i) #8
  br label %if.then4

ath11k_qmi_wlanfw_wlan_ini_send.exit:             ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i) #8
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn.i) #8
  br label %if.end6

if.then4:                                         ; preds = %if.then19.i, %if.then13.i, %if.then7.i, %if.then2.if.then4_crit_edge
  %ret.0.i.ph = phi i32 [ -22, %if.then19.i ], [ %call10.i, %if.then13.i ], [ %call4.i, %if.then7.i ], [ %call.i, %if.then2.if.then4_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i) #8
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn.i) #8
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.3, i32 noundef %ret.0.i.ph) #8
  br label %cleanup

if.end6:                                          ; preds = %ath11k_qmi_wlanfw_wlan_ini_send.exit, %do.end.if.end6_crit_edge
  %call7 = call fastcc i32 @ath11k_qmi_wlanfw_wlan_cfg_send(ptr noundef %ab)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.4, i32 noundef %call7) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = call fastcc i32 @ath11k_qmi_wlanfw_mode_send(ptr noundef %ab, i32 noundef %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.5, i32 noundef %call11) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end10.cleanup_crit_edge, %if.then9, %if.then4
  %retval.0 = phi i32 [ %ret.0.i.ph, %if.then4 ], [ %call7, %if.then9 ], [ %call11, %if.then13 ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath11k_qmi_wlanfw_wlan_cfg_send(ptr noundef %ab) unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.qmi_wlanfw_wlan_cfg_resp_msg_v01, align 4
  %txn = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #8
  %0 = getelementptr inbounds %struct.qmi_response_type_v01, ptr %resp, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn) #8
  %1 = call ptr @memset(ptr %txn, i32 255, i32 168)
  %ce_cfg1 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %ce_cfg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ce_cfg1, align 4
  %svc_to_ce_map = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 7, i32 2
  %4 = ptrtoint ptr %svc_to_ce_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %svc_to_ce_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 816) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %resp, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %call7.i.i, align 8
  %host_version = getelementptr inbounds %struct.qmi_wlanfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 1
  %call4 = tail call i32 @strlcpy(ptr noundef %host_version, ptr noundef nonnull @.str.21, i32 noundef 17) #8
  %tgt_cfg_valid = getelementptr inbounds %struct.qmi_wlanfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %tgt_cfg_valid to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %tgt_cfg_valid, align 2
  %tgt_ce_len = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 7, i32 1
  %10 = ptrtoint ptr %tgt_ce_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tgt_ce_len, align 4
  %tgt_cfg_len = getelementptr inbounds %struct.qmi_wlanfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %tgt_cfg_len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tgt_cfg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp165.not = icmp eq i32 %11, 0
  br i1 %cmp165.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %pipe_num.0166 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ce_pipe_config, ptr %3, i32 %pipe_num.0166
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %arrayidx8 = getelementptr %struct.qmi_wlanfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 4, i32 %pipe_num.0166
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx8, align 4
  %pipedir = getelementptr %struct.ce_pipe_config, ptr %3, i32 %pipe_num.0166, i32 1
  %16 = ptrtoint ptr %pipedir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pipedir, align 4
  %pipe_dir = getelementptr %struct.qmi_wlanfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 4, i32 %pipe_num.0166, i32 1
  %18 = ptrtoint ptr %pipe_dir to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %pipe_dir, align 4
  %nentries = getelementptr %struct.ce_pipe_config, ptr %3, i32 %pipe_num.0166, i32 2
  %19 = ptrtoint ptr %nentries to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nentries, align 4
  %nentries16 = getelementptr %struct.qmi_wlanfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 4, i32 %pipe_num.0166, i32 2
  %21 = ptrtoint ptr %nentries16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %nentries16, align 4
  %nbytes_max = getelementptr %struct.ce_pipe_config, ptr %3, i32 %pipe_num.0166, i32 3
  %22 = ptrtoint ptr %nbytes_max to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nbytes_max, align 4
  %nbytes_max20 = getelementptr %struct.qmi_wlanfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 4, i32 %pipe_num.0166, i32 3
  %24 = ptrtoint ptr %nbytes_max20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %nbytes_max20, align 4
  %flags = getelementptr %struct.ce_pipe_config, ptr %3, i32 %pipe_num.0166, i32 4
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %flags24 = getelementptr %struct.qmi_wlanfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 4, i32 %pipe_num.0166, i32 4
  %27 = ptrtoint ptr %flags24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %flags24, align 4
  %inc = add nuw i32 %pipe_num.0166, 1
  %28 = ptrtoint ptr %tgt_cfg_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tgt_cfg_len, align 4
  %cmp = icmp ult i32 %inc, %29
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %svc_cfg_valid = getelementptr inbounds %struct.qmi_wlanfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %svc_cfg_valid to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %svc_cfg_valid, align 8
  %svc_to_ce_map_len = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 7, i32 3
  %31 = ptrtoint ptr %svc_to_ce_map_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %svc_to_ce_map_len, align 4
  %svc_cfg_len = getelementptr inbounds %struct.qmi_wlanfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %svc_cfg_len to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %svc_cfg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp29167.not = icmp eq i32 %32, 0
  br i1 %cmp29167.not, label %for.end.for.end47_crit_edge, label %for.end.for.body30_crit_edge

for.end.for.body30_crit_edge:                     ; preds = %for.end
  br label %for.body30

for.end.for.end47_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end47

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %for.end.for.body30_crit_edge
  %pipe_num.1168 = phi i32 [ %inc46, %for.body30.for.body30_crit_edge ], [ 0, %for.end.for.body30_crit_edge ]
  %arrayidx31 = getelementptr %struct.service_to_pipe, ptr %5, i32 %pipe_num.1168
  %34 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx31, align 4
  %arrayidx33 = getelementptr %struct.qmi_wlanfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 7, i32 %pipe_num.1168
  %36 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx33, align 4
  %pipedir36 = getelementptr %struct.service_to_pipe, ptr %5, i32 %pipe_num.1168, i32 1
  %37 = ptrtoint ptr %pipedir36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pipedir36, align 4
  %pipe_dir39 = getelementptr %struct.qmi_wlanfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 7, i32 %pipe_num.1168, i32 1
  %39 = ptrtoint ptr %pipe_dir39 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %pipe_dir39, align 4
  %pipenum41 = getelementptr %struct.service_to_pipe, ptr %5, i32 %pipe_num.1168, i32 2
  %40 = ptrtoint ptr %pipenum41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pipenum41, align 4
  %pipe_num44 = getelementptr %struct.qmi_wlanfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 7, i32 %pipe_num.1168, i32 2
  %42 = ptrtoint ptr %pipe_num44 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %pipe_num44, align 4
  %inc46 = add nuw i32 %pipe_num.1168, 1
  %43 = ptrtoint ptr %svc_cfg_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %svc_cfg_len, align 4
  %cmp29 = icmp ult i32 %inc46, %44
  br i1 %cmp29, label %for.body30.for.body30_crit_edge, label %for.body30.for.end47_crit_edge

for.body30.for.end47_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end47

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body30

for.end47:                                        ; preds = %for.body30.for.end47_crit_edge, %for.end.for.end47_crit_edge
  %shadow_reg_valid = getelementptr inbounds %struct.qmi_wlanfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 8
  %45 = ptrtoint ptr %shadow_reg_valid to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %shadow_reg_valid, align 8
  %supports_shadow_regs = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 29
  %46 = ptrtoint ptr %supports_shadow_regs to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %supports_shadow_regs, align 2, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool48.not = icmp eq i8 %47, 0
  %shadow_reg_v2_valid58 = getelementptr inbounds %struct.qmi_wlanfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 11
  br i1 %tobool48.not, label %if.else, label %if.then49

if.then49:                                        ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %shadow_reg_v2_valid58 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %shadow_reg_v2_valid58, align 8
  %shadow_reg_v2_len = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 7, i32 7
  %49 = ptrtoint ptr %shadow_reg_v2_len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %shadow_reg_v2_len, align 4
  %51 = tail call i32 @llvm.umin.i32(i32 %50, i32 36)
  %shadow_reg_v2_len53 = getelementptr inbounds %struct.qmi_wlanfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 12
  %52 = ptrtoint ptr %shadow_reg_v2_len53 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %shadow_reg_v2_len53, align 4
  %shadow_reg_v2 = getelementptr inbounds %struct.qmi_wlanfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 13
  %shadow_reg_v256 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 7, i32 6
  %53 = ptrtoint ptr %shadow_reg_v256 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %shadow_reg_v256, align 4
  %mul = shl nuw nsw i32 %51, 2
  %55 = call ptr @memcpy(ptr %shadow_reg_v2, ptr %54, i32 %mul)
  br label %if.end59

if.else:                                          ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %shadow_reg_v2_valid58 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %shadow_reg_v2_valid58, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then49
  %handle = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 1
  %call61 = call i32 @qmi_txn_init(ptr noundef %handle, ptr noundef nonnull %txn, ptr noundef nonnull @qmi_wlanfw_wlan_cfg_resp_msg_v01_ei, ptr noundef nonnull %resp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.end59.out_crit_edge, label %do.body

if.end59.out_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body:                                          ; preds = %if.end59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %57 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %57, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool65.not = icmp eq i32 %and, 0
  br i1 %tobool65.not, label %lor.lhs.false, label %do.body.if.then67_crit_edge

do.body.if.then67_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_wlanfw_wlan_cfg_send, %if.then67)) #8
          to label %do.end [label %if.then67], !srcloc !301

if.then67:                                        ; preds = %lor.lhs.false, %do.body.if.then67_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 64, ptr noundef nonnull @.str.22) #8
  br label %do.end

do.end:                                           ; preds = %if.then67, %lor.lhs.false
  %call71 = call i32 @qmi_send_request(ptr noundef %handle, ptr noundef null, ptr noundef nonnull %txn, i32 noundef 35, i32 noundef 803, ptr noundef nonnull @qmi_wlanfw_wlan_cfg_req_msg_v01_ei, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @qmi_txn_cancel(ptr noundef nonnull %txn) #8
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.23, i32 noundef %call71) #8
  br label %out

if.end74:                                         ; preds = %do.end
  %call76 = call i32 @qmi_txn_wait(ptr noundef nonnull %txn, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.24, i32 noundef %call76) #8
  br label %out

if.end79:                                         ; preds = %if.end74
  %58 = ptrtoint ptr %resp to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %cmp81.not = icmp eq i16 %59, 0
  br i1 %cmp81.not, label %if.end79.out_crit_edge, label %if.then83

if.end79.out_crit_edge:                           ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %59 to i32
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %0, align 2
  %conv88 = zext i16 %61 to i32
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.25, i32 noundef %conv, i32 noundef %conv88) #8
  br label %out

out:                                              ; preds = %if.then83, %if.end79.out_crit_edge, %if.then78, %if.then73, %if.end59.out_crit_edge
  %ret.0 = phi i32 [ %call61, %if.end59.out_crit_edge ], [ %call71, %if.then73 ], [ %call76, %if.then78 ], [ -22, %if.then83 ], [ %call76, %if.end79.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_qmi_init_service(ptr noundef %ab) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %qmi = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3
  %target = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 13
  %0 = call ptr @memset(ptr %target, i32 0, i32 220)
  %target_mem = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8
  %1 = call ptr @memset(ptr %target_mem, i32 0, i32 20)
  %2 = ptrtoint ptr %qmi to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ab, ptr %qmi, align 4
  %fw_mem_mode = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 33
  %3 = ptrtoint ptr %fw_mem_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_mem_mode, align 4
  %target_mem_mode = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 10
  %5 = ptrtoint ptr %target_mem_mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %target_mem_mode, align 4
  %handle = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 1
  %call = tail call i32 @qmi_handle_init(ptr noundef %handle, i32 noundef 8192, ptr noundef nonnull @ath11k_qmi_ops, ptr noundef nonnull @ath11k_qmi_msg_handlers) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.6, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.7, i32 noundef 2, i32 noundef 1) #8
  %event_wq = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 4
  %6 = ptrtoint ptr %event_wq to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %event_wq, align 4
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %event_list = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 5
  %7 = ptrtoint ptr %event_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %event_list, ptr %event_list, align 4
  %prev.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 5, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %event_list, ptr %prev.i, align 4
  %event_lock = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %event_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @ath11k_qmi_init_service.__key, i16 noundef signext 3) #8
  %event_work = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 3
  tail call void @__init_work(ptr noundef %event_work, i32 noundef 0) #8
  %9 = ptrtoint ptr %event_work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %event_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @ath11k_qmi_init_service.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry23 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 3, i32 1
  %10 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i64 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 3, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i64 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry23, ptr %prev.i64, align 4
  %func = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 3, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ath11k_qmi_driver_event_work, ptr %func, align 4
  %service_ins_id = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 15
  %13 = ptrtoint ptr %service_ins_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %service_ins_id, align 4
  %call31 = tail call i32 @qmi_add_lookup(ptr noundef %handle, i32 noundef 69, i32 noundef 1, i32 noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then33:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.12, i32 noundef %call31) #8
  %15 = ptrtoint ptr %event_wq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %event_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end11.cleanup_crit_edge, %if.then10, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call31, %if.then33 ], [ -14, %if.then10 ], [ %call31, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_handle_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_qmi_driver_event_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -384
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %event_lock = getelementptr i8, ptr %work, i32 56
  tail call void @_raw_spin_lock(ptr noundef %event_lock) #8
  %event_list = getelementptr i8, ptr %work, i32 48
  %2 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %event_list, align 4
  %cmp.i.not106 = icmp eq ptr %3, %event_list
  br i1 %cmp.i.not106, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dev_flags = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 45
  %workqueue = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 47
  %restart_work = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 48
  %cal_done = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 3, i32 12
  %cold_boot_calib = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 36, i32 32
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %4 = phi ptr [ %3, %while.body.lr.ph ], [ %38, %sw.epilog.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void @_raw_spin_unlock(ptr noundef %event_lock) #8
  %13 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %dev_flags, align 4
  %15 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not = icmp eq i32 %15, 0
  br i1 %tobool8.not, label %if.end, label %if.then

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %4) #8
  br label %cleanup

if.end:                                           ; preds = %list_del.exit
  %type = getelementptr inbounds %struct.ath11k_qmi_driver_event, ptr %4, i32 0, i32 1
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
    i32 2, label %sw.bb16
    i32 3, label %sw.bb22
    i32 4, label %sw.bb28
    i32 6, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call fastcc i32 @ath11k_qmi_fw_ind_register_send(ptr noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i91 = icmp slt i32 %call.i, 0
  br i1 %cmp.i91, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %20, ptr noundef nonnull @.str.46, i32 noundef %call.i) #8
  br label %if.then10

if.end.i:                                         ; preds = %sw.bb
  %call2.i = tail call fastcc i32 @ath11k_qmi_host_cap_send(ptr noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %20, ptr noundef nonnull @.str.47, i32 noundef %call2.i) #8
  br label %if.then10

if.then10:                                        ; preds = %if.then4.i, %if.then.i
  tail call void @_set_bit(i32 noundef 9, ptr noundef %dev_flags) #8
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %dev_flags) #8
  tail call void @_set_bit(i32 noundef 6, ptr noundef %dev_flags) #8
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 4
  %call.i92 = tail call fastcc i32 @ath11k_qmi_respond_fw_mem_request(ptr noundef %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %cmp.i93 = icmp slt i32 %call.i92, 0
  br i1 %cmp.i93, label %if.then19, label %sw.bb16.sw.epilog_crit_edge

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then19:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %22, ptr noundef nonnull @.str.55, i32 noundef %call.i92) #8
  tail call void @_set_bit(i32 noundef 9, ptr noundef %dev_flags) #8
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  %call.i95 = tail call fastcc i32 @ath11k_qmi_request_target_cap(ptr noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %cmp.i96 = icmp slt i32 %call.i95, 0
  br i1 %cmp.i96, label %if.then.i97, label %if.end.i98

if.then.i97:                                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %24, ptr noundef nonnull @.str.62, i32 noundef %call.i95) #8
  br label %if.then25

if.end.i98:                                       ; preds = %sw.bb22
  %supports_regdb.i = getelementptr inbounds %struct.ath11k_base, ptr %24, i32 0, i32 36, i32 38
  %25 = ptrtoint ptr %supports_regdb.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %supports_regdb.i, align 4, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.end.i98.if.end4.i_crit_edge, label %if.then2.i

if.end.i98.if.end4.i_crit_edge:                   ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call fastcc i32 @ath11k_qmi_load_bdf_qmi(ptr noundef %24, i1 noundef zeroext true) #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i98.if.end4.i_crit_edge
  %call5.i = tail call fastcc i32 @ath11k_qmi_load_bdf_qmi(ptr noundef %24, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %24, ptr noundef nonnull @.str.63, i32 noundef %call5.i) #8
  br label %if.then25

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = tail call fastcc i32 @ath11k_qmi_wlanfw_m3_info_send(ptr noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.then11.i, label %if.end8.i.sw.epilog_crit_edge

if.end8.i.sw.epilog_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %24, ptr noundef nonnull @.str.64, i32 noundef %call9.i) #8
  br label %if.then25

if.then25:                                        ; preds = %if.then11.i, %if.then7.i, %if.then.i97
  tail call void @_set_bit(i32 noundef 9, ptr noundef %dev_flags) #8
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %dev_flags) #8
  %27 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %dev_flags, align 4
  %29 = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool32.not = icmp eq i32 %29, 0
  br i1 %tobool32.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ath11k_hal_dump_srng_stats(ptr noundef %1) #8
  %30 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %workqueue, align 4
  %call.i100 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %restart_work) #8
  br label %sw.epilog

if.end35:                                         ; preds = %sw.bb28
  %32 = load i8, ptr @ath11k_cold_boot_cal, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool36.not = icmp eq i8 %32, 0
  br i1 %tobool36.not, label %if.end35.if.else_crit_edge, label %land.lhs.true

if.end35.if.else_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end35
  %33 = ptrtoint ptr %cal_done to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cal_done, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp38 = icmp eq i8 %34, 0
  br i1 %cmp38, label %land.lhs.true40, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true40:                                  ; preds = %land.lhs.true
  %35 = ptrtoint ptr %cold_boot_calib to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cold_boot_calib, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool41.not = icmp eq i8 %36, 0
  br i1 %tobool41.not, label %land.lhs.true40.if.else_crit_edge, label %if.then43

land.lhs.true40.if.else_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then43:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ath11k_qmi_process_coldboot_calibration(ptr noundef %1)
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true40.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end35.if.else_crit_edge
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %dev_flags) #8
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %dev_flags) #8
  %call47 = tail call i32 @ath11k_core_qmi_firmware_ready(ptr noundef %1) #8
  tail call void @_set_bit(i32 noundef 8, ptr noundef %dev_flags) #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %17) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else, %if.then43, %if.then33, %if.then25, %if.end8.i.sw.epilog_crit_edge, %if.then19, %sw.bb16.sw.epilog_crit_edge, %sw.bb13, %if.then10, %if.end.i.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  tail call void @kfree(ptr noundef %4) #8
  tail call void @_raw_spin_lock(ptr noundef %event_lock) #8
  %37 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %event_list, align 4
  %cmp.i.not = icmp eq ptr %38, %event_list
  br i1 %cmp.i.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %event_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_add_lookup(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_qmi_deinit_service(ptr noundef %ab) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 1
  tail call void @qmi_handle_release(ptr noundef %handle) #8
  %event_work = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 3
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %event_work) #8
  %event_wq = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %event_wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %event_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #8
  %m3_mem1.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 14
  %m3_fw_support.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 37, i32 1
  %2 = ptrtoint ptr %m3_fw_support.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %m3_fw_support.i, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.ath11k_qmi_m3_free.exit_crit_edge, label %lor.lhs.false.i

entry.ath11k_qmi_m3_free.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath11k_qmi_m3_free.exit

lor.lhs.false.i:                                  ; preds = %entry
  %vaddr.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 14, i32 2
  %4 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vaddr.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.ath11k_qmi_m3_free.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ath11k_qmi_m3_free.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath11k_qmi_m3_free.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  %8 = ptrtoint ptr %m3_mem1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %m3_mem1.i, align 4
  %paddr.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 14, i32 1
  %10 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %paddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %5, i32 noundef %11, i32 noundef 0) #8
  %12 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %vaddr.i, align 4
  br label %ath11k_qmi_m3_free.exit

ath11k_qmi_m3_free.exit:                          ; preds = %if.end.i, %lor.lhs.false.i.ath11k_qmi_m3_free.exit_crit_edge, %entry.ath11k_qmi_m3_free.exit_crit_edge
  %mem_seg_count.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 9
  %13 = ptrtoint ptr %mem_seg_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mem_seg_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp47.not.i = icmp eq i32 %14, 0
  br i1 %cmp47.not.i, label %ath11k_qmi_m3_free.exit.ath11k_qmi_free_target_mem_chunk.exit_crit_edge, label %for.body.lr.ph.i

ath11k_qmi_m3_free.exit.ath11k_qmi_free_target_mem_chunk.exit_crit_edge: ; preds = %ath11k_qmi_m3_free.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath11k_qmi_free_target_mem_chunk.exit

for.body.lr.ph.i:                                 ; preds = %ath11k_qmi_m3_free.exit
  %fixed_mem_region.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 37, i32 3
  %dev_flags.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 45
  %dev.i7 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.048.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %fixed_mem_region.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fixed_mem_region.i, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i8 = icmp eq i8 %16, 0
  br i1 %tobool.not.i8, label %lor.lhs.false.i9, label %for.body.i.land.lhs.true.i_crit_edge

for.body.i.land.lhs.true.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

lor.lhs.false.i9:                                 ; preds = %for.body.i
  %17 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %dev_flags.i, align 4
  %19 = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool1.not.i = icmp eq i32 %19, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i9.if.end.i11_crit_edge, label %lor.lhs.false.i9.land.lhs.true.i_crit_edge

lor.lhs.false.i9.land.lhs.true.i_crit_edge:       ; preds = %lor.lhs.false.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

lor.lhs.false.i9.if.end.i11_crit_edge:            ; preds = %lor.lhs.false.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i11

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i9.land.lhs.true.i_crit_edge, %for.body.i.land.lhs.true.i_crit_edge
  %iaddr.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %i.048.i, i32 4
  %20 = ptrtoint ptr %iaddr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iaddr.i, align 4
  %tobool3.not.i = icmp eq ptr %21, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end.i11_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i11_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i11

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %21) #8
  br label %if.end.i11

if.end.i11:                                       ; preds = %if.then.i, %land.lhs.true.i.if.end.i11_crit_edge, %lor.lhs.false.i9.if.end.i11_crit_edge
  %vaddr.i10 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %i.048.i, i32 3
  %22 = ptrtoint ptr %vaddr.i10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vaddr.i10, align 4
  %tobool11.not.i = icmp eq ptr %23, null
  br i1 %tobool11.not.i, label %if.end.i11.for.inc.i_crit_edge, label %if.end13.i

if.end.i11.for.inc.i_crit_edge:                   ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx10.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %i.048.i
  %24 = ptrtoint ptr %dev.i7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i7, align 8
  %26 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx10.i, align 4
  %paddr.i12 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %i.048.i, i32 2
  %28 = ptrtoint ptr %paddr.i12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %paddr.i12, align 4
  tail call void @dma_free_attrs(ptr noundef %25, i32 noundef %27, ptr noundef nonnull %23, i32 noundef %29, i32 noundef 0) #8
  %30 = ptrtoint ptr %vaddr.i10 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %vaddr.i10, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end13.i, %if.end.i11.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.048.i, 1
  %31 = ptrtoint ptr %mem_seg_count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mem_seg_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %32
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ath11k_qmi_free_target_mem_chunk.exit_crit_edge

for.inc.i.ath11k_qmi_free_target_mem_chunk.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath11k_qmi_free_target_mem_chunk.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

ath11k_qmi_free_target_mem_chunk.exit:            ; preds = %for.inc.i.ath11k_qmi_free_target_mem_chunk.exit_crit_edge, %ath11k_qmi_m3_free.exit.ath11k_qmi_free_target_mem_chunk.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qmi_handle_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_txn_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_send_request(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qmi_txn_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_txn_wait(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath11k_qmi_ops_new_server(ptr noundef %qmi_hdl, ptr nocapture noundef readonly %service) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %qmi_hdl, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %sq2 = getelementptr i8, ptr %qmi_hdl, i32 368
  %2 = ptrtoint ptr %sq2 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 42, ptr %sq2, align 4
  %node = getelementptr inbounds %struct.qmi_service, ptr %service, i32 0, i32 3
  %3 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %node, align 4
  %sq_node = getelementptr i8, ptr %qmi_hdl, i32 372
  %5 = ptrtoint ptr %sq_node to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %sq_node, align 4
  %port = getelementptr inbounds %struct.qmi_service, ptr %service, i32 0, i32 4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %sq_port = getelementptr i8, ptr %qmi_hdl, i32 376
  %8 = ptrtoint ptr %sq_port to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %sq_port, align 4
  %9 = ptrtoint ptr %qmi_hdl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qmi_hdl, align 4
  %call = tail call i32 @kernel_connect(ptr noundef %10, ptr noundef %sq2, i32 noundef 12, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef %call) #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %11 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %do.body.if.then5_crit_edge

do.body.if.then5_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_ops_new_server, %if.then5)) #8
          to label %do.end [label %if.then5], !srcloc !301

if.then5:                                         ; preds = %lor.lhs.false, %do.body.if.then5_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %1, i32 noundef 64, ptr noundef nonnull @.str.27) #8
  br label %do.end

do.end:                                           ; preds = %if.then5, %lor.lhs.false
  tail call fastcc void @ath11k_qmi_driver_event_post(ptr noundef %add.ptr, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_qmi_ops_del_server(ptr noundef %qmi_hdl, ptr nocapture noundef readnone %service) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %qmi_hdl, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %2 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_ops_del_server, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !301

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %1, i32 noundef 64, ptr noundef nonnull @.str.28) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  tail call fastcc void @ath11k_qmi_driver_event_post(ptr noundef %add.ptr, i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath11k_qmi_driver_event_post(ptr noundef %qmi, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 16) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %type1 = getelementptr inbounds %struct.ath11k_qmi_driver_event, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %type1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %type, ptr %type1, align 8
  %data2 = getelementptr inbounds %struct.ath11k_qmi_driver_event, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %data2, align 4
  %event_lock = getelementptr inbounds %struct.ath11k_qmi, ptr %qmi, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %event_lock) #8
  %event_list = getelementptr inbounds %struct.ath11k_qmi, ptr %qmi, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.ath11k_qmi, ptr %qmi, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %4, ptr noundef %event_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %event_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call7.i.i, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %event_lock) #8
  %event_wq = getelementptr inbounds %struct.ath11k_qmi, ptr %qmi, i32 0, i32 4
  %9 = ptrtoint ptr %event_wq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %event_wq, align 4
  %event_work = getelementptr inbounds %struct.ath11k_qmi, ptr %qmi, i32 0, i32 3
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %event_work) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_qmi_msg_mem_request_cb(ptr noundef %qmi_hdl, ptr nocapture noundef readnone %sq, ptr nocapture noundef readnone %txn, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %qmi_hdl, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %2 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_msg_mem_request_cb, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !301

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %1, i32 noundef 64, ptr noundef nonnull @.str.29) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 8
  %5 = add i32 %4, -53
  call void @__sanitizer_cov_trace_const_cmp4(i32 -52, i32 %5)
  %6 = icmp ult i32 %5, -52
  br i1 %6, label %if.then5, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.30, i32 noundef %4) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end.if.end7_crit_edge
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 8
  %mem_seg_count = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 3, i32 9
  %9 = ptrtoint ptr %mem_seg_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %mem_seg_count, align 4
  %mem_seg_count10 = getelementptr i8, ptr %qmi_hdl, i32 1552
  %10 = ptrtoint ptr %mem_seg_count10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mem_seg_count10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1190.not = icmp eq i32 %11, 0
  br i1 %cmp1190.not, label %if.end7.for.end_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end7.for.body_crit_edge
  %i.091 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qmi_wlanfw_request_mem_ind_msg_v01, ptr %data, i32 0, i32 1, i32 %i.091
  %type = getelementptr %struct.qmi_wlanfw_request_mem_ind_msg_v01, ptr %data, i32 0, i32 1, i32 %i.091, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  %arrayidx13 = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 3, i32 8, i32 %i.091
  %type14 = getelementptr %struct.ath11k_base, ptr %1, i32 0, i32 3, i32 8, i32 %i.091, i32 1
  %14 = ptrtoint ptr %type14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %type14, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 8
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx13, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %18 = load i32, ptr @ath11k_debug_mask, align 4
  %and22 = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %lor.lhs.false24, label %for.body.if.then26_crit_edge

for.body.if.then26_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

lor.lhs.false24:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_msg_mem_request_cb, %if.then26)) #8
          to label %for.inc [label %if.then26], !srcloc !301

if.then26:                                        ; preds = %lor.lhs.false24, %for.body.if.then26_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type, align 4
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 8
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %1, i32 noundef 64, ptr noundef nonnull @.str.31, i32 noundef %20, i32 noundef %22) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then26, %lor.lhs.false24
  %inc = add nuw i32 %i.091, 1
  %23 = ptrtoint ptr %mem_seg_count10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mem_seg_count10, align 4
  %cmp11 = icmp ult i32 %inc, %24
  br i1 %cmp11, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end7.for.end_crit_edge
  %fixed_mem_region = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 37, i32 3
  %25 = ptrtoint ptr %fixed_mem_region to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %fixed_mem_region, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool36.not = icmp eq i8 %26, 0
  br i1 %tobool36.not, label %lor.lhs.false37, label %for.end.if.then40_crit_edge

for.end.if.then40_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

lor.lhs.false37:                                  ; preds = %for.end
  %dev_flags = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 45
  %27 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %dev_flags, align 4
  %29 = and i32 %28, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool39.not = icmp eq i32 %29, 0
  br i1 %tobool39.not, label %if.else, label %lor.lhs.false37.if.then40_crit_edge

lor.lhs.false37.if.then40_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

if.then40:                                        ; preds = %lor.lhs.false37.if.then40_crit_edge, %for.end.if.then40_crit_edge
  %call41 = tail call fastcc i32 @ath11k_qmi_assign_target_mem_chunk(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then40.if.end49_crit_edge, label %if.then43

if.then40.if.end49_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then43:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.32, i32 noundef %call41) #8
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false37
  %call45 = tail call fastcc i32 @ath11k_qmi_alloc_target_mem_chunk(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.else.if.end49_crit_edge, label %if.then47

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %1, ptr noundef nonnull @.str.33, i32 noundef %call45) #8
  br label %cleanup

if.end49:                                         ; preds = %if.else.if.end49_crit_edge, %if.then40.if.end49_crit_edge
  tail call fastcc void @ath11k_qmi_driver_event_post(ptr noundef %add.ptr, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then47, %if.then43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_qmi_msg_mem_ready_cb(ptr noundef %qmi_hdl, ptr nocapture noundef readnone %sq, ptr nocapture noundef readnone %txn, ptr nocapture noundef readnone %decoded) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %qmi_hdl, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %2 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_msg_mem_ready_cb, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !301

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %1, i32 noundef 64, ptr noundef nonnull @.str.42) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  tail call fastcc void @ath11k_qmi_driver_event_post(ptr noundef %add.ptr, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_qmi_msg_fw_ready_cb(ptr noundef %qmi_hdl, ptr nocapture noundef readnone %sq, ptr nocapture noundef readnone %txn, ptr nocapture noundef readnone %decoded) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %qmi_hdl, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %2 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_msg_fw_ready_cb, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !301

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %1, i32 noundef 64, ptr noundef nonnull @.str.43) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  tail call fastcc void @ath11k_qmi_driver_event_post(ptr noundef %add.ptr, i32 noundef 4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath11k_qmi_msg_cold_boot_cal_done_cb(ptr nocapture noundef readonly %qmi_hdl, ptr nocapture noundef readnone %sq, ptr nocapture noundef readnone %txn, ptr nocapture noundef readnone %decoded) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %qmi_hdl, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %cal_done = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 3, i32 12
  %2 = ptrtoint ptr %cal_done to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %cal_done, align 1
  %cold_boot_waitq = getelementptr inbounds %struct.ath11k_base, ptr %1, i32 0, i32 3, i32 16
  tail call void @__wake_up(ptr noundef %cold_boot_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %3 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_msg_cold_boot_cal_done_cb, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !301

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %1, i32 noundef 64, ptr noundef nonnull @.str.44) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath11k_qmi_assign_target_mem_chunk(ptr noundef %ab) unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #8
  %2 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %mem_seg_count = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 9
  %3 = call ptr @memset(ptr %res, i32 255, i32 32)
  %4 = ptrtoint ptr %mem_seg_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mem_seg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp281.not = icmp eq i32 %5, 0
  br i1 %cmp281.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cold_boot_calib = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 32
  %bdf_addr = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 3
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ret.0288 = phi i32 [ -1, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %idx.0285 = phi i32 [ 0, %for.body.lr.ph ], [ %idx.1, %for.inc.for.body_crit_edge ]
  %i.0284 = phi i32 [ 0, %for.body.lr.ph ], [ %inc165, %for.inc.for.body_crit_edge ]
  %host_ddr_sz.0283 = phi i32 [ -1, %for.body.lr.ph ], [ %host_ddr_sz.1, %for.inc.for.body_crit_edge ]
  %hremote_node.0282 = phi ptr [ null, %for.body.lr.ph ], [ %hremote_node.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %i.0284
  %type = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %i.0284, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb71
    i32 4, label %sw.bb96
  ]

sw.bb:                                            ; preds = %for.body
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %11 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %10, ptr noundef nonnull @.str.34, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  br label %do.body

of_parse_phandle.exit:                            ; preds = %sw.bb
  %12 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %of_parse_phandle.exit.do.body_crit_edge, label %if.end6

of_parse_phandle.exit.do.body_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %of_parse_phandle.exit.do.body_crit_edge, %of_parse_phandle.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %14 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %do.body.if.then5_crit_edge

do.body.if.then5_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_assign_target_mem_chunk, %if.then5)) #8
          to label %cleanup [label %if.then5], !srcloc !301

if.then5:                                         ; preds = %lor.lhs.false, %do.body.if.then5_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 64, ptr noundef nonnull @.str.35) #8
  br label %cleanup

if.end6:                                          ; preds = %of_parse_phandle.exit
  %call7 = call i32 @of_address_to_resource(ptr noundef nonnull %13, i32 noundef 0, ptr noundef nonnull %res) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end19, label %do.body10

do.body10:                                        ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %15 = load i32, ptr @ath11k_debug_mask, align 4
  %and11 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %do.body10.if.then15_crit_edge

do.body10.if.then15_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

lor.lhs.false13:                                  ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_assign_target_mem_chunk, %if.then15)) #8
          to label %cleanup [label %if.then15], !srcloc !301

if.then15:                                        ; preds = %lor.lhs.false13, %do.body10.if.then15_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 64, ptr noundef nonnull @.str.36) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end6
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %2, align 4
  %18 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %res, align 4
  %sub = add i32 %17, 1
  %add = sub i32 %sub, %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %21)
  %cmp23 = icmp ult i32 %add, %21
  br i1 %cmp23, label %do.body25, label %if.end34

do.body25:                                        ; preds = %if.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %22 = load i32, ptr @ath11k_debug_mask, align 4
  %and26 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %do.body25.if.then30_crit_edge

do.body25.if.then30_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

lor.lhs.false28:                                  ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_assign_target_mem_chunk, %if.then30)) #8
          to label %cleanup [label %if.then30], !srcloc !301

if.then30:                                        ; preds = %lor.lhs.false28, %do.body25.if.then30_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 64, ptr noundef nonnull @.str.37) #8
  br label %cleanup

if.end34:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx38 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %idx.0285
  %paddr = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %idx.0285, i32 2
  %23 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %19, ptr %paddr, align 4
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %call47 = call ptr @ioremap(i32 noundef %19, i32 noundef %25) #8
  %iaddr = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %idx.0285, i32 4
  %26 = ptrtoint ptr %iaddr to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call47, ptr %iaddr, align 4
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %29 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx38, align 4
  %30 = load i32, ptr %arrayidx, align 4
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type, align 4
  %type70 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %idx.0285, i32 1
  %33 = ptrtoint ptr %type70 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %type70, align 4
  %inc = add i32 %idx.0285, 1
  br label %for.inc

sw.bb71:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %bdf_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bdf_addr, align 4
  %arrayidx74 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %idx.0285
  %paddr75 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %idx.0285, i32 2
  %36 = ptrtoint ptr %paddr75 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %paddr75, align 4
  %vaddr = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %idx.0285, i32 3
  %37 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %vaddr, align 4
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx, align 4
  %40 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx74, align 4
  %41 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type, align 4
  %type94 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %idx.0285, i32 1
  %43 = ptrtoint ptr %type94 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %type94, align 4
  %inc95 = add i32 %idx.0285, 1
  br label %for.inc

sw.bb96:                                          ; preds = %for.body
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4718592, i32 %45)
  %cmp101 = icmp ugt i32 %45, 4718592
  br i1 %cmp101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.38) #8
  br label %cleanup

if.end103:                                        ; preds = %sw.bb96
  %46 = load i8, ptr @ath11k_cold_boot_cal, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool104.not = icmp eq i8 %46, 0
  br i1 %tobool104.not, label %if.end103.if.else134_crit_edge, label %land.lhs.true

if.end103.if.else134_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else134

land.lhs.true:                                    ; preds = %if.end103
  %47 = ptrtoint ptr %cold_boot_calib to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %cold_boot_calib, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool106.not = icmp eq i8 %48, 0
  br i1 %tobool106.not, label %land.lhs.true.if.else134_crit_edge, label %if.then107

land.lhs.true.if.else134_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else134

if.then107:                                       ; preds = %land.lhs.true
  %tobool108.not = icmp eq ptr %hremote_node.0282, null
  br i1 %tobool108.not, label %if.else, label %if.then109

if.then109:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %res, align 4
  %add111 = add i32 %50, %host_ddr_sz.0283
  %paddr115 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %idx.0285, i32 2
  %51 = ptrtoint ptr %paddr115 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add111, ptr %paddr115, align 4
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx, align 4
  %call124 = call ptr @ioremap(i32 noundef %add111, i32 noundef %53) #8
  %iaddr128 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %idx.0285, i32 4
  %54 = ptrtoint ptr %iaddr128 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call124, ptr %iaddr128, align 4
  br label %if.end143

if.else:                                          ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  %paddr132 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %idx.0285, i32 2
  %55 = ptrtoint ptr %paddr132 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1268776960, ptr %paddr132, align 4
  br label %if.end143

if.else134:                                       ; preds = %land.lhs.true.if.else134_crit_edge, %if.end103.if.else134_crit_edge
  %paddr138 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %idx.0285, i32 2
  %56 = ptrtoint ptr %paddr138 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %paddr138, align 4
  %vaddr142 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %idx.0285, i32 3
  %57 = ptrtoint ptr %vaddr142 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %vaddr142, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.else134, %if.else, %if.then109
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx, align 4
  %arrayidx150 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %idx.0285
  %60 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx150, align 4
  %61 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %type, align 4
  %type159 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %idx.0285, i32 1
  %63 = ptrtoint ptr %type159 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %type159, align 4
  %inc160 = add i32 %idx.0285, 1
  br label %for.inc

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.39, i32 noundef %7) #8
  br label %for.inc

for.inc:                                          ; preds = %sw.default, %if.end143, %sw.bb71, %if.end34
  %hremote_node.1 = phi ptr [ %hremote_node.0282, %sw.default ], [ %hremote_node.0282, %if.end143 ], [ %hremote_node.0282, %sw.bb71 ], [ %13, %if.end34 ]
  %host_ddr_sz.1 = phi i32 [ %host_ddr_sz.0283, %sw.default ], [ %host_ddr_sz.0283, %if.end143 ], [ %host_ddr_sz.0283, %sw.bb71 ], [ %30, %if.end34 ]
  %idx.1 = phi i32 [ %idx.0285, %sw.default ], [ %inc160, %if.end143 ], [ %inc95, %sw.bb71 ], [ %inc, %if.end34 ]
  %ret.1 = phi i32 [ %ret.0288, %sw.default ], [ %ret.0288, %if.end143 ], [ %ret.0288, %sw.bb71 ], [ 0, %if.end34 ]
  %inc165 = add nuw i32 %i.0284, 1
  %64 = ptrtoint ptr %mem_seg_count to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mem_seg_count, align 4
  %cmp = icmp ult i32 %inc165, %65
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %idx.1, %for.inc.for.end_crit_edge ]
  %66 = ptrtoint ptr %mem_seg_count to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %idx.0.lcssa, ptr %mem_seg_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then102, %if.then30, %lor.lhs.false28, %if.then15, %lor.lhs.false13, %if.then5, %lor.lhs.false
  %retval.0 = phi i32 [ -22, %if.then102 ], [ 0, %for.end ], [ %ret.0288, %if.then5 ], [ %call7, %if.then15 ], [ -22, %if.then30 ], [ %ret.0288, %lor.lhs.false ], [ %call7, %lor.lhs.false13 ], [ -22, %lor.lhs.false28 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath11k_qmi_alloc_target_mem_chunk(ptr noundef %ab) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %target_mem_delayed = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 11
  %0 = ptrtoint ptr %target_mem_delayed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %target_mem_delayed, align 4
  %mem_seg_count = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 9
  %1 = ptrtoint ptr %mem_seg_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mem_seg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp39.not = icmp eq i32 %2, 0
  br i1 %cmp39.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %i.040
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %paddr = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %i.040, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef %6, ptr noundef %paddr, i32 noundef 11456, i32 noundef 256) #8
  %vaddr = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %i.040, i32 3
  %7 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %vaddr, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %8 = ptrtoint ptr %mem_seg_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mem_seg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp6 = icmp ult i32 %9, 4
  br i1 %cmp6, label %do.body, label %if.end14

do.body:                                          ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %10 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %do.body.if.then10_crit_edge

do.body.if.then10_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_alloc_target_mem_chunk, %if.then10)) #8
          to label %do.end [label %if.then10], !srcloc !301

if.then10:                                        ; preds = %lor.lhs.false, %do.body.if.then10_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %type = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %i.040, i32 1
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 4
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 64, ptr noundef nonnull @.str.40, i32 noundef %12, i32 noundef %14) #8
  br label %do.end

do.end:                                           ; preds = %if.then10, %lor.lhs.false
  %15 = ptrtoint ptr %mem_seg_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mem_seg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp47.not.i = icmp eq i32 %16, 0
  br i1 %cmp47.not.i, label %do.end.ath11k_qmi_free_target_mem_chunk.exit_crit_edge, label %for.body.lr.ph.i

do.end.ath11k_qmi_free_target_mem_chunk.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath11k_qmi_free_target_mem_chunk.exit

for.body.lr.ph.i:                                 ; preds = %do.end
  %fixed_mem_region.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 37, i32 3
  %dev_flags.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 45
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.048.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %fixed_mem_region.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fixed_mem_region.i, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body.i.land.lhs.true.i_crit_edge

for.body.i.land.lhs.true.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %19 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %dev_flags.i, align 4
  %21 = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool1.not.i = icmp eq i32 %21, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.land.lhs.true.i_crit_edge

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %for.body.i.land.lhs.true.i_crit_edge
  %iaddr.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %i.048.i, i32 4
  %22 = ptrtoint ptr %iaddr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iaddr.i, align 4
  %tobool3.not.i = icmp eq ptr %23, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %23) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge
  %vaddr.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %i.048.i, i32 3
  %24 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vaddr.i, align 4
  %tobool11.not.i = icmp eq ptr %25, null
  br i1 %tobool11.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end13.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx10.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %i.048.i
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %28 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx10.i, align 4
  %paddr.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %i.048.i, i32 2
  %30 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %paddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %27, i32 noundef %29, ptr noundef nonnull %25, i32 noundef %31, i32 noundef 0) #8
  %32 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %vaddr.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end13.i, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.048.i, 1
  %33 = ptrtoint ptr %mem_seg_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mem_seg_count, align 4
  %cmp.i = icmp ult i32 %inc.i, %34
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ath11k_qmi_free_target_mem_chunk.exit_crit_edge

for.inc.i.ath11k_qmi_free_target_mem_chunk.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath11k_qmi_free_target_mem_chunk.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

ath11k_qmi_free_target_mem_chunk.exit:            ; preds = %for.inc.i.ath11k_qmi_free_target_mem_chunk.exit_crit_edge, %do.end.ath11k_qmi_free_target_mem_chunk.exit_crit_edge
  %35 = ptrtoint ptr %target_mem_delayed to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %target_mem_delayed, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  %type16 = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %i.040, i32 1
  %38 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type16, align 4
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.41, i32 noundef %37, i32 noundef %39) #8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.040, 1
  %40 = ptrtoint ptr %mem_seg_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mem_seg_count, align 4
  %cmp = icmp ult i32 %inc, %41
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end14, %ath11k_qmi_free_target_mem_chunk.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ath11k_qmi_free_target_mem_chunk.exit ], [ -22, %if.end14 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_hal_dump_srng_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath11k_qmi_process_coldboot_calibration(ptr noundef %ab) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ath11k_qmi_wlanfw_mode_send(ptr noundef %ab, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.5, i32 noundef %call) #8
  br label %cleanup69

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %0 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body.if.then2_crit_edge

do.body.if.then2_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_process_coldboot_calibration, %if.then2)) #8
          to label %do.end [label %if.then2], !srcloc !301

if.then2:                                         ; preds = %lor.lhs.false, %do.body.if.then2_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 64, ptr noundef nonnull @.str.101) #8
  br label %do.end

do.end:                                           ; preds = %if.then2, %lor.lhs.false
  tail call void @__might_sleep(ptr noundef nonnull @.str.102, i32 noundef 2651) #8
  %cal_done = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 12
  %1 = ptrtoint ptr %cal_done to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cal_done, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp10 = icmp eq i8 %2, 1
  br i1 %cmp10, label %do.end.do.body59_crit_edge, label %if.then21

do.end.do.body59_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body59

if.then21:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %cold_boot_waitq = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 16
  %call2412 = call i32 @prepare_to_wait_event(ptr noundef %cold_boot_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %4 = ptrtoint ptr %cal_done to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cal_done, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp2913 = icmp eq i8 %5, 1
  br i1 %cmp2913, label %if.end53.thread, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  br label %cleanup

if.end53.thread:                                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %cold_boot_waitq, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %do.body59

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then21.cleanup_crit_edge
  %__ret22.114 = phi i32 [ %__ret22.1, %cleanup.cleanup_crit_edge ], [ 4000, %if.then21.cleanup_crit_edge ]
  %call49 = call i32 @schedule_timeout(i32 noundef %__ret22.114) #8
  %call24 = call i32 @prepare_to_wait_event(ptr noundef %cold_boot_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %6 = ptrtoint ptr %cal_done to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cal_done, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp29 = icmp eq i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool35.not = icmp eq i32 %call49, 0
  %8 = select i1 %cmp29, i1 %tobool35.not, i1 false
  %__ret22.1 = select i1 %8, i32 1, i32 %call49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret22.1)
  %tobool42.not = icmp eq i32 %__ret22.1, 0
  %9 = select i1 %cmp29, i1 true, i1 %tobool42.not
  br i1 %9, label %if.end53, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end53:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret22.1)
  %phi.cmp = icmp slt i32 %__ret22.1, 1
  call void @finish_wait(ptr noundef %cold_boot_waitq, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br i1 %phi.cmp, label %if.then57, label %if.end53.do.body59_crit_edge

if.end53.do.body59_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body59

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.103) #8
  br label %cleanup69

do.body59:                                        ; preds = %if.end53.do.body59_crit_edge, %if.end53.thread, %do.end.do.body59_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %10 = load i32, ptr @ath11k_debug_mask, align 4
  %and60 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %lor.lhs.false62, label %do.body59.if.then65_crit_edge

do.body59.if.then65_crit_edge:                    ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

lor.lhs.false62:                                  ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_process_coldboot_calibration, %if.then65)) #8
          to label %cleanup69 [label %if.then65], !srcloc !301

if.then65:                                        ; preds = %lor.lhs.false62, %do.body59.if.then65_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 64, ptr noundef nonnull @.str.104) #8
  br label %cleanup69

cleanup69:                                        ; preds = %if.then65, %lor.lhs.false62, %if.then57, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_core_qmi_firmware_ready(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath11k_qmi_fw_ind_register_send(ptr noundef %ab) unnamed_addr #0 align 64 {
entry:
  %txn = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handle1 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 1
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn) #8
  %0 = call ptr @memset(ptr %txn, i32 255, i32 168)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 32) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i69 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 16) #11
  %tobool3.not = icmp eq ptr %call7.i.i69, null
  br i1 %tobool3.not, label %if.end.resp_out_crit_edge, label %if.end5

if.end.resp_out_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %resp_out

if.end5:                                          ; preds = %if.end
  %client_id_valid = getelementptr inbounds %struct.qmi_wlanfw_ind_register_req_msg_v01, ptr %call7.i.i, i32 0, i32 10
  %3 = ptrtoint ptr %client_id_valid to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %client_id_valid, align 2
  %client_id = getelementptr inbounds %struct.qmi_wlanfw_ind_register_req_msg_v01, ptr %call7.i.i, i32 0, i32 11
  %4 = ptrtoint ptr %client_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1263420748, ptr %client_id, align 4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %call7.i.i, align 8
  %fw_ready_enable = getelementptr inbounds %struct.qmi_wlanfw_ind_register_req_msg_v01, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %fw_ready_enable to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %fw_ready_enable, align 1
  %request_mem_enable_valid = getelementptr inbounds %struct.qmi_wlanfw_ind_register_req_msg_v01, ptr %call7.i.i, i32 0, i32 12
  %cal_done_enable_valid = getelementptr inbounds %struct.qmi_wlanfw_ind_register_req_msg_v01, ptr %call7.i.i, i32 0, i32 22
  %7 = ptrtoint ptr %cal_done_enable_valid to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %cal_done_enable_valid, align 2
  %cal_done_enable = getelementptr inbounds %struct.qmi_wlanfw_ind_register_req_msg_v01, ptr %call7.i.i, i32 0, i32 23
  %8 = ptrtoint ptr %cal_done_enable to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %cal_done_enable, align 1
  %pin_connect_result_enable_valid = getelementptr inbounds %struct.qmi_wlanfw_ind_register_req_msg_v01, ptr %call7.i.i, i32 0, i32 8
  %9 = call ptr @memset(ptr %request_mem_enable_valid, i32 1, i32 6)
  %10 = ptrtoint ptr %pin_connect_result_enable_valid to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %pin_connect_result_enable_valid, align 8
  %pin_connect_result_enable = getelementptr inbounds %struct.qmi_wlanfw_ind_register_req_msg_v01, ptr %call7.i.i, i32 0, i32 9
  %11 = ptrtoint ptr %pin_connect_result_enable to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %pin_connect_result_enable, align 1
  %call6 = call i32 @qmi_txn_init(ptr noundef %handle1, ptr noundef nonnull %txn, ptr noundef nonnull @qmi_wlanfw_ind_register_resp_msg_v01_ei, ptr noundef nonnull %call7.i.i69) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end5.out_crit_edge, label %do.body

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %12 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %do.body.if.then11_crit_edge

do.body.if.then11_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_fw_ind_register_send, %if.then11)) #8
          to label %do.end [label %if.then11], !srcloc !301

if.then11:                                        ; preds = %lor.lhs.false, %do.body.if.then11_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 64, ptr noundef nonnull @.str.48) #8
  br label %do.end

do.end:                                           ; preds = %if.then11, %lor.lhs.false
  %call15 = call i32 @qmi_send_request(ptr noundef %handle1, ptr noundef null, ptr noundef nonnull %txn, i32 noundef 32, i32 noundef 54, ptr noundef nonnull @qmi_wlanfw_ind_register_req_msg_v01_ei, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @qmi_txn_cancel(ptr noundef nonnull %txn) #8
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.49, i32 noundef %call15) #8
  br label %out

if.end18:                                         ; preds = %do.end
  %call20 = call i32 @qmi_txn_wait(ptr noundef nonnull %txn, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.50, i32 noundef %call20) #8
  br label %out

if.end23:                                         ; preds = %if.end18
  %13 = ptrtoint ptr %call7.i.i69 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %call7.i.i69, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp25.not = icmp eq i16 %14, 0
  br i1 %cmp25.not, label %if.end23.out_crit_edge, label %if.then27

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %14 to i32
  %error = getelementptr inbounds %struct.qmi_response_type_v01, ptr %call7.i.i69, i32 0, i32 1
  %15 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %error, align 2
  %conv32 = zext i16 %16 to i32
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.51, i32 noundef %conv, i32 noundef %conv32) #8
  br label %out

out:                                              ; preds = %if.then27, %if.end23.out_crit_edge, %if.then22, %if.then17, %if.end5.out_crit_edge
  %ret.0 = phi i32 [ %call6, %if.end5.out_crit_edge ], [ %call15, %if.then17 ], [ %call20, %if.then22 ], [ -22, %if.then27 ], [ %call20, %if.end23.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i69) #8
  br label %resp_out

resp_out:                                         ; preds = %out, %if.end.resp_out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out ], [ -12, %if.end.resp_out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %resp_out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %resp_out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath11k_qmi_host_cap_send(ptr noundef %ab) unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.qmi_wlanfw_host_cap_req_msg_v01, align 4
  %resp = alloca %struct.qmi_wlanfw_host_cap_resp_msg_v01, align 4
  %txn = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 180, ptr nonnull %req) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #8
  %0 = getelementptr inbounds %struct.qmi_response_type_v01, ptr %resp, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn) #8
  %1 = call ptr @memset(ptr %txn, i32 255, i32 168)
  %2 = call ptr @memset(ptr %req, i32 0, i32 180)
  %3 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %resp, align 4
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %req, align 4
  %num_clients = getelementptr inbounds %struct.qmi_wlanfw_host_cap_req_msg_v01, ptr %req, i32 0, i32 1
  %5 = ptrtoint ptr %num_clients to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %num_clients, align 4
  %target_mem_mode = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 10
  %6 = ptrtoint ptr %target_mem_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target_mem_mode, align 4
  %conv = trunc i32 %7 to i8
  %mem_cfg_mode = getelementptr inbounds %struct.qmi_wlanfw_host_cap_req_msg_v01, ptr %req, i32 0, i32 26
  %8 = ptrtoint ptr %mem_cfg_mode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %mem_cfg_mode, align 1
  %mem_cfg_mode_valid = getelementptr inbounds %struct.qmi_wlanfw_host_cap_req_msg_v01, ptr %req, i32 0, i32 25
  %9 = ptrtoint ptr %mem_cfg_mode_valid to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %mem_cfg_mode_valid, align 4
  %bdf_support_valid = getelementptr inbounds %struct.qmi_wlanfw_host_cap_req_msg_v01, ptr %req, i32 0, i32 9
  %10 = ptrtoint ptr %bdf_support_valid to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %bdf_support_valid, align 2
  %bdf_support = getelementptr inbounds %struct.qmi_wlanfw_host_cap_req_msg_v01, ptr %req, i32 0, i32 10
  %11 = ptrtoint ptr %bdf_support to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %bdf_support, align 1
  %m3_fw_support = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 37, i32 1
  %12 = ptrtoint ptr %m3_fw_support to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %m3_fw_support, align 1, !range !302
  %14 = getelementptr inbounds %struct.qmi_wlanfw_host_cap_req_msg_v01, ptr %req, i32 0, i32 13
  %cal_done_valid = getelementptr inbounds %struct.qmi_wlanfw_host_cap_req_msg_v01, ptr %req, i32 0, i32 21
  %15 = zext i8 %13 to i32
  %16 = call ptr @memset(ptr %14, i32 %15, i32 4)
  %17 = ptrtoint ptr %cal_done_valid to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %cal_done_valid, align 2
  %cal_done = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 12
  %18 = ptrtoint ptr %cal_done to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cal_done, align 1
  %cal_done6 = getelementptr inbounds %struct.qmi_wlanfw_host_cap_req_msg_v01, ptr %req, i32 0, i32 22
  %20 = ptrtoint ptr %cal_done6 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %cal_done6, align 1
  %internal_sleep_clock = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 7
  %21 = ptrtoint ptr %internal_sleep_clock to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %internal_sleep_clock, align 4, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool7.not = icmp eq i8 %22, 0
  br i1 %tobool7.not, label %entry.do.body_crit_edge, label %if.then8

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %nm_modem_valid = getelementptr inbounds %struct.qmi_wlanfw_host_cap_req_msg_v01, ptr %req, i32 0, i32 7
  %23 = ptrtoint ptr %nm_modem_valid to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %nm_modem_valid, align 4
  %nm_modem = getelementptr inbounds %struct.qmi_wlanfw_host_cap_req_msg_v01, ptr %req, i32 0, i32 8
  %24 = ptrtoint ptr %nm_modem to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %nm_modem, align 1
  %26 = or i8 %25, 6
  store i8 %26, ptr %nm_modem, align 1
  br label %do.body

do.body:                                          ; preds = %if.then8, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %27 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %do.body.if.then18_crit_edge

do.body.if.then18_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_host_cap_send, %if.then18)) #8
          to label %do.end [label %if.then18], !srcloc !301

if.then18:                                        ; preds = %lor.lhs.false, %do.body.if.then18_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 64, ptr noundef nonnull @.str.52) #8
  br label %do.end

do.end:                                           ; preds = %if.then18, %lor.lhs.false
  %handle = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 1
  %call21 = call i32 @qmi_txn_init(ptr noundef %handle, ptr noundef nonnull %txn, ptr noundef nonnull @qmi_wlanfw_host_cap_resp_msg_v01_ei, ptr noundef nonnull %resp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %do.end.out_crit_edge, label %if.end24

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end24:                                         ; preds = %do.end
  %call27 = call i32 @qmi_send_request(ptr noundef %handle, ptr noundef null, ptr noundef nonnull %txn, i32 noundef 52, i32 noundef 261, ptr noundef nonnull @qmi_wlanfw_host_cap_req_msg_v01_ei, ptr noundef nonnull %req) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  call void @qmi_txn_cancel(ptr noundef nonnull %txn) #8
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.53, i32 noundef %call27) #8
  br label %out

if.end31:                                         ; preds = %if.end24
  %call33 = call i32 @qmi_txn_wait(ptr noundef nonnull %txn, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end31.out_crit_edge, label %if.end37

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end37:                                         ; preds = %if.end31
  %28 = ptrtoint ptr %resp to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp40.not = icmp eq i16 %29, 0
  br i1 %cmp40.not, label %if.end37.out_crit_edge, label %if.then42

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %conv39 = zext i16 %29 to i32
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %0, align 2
  %conv47 = zext i16 %31 to i32
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.54, i32 noundef %conv39, i32 noundef %conv47) #8
  br label %out

out:                                              ; preds = %if.then42, %if.end37.out_crit_edge, %if.end31.out_crit_edge, %if.then30, %do.end.out_crit_edge
  %ret.0 = phi i32 [ %call21, %do.end.out_crit_edge ], [ %call27, %if.then30 ], [ %call33, %if.end31.out_crit_edge ], [ -22, %if.then42 ], [ %call33, %if.end37.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #8
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %req) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath11k_qmi_respond_fw_mem_request(ptr noundef %ab) unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.qmi_wlanfw_respond_mem_resp_msg_v01, align 4
  %txn = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #8
  %0 = getelementptr inbounds %struct.qmi_response_type_v01, ptr %resp, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn) #8
  %1 = call ptr @memset(ptr %txn, i32 255, i32 168)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1256) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %resp, align 4
  %fixed_mem_region = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 37, i32 3
  %4 = ptrtoint ptr %fixed_mem_region to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fixed_mem_region, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

lor.lhs.false:                                    ; preds = %if.end
  %dev_flags = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 45
  %6 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %dev_flags, align 4
  %8 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %land.lhs.true, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %target_mem_delayed = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 11
  %9 = ptrtoint ptr %target_mem_delayed to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %target_mem_delayed, align 4, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %land.lhs.true.if.else_crit_edge, label %if.then5

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then5:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %11 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %if.then5.if.then9_crit_edge

if.then5.if.then9_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

lor.lhs.false7:                                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_respond_fw_mem_request, %if.then9)) #8
          to label %do.end [label %if.then9], !srcloc !301

if.then9:                                         ; preds = %lor.lhs.false7, %if.then5.if.then9_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %mem_seg_count = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 9
  %12 = ptrtoint ptr %mem_seg_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mem_seg_count, align 4
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 64, ptr noundef nonnull @.str.56, i32 noundef %13) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %lor.lhs.false7
  %14 = call ptr @memset(ptr %call7.i.i, i32 0, i32 1256)
  br label %if.end51

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge, %if.end.if.else_crit_edge
  %mem_seg_count13 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 9
  %15 = ptrtoint ptr %mem_seg_count13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mem_seg_count13, align 4
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp161.not = icmp eq i32 %16, 0
  br i1 %cmp161.not, label %if.else.if.end51_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else.for.body_crit_edge
  %i.0162 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.else.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %i.0162
  %paddr = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %i.0162, i32 2
  %18 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %paddr, align 4
  %conv = zext i32 %19 to i64
  %arrayidx16 = getelementptr %struct.qmi_wlanfw_respond_mem_req_msg_v01, ptr %call7.i.i, i32 0, i32 1, i32 %i.0162
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv, ptr %arrayidx16, align 8
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %size22 = getelementptr %struct.qmi_wlanfw_respond_mem_req_msg_v01, ptr %call7.i.i, i32 0, i32 1, i32 %i.0162, i32 1
  %23 = ptrtoint ptr %size22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %size22, align 8
  %type = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 8, i32 %i.0162, i32 1
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type, align 4
  %type28 = getelementptr %struct.qmi_wlanfw_respond_mem_req_msg_v01, ptr %call7.i.i, i32 0, i32 1, i32 %i.0162, i32 2
  %26 = ptrtoint ptr %type28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %type28, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %27 = load i32, ptr @ath11k_debug_mask, align 4
  %and30 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %lor.lhs.false32, label %for.body.if.then35_crit_edge

for.body.if.then35_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

lor.lhs.false32:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_respond_fw_mem_request, %if.then35)) #8
          to label %for.inc [label %if.then35], !srcloc !301

if.then35:                                        ; preds = %lor.lhs.false32, %for.body.if.then35_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %30 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type, align 4
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 64, ptr noundef nonnull @.str.57, i32 noundef %i.0162, ptr noundef %paddr, i32 noundef %29, i32 noundef %31) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then35, %lor.lhs.false32
  %inc = add nuw i32 %i.0162, 1
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call7.i.i, align 8
  %cmp = icmp ult i32 %inc, %33
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end51_crit_edge

for.inc.if.end51_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end51:                                         ; preds = %for.inc.if.end51_crit_edge, %if.else.if.end51_crit_edge, %do.end
  %delayed.0.off0 = phi i1 [ true, %do.end ], [ false, %if.else.if.end51_crit_edge ], [ false, %for.inc.if.end51_crit_edge ]
  %handle = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 1
  %call53 = call i32 @qmi_txn_init(ptr noundef %handle, ptr noundef nonnull %txn, ptr noundef nonnull @qmi_wlanfw_respond_mem_resp_msg_v01_ei, ptr noundef nonnull %resp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end51.out_crit_edge, label %do.body58

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body58:                                        ; preds = %if.end51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %34 = load i32, ptr @ath11k_debug_mask, align 4
  %and59 = and i32 %34, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %lor.lhs.false61, label %do.body58.if.then64_crit_edge

do.body58.if.then64_crit_edge:                    ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then64

lor.lhs.false61:                                  ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_respond_fw_mem_request, %if.then64)) #8
          to label %do.end69 [label %if.then64], !srcloc !301

if.then64:                                        ; preds = %lor.lhs.false61, %do.body58.if.then64_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %conv66 = zext i1 %delayed.0.off0 to i32
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 64, ptr noundef nonnull @.str.58, i32 noundef %conv66) #8
  br label %do.end69

do.end69:                                         ; preds = %if.then64, %lor.lhs.false61
  %call72 = call i32 @qmi_send_request(ptr noundef %handle, ptr noundef null, ptr noundef nonnull %txn, i32 noundef 54, i32 noundef 888, ptr noundef nonnull @qmi_wlanfw_respond_mem_req_msg_v01_ei, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #10
  call void @qmi_txn_cancel(ptr noundef nonnull %txn) #8
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.59, i32 noundef %call72) #8
  br label %out

if.end76:                                         ; preds = %do.end69
  %call78 = call i32 @qmi_txn_wait(ptr noundef nonnull %txn, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.60, i32 noundef %call78) #8
  br label %out

if.end82:                                         ; preds = %if.end76
  %35 = ptrtoint ptr %resp to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp85.not = icmp eq i16 %36, 0
  br i1 %cmp85.not, label %if.end82.out_crit_edge, label %if.then87

if.end82.out_crit_edge:                           ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then87:                                        ; preds = %if.end82
  br i1 %delayed.0.off0, label %land.lhs.true90, label %if.then87.if.end96_crit_edge

if.then87.if.end96_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

land.lhs.true90:                                  ; preds = %if.then87
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp93 = icmp eq i16 %38, 0
  br i1 %cmp93, label %land.lhs.true90.out_crit_edge, label %land.lhs.true90.if.end96_crit_edge

land.lhs.true90.if.end96_crit_edge:               ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

land.lhs.true90.out_crit_edge:                    ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end96:                                         ; preds = %land.lhs.true90.if.end96_crit_edge, %if.then87.if.end96_crit_edge
  %conv99 = zext i16 %36 to i32
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %0, align 2
  %conv102 = zext i16 %40 to i32
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.61, i32 noundef %conv99, i32 noundef %conv102) #8
  br label %out

out:                                              ; preds = %if.end96, %land.lhs.true90.out_crit_edge, %if.end82.out_crit_edge, %if.then81, %if.then75, %if.end51.out_crit_edge
  %ret.0 = phi i32 [ %call53, %if.end51.out_crit_edge ], [ %call72, %if.then75 ], [ %call78, %if.then81 ], [ %call78, %land.lhs.true90.out_crit_edge ], [ -22, %if.end96 ], [ %call78, %if.end82.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath11k_qmi_request_target_cap(ptr noundef %ab) unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.qmi_wlanfw_cap_req_msg_v01, align 1
  %resp = alloca %struct.qmi_wlanfw_cap_resp_msg_v01, align 4
  %txn = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %req) #8
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %resp) #8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn) #8
  %0 = call ptr @memset(ptr %txn, i32 255, i32 168)
  %1 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %req, align 1
  %2 = call ptr @memset(ptr %resp, i32 0, i32 240)
  %handle = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 1
  %call = call i32 @qmi_txn_init(ptr noundef %handle, ptr noundef nonnull %txn, ptr noundef nonnull @qmi_wlanfw_cap_resp_msg_v01_ei, ptr noundef nonnull %resp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %do.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %3 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body.if.then2_crit_edge

do.body.if.then2_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_request_target_cap, %if.then2)) #8
          to label %do.end [label %if.then2], !srcloc !301

if.then2:                                         ; preds = %lor.lhs.false, %do.body.if.then2_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 64, ptr noundef nonnull @.str.65) #8
  br label %do.end

do.end:                                           ; preds = %if.then2, %lor.lhs.false
  %call6 = call i32 @qmi_send_request(ptr noundef %handle, ptr noundef null, ptr noundef nonnull %txn, i32 noundef 36, i32 noundef 0, ptr noundef nonnull @qmi_wlanfw_cap_req_msg_v01_ei, ptr noundef nonnull %req) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @qmi_txn_cancel(ptr noundef nonnull %txn) #8
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.66, i32 noundef %call6) #8
  br label %out

if.end9:                                          ; preds = %do.end
  %call11 = call i32 @qmi_txn_wait(ptr noundef nonnull %txn, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.67, i32 noundef %call11) #8
  br label %out

if.end14:                                         ; preds = %if.end9
  %4 = ptrtoint ptr %resp to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp16.not = icmp eq i16 %5, 0
  br i1 %cmp16.not, label %if.end24, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %5 to i32
  %error = getelementptr inbounds %struct.qmi_response_type_v01, ptr %resp, i32 0, i32 1
  %6 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %error, align 2
  %conv23 = zext i16 %7 to i32
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.68, i32 noundef %conv, i32 noundef %conv23) #8
  br label %out

if.end24:                                         ; preds = %if.end14
  %chip_info_valid = getelementptr inbounds %struct.qmi_wlanfw_cap_resp_msg_v01, ptr %resp, i32 0, i32 1
  %8 = ptrtoint ptr %chip_info_valid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %chip_info_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool25.not = icmp eq i8 %9, 0
  br i1 %tobool25.not, label %if.end24.if.end33_crit_edge, label %if.then26

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %chip_info = getelementptr inbounds %struct.qmi_wlanfw_cap_resp_msg_v01, ptr %resp, i32 0, i32 2
  %10 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chip_info, align 4
  %target = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 13
  %12 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %target, align 4
  %chip_family = getelementptr inbounds %struct.qmi_wlanfw_cap_resp_msg_v01, ptr %resp, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %chip_family to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chip_family, align 4
  %chip_family32 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 13, i32 1
  %15 = ptrtoint ptr %chip_family32 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %chip_family32, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then26, %if.end24.if.end33_crit_edge
  %board_info_valid = getelementptr inbounds %struct.qmi_wlanfw_cap_resp_msg_v01, ptr %resp, i32 0, i32 3
  %16 = ptrtoint ptr %board_info_valid to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %board_info_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool34.not = icmp eq i8 %17, 0
  br i1 %tobool34.not, label %if.end33.if.end42_crit_edge, label %if.then35

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %board_info = getelementptr inbounds %struct.qmi_wlanfw_cap_resp_msg_v01, ptr %resp, i32 0, i32 4
  %18 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %board_info, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then35, %if.end33.if.end42_crit_edge
  %.sink = phi i32 [ %19, %if.then35 ], [ 255, %if.end33.if.end42_crit_edge ]
  %20 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 13, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %20, align 4
  %soc_info_valid = getelementptr inbounds %struct.qmi_wlanfw_cap_resp_msg_v01, ptr %resp, i32 0, i32 5
  %22 = ptrtoint ptr %soc_info_valid to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %soc_info_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool43.not = icmp eq i8 %23, 0
  br i1 %tobool43.not, label %if.end42.if.end48_crit_edge, label %if.then44

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %soc_info = getelementptr inbounds %struct.qmi_wlanfw_cap_resp_msg_v01, ptr %resp, i32 0, i32 6
  %24 = ptrtoint ptr %soc_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %soc_info, align 4
  %soc_id47 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 13, i32 3
  %26 = ptrtoint ptr %soc_id47 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %soc_id47, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.end42.if.end48_crit_edge
  %fw_version_info_valid = getelementptr inbounds %struct.qmi_wlanfw_cap_resp_msg_v01, ptr %resp, i32 0, i32 7
  %27 = ptrtoint ptr %fw_version_info_valid to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fw_version_info_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool49.not = icmp eq i8 %28, 0
  br i1 %tobool49.not, label %if.end48.if.end60_crit_edge, label %if.then50

if.end48.if.end60_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %fw_version_info = getelementptr inbounds %struct.qmi_wlanfw_cap_resp_msg_v01, ptr %resp, i32 0, i32 8
  %29 = ptrtoint ptr %fw_version_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fw_version_info, align 4
  %fw_version53 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 13, i32 4
  %31 = ptrtoint ptr %fw_version53 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %fw_version53, align 4
  %fw_build_timestamp = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 13, i32 6
  %fw_build_timestamp57 = getelementptr inbounds %struct.qmi_wlanfw_cap_resp_msg_v01, ptr %resp, i32 0, i32 8, i32 1
  %call59 = call i32 @strlcpy(ptr noundef %fw_build_timestamp, ptr noundef %fw_build_timestamp57, i32 noundef 33) #8
  br label %if.end60

if.end60:                                         ; preds = %if.then50, %if.end48.if.end60_crit_edge
  %fw_build_id_valid = getelementptr inbounds %struct.qmi_wlanfw_cap_resp_msg_v01, ptr %resp, i32 0, i32 9
  %32 = ptrtoint ptr %fw_build_id_valid to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %fw_build_id_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool61.not = icmp eq i8 %33, 0
  br i1 %tobool61.not, label %if.end60.if.end69_crit_edge, label %if.then62

if.end60.if.end69_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %fw_build_id = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 13, i32 7
  %fw_build_id66 = getelementptr inbounds %struct.qmi_wlanfw_cap_resp_msg_v01, ptr %resp, i32 0, i32 10
  %call68 = call i32 @strlcpy(ptr noundef %fw_build_id, ptr noundef %fw_build_id66, i32 noundef 129) #8
  br label %if.end69

if.end69:                                         ; preds = %if.then62, %if.end60.if.end69_crit_edge
  %eeprom_read_timeout_valid = getelementptr inbounds %struct.qmi_wlanfw_cap_resp_msg_v01, ptr %resp, i32 0, i32 19
  %34 = ptrtoint ptr %eeprom_read_timeout_valid to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %eeprom_read_timeout_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool70.not = icmp eq i8 %35, 0
  br i1 %tobool70.not, label %if.end69.if.end84_crit_edge, label %if.then71

if.end69.if.end84_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then71:                                        ; preds = %if.end69
  %eeprom_read_timeout = getelementptr inbounds %struct.qmi_wlanfw_cap_resp_msg_v01, ptr %resp, i32 0, i32 20
  %36 = ptrtoint ptr %eeprom_read_timeout to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %eeprom_read_timeout, align 4
  %eeprom_caldata = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 13, i32 5
  %38 = ptrtoint ptr %eeprom_caldata to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %eeprom_caldata, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %39 = load i32, ptr @ath11k_debug_mask, align 4
  %and75 = and i32 %39, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %lor.lhs.false77, label %if.then71.if.then80_crit_edge

if.then71.if.then80_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80

lor.lhs.false77:                                  ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_request_target_cap, %if.then80)) #8
          to label %if.end84 [label %if.then80], !srcloc !301

if.then80:                                        ; preds = %lor.lhs.false77, %if.then71.if.then80_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 64, ptr noundef nonnull @.str.69) #8
  br label %if.end84

if.end84:                                         ; preds = %if.then80, %lor.lhs.false77, %if.end69.if.end84_crit_edge
  %target86 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 13
  %40 = ptrtoint ptr %target86 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %target86, align 4
  %chip_family90 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 13, i32 1
  %42 = ptrtoint ptr %chip_family90 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %chip_family90, align 4
  %44 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %20, align 4
  %soc_id96 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 13, i32 3
  %46 = ptrtoint ptr %soc_id96 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %soc_id96, align 4
  call void (ptr, ptr, ...) @ath11k_info(ptr noundef %ab, ptr noundef nonnull @.str.70, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47) #8
  %fw_version99 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 13, i32 4
  %48 = ptrtoint ptr %fw_version99 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fw_version99, align 4
  %fw_build_timestamp102 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 13, i32 6
  %fw_build_id106 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 13, i32 7
  call void (ptr, ptr, ...) @ath11k_info(ptr noundef %ab, ptr noundef nonnull @.str.71, i32 noundef %49, ptr noundef %fw_build_timestamp102, ptr noundef %fw_build_id106) #8
  %call108 = call i32 @ath11k_core_check_dt(ptr noundef %ab) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end84.out_crit_edge, label %do.body111

if.end84.out_crit_edge:                           ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body111:                                       ; preds = %if.end84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %50 = load i32, ptr @ath11k_debug_mask, align 4
  %and112 = and i32 %50, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %lor.lhs.false114, label %do.body111.if.then117_crit_edge

do.body111.if.then117_crit_edge:                  ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then117

lor.lhs.false114:                                 ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_request_target_cap, %if.then117)) #8
          to label %out [label %if.then117], !srcloc !301

if.then117:                                       ; preds = %lor.lhs.false114, %do.body111.if.then117_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 64, ptr noundef nonnull @.str.72) #8
  br label %out

out:                                              ; preds = %if.then117, %lor.lhs.false114, %if.end84.out_crit_edge, %if.then18, %if.then13, %if.then8, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call6, %if.then8 ], [ %call11, %if.then13 ], [ -22, %if.then18 ], [ %call11, %if.then117 ], [ %call11, %if.end84.out_crit_edge ], [ %call11, %lor.lhs.false114 ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn) #8
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %resp) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %req) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath11k_qmi_load_bdf_qmi(ptr noundef %ab, i1 noundef zeroext %regdb) unnamed_addr #0 align 64 {
entry:
  %filename = alloca [64 x i8], align 1
  %bd = alloca %struct.ath11k_board_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %filename) #8
  %2 = call ptr @memset(ptr %filename, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bd) #8
  %3 = getelementptr inbounds %struct.ath11k_board_data, ptr %bd, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ath11k_board_data, ptr %bd, i32 0, i32 2
  %5 = call ptr @memset(ptr %bd, i32 0, i32 12)
  br i1 %regdb, label %if.end5, label %if.else

if.else:                                          ; preds = %entry
  %call2 = call i32 @ath11k_core_fetch_bdf(ptr noundef %ab, ptr noundef nonnull %bd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else11, label %if.end5.thread152

if.end5.thread152:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.73, i32 noundef %call2) #8
  br label %out

if.end5:                                          ; preds = %entry
  %call = call i32 @ath11k_core_fetch_regdb(ptr noundef %ab, ptr noundef nonnull %bd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end5.do.body_crit_edge, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else11:                                        ; preds = %if.else
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp ugt i32 %7, 3
  br i1 %cmp, label %land.lhs.true, label %if.else11.if.else15_crit_edge

if.else11.if.else15_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else15

land.lhs.true:                                    ; preds = %if.else11
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(4) %9, ptr noundef nonnull dereferenceable(4) @.str.74, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp13 = icmp eq i32 %bcmp, 0
  br i1 %cmp13, label %land.lhs.true.do.body_crit_edge, label %land.lhs.true.if.else15_crit_edge

land.lhs.true.if.else15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else15

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else15:                                        ; preds = %land.lhs.true.if.else15_crit_edge, %if.else11.if.else15_crit_edge
  br label %do.body

do.body:                                          ; preds = %if.else15, %land.lhs.true.do.body_crit_edge, %if.end5.do.body_crit_edge
  %cmp31 = phi i1 [ false, %if.else15 ], [ true, %land.lhs.true.do.body_crit_edge ], [ false, %if.end5.do.body_crit_edge ]
  %bdf_type.0 = phi i32 [ 0, %if.else15 ], [ 1, %land.lhs.true.do.body_crit_edge ], [ 4, %if.end5.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %10 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %do.body.if.then20_crit_edge

do.body.if.then20_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_load_bdf_qmi, %if.then20)) #8
          to label %do.end [label %if.then20], !srcloc !301

if.then20:                                        ; preds = %lor.lhs.false, %do.body.if.then20_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 64, ptr noundef nonnull @.str.75, i32 noundef %bdf_type.0) #8
  br label %do.end

do.end:                                           ; preds = %if.then20, %lor.lhs.false
  %board_size = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 4, i32 1
  %11 = ptrtoint ptr %board_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %board_size, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %4, align 4
  %15 = call i32 @llvm.umin.i32(i32 %12, i32 %14)
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %conv = trunc i32 %bdf_type.0 to i8
  %call26 = call fastcc i32 @ath11k_qmi_load_file_target_mem(ptr noundef %ab, ptr noundef %17, i32 noundef %15, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.76) #8
  br label %out

if.end30:                                         ; preds = %do.end
  %brmerge = or i1 %cmp31, %regdb
  br i1 %brmerge, label %if.end30.out_crit_edge, label %if.end37

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end37:                                         ; preds = %if.end30
  %eeprom_caldata = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 13, i32 5
  %18 = ptrtoint ptr %eeprom_caldata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %eeprom_caldata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool38.not = icmp eq i32 %19, 0
  br i1 %tobool38.not, label %if.else40, label %if.end37.if.end67_crit_edge

if.end37.if.end67_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.else40:                                        ; preds = %if.end37
  %hif = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 12
  %20 = ptrtoint ptr %hif to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hif, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %switch.selectcmp.i = icmp eq i32 %21, 0
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.89, ptr @.str.90
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %switch.selectcmp2.i = icmp eq i32 %21, 1
  %switch.select3.i = select i1 %switch.selectcmp2.i, ptr @.str.88, ptr %switch.select.i
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.i, label %if.else40.dev_name.exit_crit_edge

if.else40.dev_name.exit_crit_edge:                ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.else40.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %25, %if.end.i ], [ %23, %if.else40.dev_name.exit_crit_edge ]
  %call44 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %filename, i32 noundef 64, ptr noundef nonnull @.str.77, ptr noundef nonnull %switch.select3.i, ptr noundef %retval.0.i)
  %call46 = call ptr @ath11k_core_firmware_request(ptr noundef %ab, ptr noundef nonnull %filename) #8
  %cmp.i = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end49, label %dev_name.exit.success_crit_edge

dev_name.exit.success_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %success

if.end49:                                         ; preds = %dev_name.exit
  %call50 = call ptr @ath11k_core_firmware_request(ptr noundef %ab, ptr noundef nonnull @.str.78) #8
  %cmp.i143 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143, label %if.then52, label %if.end49.success_crit_edge

if.end49.success_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %success

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %call50 to i32
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.79, ptr noundef nonnull %filename) #8
  br label %out

success:                                          ; preds = %if.end49.success_crit_edge, %dev_name.exit.success_crit_edge
  %fw_entry.0 = phi ptr [ %call50, %if.end49.success_crit_edge ], [ %call46, %dev_name.exit.success_crit_edge ]
  %27 = ptrtoint ptr %board_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %board_size, align 4
  %29 = ptrtoint ptr %fw_entry.0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fw_entry.0, align 4
  %31 = call i32 @llvm.umin.i32(i32 %28, i32 %30)
  %data66 = getelementptr inbounds %struct.firmware, ptr %fw_entry.0, i32 0, i32 1
  %32 = ptrtoint ptr %data66 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data66, align 4
  br label %if.end67

if.end67:                                         ; preds = %success, %if.end37.if.end67_crit_edge
  %fw_size.0 = phi i32 [ %31, %success ], [ 64, %if.end37.if.end67_crit_edge ]
  %file_type.0 = phi i32 [ 2, %success ], [ 3, %if.end37.if.end67_crit_edge ]
  %tmp.0 = phi ptr [ %33, %success ], [ %filename, %if.end37.if.end67_crit_edge ]
  %fw_entry.1 = phi ptr [ %fw_entry.0, %success ], [ inttoptr (i32 -1 to ptr), %if.end37.if.end67_crit_edge ]
  %conv68 = trunc i32 %file_type.0 to i8
  %call69 = call fastcc i32 @ath11k_qmi_load_file_target_mem(ptr noundef %ab, ptr noundef %tmp.0, i32 noundef %fw_size.0, i8 noundef zeroext %conv68)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then72, label %do.body74

if.then72:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.80) #8
  br label %out_qmi_cal

do.body74:                                        ; preds = %if.end67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %34 = load i32, ptr @ath11k_debug_mask, align 4
  %and75 = and i32 %34, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %lor.lhs.false77, label %do.body74.if.then80_crit_edge

do.body74.if.then80_crit_edge:                    ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80

lor.lhs.false77:                                  ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_load_bdf_qmi, %if.then80)) #8
          to label %out_qmi_cal [label %if.then80], !srcloc !301

if.then80:                                        ; preds = %lor.lhs.false77, %do.body74.if.then80_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 64, ptr noundef nonnull @.str.81, i32 noundef %file_type.0) #8
  br label %out_qmi_cal

out_qmi_cal:                                      ; preds = %if.then80, %lor.lhs.false77, %if.then72
  %35 = ptrtoint ptr %eeprom_caldata to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %eeprom_caldata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool87.not = icmp eq i32 %36, 0
  br i1 %tobool87.not, label %if.then88, label %out_qmi_cal.out_crit_edge

out_qmi_cal.out_crit_edge:                        ; preds = %out_qmi_cal
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then88:                                        ; preds = %out_qmi_cal
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_firmware(ptr noundef %fw_entry.1) #8
  br label %out

out:                                              ; preds = %if.then88, %out_qmi_cal.out_crit_edge, %if.then52, %if.end30.out_crit_edge, %if.then29, %if.end5.out_crit_edge, %if.end5.thread152
  %ret.1 = phi i32 [ %call, %if.end5.out_crit_edge ], [ %call26, %if.then29 ], [ %call26, %if.end30.out_crit_edge ], [ %call69, %out_qmi_cal.out_crit_edge ], [ %call69, %if.then88 ], [ %26, %if.then52 ], [ %call2, %if.end5.thread152 ]
  call void @ath11k_core_free_bdf(ptr noundef %ab, ptr noundef nonnull %bd) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %37 = load i32, ptr @ath11k_debug_mask, align 4
  %and91 = and i32 %37, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %lor.lhs.false93, label %out.if.then96_crit_edge

out.if.then96_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then96

lor.lhs.false93:                                  ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_load_bdf_qmi, %if.then96)) #8
          to label %do.end99 [label %if.then96], !srcloc !301

if.then96:                                        ; preds = %lor.lhs.false93, %out.if.then96_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 64, ptr noundef nonnull @.str.82) #8
  br label %do.end99

do.end99:                                         ; preds = %if.then96, %lor.lhs.false93
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bd) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %filename) #8
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath11k_qmi_wlanfw_m3_info_send(ptr noundef %ab) unnamed_addr #0 align 64 {
entry:
  %path.i = alloca [100 x i8], align 1
  %req = alloca %struct.qmi_wlanfw_m3_info_req_msg_v01, align 8
  %resp = alloca %struct.qmi_wlanfw_m3_info_resp_msg_v01, align 4
  %txn = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %m3_mem1 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #8
  %0 = getelementptr inbounds %struct.qmi_response_type_v01, ptr %resp, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn) #8
  %1 = call ptr @memset(ptr %txn, i32 255, i32 168)
  %2 = call ptr @memset(ptr %req, i32 0, i32 16)
  %3 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %resp, align 4
  %m3_fw_support = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 37, i32 1
  %4 = ptrtoint ptr %m3_fw_support to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %m3_fw_support, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %path.i) #8
  %6 = call ptr @memset(ptr %path.i, i32 255, i32 100)
  %vaddr.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 14, i32 2
  %7 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vaddr.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.ath11k_qmi_m3_load.exit.thread_crit_edge

if.then.ath11k_qmi_m3_load.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath11k_qmi_m3_load.exit.thread

lor.lhs.false.i:                                  ; preds = %if.then
  %9 = ptrtoint ptr %m3_mem1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %m3_mem1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.i = icmp eq i32 %10, 0
  br i1 %tobool2.not.i, label %if.end.i, label %lor.lhs.false.i.ath11k_qmi_m3_load.exit.thread_crit_edge

lor.lhs.false.i.ath11k_qmi_m3_load.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath11k_qmi_m3_load.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i = tail call ptr @ath11k_core_firmware_request(ptr noundef %ab, ptr noundef nonnull @.str.96) #8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %ath11k_qmi_m3_load.exit, label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i
  %dev.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 2
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 8
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call.i, align 4
  %paddr.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 14, i32 1
  %call.i43.i = tail call ptr @dma_alloc_attrs(ptr noundef %12, i32 noundef %14, ptr noundef %paddr.i, i32 noundef 3264, i32 noundef 0) #8
  %15 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i43.i, ptr %vaddr.i, align 4
  %tobool12.not.i = icmp eq ptr %call.i43.i, null
  br i1 %tobool12.not.i, label %ath11k_qmi_m3_load.exit.thread66, label %if.end15.i

ath11k_qmi_m3_load.exit.thread66:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.98, i32 noundef %17) #8
  tail call void @release_firmware(ptr noundef %call.i) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %path.i) #8
  br label %if.then3

if.end15.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.firmware, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call.i, align 4
  %22 = call ptr @memcpy(ptr %call.i43.i, ptr %19, i32 %21)
  %23 = load i32, ptr %call.i, align 4
  %24 = ptrtoint ptr %m3_mem1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %m3_mem1, align 4
  tail call void @release_firmware(ptr noundef %call.i) #8
  br label %ath11k_qmi_m3_load.exit.thread

ath11k_qmi_m3_load.exit.thread:                   ; preds = %if.end15.i, %lor.lhs.false.i.ath11k_qmi_m3_load.exit.thread_crit_edge, %if.then.ath11k_qmi_m3_load.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %path.i) #8
  %paddr = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 14, i32 1
  %25 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %paddr, align 4
  %conv = zext i32 %26 to i64
  %27 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv, ptr %req, align 8
  %28 = ptrtoint ptr %m3_mem1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %m3_mem1, align 4
  br label %if.end7

ath11k_qmi_m3_load.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %call.i to i32
  %fw.i.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 4
  %31 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fw.i.i, align 4
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %path.i, i32 noundef 100, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100, ptr noundef %32, ptr noundef nonnull @.str.96) #8
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.97, ptr noundef nonnull %path.i, i32 noundef %30) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %path.i) #8
  br label %if.then3

if.then3:                                         ; preds = %ath11k_qmi_m3_load.exit, %ath11k_qmi_m3_load.exit.thread66
  %retval.0.i69 = phi i32 [ -12, %ath11k_qmi_m3_load.exit.thread66 ], [ %30, %ath11k_qmi_m3_load.exit ]
  call void (ptr, ptr, ...) @ath11k_err(ptr noundef %ab, ptr noundef nonnull @.str.91, i32 noundef %retval.0.i69) #8
  br label %cleanup

if.end7:                                          ; preds = %ath11k_qmi_m3_load.exit.thread, %entry.if.end7_crit_edge
  %.sink = phi i32 [ %29, %ath11k_qmi_m3_load.exit.thread ], [ 0, %entry.if.end7_crit_edge ]
  %size6 = getelementptr inbounds %struct.qmi_wlanfw_m3_info_req_msg_v01, ptr %req, i32 0, i32 1
  %33 = ptrtoint ptr %size6 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink, ptr %size6, align 8
  %handle = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 1
  %call9 = call i32 @qmi_txn_init(ptr noundef %handle, ptr noundef nonnull %txn, ptr noundef nonnull @qmi_wlanfw_m3_info_resp_msg_v01_ei, ptr noundef nonnull %resp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %do.body

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %34 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %34, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %do.body.if.then16_crit_edge

do.body.if.then16_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_wlanfw_m3_info_send, %if.then16)) #8
          to label %do.end [label %if.then16], !srcloc !301

if.then16:                                        ; preds = %lor.lhs.false, %do.body.if.then16_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 64, ptr noundef nonnull @.str.92) #8
  br label %do.end

do.end:                                           ; preds = %if.then16, %lor.lhs.false
  %call20 = call i32 @qmi_send_request(ptr noundef %handle, ptr noundef null, ptr noundef nonnull %txn, i32 noundef 60, i32 noundef 18, ptr noundef nonnull @qmi_wlanfw_m3_info_req_msg_v01_ei, ptr noundef nonnull %req) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @qmi_txn_cancel(ptr noundef nonnull %txn) #8
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.93, i32 noundef %call20) #8
  br label %cleanup

if.end24:                                         ; preds = %do.end
  %call26 = call i32 @qmi_txn_wait(ptr noundef nonnull %txn, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.94, i32 noundef %call26) #8
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  %35 = ptrtoint ptr %resp to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp33.not = icmp eq i16 %36, 0
  br i1 %cmp33.not, label %if.end30.cleanup_crit_edge, label %if.then35

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %conv32 = zext i16 %36 to i32
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %0, align 2
  %conv40 = zext i16 %38 to i32
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.95, i32 noundef %conv32, i32 noundef %conv40) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end30.cleanup_crit_edge, %if.then29, %if.then23, %if.end7.cleanup_crit_edge, %if.then3
  %retval.0 = phi i32 [ %retval.0.i69, %if.then3 ], [ %call9, %if.end7.cleanup_crit_edge ], [ %call20, %if.then23 ], [ %call26, %if.then29 ], [ -22, %if.then35 ], [ %call26, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_core_check_dt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_core_fetch_regdb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_core_fetch_bdf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath11k_qmi_load_file_target_mem(ptr noundef %ab, ptr noundef %data, i32 noundef %len, i8 noundef zeroext %type) unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.qmi_wlanfw_bdf_download_resp_msg_v01, align 4
  %txn = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #8
  %0 = getelementptr inbounds %struct.qmi_response_type_v01, ptr %resp, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn) #8
  %1 = call ptr @memset(ptr %txn, i32 255, i32 168)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 6180) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %resp, align 4
  %fixed_bdf_addr = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 37, i32 2
  %4 = ptrtoint ptr %fixed_bdf_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fixed_bdf_addr, align 2, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end.if.end9_crit_edge, label %if.then2

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then2:                                         ; preds = %if.end
  %bdf_addr3 = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 3
  %6 = ptrtoint ptr %bdf_addr3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bdf_addr3, align 4
  %board_size = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 4, i32 1
  %8 = ptrtoint ptr %board_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %board_size, align 4
  %call5 = tail call ptr @ioremap(i32 noundef %7, i32 noundef %9) #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.then2.if.end9_crit_edge

if.then2.if.end9_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.83) #8
  br label %err_free_req

if.end9:                                          ; preds = %if.then2.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %bdf_addr.0 = phi ptr [ %call5, %if.then2.if.end9_crit_edge ], [ null, %if.end.if.end9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool10.not182 = icmp eq i32 %len, 0
  br i1 %tobool10.not182, label %if.end9.err_iounmapthread-pre-split_crit_edge, label %while.body.lr.ph

if.end9.err_iounmapthread-pre-split_crit_edge:    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_iounmapthread-pre-split

while.body.lr.ph:                                 ; preds = %if.end9
  %file_id_valid = getelementptr inbounds %struct.qmi_wlanfw_bdf_download_req_msg_v01, ptr %call7.i.i, i32 0, i32 1
  %board_id = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 13, i32 2
  %file_id = getelementptr inbounds %struct.qmi_wlanfw_bdf_download_req_msg_v01, ptr %call7.i.i, i32 0, i32 2
  %total_size_valid = getelementptr inbounds %struct.qmi_wlanfw_bdf_download_req_msg_v01, ptr %call7.i.i, i32 0, i32 3
  %total_size = getelementptr inbounds %struct.qmi_wlanfw_bdf_download_req_msg_v01, ptr %call7.i.i, i32 0, i32 4
  %seg_id_valid = getelementptr inbounds %struct.qmi_wlanfw_bdf_download_req_msg_v01, ptr %call7.i.i, i32 0, i32 5
  %data_valid = getelementptr inbounds %struct.qmi_wlanfw_bdf_download_req_msg_v01, ptr %call7.i.i, i32 0, i32 7
  %bdf_type = getelementptr inbounds %struct.qmi_wlanfw_bdf_download_req_msg_v01, ptr %call7.i.i, i32 0, i32 13
  %bdf_type_valid = getelementptr inbounds %struct.qmi_wlanfw_bdf_download_req_msg_v01, ptr %call7.i.i, i32 0, i32 12
  %end_valid = getelementptr inbounds %struct.qmi_wlanfw_bdf_download_req_msg_v01, ptr %call7.i.i, i32 0, i32 10
  %end = getelementptr inbounds %struct.qmi_wlanfw_bdf_download_req_msg_v01, ptr %call7.i.i, i32 0, i32 11
  %data_len12 = getelementptr inbounds %struct.qmi_wlanfw_bdf_download_req_msg_v01, ptr %call7.i.i, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %type)
  %cmp18 = icmp eq i8 %type, 3
  %data25 = getelementptr inbounds %struct.qmi_wlanfw_bdf_download_req_msg_v01, ptr %call7.i.i, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type)
  %cmp33 = icmp eq i8 %type, 2
  %cal_offset = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 4, i32 2
  %handle = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 3, i32 1
  %conv51 = zext i8 %type to i32
  %seg_id = getelementptr inbounds %struct.qmi_wlanfw_bdf_download_req_msg_v01, ptr %call7.i.i, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end100.while.body_crit_edge, %while.body.lr.ph
  %remaining.0185 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %if.end100.while.body_crit_edge ]
  %bdf_addr.1184 = phi ptr [ %bdf_addr.0, %while.body.lr.ph ], [ %bdf_addr.3, %if.end100.while.body_crit_edge ]
  %temp.0183 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr89, %if.end100.while.body_crit_edge ]
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %call7.i.i, align 8
  %11 = ptrtoint ptr %file_id_valid to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %file_id_valid, align 1
  %12 = ptrtoint ptr %board_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %board_id, align 4
  %14 = ptrtoint ptr %file_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %file_id, align 4
  %15 = ptrtoint ptr %total_size_valid to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %total_size_valid, align 8
  %16 = ptrtoint ptr %total_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %remaining.0185, ptr %total_size, align 4
  %17 = ptrtoint ptr %seg_id_valid to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %seg_id_valid, align 8
  %18 = ptrtoint ptr %data_valid to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %data_valid, align 8
  %19 = ptrtoint ptr %bdf_type to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %type, ptr %bdf_type, align 1
  %20 = ptrtoint ptr %bdf_type_valid to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %bdf_type_valid, align 2
  %21 = ptrtoint ptr %end_valid to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %end_valid, align 8
  %22 = ptrtoint ptr %end to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %end, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144, i32 %remaining.0185)
  %cmp = icmp ugt i32 %remaining.0185, 6144
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %data_len12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 6144, ptr %data_len12, align 4
  br label %if.end14

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %data_len12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %remaining.0185, ptr %data_len12, align 4
  %25 = ptrtoint ptr %end to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %end, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then11
  %26 = ptrtoint ptr %fixed_bdf_addr to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fixed_bdf_addr, align 2, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool17.not = icmp ne i8 %27, 0
  %or.cond = or i1 %cmp18, %tobool17.not
  br i1 %or.cond, label %if.end27, label %if.end27.thread

if.end27.thread:                                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %data_len12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len12, align 4
  %30 = call ptr @memcpy(ptr %data25, ptr %temp.0183, i32 %29)
  br label %if.end39

if.end27:                                         ; preds = %if.end14
  %31 = ptrtoint ptr %data_valid to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %data_valid, align 8
  %32 = ptrtoint ptr %end to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %end, align 1
  %33 = ptrtoint ptr %data_len12 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 64, ptr %data_len12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool30.not = icmp eq i8 %27, 0
  br i1 %tobool30.not, label %if.end27.if.end39_crit_edge, label %if.then31

if.end27.if.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then31:                                        ; preds = %if.end27
  br i1 %cmp33, label %if.then35, label %if.then31.if.end38_crit_edge

if.then31.if.end38_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then35:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %cal_offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cal_offset, align 4
  %add.ptr = getelementptr i8, ptr %bdf_addr.1184, i32 %35
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.then31.if.end38_crit_edge
  %bdf_addr.2 = phi ptr [ %add.ptr, %if.then35 ], [ %bdf_addr.1184, %if.then31.if.end38_crit_edge ]
  call void @mmiocpy(ptr noundef %bdf_addr.2, ptr noundef %temp.0183, i32 noundef %len) #8
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end27.if.end39_crit_edge, %if.end27.thread
  %bdf_addr.3 = phi ptr [ %bdf_addr.2, %if.end38 ], [ %bdf_addr.1184, %if.end27.if.end39_crit_edge ], [ %bdf_addr.1184, %if.end27.thread ]
  %call41 = call i32 @qmi_txn_init(ptr noundef %handle, ptr noundef nonnull %txn, ptr noundef nonnull @qmi_wlanfw_bdf_download_resp_msg_v01_ei, ptr noundef nonnull %resp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end39.err_iounmapthread-pre-split_crit_edge, label %do.body

if.end39.err_iounmapthread-pre-split_crit_edge:   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_iounmapthread-pre-split

do.body:                                          ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %36 = load i32, ptr @ath11k_debug_mask, align 4
  %and = and i32 %36, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %lor.lhs.false47, label %do.body.if.then50_crit_edge

do.body.if.then50_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

lor.lhs.false47:                                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_load_file_target_mem, %if.then50)) #8
          to label %do.end [label %if.then50], !srcloc !301

if.then50:                                        ; preds = %lor.lhs.false47, %do.body.if.then50_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 64, ptr noundef nonnull @.str.84, i32 noundef %conv51) #8
  br label %do.end

do.end:                                           ; preds = %if.then50, %lor.lhs.false47
  %call55 = call i32 @qmi_send_request(ptr noundef %handle, ptr noundef null, ptr noundef nonnull %txn, i32 noundef 37, i32 noundef 6182, ptr noundef nonnull @qmi_wlanfw_bdf_download_req_msg_v01_ei, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @qmi_txn_cancel(ptr noundef nonnull %txn) #8
  br label %err_iounmapthread-pre-split

if.end59:                                         ; preds = %do.end
  %call61 = call i32 @qmi_txn_wait(ptr noundef nonnull %txn, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.85, i32 noundef %call61) #8
  br label %err_iounmapthread-pre-split

if.end65:                                         ; preds = %if.end59
  %37 = ptrtoint ptr %resp to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp68.not = icmp eq i16 %38, 0
  br i1 %cmp68.not, label %if.end76, label %if.then70

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %conv67 = zext i16 %38 to i32
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %0, align 2
  %conv75 = zext i16 %40 to i32
  call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.86, i32 noundef %conv67, i32 noundef %conv75) #8
  br label %err_iounmapthread-pre-split

if.end76:                                         ; preds = %if.end65
  %41 = ptrtoint ptr %fixed_bdf_addr to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %fixed_bdf_addr, align 2, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool79.not = icmp ne i8 %42, 0
  %or.cond170 = or i1 %cmp18, %tobool79.not
  br i1 %or.cond170, label %if.end76.err_iounmap_crit_edge, label %if.else86

if.end76.err_iounmap_crit_edge:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_iounmap

if.else86:                                        ; preds = %if.end76
  %43 = ptrtoint ptr %data_len12 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_len12, align 4
  %sub = sub i32 %remaining.0185, %44
  %add.ptr89 = getelementptr i8, ptr %temp.0183, i32 %44
  %45 = ptrtoint ptr %seg_id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %seg_id, align 4
  %inc = add i32 %46, 1
  store i32 %inc, ptr %seg_id, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %47 = load i32, ptr @ath11k_debug_mask, align 4
  %and91 = and i32 %47, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %lor.lhs.false93, label %if.else86.if.then96_crit_edge

if.else86.if.then96_crit_edge:                    ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then96

lor.lhs.false93:                                  ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_qmi_load_file_target_mem, %if.then96)) #8
          to label %if.end100 [label %if.then96], !srcloc !301

if.then96:                                        ; preds = %lor.lhs.false93, %if.else86.if.then96_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 64, ptr noundef nonnull @.str.87, i32 noundef %sub) #8
  br label %if.end100

if.end100:                                        ; preds = %if.then96, %lor.lhs.false93
  %tobool10.not = icmp eq i32 %sub, 0
  br i1 %tobool10.not, label %if.end100.err_iounmapthread-pre-split_crit_edge, label %if.end100.while.body_crit_edge

if.end100.while.body_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end100.err_iounmapthread-pre-split_crit_edge:  ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_iounmapthread-pre-split

err_iounmapthread-pre-split:                      ; preds = %if.end100.err_iounmapthread-pre-split_crit_edge, %if.then70, %if.then64, %if.then58, %if.end39.err_iounmapthread-pre-split_crit_edge, %if.end9.err_iounmapthread-pre-split_crit_edge
  %bdf_addr.4.ph = phi ptr [ %bdf_addr.0, %if.end9.err_iounmapthread-pre-split_crit_edge ], [ %bdf_addr.3, %if.then70 ], [ %bdf_addr.3, %if.then64 ], [ %bdf_addr.3, %if.then58 ], [ %bdf_addr.3, %if.end39.err_iounmapthread-pre-split_crit_edge ], [ %bdf_addr.3, %if.end100.err_iounmapthread-pre-split_crit_edge ]
  %ret.1.ph = phi i32 [ -1, %if.end9.err_iounmapthread-pre-split_crit_edge ], [ -22, %if.then70 ], [ %call61, %if.then64 ], [ %call55, %if.then58 ], [ %call61, %if.end100.err_iounmapthread-pre-split_crit_edge ], [ %call41, %if.end39.err_iounmapthread-pre-split_crit_edge ]
  %48 = ptrtoint ptr %fixed_bdf_addr to i32
  call void @__asan_load1_noabort(i32 %48)
  %.pr = load i8, ptr %fixed_bdf_addr, align 2
  br label %err_iounmap

err_iounmap:                                      ; preds = %err_iounmapthread-pre-split, %if.end76.err_iounmap_crit_edge
  %49 = phi i8 [ %.pr, %err_iounmapthread-pre-split ], [ %42, %if.end76.err_iounmap_crit_edge ]
  %bdf_addr.4 = phi ptr [ %bdf_addr.4.ph, %err_iounmapthread-pre-split ], [ %bdf_addr.3, %if.end76.err_iounmap_crit_edge ]
  %ret.1 = phi i32 [ %ret.1.ph, %err_iounmapthread-pre-split ], [ %call61, %if.end76.err_iounmap_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool103.not = icmp eq i8 %49, 0
  br i1 %tobool103.not, label %err_iounmap.err_free_req_crit_edge, label %if.then104

err_iounmap.err_free_req_crit_edge:               ; preds = %err_iounmap
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_req

if.then104:                                       ; preds = %err_iounmap
  call void @__sanitizer_cov_trace_pc() #10
  call void @iounmap(ptr noundef %bdf_addr.4) #8
  br label %err_free_req

err_free_req:                                     ; preds = %if.then104, %err_iounmap.err_free_req_crit_edge, %if.then7
  %ret.2 = phi i32 [ %ret.1, %if.then104 ], [ %ret.1, %err_iounmap.err_free_req_crit_edge ], [ -5, %if.then7 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_req, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_free_req ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath11k_core_firmware_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_core_free_bdf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !32, !33, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290}
!llvm.module.flags = !{!292, !293, !294, !295, !296, !297, !298, !299}
!llvm.ident = !{!300}

!0 = !{ptr @ath11k_cold_boot_cal, !1, !"ath11k_cold_boot_cal", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 19, i32 6}
!2 = !{ptr @__ksymtab_ath11k_cold_boot_cal, !3, !"__ksymtab_ath11k_cold_boot_cal", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 20, i32 1}
!4 = !{ptr @__param_cold_boot_cal, !5, !"__param_cold_boot_cal", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 21, i32 1}
!6 = !{ptr @__UNIQUE_ID_cold_boot_caltype373, !5, !"__UNIQUE_ID_cold_boot_caltype373", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_cold_boot_cal374, !8, !"__UNIQUE_ID_cold_boot_cal374", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 22, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2597, i32 2}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2601, i32 19}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2611, i32 2}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2616, i32 20}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2623, i32 19}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2629, i32 19}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2990, i32 19}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2994, i32 37}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2997, i32 18}
!27 = !{ptr @ath11k_qmi_init_service.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 3002, i32 2}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ath11k_qmi_init_service.__key.10, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 3003, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 3009, i32 19}
!35 = !{ptr @__ksymtab_ath11k_qmi_deinit_service, !36, !"__ksymtab_ath11k_qmi_deinit_service", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 3025, i32 1}
!37 = !{ptr @__param_str_cold_boot_cal, !5, !"__param_str_cold_boot_cal", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2425, i32 2}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2433, i32 19}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2441, i32 20}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2444, i32 19}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2450, i32 19}
!48 = !{ptr @qmi_wlanfw_wlan_mode_resp_msg_v01_ei, !49, !"qmi_wlanfw_wlan_mode_resp_msg_v01_ei", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1392, i32 29}
!50 = !{ptr @qmi_wlanfw_wlan_mode_req_msg_v01_ei, !51, !"qmi_wlanfw_wlan_mode_req_msg_v01_ei", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1357, i32 29}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2571, i32 19}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2579, i32 19}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2584, i32 19}
!58 = !{ptr @qmi_wlanfw_wlan_ini_resp_msg_v01_ei, !59, !"qmi_wlanfw_wlan_ini_resp_msg_v01_ei", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1613, i32 29}
!60 = !{ptr @qmi_wlanfw_wlan_ini_req_msg_v01_ei, !61, !"qmi_wlanfw_wlan_ini_req_msg_v01_ei", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1587, i32 29}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2479, i32 29}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2520, i32 2}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2528, i32 19}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2535, i32 19}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2540, i32 19}
!72 = !{ptr @qmi_wlanfw_wlan_cfg_resp_msg_v01_ei, !73, !"qmi_wlanfw_wlan_cfg_resp_msg_v01_ei", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1549, i32 29}
!74 = !{ptr @qmi_wlanfw_wlan_cfg_req_msg_v01_ei, !75, !"qmi_wlanfw_wlan_cfg_req_msg_v01_ei", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1410, i32 29}
!76 = !{ptr @qmi_wlanfw_ce_tgt_pipe_cfg_s_v01_ei, !77, !"qmi_wlanfw_ce_tgt_pipe_cfg_s_v01_ei", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1228, i32 29}
!78 = !{ptr @qmi_wlanfw_ce_svc_pipe_cfg_s_v01_ei, !79, !"qmi_wlanfw_ce_svc_pipe_cfg_s_v01_ei", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1281, i32 29}
!80 = !{ptr @qmi_wlanfw_shadow_reg_cfg_s_v01_ei, !81, !"qmi_wlanfw_shadow_reg_cfg_s_v01_ei", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1316, i32 29}
!82 = !{ptr @qmi_wlanfw_shadow_reg_v2_cfg_s_v01_ei, !83, !"qmi_wlanfw_shadow_reg_v2_cfg_s_v01_ei", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1340, i32 29}
!84 = !{ptr @ath11k_qmi_ops, !85, !"ath11k_qmi_ops", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2901, i32 29}
!86 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2881, i32 19}
!88 = !{ptr @.str.27, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2885, i32 2}
!90 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2897, i32 2}
!92 = !{ptr @ath11k_qmi_msg_handlers, !93, !"ath11k_qmi_msg_handlers", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2834, i32 37}
!94 = !{ptr @qmi_wlanfw_request_mem_ind_msg_v01_ei, !95, !"qmi_wlanfw_request_mem_ind_msg_v01_ei", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 628, i32 29}
!96 = !{ptr @qmi_wlanfw_mem_seg_s_v01_ei, !97, !"qmi_wlanfw_mem_seg_s_v01_ei", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 586, i32 29}
!98 = !{ptr @qmi_wlanfw_mem_cfg_s_v01_ei, !99, !"qmi_wlanfw_mem_cfg_s_v01_ei", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 554, i32 29}
!100 = !{ptr @.str.29, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2760, i32 2}
!102 = !{ptr @.str.30, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2764, i32 19}
!104 = !{ptr @.str.31, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2772, i32 3}
!106 = !{ptr @.str.32, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2780, i32 20}
!108 = !{ptr @.str.33, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2787, i32 20}
!110 = !{ptr @.str.34, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1931, i32 50}
!112 = !{ptr @.str.35, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1933, i32 5}
!114 = !{ptr @.str.36, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1940, i32 5}
!116 = !{ptr @.str.37, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1946, i32 5}
!118 = !{ptr @.str.38, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1969, i32 21}
!120 = !{ptr @.str.39, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1993, i32 20}
!122 = !{ptr @.str.40, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1901, i32 5}
!124 = !{ptr @.str.41, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1910, i32 19}
!126 = !{ptr @qmi_wlanfw_mem_ready_ind_msg_v01_ei, !127, !"qmi_wlanfw_mem_ready_ind_msg_v01_ei", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1566, i32 29}
!128 = !{ptr @.str.42, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2804, i32 2}
!130 = !{ptr @qmi_wlanfw_fw_ready_ind_msg_v01_ei, !131, !"qmi_wlanfw_fw_ready_ind_msg_v01_ei", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1573, i32 29}
!132 = !{ptr @.str.43, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2816, i32 2}
!134 = !{ptr @qmi_wlanfw_cold_boot_cal_done_ind_msg_v01_ei, !135, !"qmi_wlanfw_cold_boot_cal_done_ind_msg_v01_ei", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1580, i32 29}
!136 = !{ptr @.str.44, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2831, i32 2}
!138 = !{ptr @.str.45, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2969, i32 20}
!140 = !{ptr @.str.46, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2692, i32 19}
!142 = !{ptr @.str.47, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2699, i32 19}
!144 = !{ptr @.str.48, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1748, i32 2}
!146 = !{ptr @.str.49, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1756, i32 19}
!148 = !{ptr @.str.50, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1763, i32 19}
!150 = !{ptr @.str.51, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1768, i32 19}
!152 = !{ptr @qmi_wlanfw_ind_register_resp_msg_v01_ei, !153, !"qmi_wlanfw_ind_register_resp_msg_v01_ei", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 518, i32 29}
!154 = !{ptr @qmi_wlanfw_ind_register_req_msg_v01_ei, !155, !"qmi_wlanfw_ind_register_req_msg_v01_ei", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 293, i32 29}
!156 = !{ptr @.str.52, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1677, i32 2}
!158 = !{ptr @.str.53, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1690, i32 19}
!160 = !{ptr @.str.54, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1699, i32 19}
!162 = !{ptr @qmi_wlanfw_host_cap_resp_msg_v01_ei, !163, !"qmi_wlanfw_host_cap_resp_msg_v01_ei", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 276, i32 29}
!164 = !{ptr @qmi_wlanfw_host_cap_req_msg_v01_ei, !165, !"qmi_wlanfw_host_cap_req_msg_v01_ei", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 25, i32 29}
!166 = !{ptr @.str.55, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2713, i32 19}
!168 = !{ptr @.str.56, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1804, i32 3}
!170 = !{ptr @.str.57, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1815, i32 4}
!172 = !{ptr @.str.58, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1828, i32 2}
!174 = !{ptr @.str.59, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1837, i32 19}
!176 = !{ptr @.str.60, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1844, i32 19}
!178 = !{ptr @.str.61, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1855, i32 19}
!180 = !{ptr @qmi_wlanfw_respond_mem_resp_msg_v01_ei, !181, !"qmi_wlanfw_respond_mem_resp_msg_v01_ei", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 722, i32 29}
!182 = !{ptr @qmi_wlanfw_respond_mem_req_msg_v01_ei, !183, !"qmi_wlanfw_respond_mem_req_msg_v01_ei", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 695, i32 29}
!184 = !{ptr @qmi_wlanfw_mem_seg_resp_s_v01_ei, !185, !"qmi_wlanfw_mem_seg_resp_s_v01_ei", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 655, i32 29}
!186 = !{ptr @.str.62, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2727, i32 19}
!188 = !{ptr @.str.63, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2737, i32 19}
!190 = !{ptr @.str.64, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2743, i32 19}
!192 = !{ptr @.str.65, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2019, i32 2}
!194 = !{ptr @.str.66, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2027, i32 19}
!196 = !{ptr @.str.67, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2034, i32 19}
!198 = !{ptr @.str.68, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2039, i32 19}
!200 = !{ptr @.str.69, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2072, i32 3}
!202 = !{ptr @.str.70, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2075, i32 18}
!204 = !{ptr @.str.71, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2079, i32 18}
!206 = !{ptr @.str.72, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2086, i32 3}
!208 = !{ptr @qmi_wlanfw_cap_resp_msg_v01_ei, !209, !"qmi_wlanfw_cap_resp_msg_v01_ei", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 833, i32 29}
!210 = !{ptr @qmi_wlanfw_rf_chip_info_s_v01_ei, !211, !"qmi_wlanfw_rf_chip_info_s_v01_ei", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 748, i32 29}
!212 = !{ptr @qmi_wlanfw_rf_board_info_s_v01_ei, !213, !"qmi_wlanfw_rf_board_info_s_v01_ei", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 774, i32 29}
!214 = !{ptr @qmi_wlanfw_soc_info_s_v01_ei, !215, !"qmi_wlanfw_soc_info_s_v01_ei", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 791, i32 29}
!216 = !{ptr @qmi_wlanfw_fw_version_info_s_v01_ei, !217, !"qmi_wlanfw_fw_version_info_s_v01_ei", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 807, i32 29}
!218 = !{ptr @qmi_wlanfw_cap_req_msg_v01_ei, !219, !"qmi_wlanfw_cap_req_msg_v01_ei", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 740, i32 29}
!220 = !{ptr @.str.73, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2226, i32 20}
!222 = !{ptr @.str.74, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2234, i32 48}
!224 = !{ptr @.str.75, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2239, i32 2}
!226 = !{ptr @.str.76, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2245, i32 19}
!228 = !{ptr @.str.77, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2261, i32 40}
!230 = !{ptr @.str.78, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2267, i32 47}
!232 = !{ptr @.str.79, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2271, i32 9}
!234 = !{ptr @.str.80, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2282, i32 19}
!236 = !{ptr @.str.81, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2286, i32 2}
!238 = !{ptr @.str.82, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2293, i32 2}
!240 = !{ptr @.str.83, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2112, i32 20}
!242 = !{ptr @.str.84, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2160, i32 3}
!244 = !{ptr @.str.85, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2174, i32 20}
!246 = !{ptr @.str.86, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2180, i32 20}
!248 = !{ptr @.str.87, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2193, i32 4}
!250 = !{ptr @qmi_wlanfw_bdf_download_resp_msg_v01_ei, !251, !"qmi_wlanfw_bdf_download_resp_msg_v01_ei", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1169, i32 29}
!252 = !{ptr @qmi_wlanfw_bdf_download_req_msg_v01_ei, !253, !"qmi_wlanfw_bdf_download_req_msg_v01_ei", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1034, i32 29}
!254 = !{ptr @.str.88, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/ath/ath11k/core.h", i32 1049, i32 10}
!256 = !{ptr @.str.89, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/ath/ath11k/core.h", i32 1051, i32 10}
!258 = !{ptr @.str.90, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/ath/ath11k/core.h", i32 1054, i32 9}
!260 = !{ptr @.str.91, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2360, i32 19}
!262 = !{ptr @.str.92, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2376, i32 2}
!264 = !{ptr @.str.93, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2384, i32 19}
!266 = !{ptr @.str.94, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2391, i32 19}
!268 = !{ptr @.str.95, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2396, i32 19}
!270 = !{ptr @.str.96, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2308, i32 40}
!272 = !{ptr @.str.97, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2313, i32 18}
!274 = !{ptr @.str.98, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2321, i32 18}
!276 = !{ptr @.str.99, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/ath/ath11k/core.h", i32 1041, i32 25}
!278 = !{ptr @.str.100, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/ath/ath11k/core.h", i32 1041, i32 37}
!280 = !{ptr @qmi_wlanfw_m3_info_resp_msg_v01_ei, !281, !"qmi_wlanfw_m3_info_resp_msg_v01_ei", i1 false, i1 false}
!281 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1211, i32 29}
!282 = !{ptr @qmi_wlanfw_m3_info_req_msg_v01_ei, !283, !"qmi_wlanfw_m3_info_req_msg_v01_ei", i1 false, i1 false}
!283 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 1187, i32 29}
!284 = !{ptr @.str.101, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2647, i32 2}
!286 = !{ptr @.str.102, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2649, i32 12}
!288 = !{ptr @.str.103, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2653, i32 19}
!290 = !{ptr @.str.104, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/wireless/ath/ath11k/qmi.c", i32 2657, i32 2}
!292 = !{i32 1, !"wchar_size", i32 2}
!293 = !{i32 1, !"min_enum_size", i32 4}
!294 = !{i32 8, !"branch-target-enforcement", i32 0}
!295 = !{i32 8, !"sign-return-address", i32 0}
!296 = !{i32 8, !"sign-return-address-all", i32 0}
!297 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!298 = !{i32 7, !"uwtable", i32 1}
!299 = !{i32 7, !"frame-pointer", i32 2}
!300 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!301 = !{i64 2148865072, i64 2148865077, i64 2148865090, i64 2148865134, i64 2148865168, i64 2148865189}
!302 = !{i8 0, i8 2}
