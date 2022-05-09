; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath11k/hal_rx.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath11k/hal_rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.hal_srng = type { i8, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, [2 x i32], i64, i32, %union.anon.104 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { i32, ptr, i32, ptr, i32, i16, i32 }
%struct.hal_tlv_hdr = type { i32, [0 x i8] }
%struct.ath11k_hal_reo_cmd = type { i32, i32, i32, i32, i32, [4 x i32], i16, i16, i16, i8, i8, i8, i16, i8 }
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
%union.anon.103 = type { ptr }
%struct.ath11k_hal = type { [172 x %struct.hal_srng], ptr, %struct.anon.107, %struct.anon.108, i8, i8, [36 x i32], i32, [172 x %struct.lock_class_key] }
%struct.anon.107 = type { ptr, i32 }
%struct.anon.108 = type { ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ath11k_buffer_addr = type { i32, i32 }
%struct.hal_rx_msdu_link = type { %struct.hal_desc_header, %struct.ath11k_buffer_addr, i32, [4 x i32], [6 x %struct.hal_rx_msdu_details] }
%struct.hal_desc_header = type { i32 }
%struct.hal_rx_msdu_details = type { %struct.ath11k_buffer_addr, %struct.rx_msdu_desc }
%struct.rx_msdu_desc = type { i32, i32 }
%struct.hal_reo_dest_ring = type { %struct.ath11k_buffer_addr, %struct.rx_mpdu_desc, %struct.rx_msdu_desc, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rx_mpdu_desc = type { i32, i32 }
%struct.hal_wbm_release_ring = type { %struct.ath11k_buffer_addr, i32, i32, i32, %struct.hal_tx_rate_stats, i32 }
%struct.hal_tx_rate_stats = type { i32, i32 }
%struct.hal_rx_wbm_rel_info = type { i32, i32, i32, i32, i8, i8 }
%struct.hal_reo_status_header = type { i16, i32, i16, i32 }
%struct.hal_reo_status = type { %struct.hal_reo_status_header, i8, %union.anon.156 }
%union.anon.156 = type { %struct.hal_reo_status_queue_stats }
%struct.hal_reo_status_queue_stats = type { i16, i16, [4 x i32], i32, i32, [8 x i32], i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.hal_reo_status_flush_cache = type { i8, i32, i8, i8, i8, i8, i8 }
%struct.hal_reo_status_flush_timeout_list = type { i8, i8, i16, i16 }
%struct.hal_rx_reo_queue = type { %struct.hal_desc_header, i32, i32, i32, [4 x i32], i32, i32, [2 x i32], [2 x i32], [8 x i32], i32, i32, i32, i32, i32, i32, i32, [3 x i32], [0 x %struct.hal_rx_reo_queue_ext] }
%struct.hal_rx_reo_queue_ext = type { %struct.hal_desc_header, i32, [15 x %struct.hal_rx_mpdu_link_ptr] }
%struct.hal_rx_mpdu_link_ptr = type { %struct.ath11k_buffer_addr }
%struct.hal_srng_params = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.hal_rx_mon_ppdu_info = type { i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i64 }
%struct.ath11k_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hal_reo_entrance_ring = type { %struct.ath11k_buffer_addr, %struct.rx_mpdu_desc, i32, i32, i32, i32 }
%struct.hal_sw_monitor_ring = type { %struct.ath11k_buffer_addr, %struct.rx_mpdu_desc, %struct.ath11k_buffer_addr, i32, i32 }
%struct.hal_sw_mon_ring_entries = type { i32, i32, i32, i32, ptr, ptr, i16, i8, i8, i8, i8 }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported reo command %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown reo command %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"expected error push reason code, received %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"expected buffer type link_desc\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/ath/ath11k/hal_rx.c\00", [55 x i8] zeroinitializer }, align 32
@ath11k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Queue stats status:\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"header: cmd_num %d status %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ssn %ld cur_idx %ld\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pn = [%08x, %08x, %08x, %08x]\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"last_rx: enqueue_tstamp %08x dequeue_tstamp %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"rx_bitmap [%08x %08x %08x %08x %08x %08x %08x %08x]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"count: cur_mpdu %ld cur_msdu %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"fwd_timeout %ld fwd_bar %ld dup_count %ld\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"frames_in_order %ld bar_rcvd %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"num_mpdus %d num_msdus %d total_bytes %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"late_rcvd %ld win_jump_2k %ld hole_cnt %ld\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"looping count %ld\0A\00", [45 x i8] zeroinitializer }, align 32
@__tracepoint_ath11k_log_dbg = external dso_local global %struct.tracepoint, align 4
@switch.table.ath11k_hal_rx_parse_mon_status = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 8, i64 24, i64 48, i64 128]
@__sancov_gen_cov_switch_values.18 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.19 = internal global [19 x i64] [i64 17, i64 32, i64 0, i64 76, i64 83, i64 84, i64 85, i64 86, i64 95, i64 96, i64 98, i64 99, i64 100, i64 109, i64 205, i64 207, i64 301, i64 319, i64 362]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 63]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 247, i32 19 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 251, i32 19 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 334, i32 19 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 341, i32 19 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 362, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 445, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 446, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 449, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 454, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 456, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 459, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 463, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 468, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 475, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 480, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 483, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private constant [44 x i8] c"../drivers/net/wireless/ath/ath11k/hal_rx.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 490, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [44 x i8] c"switch.table.ath11k_hal_rx_parse_mon_status\00", align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @switch.table.ath11k_hal_rx_parse_mon_status], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath11k_hal_rx_parse_mon_status to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_hal_reo_cmd_send(ptr noundef %ab, ptr noundef %srng, i32 noundef %type, ptr nocapture noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hal_srng, ptr %srng, i32 0, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  tail call void @ath11k_hal_srng_access_begin(ptr noundef %ab, ptr noundef %srng) #7
  %call = tail call ptr @ath11k_hal_srng_src_get_next_entry(ptr noundef %ab, ptr noundef %srng) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 5, label %sw.bb4
    i32 1, label %if.end.sw.bb6_crit_edge
    i32 3, label %if.end.sw.bb6_crit_edge48
    i32 4, label %if.end.sw.bb6_crit_edge49
  ]

if.end.sw.bb6_crit_edge49:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.end.sw.bb6_crit_edge48:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.end.sw.bb6_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

sw.bb:                                            ; preds = %if.end
  %1 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 37476, ptr %call, align 1
  %value.i = getelementptr inbounds %struct.hal_tlv_hdr, ptr %call, i32 0, i32 1
  %add.ptr.i = getelementptr %struct.hal_tlv_hdr, ptr %call, i32 2
  %2 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 32)
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %value.i, align 1
  %and.i = and i32 %4, -65537
  store i32 %and.i, ptr %value.i, align 1
  %flag.i = getelementptr inbounds %struct.ath11k_hal_reo_cmd, ptr %cmd, i32 0, i32 1
  %5 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flag.i, align 4
  %and31.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool.not.i, label %sw.bb.if.end.i_crit_edge, label %if.then.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %or34.i = or i32 %4, 65536
  %7 = ptrtoint ptr %value.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %or34.i, ptr %value.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.if.end.i_crit_edge
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd, align 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %add.ptr.i, align 1
  %addr_hi.i = getelementptr inbounds %struct.ath11k_hal_reo_cmd, ptr %cmd, i32 0, i32 9
  %11 = ptrtoint ptr %addr_hi.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %addr_hi.i, align 2
  %conv57.i = zext i8 %12 to i32
  %info059.i = getelementptr inbounds %struct.hal_tlv_hdr, ptr %call, i32 3
  %13 = ptrtoint ptr %info059.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %conv57.i, ptr %info059.i, align 1
  %14 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flag.i, align 4
  %and61.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool62.not.i, label %if.end.i.ath11k_hal_reo_cmd_queue_stats.exit_crit_edge, label %if.then63.i

if.end.i.ath11k_hal_reo_cmd_queue_stats.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_hal_reo_cmd_queue_stats.exit

if.then63.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %or65.i = or i32 %conv57.i, 256
  %16 = ptrtoint ptr %info059.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %or65.i, ptr %info059.i, align 1
  br label %ath11k_hal_reo_cmd_queue_stats.exit

ath11k_hal_reo_cmd_queue_stats.exit:              ; preds = %if.then63.i, %if.end.i.ath11k_hal_reo_cmd_queue_stats.exit_crit_edge
  %17 = ptrtoint ptr %value.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %value.i, align 1
  %and85.i = and i32 %18, 65535
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %avail_blk_resource.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 4
  %19 = ptrtoint ptr %avail_blk_resource.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %avail_blk_resource.i, align 4
  %conv.i = zext i8 %20 to i32
  %neg.i = xor i32 %conv.i, -1
  %21 = tail call i32 @llvm.cttz.i32(i32 %neg.i, i1 true) #7, !range !43
  %conv1.i = trunc i32 %21 to i8
  %flag.i27 = getelementptr inbounds %struct.ath11k_hal_reo_cmd, ptr %cmd, i32 0, i32 1
  %22 = ptrtoint ptr %flag.i27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flag.i27, align 4
  %and.i28 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28)
  %tobool.not.i29 = icmp eq i32 %and.i28, 0
  br i1 %tobool.not.i29, label %sw.bb2.do.end17.i_crit_edge, label %if.then.i30

sw.bb2.do.end17.i_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17.i

if.then.i30:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i = icmp ugt i32 %21, 2
  br i1 %cmp.i, label %if.then.i30.sw.epilog_crit_edge, label %if.end.i31

if.then.i30.sw.epilog_crit_edge:                  ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i31:                                       ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #9
  %current_blk_index.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 5
  %24 = ptrtoint ptr %current_blk_index.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv1.i, ptr %current_blk_index.i, align 1
  br label %do.end17.i

do.end17.i:                                       ; preds = %if.end.i31, %sw.bb2.do.end17.i_crit_edge
  %25 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 37480, ptr %call, align 1
  %value.i32 = getelementptr inbounds %struct.hal_tlv_hdr, ptr %call, i32 0, i32 1
  %add.ptr.i33 = getelementptr %struct.hal_tlv_hdr, ptr %call, i32 2
  %26 = call ptr @memset(ptr %add.ptr.i33, i32 0, i32 32)
  %27 = ptrtoint ptr %value.i32 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %value.i32, align 1
  %and36.i = and i32 %28, -65537
  store i32 %and36.i, ptr %value.i32, align 1
  %29 = ptrtoint ptr %flag.i27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flag.i27, align 4
  %and38.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %do.end17.i.if.end44.i_crit_edge, label %if.then40.i

do.end17.i.if.end44.i_crit_edge:                  ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

if.then40.i:                                      ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %or43.i = or i32 %28, 65536
  %31 = ptrtoint ptr %value.i32 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %or43.i, ptr %value.i32, align 1
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then40.i, %do.end17.i.if.end44.i_crit_edge
  %32 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cmd, align 4
  %34 = ptrtoint ptr %add.ptr.i33 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %add.ptr.i33, align 1
  %addr_hi.i34 = getelementptr inbounds %struct.ath11k_hal_reo_cmd, ptr %cmd, i32 0, i32 9
  %35 = ptrtoint ptr %addr_hi.i34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %addr_hi.i34, align 2
  %conv68.i = zext i8 %36 to i32
  %info070.i = getelementptr inbounds %struct.hal_tlv_hdr, ptr %call, i32 3
  %37 = ptrtoint ptr %info070.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %conv68.i, ptr %info070.i, align 1
  %38 = ptrtoint ptr %flag.i27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flag.i27, align 4
  %and72.i = and i32 %39, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  br i1 %tobool73.not.i, label %if.end44.i.if.end77.i_crit_edge, label %if.then74.i

if.end44.i.if.end77.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77.i

if.then74.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  %or76.i = or i32 %conv68.i, 256
  %40 = ptrtoint ptr %info070.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %or76.i, ptr %info070.i, align 1
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then74.i, %if.end44.i.if.end77.i_crit_edge
  %41 = ptrtoint ptr %flag.i27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flag.i27, align 4
  %and79.i = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %if.end77.i.if.end112.i_crit_edge, label %if.then81.i

if.end77.i.if.end112.i_crit_edge:                 ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112.i

if.then81.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %info070.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %info070.i, align 1
  %conv107.i = shl nuw nsw i32 %21, 10
  %and109.i = and i32 %conv107.i, 3072
  %or83.i = or i32 %44, %and109.i
  %or111.i = or i32 %or83.i, 8192
  store i32 %or111.i, ptr %info070.i, align 1
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.then81.i, %if.end77.i.if.end112.i_crit_edge
  %45 = ptrtoint ptr %flag.i27 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flag.i27, align 4
  %and114.i = and i32 %46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.i)
  %tobool115.not.i = icmp eq i32 %and114.i, 0
  br i1 %tobool115.not.i, label %if.end112.i.if.end119.i_crit_edge, label %if.then116.i

if.end112.i.if.end119.i_crit_edge:                ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119.i

if.then116.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %info070.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %info070.i, align 1
  %or118.i = or i32 %48, 4096
  store i32 %or118.i, ptr %info070.i, align 1
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.then116.i, %if.end112.i.if.end119.i_crit_edge
  %49 = ptrtoint ptr %flag.i27 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flag.i27, align 4
  %and121.i = and i32 %50, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121.i)
  %tobool122.not.i = icmp eq i32 %and121.i, 0
  br i1 %tobool122.not.i, label %if.end119.i.do.end141.i_crit_edge, label %if.then123.i

if.end119.i.do.end141.i_crit_edge:                ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end141.i

if.then123.i:                                     ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %info070.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %info070.i, align 1
  %or125.i = or i32 %52, 16384
  store i32 %or125.i, ptr %info070.i, align 1
  br label %do.end141.i

do.end141.i:                                      ; preds = %if.then123.i, %if.end119.i.do.end141.i_crit_edge
  %53 = ptrtoint ptr %value.i32 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %value.i32, align 1
  %and145.i = and i32 %54, 65535
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %55 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 37702, ptr %call, align 1
  %value.i35 = getelementptr inbounds %struct.hal_tlv_hdr, ptr %call, i32 0, i32 1
  %add.ptr.i36 = getelementptr %struct.hal_tlv_hdr, ptr %call, i32 2
  %56 = call ptr @memset(ptr %add.ptr.i36, i32 0, i32 32)
  %57 = ptrtoint ptr %value.i35 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %value.i35, align 1
  %and.i37 = and i32 %58, -65537
  store i32 %and.i37, ptr %value.i35, align 1
  %flag.i38 = getelementptr inbounds %struct.ath11k_hal_reo_cmd, ptr %cmd, i32 0, i32 1
  %59 = ptrtoint ptr %flag.i38 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flag.i38, align 4
  %and31.i39 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i39)
  %tobool.not.i40 = icmp eq i32 %and31.i39, 0
  br i1 %tobool.not.i40, label %sw.bb4.if.end.i45_crit_edge, label %if.then.i42

sw.bb4.if.end.i45_crit_edge:                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i45

if.then.i42:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %or34.i41 = or i32 %58, 65536
  %61 = ptrtoint ptr %value.i35 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %or34.i41, ptr %value.i35, align 1
  br label %if.end.i45

if.end.i45:                                       ; preds = %if.then.i42, %sw.bb4.if.end.i45_crit_edge
  %62 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cmd, align 4
  %64 = ptrtoint ptr %add.ptr.i36 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %63, ptr %add.ptr.i36, align 1
  %addr_hi.i43 = getelementptr inbounds %struct.ath11k_hal_reo_cmd, ptr %cmd, i32 0, i32 9
  %65 = ptrtoint ptr %addr_hi.i43 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %addr_hi.i43, align 2
  %conv57.i44 = zext i8 %66 to i32
  %upd0.i = getelementptr inbounds %struct.ath11k_hal_reo_cmd, ptr %cmd, i32 0, i32 2
  %67 = ptrtoint ptr %upd0.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %upd0.i, align 4
  %and92.lobit.i = and i32 %68, 256
  %or100.i = or i32 %and92.lobit.i, %conv57.i44
  %and138.lobit.i = and i32 %68, 512
  %or146.i = or i32 %or100.i, %and138.lobit.i
  %and184.lobit.i = and i32 %68, 1024
  %or192.i = or i32 %or146.i, %and184.lobit.i
  %and230.lobit.i = and i32 %68, 2048
  %or238.i = or i32 %or192.i, %and230.lobit.i
  %and276.lobit.i = and i32 %68, 4096
  %or284.i = or i32 %or238.i, %and276.lobit.i
  %and322.lobit.i = and i32 %68, 8192
  %or330.i = or i32 %or284.i, %and322.lobit.i
  %and368.lobit.i = and i32 %68, 16384
  %or376.i = or i32 %or330.i, %and368.lobit.i
  %and414.lobit.i = and i32 %68, 32768
  %or422.i = or i32 %or376.i, %and414.lobit.i
  %and460.lobit.i = and i32 %68, 65536
  %or468.i = or i32 %or422.i, %and460.lobit.i
  %and506.lobit.i = and i32 %68, 131072
  %or514.i = or i32 %or468.i, %and506.lobit.i
  %and552.lobit.i = and i32 %68, 262144
  %or560.i = or i32 %or514.i, %and552.lobit.i
  %and598.lobit.i = and i32 %68, 524288
  %or606.i = or i32 %or560.i, %and598.lobit.i
  %and644.lobit.i = and i32 %68, 1048576
  %or652.i = or i32 %or606.i, %and644.lobit.i
  %and690.lobit.i = and i32 %68, 2097152
  %or698.i = or i32 %or652.i, %and690.lobit.i
  %and736.lobit.i = and i32 %68, 4194304
  %or744.i = or i32 %or698.i, %and736.lobit.i
  %and782.lobit.i = and i32 %68, 8388608
  %or790.i = or i32 %or744.i, %and782.lobit.i
  %and828.lobit.i = and i32 %68, 16777216
  %or836.i = or i32 %or790.i, %and828.lobit.i
  %and874.lobit.i = and i32 %68, 33554432
  %or882.i = or i32 %or836.i, %and874.lobit.i
  %and920.lobit.i = and i32 %68, 67108864
  %or928.i = or i32 %or882.i, %and920.lobit.i
  %and966.lobit.i = and i32 %68, 134217728
  %or974.i = or i32 %or928.i, %and966.lobit.i
  %and1012.lobit.i = and i32 %68, 536870912
  %or1020.i = or i32 %or974.i, %and1012.lobit.i
  %and1058.lobit.i = and i32 %68, 1073741824
  %or1066.i = or i32 %or1020.i, %and1058.lobit.i
  %info01067.i = getelementptr inbounds %struct.hal_tlv_hdr, ptr %call, i32 3
  %69 = ptrtoint ptr %info01067.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %or1066.i, ptr %info01067.i, align 1
  %rx_queue_num.i = getelementptr inbounds %struct.ath11k_hal_reo_cmd, ptr %cmd, i32 0, i32 6
  %70 = ptrtoint ptr %rx_queue_num.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %rx_queue_num.i, align 4
  %conv1093.i = zext i16 %71 to i32
  %upd1.i = getelementptr inbounds %struct.ath11k_hal_reo_cmd, ptr %cmd, i32 0, i32 3
  %72 = ptrtoint ptr %upd1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %upd1.i, align 4
  %and1132.lobit.i = and i32 %73, 65536
  %or1140.i = or i32 %and1132.lobit.i, %conv1093.i
  %shr.i = and i32 %73, 393216
  %or1177.i = or i32 %or1140.i, %shr.i
  %and1215.lobit.i = and i32 %73, 524288
  %or1223.i = or i32 %or1177.i, %and1215.lobit.i
  %and1261.lobit.i = and i32 %73, 1048576
  %or1269.i = or i32 %or1223.i, %and1261.lobit.i
  %shr1304.i = and i32 %73, 6291456
  %or1307.i = or i32 %or1269.i, %shr1304.i
  %and1345.lobit.i = and i32 %73, 8388608
  %or1353.i = or i32 %or1307.i, %and1345.lobit.i
  %and1391.lobit.i = and i32 %73, 33554432
  %or1399.i = or i32 %or1353.i, %and1391.lobit.i
  %and1437.lobit.i = and i32 %73, 16777216
  %or1445.i = or i32 %or1399.i, %and1437.lobit.i
  %and1483.lobit.i = and i32 %73, 67108864
  %or1491.i = or i32 %or1445.i, %and1483.lobit.i
  %and1529.lobit.i = and i32 %73, 134217728
  %or1537.i = or i32 %or1491.i, %and1529.lobit.i
  %and1575.lobit.i = and i32 %73, 268435456
  %or1583.i = or i32 %or1537.i, %and1575.lobit.i
  %and1621.lobit.i = and i32 %73, 536870912
  %or1629.i = or i32 %or1583.i, %and1621.lobit.i
  %and1667.lobit.i = and i32 %73, 1073741824
  %or1675.i = or i32 %or1629.i, %and1667.lobit.i
  %.lobit2157.i = and i32 %73, -2147483648
  %or1721.i = or i32 %or1675.i, %.lobit2157.i
  %info1.i = getelementptr inbounds %struct.hal_tlv_hdr, ptr %call, i32 4
  %74 = ptrtoint ptr %info1.i to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %or1721.i, ptr %info1.i, align 1
  %pn_size.i = getelementptr inbounds %struct.ath11k_hal_reo_cmd, ptr %cmd, i32 0, i32 13
  %75 = ptrtoint ptr %pn_size.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %pn_size.i, align 4
  %77 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %76, label %if.end.i45.if.end1741.i_crit_edge [
    i8 24, label %if.end.i45.if.end1741.sink.split.i_crit_edge
    i8 48, label %if.then1730.i
    i8 -128, label %if.then1737.i
  ]

if.end.i45.if.end1741.sink.split.i_crit_edge:     ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1741.sink.split.i

if.end.i45.if.end1741.i_crit_edge:                ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1741.i

if.then1730.i:                                    ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1741.sink.split.i

if.then1737.i:                                    ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1741.sink.split.i

if.end1741.sink.split.i:                          ; preds = %if.then1737.i, %if.then1730.i, %if.end.i45.if.end1741.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 1, %if.then1730.i ], [ 2, %if.then1737.i ], [ 0, %if.end.i45.if.end1741.sink.split.i_crit_edge ]
  %78 = ptrtoint ptr %pn_size.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %.sink.i, ptr %pn_size.i, align 4
  br label %if.end1741.i

if.end1741.i:                                     ; preds = %if.end1741.sink.split.i, %if.end.i45.if.end1741.i_crit_edge
  %ba_window_size.i = getelementptr inbounds %struct.ath11k_hal_reo_cmd, ptr %cmd, i32 0, i32 12
  %79 = ptrtoint ptr %ba_window_size.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %ba_window_size.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %80)
  %switch.i = icmp ult i16 %80, 2
  br i1 %switch.i, label %if.then1752.i, label %if.end1741.i.do.body1761.i_crit_edge

if.end1741.i.do.body1761.i_crit_edge:             ; preds = %if.end1741.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1761.i

if.then1752.i:                                    ; preds = %if.end1741.i
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %ba_window_size.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 2, ptr %ba_window_size.i, align 2
  br label %do.body1761.i

do.body1761.i:                                    ; preds = %if.then1752.i, %if.end1741.i.do.body1761.i_crit_edge
  %82 = ptrtoint ptr %ba_window_size.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %ba_window_size.i, align 2
  %84 = ptrtoint ptr %pn_size.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %pn_size.i, align 4
  %upd2.i = getelementptr inbounds %struct.ath11k_hal_reo_cmd, ptr %cmd, i32 0, i32 4
  %86 = ptrtoint ptr %upd2.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %upd2.i, align 4
  %conv1813.i = zext i8 %85 to i32
  %shl1814.i = shl nuw nsw i32 %conv1813.i, 8
  %and1815.i = and i32 %shl1814.i, 768
  %88 = add i16 %83, 255
  %89 = and i16 %88, 255
  %and1786.i = zext i16 %89 to i32
  %or1816.i = or i32 %and1815.i, %and1786.i
  %and1853.lobit.i = and i32 %87, 1024
  %or1861.i = or i32 %or1816.i, %and1853.lobit.i
  %shr1896.i = and i32 %87, 8386560
  %or1899.i = or i32 %or1861.i, %shr1896.i
  %and1937.lobit.i = and i32 %87, 8388608
  %or1945.i = or i32 %or1899.i, %and1937.lobit.i
  %and1983.lobit.i = and i32 %87, 16777216
  %or1991.i = or i32 %or1945.i, %and1983.lobit.i
  %info2.i = getelementptr inbounds %struct.hal_tlv_hdr, ptr %call, i32 5
  %90 = ptrtoint ptr %info2.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %or1991.i, ptr %info2.i, align 1
  %91 = ptrtoint ptr %value.i35 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %value.i35, align 1
  %and2010.i = and i32 %92, 65535
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end.sw.bb6_crit_edge, %if.end.sw.bb6_crit_edge48, %if.end.sw.bb6_crit_edge49
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str, i32 noundef %type) #7
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.1, i32 noundef %type) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %do.body1761.i, %do.end141.i, %if.then.i30.sw.epilog_crit_edge, %ath11k_hal_reo_cmd_queue_stats.exit
  %ret.0 = phi i32 [ -22, %sw.default ], [ -524, %sw.bb6 ], [ %and2010.i, %do.body1761.i ], [ %and85.i, %ath11k_hal_reo_cmd_queue_stats.exit ], [ %and145.i, %do.end141.i ], [ -28, %if.then.i30.sw.epilog_crit_edge ]
  %reo_cmd_timer = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 9, i32 23
  tail call void @ath11k_dp_shadow_start_timer(ptr noundef %ab, ptr noundef %srng, ptr noundef %reo_cmd_timer) #7
  br label %out

out:                                              ; preds = %sw.epilog, %entry.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %sw.epilog ], [ -105, %entry.out_crit_edge ]
  tail call void @ath11k_hal_srng_access_end(ptr noundef %ab, ptr noundef %srng) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  ret i32 %ret.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_hal_srng_access_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath11k_hal_srng_src_get_next_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_dp_shadow_start_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_hal_srng_access_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_hal_rx_buf_addr_info_set(ptr nocapture noundef writeonly %desc, i32 noundef %paddr, i32 noundef %cookie, i8 noundef zeroext %manager) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %paddr, ptr %desc, align 1
  %shl62 = shl i32 %cookie, 11
  %conv86 = zext i8 %manager to i32
  %shl87 = shl nuw nsw i32 %conv86, 8
  %and88 = and i32 %shl87, 1792
  %or89 = or i32 %and88, %shl62
  %info1 = getelementptr inbounds %struct.ath11k_buffer_addr, ptr %desc, i32 0, i32 1
  %1 = ptrtoint ptr %info1 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 %or89, ptr %info1, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath11k_hal_rx_buf_addr_info_get(ptr nocapture noundef readonly %desc, ptr nocapture noundef writeonly %paddr, ptr nocapture noundef writeonly %cookie, ptr nocapture noundef writeonly %rbm) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.ath11k_buffer_addr, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %desc, align 1
  %2 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %paddr, align 4
  %3 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %info1, align 1
  %shr51 = lshr i32 %4, 11
  %5 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr51, ptr %cookie, align 4
  %6 = load i32, ptr %info1, align 1
  %and69 = lshr i32 %6, 8
  %7 = trunc i32 %and69 to i8
  %conv71 = and i8 %7, 7
  %8 = ptrtoint ptr %rbm to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv71, ptr %rbm, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_hal_rx_msdu_link_info_get(ptr nocapture noundef readonly %link_desc, ptr nocapture noundef %num_msdus, ptr nocapture noundef writeonly %msdu_cookies, ptr nocapture noundef writeonly %rbm) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %num_msdus to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 6, ptr %num_msdus, align 4
  %info1 = getelementptr inbounds %struct.hal_rx_msdu_link, ptr %link_desc, i32 0, i32 4, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %info1, align 1
  %and = lshr i32 %2, 8
  %shr = and i32 %and, 7
  %3 = ptrtoint ptr %rbm to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shr, ptr %rbm, align 4
  %4 = load i32, ptr %num_msdus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp64.not = icmp eq i32 %4, 0
  br i1 %cmp64.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %do.end48.for.body_crit_edge, %entry.for.body_crit_edge
  %msdu_cookies.addr.066 = phi ptr [ %incdec.ptr, %do.end48.for.body_crit_edge ], [ %msdu_cookies, %entry.for.body_crit_edge ]
  %i.065 = phi i32 [ %inc, %do.end48.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx14 = getelementptr %struct.hal_rx_msdu_link, ptr %link_desc, i32 0, i32 4, i32 %i.065
  %5 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %arrayidx14, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %do.end48

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %num_msdus to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %i.065, ptr %num_msdus, align 4
  br label %for.end

do.end48:                                         ; preds = %for.body
  %info151 = getelementptr inbounds %struct.ath11k_buffer_addr, ptr %arrayidx14, i32 0, i32 1
  %8 = ptrtoint ptr %info151 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %info151, align 1
  %shr53 = lshr i32 %9, 11
  %10 = ptrtoint ptr %msdu_cookies.addr.066 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr53, ptr %msdu_cookies.addr.066, align 4
  %incdec.ptr = getelementptr i32, ptr %msdu_cookies.addr.066, i32 1
  %inc = add nuw i32 %i.065, 1
  %11 = ptrtoint ptr %num_msdus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_msdus, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %do.end48.for.body_crit_edge, label %do.end48.for.end_crit_edge

do.end48.for.end_crit_edge:                       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.end48.for.body_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %do.end48.for.end_crit_edge, %if.then, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_hal_desc_reo_parse_err(ptr noundef %ab, ptr nocapture noundef readonly %rx_desc, ptr nocapture noundef writeonly %paddr, ptr nocapture noundef writeonly %desc_bank) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info0 = getelementptr inbounds %struct.hal_reo_dest_ring, ptr %rx_desc, i32 0, i32 4
  %0 = ptrtoint ptr %info0 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info0, align 1
  %and = lshr i32 %1, 9
  %shr = and i32 %and, 3
  %and30 = lshr i32 %1, 11
  %shr31 = and i32 %and30, 31
  %arrayidx = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 44, i32 3, i32 %shr31
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr)
  %switch = icmp ult i32 %shr, 2
  br i1 %switch, label %do.end47, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.2, i32 noundef %shr) #7
  br label %cleanup

do.end47:                                         ; preds = %entry
  %4 = ptrtoint ptr %info0 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %info0, align 1
  %6 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp52.not.not = icmp eq i32 %6, 0
  br i1 %cmp52.not.not, label %if.then53, label %if.end54

if.then53:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath11k_warn(ptr noundef %ab, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end54:                                         ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  %info1.i = getelementptr inbounds %struct.ath11k_buffer_addr, ptr %rx_desc, i32 0, i32 1
  %7 = ptrtoint ptr %rx_desc to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %rx_desc, align 1
  %9 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %paddr, align 4
  %10 = ptrtoint ptr %info1.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %info1.i, align 1
  %shr51.i = lshr i32 %11, 11
  %12 = ptrtoint ptr %desc_bank to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr51.i, ptr %desc_bank, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then53, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then53 ], [ 0, %if.end54 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath11k_hal_rx_reo_ent_paddr_get(ptr nocapture readnone %ab, ptr nocapture noundef readonly %desc, ptr nocapture noundef writeonly %paddr, ptr nocapture noundef writeonly %desc_bank) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.ath11k_buffer_addr, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %desc, align 1
  %2 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %paddr, align 4
  %3 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %info1, align 1
  %shr51 = lshr i32 %4, 11
  %5 = ptrtoint ptr %desc_bank to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr51, ptr %desc_bank, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_hal_wbm_desc_parse_err(ptr nocapture noundef %ab, ptr nocapture noundef readonly %desc, ptr nocapture noundef writeonly %rel_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info0 = getelementptr inbounds %struct.hal_wbm_release_ring, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %info0 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info0, align 1
  %2 = and i32 %1, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %do.end47, label %do.end19

do.end19:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 362, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

do.end47:                                         ; preds = %entry
  %and50 = and i32 %1, 7
  %and50.off = add nsw i32 %and50, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and50.off)
  %switch = icmp ult i32 %and50.off, 2
  br i1 %switch, label %do.end70, label %do.end47.cleanup_crit_edge

do.end47.cleanup_crit_edge:                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end70:                                         ; preds = %do.end47
  %info1 = getelementptr inbounds %struct.ath11k_buffer_addr, ptr %desc, i32 0, i32 1
  %3 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %info1, align 1
  %5 = and i32 %4, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %5)
  %cmp74.not = icmp eq i32 %5, 1536
  br i1 %cmp74.not, label %do.end91, label %if.then75

if.then75:                                        ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #9
  %invalid_rbm = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 44, i32 1
  %6 = ptrtoint ptr %invalid_rbm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %invalid_rbm, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %invalid_rbm, align 4
  br label %cleanup

do.end91:                                         ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #9
  %shr96 = lshr i32 %4, 11
  %8 = ptrtoint ptr %rel_info to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr96, ptr %rel_info, align 4
  %err_rel_src = getelementptr inbounds %struct.hal_rx_wbm_rel_info, ptr %rel_info, i32 0, i32 1
  %9 = ptrtoint ptr %err_rel_src to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and50, ptr %err_rel_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and50)
  %cmp97 = icmp eq i32 %and50, 2
  %10 = ptrtoint ptr %info0 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %info0, align 1
  %. = select i1 %cmp97, i32 24, i32 17
  %.242 = select i1 %cmp97, i32 26, i32 19
  %and116 = lshr i32 %11, %.
  %shr117 = and i32 %and116, 3
  %push_reason = getelementptr inbounds %struct.hal_rx_wbm_rel_info, ptr %rel_info, i32 0, i32 2
  %12 = ptrtoint ptr %push_reason to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr117, ptr %push_reason, align 4
  %13 = load i32, ptr %info0, align 1
  %and135 = lshr i32 %13, %.242
  %shr175.sink = and i32 %and135, 31
  %14 = getelementptr inbounds %struct.hal_rx_wbm_rel_info, ptr %rel_info, i32 0, i32 3
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr175.sink, ptr %14, align 4
  %info2 = getelementptr inbounds %struct.hal_wbm_release_ring, ptr %desc, i32 0, i32 3
  %16 = ptrtoint ptr %info2 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %info2, align 1
  %first_msdu = getelementptr inbounds %struct.hal_rx_wbm_rel_info, ptr %rel_info, i32 0, i32 4
  %18 = lshr i32 %17, 9
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = ptrtoint ptr %first_msdu to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %first_msdu, align 4
  %22 = load i32, ptr %info2, align 1
  %last_msdu = getelementptr inbounds %struct.hal_rx_wbm_rel_info, ptr %rel_info, i32 0, i32 5
  %23 = lshr i32 %22, 10
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = ptrtoint ptr %last_msdu to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %last_msdu, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end91, %if.then75, %do.end47.cleanup_crit_edge, %do.end19
  %retval.0 = phi i32 [ -22, %do.end19 ], [ -22, %if.then75 ], [ 0, %do.end91 ], [ -22, %do.end47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_hal_rx_msdu_link_desc_set(ptr nocapture noundef readnone %ab, ptr nocapture noundef %desc, ptr nocapture noundef readonly %link_desc, i32 noundef %action) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link_desc to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %link_desc, align 1
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %desc, align 1
  %shl = shl i32 %action, 3
  %and30 = and i32 %shl, 56
  %info0 = getelementptr inbounds %struct.hal_wbm_release_ring, ptr %desc, i32 0, i32 1
  %3 = ptrtoint ptr %info0 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %info0, align 1
  %or47 = or i32 %and30, %4
  %or48 = or i32 %or47, 68
  store i32 %or48, ptr %info0, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_hal_reo_status_queue_stats(ptr noundef %ab, ptr noundef readonly %reo_desc, ptr nocapture noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 0, i32 1
  %0 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %value, align 1
  %conv = trunc i32 %1 to i16
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %status, align 4
  %3 = load i32, ptr %value, align 1
  %and31 = lshr i32 %3, 26
  %shr32 = and i32 %and31, 3
  %cmd_status = getelementptr inbounds %struct.hal_reo_status_header, ptr %status, i32 0, i32 1
  %4 = ptrtoint ptr %cmd_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr32, ptr %cmd_status, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %5 = load i32, ptr @ath11k_debug_mask, align 4
  %and35 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool.not = icmp eq i32 %and35, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_hal_reo_status_queue_stats, %if.then)) #7
          to label %do.body39 [label %if.then], !srcloc !44

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 2048, ptr noundef nonnull @.str.5) #7
  br label %do.body39

do.body39:                                        ; preds = %if.then, %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %6 = load i32, ptr @ath11k_debug_mask, align 4
  %and40 = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %lor.lhs.false42, label %do.body39.if.then45_crit_edge

do.body39.if.then45_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

lor.lhs.false42:                                  ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_hal_reo_status_queue_stats, %if.then45)) #7
          to label %do.body54 [label %if.then45], !srcloc !44

if.then45:                                        ; preds = %lor.lhs.false42, %do.body39.if.then45_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %status, align 4
  %conv48 = zext i16 %8 to i32
  %9 = ptrtoint ptr %cmd_status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmd_status, align 4
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 2048, ptr noundef nonnull @.str.6, i32 noundef %conv48, i32 noundef %10) #7
  br label %do.body54

do.body54:                                        ; preds = %if.then45, %lor.lhs.false42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %11 = load i32, ptr @ath11k_debug_mask, align 4
  %and55 = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %lor.lhs.false57, label %do.body54.if.then60_crit_edge

do.body54.if.then60_crit_edge:                    ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60

lor.lhs.false57:                                  ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_hal_reo_status_queue_stats, %if.then60)) #7
          to label %do.body102 [label %if.then60], !srcloc !44

if.then60:                                        ; preds = %lor.lhs.false57, %do.body54.if.then60_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %info077 = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 3
  %12 = ptrtoint ptr %info077 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %info077, align 1
  %and78 = and i32 %13, 4095
  %and97 = lshr i32 %13, 12
  %shr98 = and i32 %and97, 255
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 2048, ptr noundef nonnull @.str.7, i32 noundef %and78, i32 noundef %shr98) #7
  br label %do.body102

do.body102:                                       ; preds = %if.then60, %lor.lhs.false57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %14 = load i32, ptr @ath11k_debug_mask, align 4
  %and103 = and i32 %14, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %lor.lhs.false105, label %do.body102.if.then108_crit_edge

do.body102.if.then108_crit_edge:                  ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then108

lor.lhs.false105:                                 ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_hal_reo_status_queue_stats, %if.then108)) #7
          to label %do.body118 [label %if.then108], !srcloc !44

if.then108:                                       ; preds = %lor.lhs.false105, %do.body102.if.then108_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %pn = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 4
  %15 = ptrtoint ptr %pn to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %pn, align 1
  %arrayidx110 = getelementptr %struct.hal_tlv_hdr, ptr %reo_desc, i32 5
  %17 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %arrayidx110, align 1
  %arrayidx112 = getelementptr %struct.hal_tlv_hdr, ptr %reo_desc, i32 6
  %19 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %arrayidx112, align 1
  %arrayidx114 = getelementptr %struct.hal_tlv_hdr, ptr %reo_desc, i32 7
  %21 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %arrayidx114, align 1
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 2048, ptr noundef nonnull @.str.8, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22) #7
  br label %do.body118

do.body118:                                       ; preds = %if.then108, %lor.lhs.false105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %23 = load i32, ptr @ath11k_debug_mask, align 4
  %and119 = and i32 %23, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %lor.lhs.false121, label %do.body118.if.then124_crit_edge

do.body118.if.then124_crit_edge:                  ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then124

lor.lhs.false121:                                 ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_hal_reo_status_queue_stats, %if.then124)) #7
          to label %do.body128 [label %if.then124], !srcloc !44

if.then124:                                       ; preds = %lor.lhs.false121, %do.body118.if.then124_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %last_rx_enqueue_timestamp = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 8
  %24 = ptrtoint ptr %last_rx_enqueue_timestamp to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %last_rx_enqueue_timestamp, align 1
  %last_rx_dequeue_timestamp = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 9
  %26 = ptrtoint ptr %last_rx_dequeue_timestamp to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %last_rx_dequeue_timestamp, align 1
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 2048, ptr noundef nonnull @.str.9, i32 noundef %25, i32 noundef %27) #7
  br label %do.body128

do.body128:                                       ; preds = %if.then124, %lor.lhs.false121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %28 = load i32, ptr @ath11k_debug_mask, align 4
  %and129 = and i32 %28, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %lor.lhs.false131, label %do.body128.if.then134_crit_edge

do.body128.if.then134_crit_edge:                  ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then134

lor.lhs.false131:                                 ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_hal_reo_status_queue_stats, %if.then134)) #7
          to label %do.body153 [label %if.then134], !srcloc !44

if.then134:                                       ; preds = %lor.lhs.false131, %do.body128.if.then134_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %rx_bitmap = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 10
  %29 = ptrtoint ptr %rx_bitmap to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %rx_bitmap, align 1
  %arrayidx137 = getelementptr %struct.hal_tlv_hdr, ptr %reo_desc, i32 11
  %31 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %arrayidx137, align 1
  %arrayidx139 = getelementptr %struct.hal_tlv_hdr, ptr %reo_desc, i32 12
  %33 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %arrayidx139, align 1
  %arrayidx141 = getelementptr %struct.hal_tlv_hdr, ptr %reo_desc, i32 13
  %35 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %arrayidx141, align 1
  %arrayidx143 = getelementptr %struct.hal_tlv_hdr, ptr %reo_desc, i32 14
  %37 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %arrayidx143, align 1
  %arrayidx145 = getelementptr %struct.hal_tlv_hdr, ptr %reo_desc, i32 15
  %39 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %arrayidx145, align 1
  %arrayidx147 = getelementptr %struct.hal_tlv_hdr, ptr %reo_desc, i32 16
  %41 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %arrayidx147, align 1
  %arrayidx149 = getelementptr %struct.hal_tlv_hdr, ptr %reo_desc, i32 17
  %43 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %arrayidx149, align 1
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 2048, ptr noundef nonnull @.str.10, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44) #7
  br label %do.body153

do.body153:                                       ; preds = %if.then134, %lor.lhs.false131
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %45 = load i32, ptr @ath11k_debug_mask, align 4
  %and154 = and i32 %45, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %lor.lhs.false156, label %do.body153.if.then159_crit_edge

do.body153.if.then159_crit_edge:                  ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then159

lor.lhs.false156:                                 ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_hal_reo_status_queue_stats, %if.then159)) #7
          to label %do.body200 [label %if.then159], !srcloc !44

if.then159:                                       ; preds = %lor.lhs.false156, %do.body153.if.then159_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %info1 = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 18
  %46 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %info1, align 1
  %and176 = and i32 %47, 127
  %shr196 = lshr i32 %47, 7
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 2048, ptr noundef nonnull @.str.11, i32 noundef %and176, i32 noundef %shr196) #7
  br label %do.body200

do.body200:                                       ; preds = %if.then159, %lor.lhs.false156
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %48 = load i32, ptr @ath11k_debug_mask, align 4
  %and201 = and i32 %48, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  br i1 %tobool202.not, label %lor.lhs.false203, label %do.body200.if.then206_crit_edge

do.body200.if.then206_crit_edge:                  ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then206

lor.lhs.false203:                                 ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_hal_reo_status_queue_stats, %if.then206)) #7
          to label %do.body266 [label %if.then206], !srcloc !44

if.then206:                                       ; preds = %lor.lhs.false203, %do.body200.if.then206_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %info2 = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 19
  %49 = ptrtoint ptr %info2 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %info2, align 1
  %and223 = lshr i32 %50, 4
  %shr224 = and i32 %and223, 63
  %and242 = lshr i32 %50, 10
  %shr243 = and i32 %and242, 63
  %shr262 = lshr i32 %50, 16
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 2048, ptr noundef nonnull @.str.12, i32 noundef %shr224, i32 noundef %shr243, i32 noundef %shr262) #7
  br label %do.body266

do.body266:                                       ; preds = %if.then206, %lor.lhs.false203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %51 = load i32, ptr @ath11k_debug_mask, align 4
  %and267 = and i32 %51, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and267)
  %tobool268.not = icmp eq i32 %and267, 0
  br i1 %tobool268.not, label %lor.lhs.false269, label %do.body266.if.then272_crit_edge

do.body266.if.then272_crit_edge:                  ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then272

lor.lhs.false269:                                 ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_hal_reo_status_queue_stats, %if.then272)) #7
          to label %do.body313 [label %if.then272], !srcloc !44

if.then272:                                       ; preds = %lor.lhs.false269, %do.body266.if.then272_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %info3 = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 20
  %52 = ptrtoint ptr %info3 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %info3, align 1
  %and289 = and i32 %53, 16777215
  %shr309 = lshr i32 %53, 24
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 2048, ptr noundef nonnull @.str.13, i32 noundef %and289, i32 noundef %shr309) #7
  br label %do.body313

do.body313:                                       ; preds = %if.then272, %lor.lhs.false269
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %54 = load i32, ptr @ath11k_debug_mask, align 4
  %and314 = and i32 %54, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314)
  %tobool315.not = icmp eq i32 %and314, 0
  br i1 %tobool315.not, label %lor.lhs.false316, label %do.body313.if.then319_crit_edge

do.body313.if.then319_crit_edge:                  ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then319

lor.lhs.false316:                                 ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_hal_reo_status_queue_stats, %if.then319)) #7
          to label %do.body323 [label %if.then319], !srcloc !44

if.then319:                                       ; preds = %lor.lhs.false316, %do.body313.if.then319_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %num_mpdu_frames = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 21
  %55 = ptrtoint ptr %num_mpdu_frames to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %num_mpdu_frames, align 1
  %num_msdu_frames = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 22
  %57 = ptrtoint ptr %num_msdu_frames to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %num_msdu_frames, align 1
  %total_bytes = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 23
  %59 = ptrtoint ptr %total_bytes to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %total_bytes, align 1
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 2048, ptr noundef nonnull @.str.14, i32 noundef %56, i32 noundef %58, i32 noundef %60) #7
  br label %do.body323

do.body323:                                       ; preds = %if.then319, %lor.lhs.false316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %61 = load i32, ptr @ath11k_debug_mask, align 4
  %and324 = and i32 %61, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and324)
  %tobool325.not = icmp eq i32 %and324, 0
  br i1 %tobool325.not, label %lor.lhs.false326, label %do.body323.if.then329_crit_edge

do.body323.if.then329_crit_edge:                  ; preds = %do.body323
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then329

lor.lhs.false326:                                 ; preds = %do.body323
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_hal_reo_status_queue_stats, %if.then329)) #7
          to label %do.body389 [label %if.then329], !srcloc !44

if.then329:                                       ; preds = %lor.lhs.false326, %do.body323.if.then329_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %info4 = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 24
  %62 = ptrtoint ptr %info4 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %info4, align 1
  %and346 = and i32 %63, 4095
  %and365 = lshr i32 %63, 12
  %shr366 = and i32 %and365, 15
  %shr385 = lshr i32 %63, 16
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 2048, ptr noundef nonnull @.str.15, i32 noundef %and346, i32 noundef %shr366, i32 noundef %shr385) #7
  br label %do.body389

do.body389:                                       ; preds = %if.then329, %lor.lhs.false326
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath11k_debug_mask to i32))
  %64 = load i32, ptr @ath11k_debug_mask, align 4
  %and390 = and i32 %64, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and390)
  %tobool391.not = icmp eq i32 %and390, 0
  br i1 %tobool391.not, label %lor.lhs.false392, label %do.body389.if.then395_crit_edge

do.body389.if.then395_crit_edge:                  ; preds = %do.body389
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then395

lor.lhs.false392:                                 ; preds = %do.body389
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath11k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath11k_hal_reo_status_queue_stats, %if.then395)) #7
          to label %do.end416 [label %if.then395], !srcloc !44

if.then395:                                       ; preds = %lor.lhs.false392, %do.body389.if.then395_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %info5 = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 25
  %65 = ptrtoint ptr %info5 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %info5, align 1
  %shr413 = lshr i32 %66, 28
  tail call void (ptr, i32, ptr, ...) @__ath11k_dbg(ptr noundef %ab, i32 noundef 2048, ptr noundef nonnull @.str.16, i32 noundef %shr413) #7
  br label %do.end416

do.end416:                                        ; preds = %if.then395, %lor.lhs.false392
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath11k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath11k_hal_reo_process_status(ptr nocapture noundef readonly %reo_desc, ptr nocapture noundef writeonly %status) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 0, i32 1
  %0 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %value, align 1
  %and = lshr i32 %1, 26
  %2 = trunc i32 %and to i8
  %conv = and i8 %2, 3
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %status, align 1
  %4 = load i32, ptr %value, align 1
  %and30 = and i32 %4, 65535
  ret i32 %and30
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath11k_hal_reo_flush_queue_status(ptr nocapture noundef readnone %ab, ptr nocapture noundef readonly %reo_desc, ptr nocapture noundef writeonly %status) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 0, i32 1
  %0 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %value, align 1
  %conv = trunc i32 %1 to i16
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %status, align 4
  %3 = load i32, ptr %value, align 1
  %and31 = lshr i32 %3, 26
  %shr32 = and i32 %and31, 3
  %cmd_status = getelementptr inbounds %struct.hal_reo_status_header, ptr %status, i32 0, i32 1
  %4 = ptrtoint ptr %cmd_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr32, ptr %cmd_status, align 4
  %info050 = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 3
  %5 = ptrtoint ptr %info050 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %info050, align 1
  %u = getelementptr inbounds %struct.hal_reo_status, ptr %status, i32 0, i32 2
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  %9 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %u, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath11k_hal_reo_flush_cache_status(ptr nocapture noundef %ab, ptr nocapture noundef readonly %reo_desc, ptr nocapture noundef writeonly %status) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 0, i32 1
  %0 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %value, align 1
  %conv = trunc i32 %1 to i16
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %status, align 4
  %3 = load i32, ptr %value, align 1
  %and32 = lshr i32 %3, 26
  %shr33 = and i32 %and32, 3
  %cmd_status = getelementptr inbounds %struct.hal_reo_status_header, ptr %status, i32 0, i32 1
  %4 = ptrtoint ptr %cmd_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr33, ptr %cmd_status, align 4
  %info051 = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 3
  %5 = ptrtoint ptr %info051 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %info051, align 1
  %u = getelementptr inbounds %struct.hal_reo_status, ptr %status, i32 0, i32 2
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  %9 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %u, align 4
  %10 = load i32, ptr %info051, align 1
  %and71 = lshr i32 %10, 1
  %shr72 = and i32 %and71, 3
  %err_code = getelementptr inbounds %struct.hal_reo_status, ptr %status, i32 0, i32 2, i32 0, i32 2
  %11 = ptrtoint ptr %err_code to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr72, ptr %err_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr72)
  %tobool76.not = icmp eq i32 %shr72, 0
  br i1 %tobool76.not, label %if.then, label %entry.do.end94_crit_edge

entry.do.end94_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end94

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %current_blk_index = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 5
  %12 = ptrtoint ptr %current_blk_index to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %current_blk_index, align 1
  %conv77 = zext i8 %13 to i32
  %shl = shl nuw i32 1, %conv77
  %avail_blk_resource = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 4
  %14 = ptrtoint ptr %avail_blk_resource to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %avail_blk_resource, align 4
  %16 = trunc i32 %shl to i8
  %conv79 = or i8 %15, %16
  store i8 %conv79, ptr %avail_blk_resource, align 4
  br label %do.end94

do.end94:                                         ; preds = %if.then, %entry.do.end94_crit_edge
  %17 = ptrtoint ptr %info051 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %info051, align 1
  %cache_controller_flush_status_hit = getelementptr inbounds %struct.hal_reo_status, ptr %status, i32 0, i32 2, i32 0, i32 2, i32 1
  %19 = lshr i32 %18, 8
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = ptrtoint ptr %cache_controller_flush_status_hit to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %cache_controller_flush_status_hit, align 4
  %23 = load i32, ptr %info051, align 1
  %and119 = lshr i32 %23, 9
  %24 = trunc i32 %and119 to i8
  %conv121 = and i8 %24, 7
  %cache_controller_flush_status_desc_type = getelementptr inbounds %struct.hal_reo_status_flush_cache, ptr %u, i32 0, i32 3
  %25 = ptrtoint ptr %cache_controller_flush_status_desc_type to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv121, ptr %cache_controller_flush_status_desc_type, align 1
  %26 = load i32, ptr %info051, align 1
  %and140 = lshr i32 %26, 12
  %27 = trunc i32 %and140 to i8
  %conv142 = and i8 %27, 15
  %cache_controller_flush_status_client_id = getelementptr inbounds %struct.hal_reo_status_flush_cache, ptr %u, i32 0, i32 4
  %28 = ptrtoint ptr %cache_controller_flush_status_client_id to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv142, ptr %cache_controller_flush_status_client_id, align 2
  %29 = load i32, ptr %info051, align 1
  %and161 = lshr i32 %29, 16
  %30 = trunc i32 %and161 to i8
  %conv163 = and i8 %30, 3
  %cache_controller_flush_status_err = getelementptr inbounds %struct.hal_reo_status_flush_cache, ptr %u, i32 0, i32 5
  %31 = ptrtoint ptr %cache_controller_flush_status_err to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv163, ptr %cache_controller_flush_status_err, align 1
  %32 = load i32, ptr %info051, align 1
  %and182 = lshr i32 %32, 18
  %conv184 = trunc i32 %and182 to i8
  %cache_controller_flush_status_cnt = getelementptr inbounds %struct.hal_reo_status, ptr %status, i32 0, i32 2, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %cache_controller_flush_status_cnt to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv184, ptr %cache_controller_flush_status_cnt, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath11k_hal_reo_unblk_cache_status(ptr nocapture noundef %ab, ptr nocapture noundef readonly %reo_desc, ptr nocapture noundef writeonly %status) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 0, i32 1
  %0 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %value, align 1
  %conv = trunc i32 %1 to i16
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %status, align 4
  %3 = load i32, ptr %value, align 1
  %and32 = lshr i32 %3, 26
  %shr33 = and i32 %and32, 3
  %cmd_status = getelementptr inbounds %struct.hal_reo_status_header, ptr %status, i32 0, i32 1
  %4 = ptrtoint ptr %cmd_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr33, ptr %cmd_status, align 4
  %info051 = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 3
  %5 = ptrtoint ptr %info051 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %info051, align 1
  %u = getelementptr inbounds %struct.hal_reo_status, ptr %status, i32 0, i32 2
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  %9 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %u, align 4
  %10 = load i32, ptr %info051, align 1
  %and71 = lshr i32 %10, 1
  %shr72 = and i32 %and71, 1
  %unblock_type = getelementptr inbounds %struct.hal_reo_status, ptr %status, i32 0, i32 2, i32 0, i32 2
  %11 = ptrtoint ptr %unblock_type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr72, ptr %unblock_type, align 4
  %12 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool76.not = icmp eq i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr72)
  %cmp = icmp eq i32 %shr72, 0
  %or.cond = select i1 %tobool76.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %current_blk_index = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 5
  %13 = ptrtoint ptr %current_blk_index to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %current_blk_index, align 1
  %conv80 = zext i8 %14 to i32
  %shl = shl nuw i32 1, %conv80
  %avail_blk_resource = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 16, i32 4
  %15 = ptrtoint ptr %avail_blk_resource to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %avail_blk_resource, align 4
  %17 = trunc i32 %shl to i8
  %18 = xor i8 %17, -1
  %conv83 = and i8 %16, %18
  store i8 %conv83, ptr %avail_blk_resource, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath11k_hal_reo_flush_timeout_list_status(ptr nocapture noundef readnone %ab, ptr nocapture noundef readonly %reo_desc, ptr nocapture noundef writeonly %status) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 0, i32 1
  %0 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %value, align 1
  %conv = trunc i32 %1 to i16
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %status, align 4
  %3 = load i32, ptr %value, align 1
  %and31 = lshr i32 %3, 26
  %shr32 = and i32 %and31, 3
  %cmd_status = getelementptr inbounds %struct.hal_reo_status_header, ptr %status, i32 0, i32 1
  %4 = ptrtoint ptr %cmd_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr32, ptr %cmd_status, align 4
  %info050 = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 3
  %5 = ptrtoint ptr %info050 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %info050, align 1
  %u = getelementptr inbounds %struct.hal_reo_status, ptr %status, i32 0, i32 2
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  %9 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %u, align 4
  %10 = load i32, ptr %info050, align 1
  %list_empty = getelementptr inbounds %struct.hal_reo_status_flush_timeout_list, ptr %u, i32 0, i32 1
  %11 = trunc i32 %10 to i8
  %12 = lshr i8 %11, 1
  %13 = and i8 %12, 1
  %14 = ptrtoint ptr %list_empty to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %list_empty, align 1
  %info1 = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 4
  %15 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %info1, align 1
  %conv93 = trunc i32 %16 to i16
  %release_desc_cnt = getelementptr inbounds %struct.hal_reo_status, ptr %status, i32 0, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %release_desc_cnt to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv93, ptr %release_desc_cnt, align 2
  %18 = load i32, ptr %info1, align 1
  %shr113 = lshr i32 %18, 16
  %conv114 = trunc i32 %shr113 to i16
  %fwd_buf_cnt = getelementptr inbounds %struct.hal_reo_status, ptr %status, i32 0, i32 2, i32 0, i32 2
  %19 = ptrtoint ptr %fwd_buf_cnt to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv114, ptr %fwd_buf_cnt, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath11k_hal_reo_desc_thresh_reached_status(ptr nocapture noundef readnone %ab, ptr nocapture noundef readonly %reo_desc, ptr nocapture noundef writeonly %status) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 0, i32 1
  %0 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %value, align 1
  %conv = trunc i32 %1 to i16
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %status, align 4
  %3 = load i32, ptr %value, align 1
  %and31 = lshr i32 %3, 26
  %shr32 = and i32 %and31, 3
  %cmd_status = getelementptr inbounds %struct.hal_reo_status_header, ptr %status, i32 0, i32 1
  %4 = ptrtoint ptr %cmd_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr32, ptr %cmd_status, align 4
  %info050 = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 3
  %5 = ptrtoint ptr %info050 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %info050, align 1
  %and51 = and i32 %6, 3
  %u = getelementptr inbounds %struct.hal_reo_status, ptr %status, i32 0, i32 2
  %7 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and51, ptr %u, align 4
  %info1 = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 4
  %8 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %info1, align 1
  %and69 = and i32 %9, 16777215
  %link_desc_counter0 = getelementptr inbounds %struct.hal_reo_status, ptr %status, i32 0, i32 2, i32 0, i32 2
  %10 = ptrtoint ptr %link_desc_counter0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and69, ptr %link_desc_counter0, align 4
  %info2 = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 5
  %11 = ptrtoint ptr %info2 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %info2, align 1
  %and88 = and i32 %12, 16777215
  %link_desc_counter1 = getelementptr inbounds %struct.hal_reo_status, ptr %status, i32 0, i32 2, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %link_desc_counter1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and88, ptr %link_desc_counter1, align 4
  %info3 = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 6
  %14 = ptrtoint ptr %info3 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %info3, align 1
  %and107 = and i32 %15, 16777215
  %link_desc_counter2 = getelementptr inbounds %struct.hal_reo_status, ptr %status, i32 0, i32 2, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %link_desc_counter2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and107, ptr %link_desc_counter2, align 4
  %info4 = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 7
  %17 = ptrtoint ptr %info4 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %info4, align 1
  %and126 = and i32 %18, 67108863
  %link_desc_counter_sum = getelementptr inbounds %struct.hal_reo_status, ptr %status, i32 0, i32 2, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %link_desc_counter_sum to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and126, ptr %link_desc_counter_sum, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath11k_hal_reo_update_rx_reo_queue_status(ptr nocapture noundef readnone %ab, ptr nocapture noundef readonly %reo_desc, ptr nocapture noundef writeonly %status) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.hal_tlv_hdr, ptr %reo_desc, i32 0, i32 1
  %0 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %value, align 1
  %conv = trunc i32 %1 to i16
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %status, align 4
  %3 = load i32, ptr %value, align 1
  %and30 = lshr i32 %3, 26
  %shr31 = and i32 %and30, 3
  %cmd_status = getelementptr inbounds %struct.hal_reo_status_header, ptr %status, i32 0, i32 1
  %4 = ptrtoint ptr %cmd_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr31, ptr %cmd_status, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath11k_hal_reo_qdesc_size(i32 noundef %ba_window_size, i8 noundef zeroext %tid) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ba_window_size)
  %cmp = icmp ult i32 %ba_window_size, 2
  br i1 %cmp, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %tid)
  %cmp1.not = icmp eq i8 %tid, 16
  %. = select i1 %cmp1.not, i32 128, i32 256
  br label %if.end15

if.else4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 106, i32 %ba_window_size)
  %cmp5 = icmp ult i32 %ba_window_size, 106
  br i1 %cmp5, label %if.else4.if.end15_crit_edge, label %if.else8

if.else4.if.end15_crit_edge:                      ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.else8:                                         ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 211, i32 %ba_window_size)
  %cmp9 = icmp ult i32 %ba_window_size, 211
  %.18 = select i1 %cmp9, i32 384, i32 512
  br label %if.end15

if.end15:                                         ; preds = %if.else8, %if.else4.if.end15_crit_edge, %if.then
  %num_ext_desc.0 = phi i32 [ %., %if.then ], [ 256, %if.else4.if.end15_crit_edge ], [ %.18, %if.else8 ]
  ret i32 %num_ext_desc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_hal_reo_qdesc_setup(ptr nocapture noundef %vaddr, i32 noundef %tid, i32 noundef %ba_window_size, i32 noundef %start_seq, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %vaddr, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 124)
  %2 = ptrtoint ptr %vaddr to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 -574689404, ptr %vaddr, align 1
  %and13 = and i32 %tid, 65535
  %rx_queue_num = getelementptr inbounds %struct.hal_rx_reo_queue, ptr %vaddr, i32 0, i32 1
  %3 = ptrtoint ptr %rx_queue_num to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %and13, ptr %rx_queue_num, align 1
  %4 = zext i32 %tid to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %tid, label %lor.rhs.i [
    i32 0, label %entry.ath11k_tid_to_ac.exit_crit_edge
    i32 3, label %entry.ath11k_tid_to_ac.exit_crit_edge265
    i32 1, label %cond.end10.fold.split.i
    i32 2, label %cond.end10.fold.split17.i
    i32 4, label %entry.lor.end.i_crit_edge
  ]

entry.lor.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.i

entry.ath11k_tid_to_ac.exit_crit_edge265:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_tid_to_ac.exit

entry.ath11k_tid_to_ac.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_tid_to_ac.exit

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %tid)
  %cmp8.i = icmp eq i32 %tid, 5
  %phi.sel.i = select i1 %cmp8.i, i32 64, i32 96
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %entry.lor.end.i_crit_edge
  %5 = phi i32 [ %phi.sel.i, %lor.rhs.i ], [ 64, %entry.lor.end.i_crit_edge ]
  br label %ath11k_tid_to_ac.exit

cond.end10.fold.split.i:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_tid_to_ac.exit

cond.end10.fold.split17.i:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_tid_to_ac.exit

ath11k_tid_to_ac.exit:                            ; preds = %cond.end10.fold.split17.i, %cond.end10.fold.split.i, %lor.end.i, %entry.ath11k_tid_to_ac.exit_crit_edge, %entry.ath11k_tid_to_ac.exit_crit_edge265
  %cond11.i = phi i32 [ 0, %entry.ath11k_tid_to_ac.exit_crit_edge ], [ %5, %lor.end.i ], [ 0, %entry.ath11k_tid_to_ac.exit_crit_edge265 ], [ 32, %cond.end10.fold.split.i ], [ 32, %cond.end10.fold.split17.i ]
  %and63 = and i32 %cond11.i, 96
  %info0 = getelementptr inbounds %struct.hal_rx_reo_queue, ptr %vaddr, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ba_window_size)
  %cmp = icmp eq i32 %ba_window_size, 0
  %spec.store.select = select i1 %cmp, i32 1, i32 %ba_window_size
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select)
  %cmp67 = icmp eq i32 %spec.store.select, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %tid)
  %cmp68.not = icmp eq i32 %tid, 16
  %spec.select = select i1 %cmp68.not, i32 1, i32 2
  %ba_window_size.addr.0 = select i1 %cmp67, i32 %spec.select, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ba_window_size.addr.0)
  %cmp71 = icmp eq i32 %ba_window_size.addr.0, 1
  %spec.select264.v = select i1 %cmp71, i32 259, i32 3
  %spec.select264 = or i32 %and63, %spec.select264.v
  %6 = ptrtoint ptr %info0 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %spec.select264, ptr %info0, align 1
  %sub = shl i32 %ba_window_size.addr.0, 11
  %shl116 = add i32 %sub, 522240
  %and117 = and i32 %shl116, 522240
  %or119 = or i32 %spec.select264, %and117
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cond = icmp eq i32 %type, 1
  %or155 = or i32 %or119, 8912896
  %spec.select261 = select i1 %cond, i32 %or155, i32 %or119
  %or173 = or i32 %spec.select261, 33554432
  %7 = ptrtoint ptr %info0 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %or173, ptr %info0, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %start_seq)
  %cmp191 = icmp ult i32 %start_seq, 4096
  br i1 %cmp191, label %do.end213, label %ath11k_tid_to_ac.exit.if.end218_crit_edge

ath11k_tid_to_ac.exit.if.end218_crit_edge:        ; preds = %ath11k_tid_to_ac.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end218

do.end213:                                        ; preds = %ath11k_tid_to_ac.exit
  call void @__sanitizer_cov_trace_pc() #9
  %info1 = getelementptr inbounds %struct.hal_rx_reo_queue, ptr %vaddr, i32 0, i32 3
  %shl215 = shl nuw nsw i32 %start_seq, 1
  %and216 = and i32 %shl215, 8190
  %8 = ptrtoint ptr %info1 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %and216, ptr %info1, align 1
  br label %if.end218

if.end218:                                        ; preds = %do.end213, %ath11k_tid_to_ac.exit.if.end218_crit_edge
  br i1 %cmp68.not, label %if.end218.cleanup_crit_edge, label %if.end221

if.end218.cleanup_crit_edge:                      ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end221:                                        ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #9
  %ext_desc222 = getelementptr inbounds %struct.hal_rx_reo_queue, ptr %vaddr, i32 0, i32 18
  %9 = getelementptr inbounds %struct.hal_rx_reo_queue, ptr %vaddr, i32 1, i32 1
  %10 = call ptr @memset(ptr %9, i32 0, i32 124)
  %11 = ptrtoint ptr %ext_desc222 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 -1379995756, ptr %ext_desc222, align 1
  %incdec.ptr = getelementptr %struct.hal_rx_reo_queue, ptr %vaddr, i32 2
  %12 = getelementptr %struct.hal_rx_reo_queue, ptr %vaddr, i32 2, i32 1
  %13 = call ptr @memset(ptr %12, i32 0, i32 124)
  %14 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 -1111560300, ptr %incdec.ptr, align 1
  %incdec.ptr225 = getelementptr %struct.hal_rx_reo_queue, ptr %vaddr, i32 3
  %15 = getelementptr %struct.hal_rx_reo_queue, ptr %vaddr, i32 3, i32 1
  %16 = call ptr @memset(ptr %15, i32 0, i32 124)
  %17 = ptrtoint ptr %incdec.ptr225 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 -843124844, ptr %incdec.ptr225, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end221, %if.end218.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath11k_hal_reo_init_cmd_ring(ptr noundef %ab, ptr noundef %srng) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.hal_srng_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %params) #7
  %0 = call ptr @memset(ptr %params, i32 0, i32 40)
  %call = tail call i32 @ath11k_hal_srng_get_entrysize(ptr noundef %ab, i32 noundef 3) #7
  call void @ath11k_hal_srng_get_params(ptr noundef %ab, ptr noundef %srng, ptr noundef nonnull %params) #7
  %num_entries = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 2
  %1 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp18 = icmp sgt i32 %2, 0
  br i1 %cmp18, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %ring_base_vaddr = getelementptr inbounds %struct.hal_srng_params, ptr %params, i32 0, i32 1
  %3 = ptrtoint ptr %ring_base_vaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ring_base_vaddr, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %entry1.021 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %4, %for.body.preheader ]
  %cmd_num.020 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %i.019 = phi i32 [ %inc14, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %value = getelementptr inbounds %struct.hal_tlv_hdr, ptr %entry1.021, i32 0, i32 1
  %inc = add nuw i32 %cmd_num.020, 1
  %and = and i32 %cmd_num.020, 65535
  %5 = ptrtoint ptr %value to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %and, ptr %value, align 1
  %add.ptr = getelementptr i8, ptr %entry1.021, i32 %call
  %inc14 = add nuw nsw i32 %i.019, 1
  %6 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_entries, align 4
  %cmp = icmp slt i32 %inc14, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %params) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_hal_srng_get_entrysize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath11k_hal_srng_get_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath11k_hal_rx_parse_mon_status(ptr noundef %ab, ptr noundef %ppdu_info, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %rx_duration.i = getelementptr inbounds %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 25
  %hw_ops.i = getelementptr inbounds %struct.ath11k_base, ptr %ab, i32 0, i32 36, i32 5
  %peer_id830.i = getelementptr inbounds %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 10
  %arrayidx.i.i = getelementptr %struct.ath11k_base, ptr %ab, i32 0, i32 4, i32 6, i32 5
  %rssi_comb.i = getelementptr inbounds %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 19
  %arrayidx824.i = getelementptr %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 20, i32 0
  %arrayidx824.1.i = getelementptr %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 20, i32 1
  %arrayidx824.2.i = getelementptr %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 20, i32 2
  %arrayidx824.3.i = getelementptr %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 20, i32 3
  %arrayidx824.4.i = getelementptr %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 20, i32 4
  %arrayidx824.5.i = getelementptr %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 20, i32 5
  %arrayidx824.6.i = getelementptr %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 20, i32 6
  %arrayidx824.7.i = getelementptr %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 20, i32 7
  %mcs749.i = getelementptr inbounds %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 12
  %nss770.i = getelementptr inbounds %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 13
  %beamformed773.i = getelementptr inbounds %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 18
  %ldpc793.i = getelementptr inbounds %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 17
  %reception_type794.i = getelementptr inbounds %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 24
  %ru_alloc.i = getelementptr inbounds %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 23
  %bw612.i = getelementptr inbounds %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 14
  %gi636.i = getelementptr inbounds %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 16
  %is_stbc640.i = getelementptr inbounds %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 15
  %dcm587.i = getelementptr inbounds %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 22
  %rate309.i = getelementptr inbounds %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 11
  %tid.i = getelementptr inbounds %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 21
  %tcp_msdu_count.i = getelementptr inbounds %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 6
  %udp_msdu_count.i = getelementptr inbounds %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 8
  %other_msdu_count.i = getelementptr inbounds %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 9
  %tcp_ack_msdu_count.i = getelementptr inbounds %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 7
  %preamble_type.i = getelementptr inbounds %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 4
  %num_mpdu_fcs_ok.i = getelementptr inbounds %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 2
  %num_mpdu_fcs_err.i = getelementptr inbounds %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 3
  %chan_num14.i = getelementptr inbounds %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 5
  %ppdu_ts.i = getelementptr inbounds %struct.hal_rx_mon_ppdu_info, ptr %ppdu_info, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %ath11k_hal_rx_parse_mon_status_tlv.exit.do.body_crit_edge, %entry
  %ptr.0 = phi ptr [ %1, %entry ], [ %222, %ath11k_hal_rx_parse_mon_status_tlv.exit.do.body_crit_edge ]
  %2 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %ptr.0, align 1
  %4 = lshr i32 %3, 1
  %conv = and i32 %4, 511
  %and31 = lshr i32 %3, 10
  %add.ptr = getelementptr i8, ptr %ptr.0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 206, i32 %conv)
  %cmp = icmp eq i32 %conv, 206
  %5 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %conv, label %do.body.sw.epilog855.i_crit_edge [
    i32 205, label %sw.bb.i
    i32 301, label %sw.bb15.i
    i32 85, label %sw.bb169.i
    i32 84, label %sw.bb266.i
    i32 83, label %sw.bb288.i
    i32 86, label %sw.bb311.i
    i32 95, label %sw.bb460.i
    i32 96, label %sw.bb589.i
    i32 98, label %sw.bb642.i
    i32 99, label %sw.bb665.i
    i32 100, label %sw.bb728.i
    i32 76, label %sw.bb795.i
    i32 207, label %sw.bb826.i
    i32 362, label %sw.bb832.i
    i32 109, label %do.body.ath11k_hal_rx_parse_mon_status_tlv.exit_crit_edge
    i32 319, label %do.body.sw.bb854.i_crit_edge
    i32 0, label %do.body.sw.bb854.i_crit_edge63
  ]

do.body.sw.bb854.i_crit_edge63:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb854.i

do.body.sw.bb854.i_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb854.i

do.body.ath11k_hal_rx_parse_mon_status_tlv.exit_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath11k_hal_rx_parse_mon_status_tlv.exit

do.body.sw.epilog855.i_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog855.i

sw.bb.i:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %add.ptr, align 1
  %8 = and i32 %7, -65536
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  %10 = ptrtoint ptr %ppdu_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ppdu_info, align 8
  %chan_num.i = getelementptr i8, ptr %ptr.0, i32 8
  %11 = ptrtoint ptr %chan_num.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %chan_num.i, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  %conv.i = trunc i32 %13 to i16
  %14 = ptrtoint ptr %chan_num14.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %chan_num14.i, align 4
  %ppdu_start_ts.i = getelementptr i8, ptr %ptr.0, i32 12
  %15 = ptrtoint ptr %ppdu_start_ts.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %ppdu_start_ts.i, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  %18 = ptrtoint ptr %ppdu_ts.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %ppdu_ts.i, align 4
  br label %sw.epilog855.i

sw.bb15.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %info016.i = getelementptr i8, ptr %ptr.0, i32 12
  %19 = ptrtoint ptr %info016.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %info016.i, align 1
  %info117.i = getelementptr i8, ptr %ptr.0, i32 16
  %21 = ptrtoint ptr %info117.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %info117.i, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  %info6.i = getelementptr i8, ptr %ptr.0, i32 48
  %24 = ptrtoint ptr %info6.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %info6.i, align 1
  %26 = and i32 %25, -65536
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  %28 = tail call i32 @llvm.cttz.i32(i32 %27, i1 true) #7, !range !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %iszero.i = icmp eq i32 %26, 0
  %29 = trunc i32 %28 to i8
  %conv36.i = select i1 %iszero.i, i8 -1, i8 %29
  %30 = ptrtoint ptr %tid.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv36.i, ptr %tid.i, align 1
  %info4.i = getelementptr i8, ptr %ptr.0, i32 40
  %31 = ptrtoint ptr %info4.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %info4.i, align 1
  %33 = and i32 %32, 65535
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  %shr54.i = lshr exact i32 %34, 16
  %conv55.i = trunc i32 %shr54.i to i16
  %35 = ptrtoint ptr %tcp_msdu_count.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv55.i, ptr %tcp_msdu_count.i, align 2
  %36 = ptrtoint ptr %info4.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %info4.i, align 1
  %38 = and i32 %37, -65536
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  %conv75.i = trunc i32 %39 to i16
  %40 = ptrtoint ptr %udp_msdu_count.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv75.i, ptr %udp_msdu_count.i, align 2
  %info5.i = getelementptr i8, ptr %ptr.0, i32 44
  %41 = ptrtoint ptr %info5.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %info5.i, align 1
  %43 = and i32 %42, -65536
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #7
  %conv94.i = trunc i32 %44 to i16
  %45 = ptrtoint ptr %other_msdu_count.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv94.i, ptr %other_msdu_count.i, align 4
  %46 = ptrtoint ptr %info5.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %info5.i, align 1
  %48 = and i32 %47, 65535
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #7
  %shr113.i = lshr exact i32 %49, 16
  %conv114.i = trunc i32 %shr113.i to i16
  %50 = ptrtoint ptr %tcp_ack_msdu_count.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv114.i, ptr %tcp_ack_msdu_count.i, align 8
  %and131.i = lshr i32 %23, 20
  %shr132.i = and i32 %and131.i, 15
  %51 = ptrtoint ptr %preamble_type.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %shr132.i, ptr %preamble_type.i, align 8
  %and149.i = and i32 %23, 511
  %52 = ptrtoint ptr %num_mpdu_fcs_ok.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and149.i, ptr %num_mpdu_fcs_ok.i, align 8
  %53 = and i32 %20, 65283
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #7
  %shr168.i = lshr exact i32 %54, 16
  %55 = ptrtoint ptr %num_mpdu_fcs_err.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %shr168.i, ptr %num_mpdu_fcs_err.i, align 4
  br label %sw.epilog855.i

sw.bb169.i:                                       ; preds = %do.body
  %56 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %add.ptr, align 1
  %58 = lshr i32 %57, 24
  %info1171.i = getelementptr i8, ptr %ptr.0, i32 8
  %59 = ptrtoint ptr %info1171.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %info1171.i, align 1
  %61 = lshr i32 %60, 24
  %62 = trunc i32 %58 to i8
  %conv190.i = and i8 %62, 127
  %63 = ptrtoint ptr %mcs749.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv190.i, ptr %mcs749.i, align 1
  %64 = lshr i8 %62, 7
  %65 = ptrtoint ptr %bw612.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %bw612.i, align 1
  %66 = trunc i32 %61 to i8
  %67 = lshr i8 %66, 4
  %conv228.i = and i8 %67, 3
  %68 = ptrtoint ptr %is_stbc640.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv228.i, ptr %is_stbc640.i, align 4
  %69 = lshr i8 %66, 6
  %conv247.i = and i8 %69, 1
  %70 = ptrtoint ptr %ldpc793.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv247.i, ptr %ldpc793.i, align 2
  %conv249.i = and i8 %66, -128
  %71 = ptrtoint ptr %gi636.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv249.i, ptr %gi636.i, align 1
  %72 = and i32 %57, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %switch.lookup, label %sw.epilog.ithread-pre-split

switch.lookup:                                    ; preds = %sw.bb169.i
  call void @__sanitizer_cov_trace_pc() #9
  %sext = shl i32 %58, 25
  %74 = ashr exact i32 %sext, 25
  %switch.gep = getelementptr inbounds [32 x i8], ptr @switch.table.ath11k_hal_rx_parse_mon_status, i32 0, i32 %74
  %75 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %75)
  %switch.load = load i8, ptr %switch.gep, align 1
  %76 = ptrtoint ptr %nss770.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %switch.load, ptr %nss770.i, align 2
  br label %sw.epilog.i

sw.epilog.ithread-pre-split:                      ; preds = %sw.bb169.i
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %nss770.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %.pr = load i8, ptr %nss770.i, align 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.ithread-pre-split, %switch.lookup
  %78 = phi i8 [ %.pr, %sw.epilog.ithread-pre-split ], [ %switch.load, %switch.lookup ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %78)
  %cmp.i = icmp ugt i8 %78, 1
  br i1 %cmp.i, label %if.then.i, label %sw.epilog.i.if.end.i_crit_edge

sw.epilog.i.if.end.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = and i8 %62, 7
  %80 = ptrtoint ptr %mcs749.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %mcs749.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.epilog.i.if.end.i_crit_edge
  %81 = ptrtoint ptr %reception_type794.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %reception_type794.i, align 4
  br label %sw.epilog855.i

sw.bb266.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %add.ptr, align 1
  %84 = lshr i32 %83, 24
  %85 = trunc i32 %84 to i8
  %conv286.i = and i8 %85, 15
  %86 = ptrtoint ptr %rate309.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv286.i, ptr %rate309.i, align 8
  %87 = ptrtoint ptr %reception_type794.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %reception_type794.i, align 4
  br label %sw.epilog855.i

sw.bb288.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %add.ptr, align 1
  %90 = lshr i32 %89, 24
  %91 = trunc i32 %90 to i8
  %conv308.i = and i8 %91, 15
  %92 = ptrtoint ptr %rate309.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv308.i, ptr %rate309.i, align 8
  %93 = ptrtoint ptr %reception_type794.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %reception_type794.i, align 4
  br label %sw.epilog855.i

sw.bb311.i:                                       ; preds = %do.body
  %94 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %add.ptr, align 1
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #7
  %info1313.i = getelementptr i8, ptr %ptr.0, i32 8
  %97 = ptrtoint ptr %info1313.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %info1313.i, align 1
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #7
  %100 = trunc i32 %96 to i8
  %101 = lshr i8 %100, 2
  %conv332.i = and i8 %101, 1
  %102 = ptrtoint ptr %ldpc793.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv332.i, ptr %ldpc793.i, align 2
  %103 = trunc i32 %99 to i8
  %104 = lshr i8 %103, 4
  %105 = ptrtoint ptr %mcs749.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %mcs749.i, align 1
  %conv372.i = and i32 %99, 3
  %106 = zext i32 %conv372.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %conv372.i, label %sw.bb311.i.sw.epilog378.i_crit_edge [
    i32 0, label %sw.bb311.i.sw.epilog378.sink.split.i_crit_edge
    i32 1, label %sw.bb311.i.sw.bb376.i_crit_edge
    i32 3, label %sw.bb311.i.sw.bb376.i_crit_edge64
  ]

sw.bb311.i.sw.bb376.i_crit_edge64:                ; preds = %sw.bb311.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb376.i

sw.bb311.i.sw.bb376.i_crit_edge:                  ; preds = %sw.bb311.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb376.i

sw.bb311.i.sw.epilog378.sink.split.i_crit_edge:   ; preds = %sw.bb311.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog378.sink.split.i

sw.bb311.i.sw.epilog378.i_crit_edge:              ; preds = %sw.bb311.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog378.i

sw.bb376.i:                                       ; preds = %sw.bb311.i.sw.bb376.i_crit_edge, %sw.bb311.i.sw.bb376.i_crit_edge64
  br label %sw.epilog378.sink.split.i

sw.epilog378.sink.split.i:                        ; preds = %sw.bb376.i, %sw.bb311.i.sw.epilog378.sink.split.i_crit_edge
  %.sink998.i = phi i8 [ 1, %sw.bb376.i ], [ 0, %sw.bb311.i.sw.epilog378.sink.split.i_crit_edge ]
  %107 = ptrtoint ptr %gi636.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %.sink998.i, ptr %gi636.i, align 1
  br label %sw.epilog378.i

sw.epilog378.i:                                   ; preds = %sw.epilog378.sink.split.i, %sw.bb311.i.sw.epilog378.i_crit_edge
  %conv380.i = and i8 %100, 8
  %108 = ptrtoint ptr %is_stbc640.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv380.i, ptr %is_stbc640.i, align 4
  %and398.i = lshr i32 %96, 10
  %shr399.i = and i32 %and398.i, 4095
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv380.i)
  %tobool.not.i = icmp eq i8 %conv380.i, 0
  br i1 %tobool.not.i, label %sw.epilog378.i.if.end407.i_crit_edge, label %land.lhs.true.i

sw.epilog378.i.if.end407.i_crit_edge:             ; preds = %sw.epilog378.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end407.i

land.lhs.true.i:                                  ; preds = %sw.epilog378.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr399.i)
  %cmp402.not.i = icmp eq i32 %shr399.i, 0
  br i1 %cmp402.not.i, label %land.lhs.true.i.if.end407.i_crit_edge, label %if.then404.i

land.lhs.true.i.if.end407.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end407.i

if.then404.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add nuw nsw i32 %shr399.i, 1
  %shr405.i = lshr i32 %add.i, 1
  %sub406.i = add nsw i32 %shr405.i, -1
  br label %if.end407.i

if.end407.i:                                      ; preds = %if.then404.i, %land.lhs.true.i.if.end407.i_crit_edge, %sw.epilog378.i.if.end407.i_crit_edge
  %nsts.0.i = phi i32 [ %sub406.i, %if.then404.i ], [ 0, %land.lhs.true.i.if.end407.i_crit_edge ], [ %shr399.i, %sw.epilog378.i.if.end407.i_crit_edge ]
  %109 = trunc i32 %nsts.0.i to i8
  %110 = and i8 %109, 7
  %conv410.i = add nuw nsw i8 %110, 1
  %111 = ptrtoint ptr %nss770.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv410.i, ptr %nss770.i, align 2
  %conv430.i = and i8 %100, 3
  %112 = ptrtoint ptr %bw612.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv430.i, ptr %bw612.i, align 1
  %113 = ptrtoint ptr %beamformed773.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %beamformed773.i, align 1
  %and450.i = lshr i32 %96, 4
  %shr451.i = and i32 %and450.i, 63
  %114 = zext i32 %shr451.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %shr451.i, label %if.else.i [
    i32 0, label %if.end407.i.if.then456.i_crit_edge
    i32 63, label %if.end407.i.if.then456.i_crit_edge65
  ]

if.end407.i.if.then456.i_crit_edge65:             ; preds = %if.end407.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then456.i

if.end407.i.if.then456.i_crit_edge:               ; preds = %if.end407.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then456.i

if.then456.i:                                     ; preds = %if.end407.i.if.then456.i_crit_edge, %if.end407.i.if.then456.i_crit_edge65
  %115 = ptrtoint ptr %reception_type794.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %reception_type794.i, align 4
  br label %sw.epilog855.i

if.else.i:                                        ; preds = %if.end407.i
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %reception_type794.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %reception_type794.i, align 4
  br label %sw.epilog855.i

sw.bb460.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %117 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %add.ptr, align 1
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #7
  %120 = trunc i32 %119 to i8
  %121 = lshr i8 %120, 3
  %conv482.i = and i8 %121, 15
  %122 = ptrtoint ptr %mcs749.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv482.i, ptr %mcs749.i, align 1
  %and500.i = lshr i32 %119, 19
  %123 = trunc i32 %and500.i to i8
  %conv502.i = and i8 %123, 3
  %124 = ptrtoint ptr %bw612.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv502.i, ptr %bw612.i, align 1
  %and520.i = and i32 %119, 128
  %shr521.i = lshr exact i32 %and520.i, 7
  %conv522.i = trunc i32 %shr521.i to i8
  %125 = ptrtoint ptr %ldpc793.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv522.i, ptr %ldpc793.i, align 2
  %126 = ptrtoint ptr %is_stbc640.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %is_stbc640.i, align 4
  %127 = ptrtoint ptr %beamformed773.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %beamformed773.i, align 1
  %and565.i = lshr i32 %119, 23
  %128 = lshr i32 %119, 18
  %switch.shiftamt = and i32 %128, 24
  %switch.downshift = lshr i32 50462720, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %129 = ptrtoint ptr %gi636.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %switch.masked, ptr %gi636.i, align 1
  %130 = trunc i32 %and565.i to i8
  %131 = and i8 %130, 7
  %conv584.i = add nuw nsw i8 %131, 1
  %132 = ptrtoint ptr %nss770.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv584.i, ptr %nss770.i, align 2
  %conv586.i = trunc i32 %and520.i to i8
  %133 = ptrtoint ptr %dcm587.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv586.i, ptr %dcm587.i, align 2
  %134 = ptrtoint ptr %reception_type794.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %reception_type794.i, align 4
  br label %sw.epilog855.i

sw.bb589.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %135 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %136 = load i32, ptr %add.ptr, align 1
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #7
  %and609.i = lshr i32 %137, 15
  %138 = trunc i32 %and609.i to i8
  %conv611.i = and i8 %138, 7
  %139 = ptrtoint ptr %bw612.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv611.i, ptr %bw612.i, align 1
  %140 = lshr i32 %137, 20
  %switch.shiftamt60 = and i32 %140, 24
  %switch.downshift61 = lshr i32 50462720, %switch.shiftamt60
  %switch.masked62 = trunc i32 %switch.downshift61 to i8
  %141 = ptrtoint ptr %gi636.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %switch.masked62, ptr %gi636.i, align 1
  %142 = ptrtoint ptr %is_stbc640.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %is_stbc640.i, align 4
  %143 = ptrtoint ptr %reception_type794.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 1, ptr %reception_type794.i, align 4
  br label %sw.epilog855.i

sw.bb642.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %144 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %145 = load i32, ptr %add.ptr, align 1
  %146 = lshr i32 %145, 24
  %conv662.i = trunc i32 %146 to i16
  %call.i = tail call i32 @ath11k_mac_phy_he_ru_to_nl80211_he_ru_alloc(i16 noundef zeroext %conv662.i) #7
  %conv663.i = trunc i32 %call.i to i8
  %147 = ptrtoint ptr %ru_alloc.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv663.i, ptr %ru_alloc.i, align 1
  %148 = ptrtoint ptr %reception_type794.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 1, ptr %reception_type794.i, align 4
  br label %sw.epilog855.i

sw.bb665.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %149 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %149, i32 4)
  %150 = load i32, ptr %add.ptr, align 1
  %151 = tail call i32 @llvm.bswap.i32(i32 %150) #7
  %and683.i = lshr i32 %151, 15
  %152 = trunc i32 %and683.i to i8
  %conv685.i = and i8 %152, 15
  %153 = ptrtoint ptr %mcs749.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %conv685.i, ptr %mcs749.i, align 1
  %shr704.i = lshr i32 %151, 29
  %154 = trunc i32 %shr704.i to i8
  %conv706.i = add nuw nsw i8 %154, 1
  %155 = ptrtoint ptr %nss770.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %conv706.i, ptr %nss770.i, align 2
  %and724.i = lshr i32 %151, 20
  %156 = trunc i32 %and724.i to i8
  %conv726.i = and i8 %156, 1
  %157 = ptrtoint ptr %ldpc793.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv726.i, ptr %ldpc793.i, align 2
  br label %sw.epilog855.i

sw.bb728.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %158 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %158, i32 4)
  %159 = load i32, ptr %add.ptr, align 1
  %160 = tail call i32 @llvm.bswap.i32(i32 %159) #7
  %and746.i = lshr i32 %160, 15
  %161 = trunc i32 %and746.i to i8
  %conv748.i = and i8 %161, 15
  %162 = ptrtoint ptr %mcs749.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv748.i, ptr %mcs749.i, align 1
  %and766.i = lshr i32 %160, 11
  %163 = trunc i32 %and766.i to i8
  %164 = and i8 %163, 7
  %conv769.i = add nuw nsw i8 %164, 1
  %165 = ptrtoint ptr %nss770.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv769.i, ptr %nss770.i, align 2
  %166 = ptrtoint ptr %beamformed773.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %beamformed773.i, align 1
  %and790.i = lshr i32 %160, 20
  %167 = trunc i32 %and790.i to i8
  %conv792.i = and i8 %167, 1
  %168 = ptrtoint ptr %ldpc793.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %conv792.i, ptr %ldpc793.i, align 2
  %169 = ptrtoint ptr %reception_type794.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 2, ptr %reception_type794.i, align 4
  br label %sw.epilog855.i

sw.bb795.i:                                       ; preds = %do.body
  %170 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %arrayidx.i.i, align 4
  %172 = and i32 %171, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool797.not.i = icmp eq i32 %172, 0
  %info0814.i = getelementptr i8, ptr %ptr.0, i32 144
  %173 = ptrtoint ptr %info0814.i to i32
  call void @__asan_loadN_noabort(i32 %173, i32 4)
  %174 = load i32, ptr %info0814.i, align 1
  %175 = lshr i32 %174, 16
  %conv817.i = trunc i32 %175 to i8
  %176 = ptrtoint ptr %rssi_comb.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %conv817.i, ptr %rssi_comb.i, align 8
  br i1 %tobool797.not.i, label %sw.bb795.i.sw.epilog855.i_crit_edge, label %for.body.preheader.i

sw.bb795.i.sw.epilog855.i_crit_edge:              ; preds = %sw.bb795.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog855.i

for.body.preheader.i:                             ; preds = %sw.bb795.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr i8, ptr %ptr.0, i32 80
  %177 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %177, i32 4)
  %178 = load i32, ptr %arrayidx.i, align 1
  %179 = lshr i32 %178, 24
  %conv823.i = trunc i32 %179 to i8
  %180 = ptrtoint ptr %arrayidx824.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %conv823.i, ptr %arrayidx824.i, align 1
  %arrayidx.1.i = getelementptr i8, ptr %ptr.0, i32 88
  %181 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_loadN_noabort(i32 %181, i32 4)
  %182 = load i32, ptr %arrayidx.1.i, align 1
  %183 = lshr i32 %182, 24
  %conv823.1.i = trunc i32 %183 to i8
  %184 = ptrtoint ptr %arrayidx824.1.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %conv823.1.i, ptr %arrayidx824.1.i, align 1
  %arrayidx.2.i = getelementptr i8, ptr %ptr.0, i32 96
  %185 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_loadN_noabort(i32 %185, i32 4)
  %186 = load i32, ptr %arrayidx.2.i, align 1
  %187 = lshr i32 %186, 24
  %conv823.2.i = trunc i32 %187 to i8
  %188 = ptrtoint ptr %arrayidx824.2.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %conv823.2.i, ptr %arrayidx824.2.i, align 1
  %arrayidx.3.i = getelementptr i8, ptr %ptr.0, i32 104
  %189 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_loadN_noabort(i32 %189, i32 4)
  %190 = load i32, ptr %arrayidx.3.i, align 1
  %191 = lshr i32 %190, 24
  %conv823.3.i = trunc i32 %191 to i8
  %192 = ptrtoint ptr %arrayidx824.3.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %conv823.3.i, ptr %arrayidx824.3.i, align 1
  %arrayidx.4.i = getelementptr i8, ptr %ptr.0, i32 112
  %193 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_loadN_noabort(i32 %193, i32 4)
  %194 = load i32, ptr %arrayidx.4.i, align 1
  %195 = lshr i32 %194, 24
  %conv823.4.i = trunc i32 %195 to i8
  %196 = ptrtoint ptr %arrayidx824.4.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %conv823.4.i, ptr %arrayidx824.4.i, align 1
  %arrayidx.5.i = getelementptr i8, ptr %ptr.0, i32 120
  %197 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_loadN_noabort(i32 %197, i32 4)
  %198 = load i32, ptr %arrayidx.5.i, align 1
  %199 = lshr i32 %198, 24
  %conv823.5.i = trunc i32 %199 to i8
  %200 = ptrtoint ptr %arrayidx824.5.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %conv823.5.i, ptr %arrayidx824.5.i, align 1
  %arrayidx.6.i = getelementptr i8, ptr %ptr.0, i32 128
  %201 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_loadN_noabort(i32 %201, i32 4)
  %202 = load i32, ptr %arrayidx.6.i, align 1
  %203 = lshr i32 %202, 24
  %conv823.6.i = trunc i32 %203 to i8
  %204 = ptrtoint ptr %arrayidx824.6.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %conv823.6.i, ptr %arrayidx824.6.i, align 1
  %arrayidx.7.i = getelementptr i8, ptr %ptr.0, i32 136
  %205 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_loadN_noabort(i32 %205, i32 4)
  %206 = load i32, ptr %arrayidx.7.i, align 1
  %207 = lshr i32 %206, 24
  %conv823.7.i = trunc i32 %207 to i8
  %208 = ptrtoint ptr %arrayidx824.7.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %conv823.7.i, ptr %arrayidx824.7.i, align 1
  br label %sw.epilog855.i

sw.bb826.i:                                       ; preds = %do.body
  %209 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %hw_ops.i, align 4
  %mpdu_info_get_peerid.i = getelementptr inbounds %struct.ath11k_hw_ops, ptr %210, i32 0, i32 32
  %211 = ptrtoint ptr %mpdu_info_get_peerid.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %mpdu_info_get_peerid.i, align 4
  %call827.i = tail call zeroext i16 %212(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call827.i)
  %tobool828.not.i = icmp eq i16 %call827.i, 0
  br i1 %tobool828.not.i, label %sw.bb826.i.sw.epilog855.i_crit_edge, label %if.then829.i

sw.bb826.i.sw.epilog855.i_crit_edge:              ; preds = %sw.bb826.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog855.i

if.then829.i:                                     ; preds = %sw.bb826.i
  call void @__sanitizer_cov_trace_pc() #9
  %213 = ptrtoint ptr %peer_id830.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %call827.i, ptr %peer_id830.i, align 2
  br label %sw.epilog855.i

sw.bb832.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %info0849.i = getelementptr i8, ptr %ptr.0, i32 40
  %214 = ptrtoint ptr %info0849.i to i32
  call void @__asan_loadN_noabort(i32 %214, i32 4)
  %215 = load i32, ptr %info0849.i, align 1
  %216 = and i32 %215, -256
  %217 = tail call i32 @llvm.bswap.i32(i32 %216) #7
  %conv852.i = zext i32 %217 to i64
  %218 = ptrtoint ptr %rx_duration.i to i32
  call void @__asan_store8_noabort(i32 %218)
  store i64 %conv852.i, ptr %rx_duration.i, align 8
  br label %sw.epilog855.i

sw.bb854.i:                                       ; preds = %do.body.sw.bb854.i_crit_edge, %do.body.sw.bb854.i_crit_edge63
  br label %ath11k_hal_rx_parse_mon_status_tlv.exit

sw.epilog855.i:                                   ; preds = %sw.bb832.i, %if.then829.i, %sw.bb826.i.sw.epilog855.i_crit_edge, %for.body.preheader.i, %sw.bb795.i.sw.epilog855.i_crit_edge, %sw.bb728.i, %sw.bb665.i, %sw.bb642.i, %sw.bb589.i, %sw.bb460.i, %if.else.i, %if.then456.i, %sw.bb288.i, %sw.bb266.i, %if.end.i, %sw.bb15.i, %sw.bb.i, %do.body.sw.epilog855.i_crit_edge
  br label %ath11k_hal_rx_parse_mon_status_tlv.exit

ath11k_hal_rx_parse_mon_status_tlv.exit:          ; preds = %sw.epilog855.i, %sw.bb854.i, %do.body.ath11k_hal_rx_parse_mon_status_tlv.exit_crit_edge
  %cmp46 = phi i1 [ false, %do.body.ath11k_hal_rx_parse_mon_status_tlv.exit_crit_edge ], [ false, %sw.bb854.i ], [ true, %sw.epilog855.i ]
  %retval.0.i = phi i32 [ 2, %do.body.ath11k_hal_rx_parse_mon_status_tlv.exit_crit_edge ], [ 1, %sw.bb854.i ], [ 0, %sw.epilog855.i ]
  %and31.op = and i32 %and31, 65535
  %conv37 = select i1 %cmp, i32 4, i32 %and31.op
  %add.ptr38 = getelementptr i8, ptr %add.ptr, i32 %conv37
  %219 = ptrtoint ptr %add.ptr38 to i32
  %add = add i32 %219, 3
  %and39 = and i32 %add, -4
  %220 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %data, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %221 to i32
  %sub.ptr.sub = sub i32 %and39, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %sub.ptr.sub)
  %cmp41 = icmp slt i32 %sub.ptr.sub, 2048
  %222 = inttoptr i32 %and39 to ptr
  %or.cond = and i1 %cmp46, %cmp41
  br i1 %or.cond, label %ath11k_hal_rx_parse_mon_status_tlv.exit.do.body_crit_edge, label %do.end48

ath11k_hal_rx_parse_mon_status_tlv.exit.do.body_crit_edge: ; preds = %ath11k_hal_rx_parse_mon_status_tlv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end48:                                         ; preds = %ath11k_hal_rx_parse_mon_status_tlv.exit
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath11k_hal_rx_reo_ent_buf_paddr_get(ptr noundef %rx_desc, ptr nocapture noundef writeonly %paddr, ptr nocapture noundef writeonly %sw_cookie, ptr nocapture noundef writeonly %pp_buf_addr, ptr nocapture noundef writeonly %rbm, ptr nocapture noundef writeonly %msdu_cnt) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_mpdu_info = getelementptr inbounds %struct.hal_reo_entrance_ring, ptr %rx_desc, i32 0, i32 1
  %0 = ptrtoint ptr %rx_mpdu_info to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %rx_mpdu_info, align 1
  %and = and i32 %1, 255
  %2 = ptrtoint ptr %msdu_cnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %msdu_cnt, align 4
  %info1 = getelementptr inbounds %struct.ath11k_buffer_addr, ptr %rx_desc, i32 0, i32 1
  %3 = ptrtoint ptr %rx_desc to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %rx_desc, align 1
  %5 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %paddr, align 4
  %6 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %info1, align 1
  %shr71 = lshr i32 %7, 11
  %8 = ptrtoint ptr %sw_cookie to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr71, ptr %sw_cookie, align 4
  %9 = load i32, ptr %info1, align 1
  %and89 = lshr i32 %9, 8
  %10 = trunc i32 %and89 to i8
  %conv91 = and i8 %10, 7
  %11 = ptrtoint ptr %rbm to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv91, ptr %rbm, align 1
  %12 = ptrtoint ptr %pp_buf_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %rx_desc, ptr %pp_buf_addr, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath11k_hal_rx_sw_mon_ring_buf_paddr_get(ptr noundef %rx_desc, ptr nocapture noundef writeonly %sw_mon_entries) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_mpdu_info = getelementptr inbounds %struct.hal_sw_monitor_ring, ptr %rx_desc, i32 0, i32 1
  %0 = ptrtoint ptr %rx_mpdu_info to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %rx_mpdu_info, align 1
  %conv = trunc i32 %1 to i8
  %msdu_cnt = getelementptr inbounds %struct.hal_sw_mon_ring_entries, ptr %sw_mon_entries, i32 0, i32 8
  %2 = ptrtoint ptr %msdu_cnt to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %msdu_cnt, align 1
  %status_buf_addr_info14 = getelementptr inbounds %struct.hal_sw_monitor_ring, ptr %rx_desc, i32 0, i32 2
  %info1 = getelementptr inbounds %struct.ath11k_buffer_addr, ptr %rx_desc, i32 0, i32 1
  %3 = ptrtoint ptr %rx_desc to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %rx_desc, align 1
  %5 = ptrtoint ptr %sw_mon_entries to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %sw_mon_entries, align 4
  %info171 = getelementptr inbounds %struct.hal_sw_monitor_ring, ptr %rx_desc, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %status_buf_addr_info14 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %status_buf_addr_info14, align 1
  %mon_status_paddr = getelementptr inbounds %struct.hal_sw_mon_ring_entries, ptr %sw_mon_entries, i32 0, i32 1
  %8 = ptrtoint ptr %mon_status_paddr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mon_status_paddr, align 4
  %9 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %info1, align 1
  %shr116 = lshr i32 %10, 11
  %mon_dst_sw_cookie = getelementptr inbounds %struct.hal_sw_mon_ring_entries, ptr %sw_mon_entries, i32 0, i32 2
  %11 = ptrtoint ptr %mon_dst_sw_cookie to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr116, ptr %mon_dst_sw_cookie, align 4
  %12 = ptrtoint ptr %info171 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %info171, align 1
  %shr135 = lshr i32 %13, 11
  %mon_status_sw_cookie = getelementptr inbounds %struct.hal_sw_mon_ring_entries, ptr %sw_mon_entries, i32 0, i32 3
  %14 = ptrtoint ptr %mon_status_sw_cookie to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr135, ptr %mon_status_sw_cookie, align 4
  %info0152 = getelementptr inbounds %struct.hal_sw_monitor_ring, ptr %rx_desc, i32 0, i32 3
  %15 = ptrtoint ptr %info0152 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %info0152, align 1
  %and153 = lshr i32 %16, 12
  %17 = trunc i32 %and153 to i8
  %conv155 = and i8 %17, 15
  %status_buf_count = getelementptr inbounds %struct.hal_sw_mon_ring_entries, ptr %sw_mon_entries, i32 0, i32 7
  %18 = ptrtoint ptr %status_buf_count to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv155, ptr %status_buf_count, align 2
  %dst_buf_addr_info = getelementptr inbounds %struct.hal_sw_mon_ring_entries, ptr %sw_mon_entries, i32 0, i32 4
  %19 = ptrtoint ptr %dst_buf_addr_info to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %rx_desc, ptr %dst_buf_addr_info, align 4
  %status_buf_addr_info156 = getelementptr inbounds %struct.hal_sw_mon_ring_entries, ptr %sw_mon_entries, i32 0, i32 5
  %20 = ptrtoint ptr %status_buf_addr_info156 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %status_buf_addr_info14, ptr %status_buf_addr_info156, align 4
  %info1173 = getelementptr inbounds %struct.hal_sw_monitor_ring, ptr %rx_desc, i32 0, i32 4
  %21 = ptrtoint ptr %info1173 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %info1173, align 1
  %conv176 = trunc i32 %22 to i16
  %ppdu_id = getelementptr inbounds %struct.hal_sw_mon_ring_entries, ptr %sw_mon_entries, i32 0, i32 6
  %23 = ptrtoint ptr %ppdu_id to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv176, ptr %ppdu_id, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath11k_mac_phy_he_ru_to_nl80211_he_ru_alloc(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath11k/hal_rx.c", i32 247, i32 19}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath11k/hal_rx.c", i32 251, i32 19}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath11k/hal_rx.c", i32 334, i32 19}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath11k/hal_rx.c", i32 341, i32 19}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath11k/hal_rx.c", i32 362, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath11k/hal_rx.c", i32 445, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath11k/hal_rx.c", i32 446, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath11k/hal_rx.c", i32 449, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath11k/hal_rx.c", i32 454, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath11k/hal_rx.c", i32 456, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath11k/hal_rx.c", i32 459, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath11k/hal_rx.c", i32 463, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath11k/hal_rx.c", i32 468, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath11k/hal_rx.c", i32 475, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath11k/hal_rx.c", i32 480, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath11k/hal_rx.c", i32 483, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath11k/hal_rx.c", i32 490, i32 2}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i32 0, i32 33}
!44 = !{i64 2148891948, i64 2148891953, i64 2148891966, i64 2148892010, i64 2148892044, i64 2148892065}
